uint64_t sub_2527128C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C0690();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252712934(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C0690();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_252712A6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_OWORD *sub_252712E3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_252712EB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252713420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25271345C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];

  return sub_2528BE6C0();
}

uint64_t sub_252713498@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SceneEntity() + 24));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2527134F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SceneEntity() + 28));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_252713568(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2528BECF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_252713614(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2528BECF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2527136BC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_2528BECF0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = *(v0 + v3 + *(v5 + 20));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2527137F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_2528BECF0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v0 + v3 + *(v6 + 20));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25271392C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252713958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SceneEntity() + 24));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_25271399C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SceneEntity() + 28));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252713AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252713BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_252713C64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for CameraClipEntity() + 24));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252713CA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for CameraClipEntity() + 28));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252713D88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252713E1C()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  v11 = *(v0 + 8);

  v12 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252713F10()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 35) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 16);

  v10 = *(v0 + v5 + 24);

  v11 = *(v0 + v5 + 32);

  v12 = *(v0 + v5 + 40);

  return MEMORY[0x2821FE8E8](v0, v5 + 48, v3 | 7);
}

uint64_t sub_252714028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527140C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  v10 = *(v0 + 8);

  v11 = *(v0 + 9);

  v12 = sub_2528C00D0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(&v0[v3], 1, v12))
  {
    (*(v13 + 8))(&v0[v3], v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252714210()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_25272C15C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 16);

  v10 = *(v0 + v5 + 24);

  v11 = *(v0 + v5 + 32);

  v12 = *(v0 + v5 + 40);

  return MEMORY[0x2821FE8E8](v0, v5 + 48, v3 | 7);
}

uint64_t sub_25271433C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527143D0()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  v11 = *(v0 + 8);

  v12 = *(v0 + 9);

  v13 = *(v0 + 10);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527144CC()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 35) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 16);

  v10 = *(v0 + v5 + 24);

  v11 = *(v0 + v5 + 32);

  v12 = *(v0 + v5 + 40);

  v13 = *(v0 + v5 + 48);

  return MEMORY[0x2821FE8E8](v0, v5 + 56, v3 | 7);
}

uint64_t sub_25271461C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527146B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  v3 = v0[10];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25271471C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527147B0()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  v11 = *(v0 + 8);

  v12 = *(v0 + 9);

  v13 = *(v0 + 10);

  v14 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527148B4()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  v10 = *(v0 + 8);

  v11 = *(v0 + 9);

  v12 = *(v0 + 10);

  v13 = *(v0 + 11);

  v14 = *(v0 + 12);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252714A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252714B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_252714BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_252714CBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2528BF400();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_252714E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 4)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_252714F10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

unint64_t sub_252715000(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2528C1120();
  return sub_252787A4C(a1, v4);
}

uint64_t sub_2527153CC()
{
  v1 = sub_2528BECF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_2528C05D0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_252715898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252715954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_252715A0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ZoneEntity() + 20));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252715A50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ZoneEntity() + 24));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252715A94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ZoneEntity() + 24));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_252715AEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ZoneEntity() + 20));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_252715B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252715C20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252715D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252715DB8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2527160B4()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 4);

  v12 = *(v0 + 6);

  v13 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v14 = sub_2528BE890();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v0[v8], 1, v14))
  {
    (*(v15 + 8))(&v0[v8], v14);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_252716278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716324()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252716378@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F4FE868;
  return result;
}

uint64_t sub_2527163C4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F4FE868 = v1;
  return result;
}

uint64_t sub_25271655C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2528BFDD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_252716608(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2528BFDD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25271681C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2527F9FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252716858(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252716914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2527169EC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_2527FDEA8(v13, v14) & 1;
}

uint64_t sub_252716AA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  return sub_2528BE9B0() & 1;
}

uint64_t sub_252716B68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716BA4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252716BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716C1C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252716C58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716C94(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252716CD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716D0C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252716D48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716D84(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252716DC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716DFC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252716E38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252716E74(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252716F6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252716F98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252716FC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252716FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_2527170AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_2527170D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_2527174CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  return sub_2528BE9B0() & 1;
}

uint64_t sub_25271751C()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 4);

  v12 = *(v0 + 6);

  v13 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v14 = sub_2528BE890();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v0[v8], 1, v14))
  {
    (*(v15 + 8))(&v0[v8], v14);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_2527176D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252717718@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252717758@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252717798@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252717870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_25271789C()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 4);

  v12 = *(v0 + 6);

  v13 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v14 = sub_2528BE890();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v0[v8], 1, v14))
  {
    (*(v15 + 8))(&v0[v8], v14);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_252717A58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE790();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_252717A98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252717D3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717D68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717D94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717DC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717DEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717E18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_252717EDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_252717F18(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  v5 = a1[1];

  return sub_2528BE6C0();
}

uint64_t sub_252717F54(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2528BECF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_252718000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2528BECF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2527180F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252718120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_25271814C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_252718178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_2527181A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_2527181D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_2527181FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_252718238(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *a1;
  v5 = a1[1];

  return sub_2528BE6C0();
}

uint64_t sub_252718274@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE6B0();
  *a2 = v5;
  return result;
}

uint64_t sub_2527182B0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;

  return sub_2528BE6C0();
}

uint64_t sub_252718300@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25271833C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = *a1;
  v5 = a1[1];

  return sub_2528BE6C0();
}

uint64_t sub_252718378@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE6B0();
  *a2 = v5;
  return result;
}

uint64_t sub_2527183B4(__int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = *a1;
  return sub_2528BE6C0();
}

uint64_t sub_2527183EC@<X0>(__int16 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_252800748();
  *a2 = result;
  return result;
}

uint64_t sub_252718428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_252718464(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];

  return sub_2528BE6C0();
}

unint64_t sub_2527184B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25278D824(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_252718504()
{
  v1 = sub_2528BECF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527185D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252718618()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252718650()
{
  v1 = sub_2528BFB20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_252718840()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 4);

  v12 = *(v0 + 6);

  v13 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v14 = sub_2528BE890();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v0[v8], 1, v14))
  {
    (*(v15 + 8))(&v0[v8], v14);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_252718A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718A48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252718A84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718AC0(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_2528BE7A0();
}

uint64_t sub_252718AF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718B34(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252718B70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718BAC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252718BE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718C24(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252718C60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718C9C(char *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *a1;
  return sub_2528BE7A0();
}

uint64_t sub_252718CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718D10(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252718D4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718D88(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v4 = *a1;

  return sub_2528BE7A0();
}

uint64_t sub_252718DC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2528BE790();
  *a2 = v5;
  return result;
}

uint64_t sub_252718E00(char *a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v4 = *a1;
  return sub_2528BE7A0();
}

uint64_t sub_252718E38(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_252718EF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25271966C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFE78, &qword_2528D52B8);
  sub_2528BEC20();
  sub_2527D262C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719720@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD90, &qword_2528D5290);
  sub_2528BEC20();
  sub_2527D0DA8();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_2527197D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD70, &qword_2528D5288);
  sub_2528BEC20();
  sub_2527D094C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719880@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD58, &qword_2528D5280);
  sub_2528BEC20();
  sub_2527D1D74();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719930@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD30, &unk_2528D5270);
  sub_2528BEC20();
  sub_2527D21D0();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719AFC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252719E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252719F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_25271A010()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_2528BECF0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v0 + v3 + *(v6 + 20));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25271A14C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RoomEntity() + 20));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_25271A190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RoomEntity() + 24));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_25271A1D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RoomEntity() + 28));
  result = sub_2528BE6D0();
  *a2 = result;
  return result;
}

uint64_t sub_25271A218@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RoomEntity() + 28));
  result = sub_2528BE6B0();
  *a2 = v5;
  return result;
}

uint64_t sub_25271A28C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RoomEntity() + 24));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25271A2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for RoomEntity() + 20));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25271A390()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25271A4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25271A574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_25271A63C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25271A650(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25271A668()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25271A6D8()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v1 = *(*(v33 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - v5;
  v7 = sub_2528BEB10();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BEC90();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TriggerEventType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25271FF44(v0, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *v19;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      sub_25271FFFC(&v19[*(v22 + 48)], v6);
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_2528C0E70();

      v35[0] = 0xD000000000000010;
      v35[1] = 0x80000002528E53C0;
      if (v21)
      {
        v23 = 0x7465736E7573;
      }

      else
      {
        v23 = 0x657369726E7573;
      }

      if (v21)
      {
        v24 = 0xE600000000000000;
      }

      else
      {
        v24 = 0xE700000000000000;
      }

      MEMORY[0x2530A80B0](v23, v24);

      MEMORY[0x2530A80B0](8236, 0xE200000000000000);
      sub_25272006C(v6, v4, &qword_27F4FBDC0, &qword_2528C23E8);
      v25 = sub_2528C0A10();
      MEMORY[0x2530A80B0](v25);

      MEMORY[0x2530A80B0](41, 0xE100000000000000);
      v26 = v35[0];
      sub_2527213D8(v6, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      v29 = *v19;
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_2528C0E70();

      v35[0] = 0xD000000000000014;
      v35[1] = 0x80000002528E53A0;
      if (v29)
      {
        v30 = 0x6F48657669727261;
      }

      else
      {
        v30 = 0x6D6F48657661656CLL;
      }

      if (v29)
      {
        v31 = 0xEA0000000000656DLL;
      }

      else
      {
        v31 = 0xE900000000000065;
      }

      MEMORY[0x2530A80B0](v30, v31);

      MEMORY[0x2530A80B0](41, 0xE100000000000000);
      return v35[0];
    }
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_2528C0E70();

    strcpy(v35, "absoluteTime(");
    HIWORD(v35[1]) = -4864;
    sub_25271DA3C(&qword_27F4FBE80, MEMORY[0x277CC9578]);
    v27 = sub_2528C1040();
    MEMORY[0x2530A80B0](v27);

    MEMORY[0x2530A80B0](0x203A656D6974202CLL, 0xE800000000000000);
    sub_25271AC24(v10);
    sub_25271DA3C(&qword_27F4FBE88, MEMORY[0x277CC8990]);
    v28 = sub_2528C1040();
    MEMORY[0x2530A80B0](v28);

    (*(v34 + 8))(v10, v7);
    MEMORY[0x2530A80B0](41, 0xE100000000000000);
    v26 = v35[0];
    (*(v12 + 8))(v15, v11);
  }

  return v26;
}

uint64_t sub_25271AC24@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_2528BED20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528BED60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CC9830], v1);
  sub_2528BED30();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE90, &qword_2528C2580);
  v11 = sub_2528BED50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2528C17D0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x277CC9980], v11);
  v17(v16 + v13, *MEMORY[0x277CC99A0], v11);
  v17(v16 + 2 * v13, *MEMORY[0x277CC99A8], v11);
  sub_25274304C(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2528BED40();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25271AF10()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502758);
  __swift_project_value_buffer(v0, qword_27F502758);
  return sub_2528BE9D0();
}

uint64_t sub_25271AF74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBED8, &qword_2528C25A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEE0, &qword_2528C25A8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = sub_25278C618(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F502770 = v7;
  return result;
}

void sub_25271B0D0(uint64_t *a1@<X8>)
{
  v2 = 0x657369726E7573;
  if (*v1)
  {
    v2 = 0x7465736E7573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25271B10C()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271B18C()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_25271B1F8()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271B274(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7465736E7573;
  }

  else
  {
    v4 = 0x657369726E7573;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7465736E7573;
  }

  else
  {
    v6 = 0x657369726E7573;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_25271B34C(uint64_t a1)
{
  v2 = sub_25271C8F4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25271B3BC(uint64_t a1)
{
  v2 = sub_25271C888();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25271B408()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502778);
  __swift_project_value_buffer(v0, qword_27F502778);
  return sub_2528BE9D0();
}

uint64_t sub_25271B46C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEC8, &qword_2528C2590);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBED0, &qword_2528C2598);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = sub_25278C800(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F502790 = v7;
  return result;
}

uint64_t sub_25271B5CC()
{
  v1 = sub_2528BEB10();
  v28 = *(v1 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v1);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_2528BEC90();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TriggerEventType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25271FF44(v0, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *v19;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      sub_25271FFFC(&v19[*(v22 + 48)], v10);
      MEMORY[0x2530A87A0](1);
      sub_2528C0A40();

      sub_25272006C(v10, v8, &qword_27F4FBDC0, &qword_2528C23E8);
      v23 = v28;
      if ((*(v28 + 48))(v8, 1, v1) == 1)
      {
        sub_2528C1150();
      }

      else
      {
        v26 = v27;
        (*(v23 + 32))(v27, v8, v1);
        sub_2528C1150();
        sub_25271DA3C(&qword_27F4FBE58, MEMORY[0x277CC8990]);
        sub_2528C0910();
        (*(v23 + 8))(v26, v1);
      }

      return sub_2527213D8(v10, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      v25 = *v19;
      MEMORY[0x2530A87A0](2);
      sub_2528C0A40();
    }
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    MEMORY[0x2530A87A0](0);
    sub_25271DA3C(&qword_27F4FBE60, MEMORY[0x277CC9578]);
    sub_2528C0910();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_25271BA50@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2528C0F30();

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

void sub_25271BAAC(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F48657661656CLL;
  if (*v1)
  {
    v2 = 0x6F48657669727261;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEA0000000000656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25271BAF4()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271BB80()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_25271BBF8()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271BC80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F48657669727261;
  }

  else
  {
    v4 = 0x6D6F48657661656CLL;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v6 = 0x6F48657669727261;
  }

  else
  {
    v6 = 0x6D6F48657661656CLL;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000656DLL;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_25271BD64(uint64_t a1)
{
  v2 = sub_25271CD64();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25271BDD4(uint64_t a1)
{
  v2 = sub_25271CCF8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25271BE20()
{
  sub_2528C1130();
  sub_25271B5CC();
  return sub_2528C1180();
}

uint64_t sub_25271BE64()
{
  sub_2528C1130();
  sub_25271B5CC();
  return sub_2528C1180();
}

uint64_t SceneType.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2528C0CD0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1, v8) != 1)
  {
    sub_25272006C(a1, v7, &qword_27F4FBBC0, &qword_2528C1800);
    v11 = (*(v9 + 88))(v7, v8);
    if (v11 == *MEMORY[0x277D16EF0])
    {
      v10 = 0;
      goto LABEL_13;
    }

    if (v11 == *MEMORY[0x277D16F10])
    {
      v10 = 1;
      goto LABEL_13;
    }

    if (v11 == *MEMORY[0x277D16F38])
    {
      v10 = 2;
      goto LABEL_13;
    }

    if (v11 == *MEMORY[0x277D16F28])
    {
      v10 = 3;
      goto LABEL_13;
    }

    if (v11 == *MEMORY[0x277D16EF8])
    {
      v10 = 4;
      goto LABEL_13;
    }

    (*(v9 + 8))(v7, v8);
  }

  v10 = 5;
LABEL_13:
  result = sub_2527213D8(a1, &qword_27F4FBBC0, &qword_2528C1800);
  *a2 = v10;
  return result;
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

uint64_t static SceneType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB580 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FB588);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25271C1D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEE8, &qword_2528C25B0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEF0, &qword_2528C25B8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = sub_25278C9E8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FB5A8 = v11;
  return result;
}

uint64_t static SceneType.caseDisplayRepresentations.getter()
{
  if (qword_27F4FB5A0 != -1)
  {
    swift_once();
  }
}

uint64_t SceneType.description.getter()
{
  v1 = *v0;
  v2 = 0x69727241656D6F68;
  v3 = 0x7065656C73;
  v4 = 0x6966654472657375;
  if (v1 != 4)
  {
    v4 = 1701736302;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61706544656D6F68;
  if (v1 != 1)
  {
    v5 = 0x7055656B6177;
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

HomeAppIntents::SceneType_optional __swiftcall SceneType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25271C590()
{
  result = qword_27F4FBBC8;
  if (!qword_27F4FBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBC8);
  }

  return result;
}

unint64_t sub_25271C5E8()
{
  result = qword_27F4FBBD0;
  if (!qword_27F4FBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBD0);
  }

  return result;
}

unint64_t sub_25271C640()
{
  result = qword_27F4FBBD8;
  if (!qword_27F4FBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBD8);
  }

  return result;
}

unint64_t sub_25271C698()
{
  result = qword_27F4FBBE0;
  if (!qword_27F4FBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBE0);
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

unint64_t sub_25271C788()
{
  result = qword_27F4FBBF8;
  if (!qword_27F4FBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBF8);
  }

  return result;
}

unint64_t sub_25271C7DC()
{
  result = qword_27F4FBC00;
  if (!qword_27F4FBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC00);
  }

  return result;
}

unint64_t sub_25271C830()
{
  result = qword_27F4FBC08;
  if (!qword_27F4FBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC08);
  }

  return result;
}

unint64_t sub_25271C888()
{
  result = qword_27F4FBC10;
  if (!qword_27F4FBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC10);
  }

  return result;
}

unint64_t sub_25271C8F4()
{
  result = qword_27F4FBC18;
  if (!qword_27F4FBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC18);
  }

  return result;
}

unint64_t sub_25271C94C()
{
  result = qword_27F4FBC20;
  if (!qword_27F4FBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC20);
  }

  return result;
}

unint64_t sub_25271C9A4()
{
  result = qword_27F4FBC28;
  if (!qword_27F4FBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC28);
  }

  return result;
}

unint64_t sub_25271C9FC()
{
  result = qword_27F4FBC30;
  if (!qword_27F4FBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC30);
  }

  return result;
}

unint64_t sub_25271CA54()
{
  result = qword_27F4FBC38;
  if (!qword_27F4FBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC38);
  }

  return result;
}

unint64_t sub_25271CAAC()
{
  result = qword_27F4FBC40;
  if (!qword_27F4FBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC40);
  }

  return result;
}

unint64_t sub_25271CB04()
{
  result = qword_27F4FBC48;
  if (!qword_27F4FBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC48);
  }

  return result;
}

unint64_t sub_25271CB5C()
{
  result = qword_27F4FBC50;
  if (!qword_27F4FBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC50);
  }

  return result;
}

unint64_t sub_25271CBF8()
{
  result = qword_27F4FBC68;
  if (!qword_27F4FBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC68);
  }

  return result;
}

unint64_t sub_25271CC4C()
{
  result = qword_27F4FBC70;
  if (!qword_27F4FBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC70);
  }

  return result;
}

unint64_t sub_25271CCA0()
{
  result = qword_27F4FBC78;
  if (!qword_27F4FBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC78);
  }

  return result;
}

unint64_t sub_25271CCF8()
{
  result = qword_27F4FBC80;
  if (!qword_27F4FBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC80);
  }

  return result;
}

unint64_t sub_25271CD64()
{
  result = qword_27F4FBC88;
  if (!qword_27F4FBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC88);
  }

  return result;
}

unint64_t sub_25271CDBC()
{
  result = qword_27F4FBC90;
  if (!qword_27F4FBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC90);
  }

  return result;
}

unint64_t sub_25271CE14()
{
  result = qword_27F4FBC98;
  if (!qword_27F4FBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC98);
  }

  return result;
}

unint64_t sub_25271CE6C()
{
  result = qword_27F4FBCA0;
  if (!qword_27F4FBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCA0);
  }

  return result;
}

void sub_25271CECC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006C6176;
  v4 = 0x69727241656D6F68;
  v5 = 0xE500000000000000;
  v6 = 0x7065656C73;
  v7 = 0xEB0000000064656ELL;
  v8 = 0x6966654472657375;
  if (v2 != 4)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006572757472;
  v10 = 0x61706544656D6F68;
  if (v2 != 1)
  {
    v10 = 0x7055656B6177;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_25271CF9C()
{
  result = qword_27F4FBCA8;
  if (!qword_27F4FBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCA8);
  }

  return result;
}

unint64_t sub_25271CFF4()
{
  result = qword_27F4FBCB0;
  if (!qword_27F4FBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCB0);
  }

  return result;
}

unint64_t sub_25271D04C()
{
  result = qword_27F4FBCB8;
  if (!qword_27F4FBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCB8);
  }

  return result;
}

unint64_t sub_25271D0A4()
{
  result = qword_27F4FBCC0;
  if (!qword_27F4FBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCC0);
  }

  return result;
}

uint64_t sub_25271D100()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_25271D210()
{
  v1 = *v0;
  v2 = 0x69727241656D6F68;
  v3 = 0x7065656C73;
  v4 = 0x6966654472657375;
  if (v1 != 4)
  {
    v4 = 1701736302;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61706544656D6F68;
  if (v1 != 1)
  {
    v5 = 0x7055656B6177;
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

unint64_t sub_25271D2DC()
{
  result = qword_27F4FBCC8;
  if (!qword_27F4FBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCC8);
  }

  return result;
}

unint64_t sub_25271D330()
{
  result = qword_27F4FBCD0;
  if (!qword_27F4FBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCD0);
  }

  return result;
}

unint64_t sub_25271D384()
{
  result = qword_27F4FBCD8;
  if (!qword_27F4FBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCD8);
  }

  return result;
}

unint64_t sub_25271D3DC()
{
  result = qword_27F4FBCE0;
  if (!qword_27F4FBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCE0);
  }

  return result;
}

unint64_t sub_25271D4C0()
{
  result = qword_27F4FBCE8;
  if (!qword_27F4FBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCE8);
  }

  return result;
}

uint64_t sub_25271D514(uint64_t a1)
{
  v2 = sub_25271D4C0();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_25271D564()
{
  result = qword_27F4FBCF0;
  if (!qword_27F4FBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCF0);
  }

  return result;
}

unint64_t sub_25271D5BC()
{
  result = qword_27F4FBCF8;
  if (!qword_27F4FBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCF8);
  }

  return result;
}

unint64_t sub_25271D614()
{
  result = qword_27F4FBD00;
  if (!qword_27F4FBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD00);
  }

  return result;
}

uint64_t sub_25271D68C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_25271D6F0(uint64_t a1)
{
  v2 = sub_25271D3DC();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_25271D794()
{
  result = qword_27F4FBD18;
  if (!qword_27F4FBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD18);
  }

  return result;
}

unint64_t sub_25271D7EC()
{
  result = qword_27F4FBD20;
  if (!qword_27F4FBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD20);
  }

  return result;
}

uint64_t sub_25271D860()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502798);
  __swift_project_value_buffer(v0, qword_27F502798);
  return sub_2528BE9D0();
}

uint64_t sub_25271D8C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25271D8E8, 0, 0);
}

uint64_t sub_25271D8E8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_2528C0680();
  v3 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = v0[1];

  return v4();
}

unint64_t sub_25271D994()
{
  result = qword_27F4FBD30;
  if (!qword_27F4FBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD30);
  }

  return result;
}

uint64_t sub_25271DA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25271DA84()
{
  sub_2528C1130();
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEC0, MEMORY[0x277D16C68]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_25271DB0C()
{
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEC0, MEMORY[0x277D16C68]);

  return sub_2528C0910();
}

uint64_t sub_25271DB90()
{
  sub_2528C1130();
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEC0, MEMORY[0x277D16C68]);
  sub_2528C0910();
  return sub_2528C1180();
}

BOOL sub_25271DC14()
{
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEB8, MEMORY[0x277D16C68]);
  sub_2528C0AD0();
  sub_2528C0AD0();
  return v2 == v1;
}

uint64_t sub_25271DD04()
{
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEA0, MEMORY[0x277D16C68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEA8, &qword_2528C2588);
  sub_25272275C(&qword_27F4FBEB0, &qword_27F4FBEA8, &qword_2528C2588);
  return sub_2528C0DF0();
}

uint64_t sub_25271DF18(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FBE98, type metadata accessor for TriggerRecurrenceWeekdaysEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271E024()
{
  sub_25271DA3C(&qword_27F4FBE98, type metadata accessor for TriggerRecurrenceWeekdaysEntity);

  return sub_2528BE550();
}

uint64_t sub_25271E108(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FBD40, type metadata accessor for TriggerRecurrenceWeekdaysEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271E1CC()
{
  sub_2528C0670();

  return sub_2528BE8C0();
}

uint64_t sub_25271E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2527228B0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_25271E2C8(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FBD80, type metadata accessor for TriggerRecurrenceWeekdaysEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t getEnumTagSinglePayload for SceneType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s38MatterAttributeExecutionTaskIdentifierOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s38MatterAttributeExecutionTaskIdentifierOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25271E684(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25271E6BC()
{
  sub_2528BEC90();
  if (v0 <= 0x3F)
  {
    sub_25271E738();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25271E738()
{
  if (!qword_27F4FBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FBDC0, &qword_2528C23E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4FBDB8);
    }
  }
}

uint64_t sub_25271E7D8()
{
  result = sub_2528C0690();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25271E8A8@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v9;
  v10 = sub_2528BEC40();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2528BEC90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = type metadata accessor for TriggerEventType(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25271FF44(v1, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v26;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      v30 = v43;
      sub_25271FFFC(&v26[*(v29 + 48)], v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE00, &qword_2528C2540);
      sub_2528BEC20();
      sub_25271C8F4();
      v31 = sub_2528BE6E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE08, &qword_2528C2548);
      sub_2528BEC20();
      v32 = sub_2528BE710();
      v45 = v28;
      sub_2528BE6C0();
      sub_25272006C(v30, v8, &qword_27F4FBDC0, &qword_2528C23E8);
      sub_25272006C(v8, v42, &qword_27F4FBDC0, &qword_2528C23E8);
      sub_2528BE6C0();
      sub_2527213D8(v8, &qword_27F4FBDC0, &qword_2528C23E8);
      v33 = v44;
      v44[3] = &type metadata for TriggerEventType.SignificantTimeCase;
      v33[4] = sub_2527200D4();
      *v33 = v31;
      v33[1] = v32;
      return sub_2527213D8(v30, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      v39 = *v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDE8, &unk_2528C2530);
      sub_2528BEC20();
      sub_25271CD64();
      v40 = sub_2528BE6E0();
      v46 = v39;
      sub_2528BE6C0();
      v41 = v44;
      v44[3] = &type metadata for TriggerEventType.CurrentUserPresenceCase;
      result = sub_25271FFA8();
      v41[4] = result;
      *v41 = v40;
    }
  }

  else
  {
    (*(v13 + 32))(v22, v26, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE18, &unk_2528C2550);
    sub_2528BEC20();
    v35 = sub_2528BE720();
    v36 = *(v13 + 16);
    v36(v20, v22, v12);
    v36(v17, v20, v12);
    sub_2528BE6C0();
    v37 = *(v13 + 8);
    v37(v20, v12);
    v38 = v44;
    v44[3] = &type metadata for TriggerEventType.AbsoluteTimeCase;
    v38[4] = sub_252720128();
    *v38 = v35;
    return (v37)(v22, v12);
  }

  return result;
}

uint64_t sub_25271ED78@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE30, &qword_2528C2560);
  v14 = *(v16 - 8);
  v1 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = &v13 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE38, &qword_2528C2568);
  v4 = *(v13 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v13);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TriggerEventType(0);
  v9 = sub_25272017C();
  MEMORY[0x2530A60E0](v9, v8, &type metadata for TriggerEventType.AbsoluteTimeCase.Resolver, v9);
  v10 = sub_2527201D0();
  MEMORY[0x2530A60E0](v10, v8, &type metadata for TriggerEventType.SignificantTimeCase.Resolver, v10);
  v11 = sub_252720224();
  MEMORY[0x2530A60E0](v11, v8, &type metadata for TriggerEventType.CurrentUserPresenceCase.Resolver, v11);
  sub_25271DA3C(&qword_27F4FBDE0, type metadata accessor for TriggerEventType);
  sub_2528BEAA0();
  v21 = v9;
  v22 = &type metadata for TriggerEventType.AbsoluteTimeCase.Resolver;
  sub_2528BEA90();
  v19 = &type metadata for TriggerEventType.AbsoluteTimeCase.Resolver;
  v20 = &type metadata for TriggerEventType.SignificantTimeCase.Resolver;
  v17 = v9;
  v18 = v10;
  sub_2528BEA90();
  (*(v14 + 8))(v3, v16);
  return (*(v4 + 8))(v7, v13);
}

uint64_t sub_25271F03C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25271F060, 0, 0);
}

uint64_t sub_25271F060()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_2528BE6B0();
  v3 = type metadata accessor for TriggerEventType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_25271F11C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE18, &unk_2528C2550);
  sub_2528BEC20();
  result = sub_2528BE720();
  *a1 = result;
  return result;
}

uint64_t sub_25271F1C4(uint64_t a1)
{
  v2 = sub_25272284C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271F210()
{
  sub_25272284C();

  return sub_2528BE550();
}

uint64_t sub_25271F29C(uint64_t a1)
{
  v2 = sub_2527218F4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271F2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25271F3AC;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_25271F3AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25271F4A0(uint64_t a1)
{
  v2 = sub_2527216A4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25271F518(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2528BE9D0();
}

uint64_t sub_25271F578(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_25271F5A0, 0, 0);
}

uint64_t sub_25271F5A0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0) + 48);
  sub_2528BE6B0();
  *v3 = *(v0 + 40);
  sub_2528BE6B0();
  v5 = type metadata accessor for TriggerEventType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25271F694@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE00, &qword_2528C2540);
  sub_2528BEC20();
  sub_25271C8F4();
  v4 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE08, &qword_2528C2548);
  sub_2528BEC20();
  result = sub_2528BE710();
  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_25271F77C(uint64_t a1)
{
  v2 = sub_2527227F8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271F7C8()
{
  sub_2527227F8();

  return sub_2528BE550();
}

uint64_t sub_25271F854(uint64_t a1)
{
  v2 = sub_252721C4C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271F8A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2528BEC20();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_2528BE8D0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_2528BE900();
}

uint64_t sub_25271FA68(uint64_t a1)
{
  v2 = sub_2527219FC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25271FAB4()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F5027E0);
  __swift_project_value_buffer(v0, qword_27F5027E0);
  return sub_2528BE9D0();
}

uint64_t sub_25271FB18(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25271FB3C, 0, 0);
}

uint64_t sub_25271FB3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  v3 = type metadata accessor for TriggerEventType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25271FC00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDE8, &unk_2528C2530);
  sub_2528BEC20();
  sub_25271CD64();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_25271FCB0(uint64_t a1)
{
  v2 = sub_2527227A4();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271FCFC()
{
  sub_2527227A4();

  return sub_2528BE550();
}

uint64_t sub_25271FD88@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2528BE9F0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_25271FE24(uint64_t a1)
{
  v2 = sub_252721FA4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271FE70(uint64_t a1)
{
  v2 = sub_252721D54();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25271FEBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252720128();
  *(v0 + 32) = &type metadata for TriggerEventType.AbsoluteTimeCase;
  *(v0 + 40) = v1;
  v2 = sub_2527200D4();
  *(v0 + 48) = &type metadata for TriggerEventType.SignificantTimeCase;
  *(v0 + 56) = v2;
  v3 = sub_25271FFA8();
  *(v0 + 64) = &type metadata for TriggerEventType.CurrentUserPresenceCase;
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_25271FF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerEventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25271FFA8()
{
  result = qword_27F4FBDF0;
  if (!qword_27F4FBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBDF0);
  }

  return result;
}

uint64_t sub_25271FFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25272006C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2527200D4()
{
  result = qword_27F4FBE10;
  if (!qword_27F4FBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE10);
  }

  return result;
}

unint64_t sub_252720128()
{
  result = qword_27F4FBE20;
  if (!qword_27F4FBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE20);
  }

  return result;
}

unint64_t sub_25272017C()
{
  result = qword_27F4FBE40;
  if (!qword_27F4FBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE40);
  }

  return result;
}

unint64_t sub_2527201D0()
{
  result = qword_27F4FBE48;
  if (!qword_27F4FBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE48);
  }

  return result;
}

unint64_t sub_252720224()
{
  result = qword_27F4FBE50;
  if (!qword_27F4FBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE50);
  }

  return result;
}

uint64_t sub_252720278()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_2527202EC()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_252720340()
{
  sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError);

  return sub_2528BEC00();
}

uint64_t sub_2527203AC(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_252720418(void *a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2527204A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_252720534()
{
  sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError);

  return sub_2528BEC00();
}

uint64_t sub_2527205A0(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_25272060C(void *a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_25272069C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_252720718()
{
  v2 = *v0;
  sub_2528C1130();
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_252720778(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0A0, type metadata accessor for HMError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2527207E4(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0A0, type metadata accessor for HMError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_252720850(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2527208BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_252720940(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC058, type metadata accessor for MTRError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2527209AC(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC058, type metadata accessor for MTRError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_252720A18(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_252720A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_252720B08(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v74 = sub_2528BEB10();
  v72 = *(v74 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE68, &qword_2528C2570);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v71 = &v67 - v13;
  v14 = sub_2528BEC90();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TriggerEventType(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE70, &qword_2528C2578);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v67 - v32;
  v34 = &v67 + *(v31 + 56) - v32;
  sub_25271FF44(a1, &v67 - v32);
  sub_25271FF44(v76, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_25271FF44(v33, v26);
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = *v26;
        v38 = *v34;
        v39 = v71;
        sub_25271FFFC(&v26[v36], v71);
        v40 = v75;
        sub_25271FFFC(&v34[v36], v75);
        if (v37)
        {
          v41 = 0x7465736E7573;
        }

        else
        {
          v41 = 0x657369726E7573;
        }

        if (v37)
        {
          v42 = 0xE600000000000000;
        }

        else
        {
          v42 = 0xE700000000000000;
        }

        if (v38)
        {
          v43 = 0x7465736E7573;
        }

        else
        {
          v43 = 0x657369726E7573;
        }

        if (v38)
        {
          v44 = 0xE600000000000000;
        }

        else
        {
          v44 = 0xE700000000000000;
        }

        if (v41 == v43 && v42 == v44)
        {

          v46 = v73;
          v45 = v74;
          v47 = v72;
        }

        else
        {
          v57 = sub_2528C1060();

          v46 = v73;
          v45 = v74;
          v47 = v72;
          if ((v57 & 1) == 0)
          {
            sub_2527213D8(v40, &qword_27F4FBDC0, &qword_2528C23E8);
            sub_2527213D8(v39, &qword_27F4FBDC0, &qword_2528C23E8);
            goto LABEL_54;
          }
        }

        v58 = *(v70 + 48);
        sub_25272006C(v39, v46, &qword_27F4FBDC0, &qword_2528C23E8);
        sub_25272006C(v40, v46 + v58, &qword_27F4FBDC0, &qword_2528C23E8);
        v59 = v40;
        v60 = *(v47 + 48);
        if (v60(v46, 1, v45) == 1)
        {
          sub_2527213D8(v59, &qword_27F4FBDC0, &qword_2528C23E8);
          sub_2527213D8(v39, &qword_27F4FBDC0, &qword_2528C23E8);
          if (v60(v46 + v58, 1, v45) == 1)
          {
            sub_2527213D8(v46, &qword_27F4FBDC0, &qword_2528C23E8);
            goto LABEL_48;
          }
        }

        else
        {
          v61 = v69;
          sub_25272006C(v46, v69, &qword_27F4FBDC0, &qword_2528C23E8);
          if (v60(v46 + v58, 1, v45) != 1)
          {
            v62 = v68;
            (*(v47 + 32))(v68, v46 + v58, v45);
            sub_25271DA3C(&qword_27F4FBE78, MEMORY[0x277CC8990]);
            v63 = v61;
            v64 = sub_2528C0930();
            v65 = *(v47 + 8);
            v65(v62, v45);
            sub_2527213D8(v75, &qword_27F4FBDC0, &qword_2528C23E8);
            sub_2527213D8(v39, &qword_27F4FBDC0, &qword_2528C23E8);
            v65(v63, v45);
            sub_2527213D8(v46, &qword_27F4FBDC0, &qword_2528C23E8);
            if (v64)
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }

          sub_2527213D8(v75, &qword_27F4FBDC0, &qword_2528C23E8);
          sub_2527213D8(v39, &qword_27F4FBDC0, &qword_2528C23E8);
          (*(v47 + 8))(v61, v45);
        }

        sub_2527213D8(v46, &qword_27F4FBE68, &qword_2528C2570);
LABEL_54:
        sub_25272137C(v33);
        goto LABEL_55;
      }

      sub_2527213D8(&v26[v36], &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      sub_25271FF44(v33, v23);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v48 = *v34;
        if (*v23)
        {
          v49 = 0x6F48657669727261;
        }

        else
        {
          v49 = 0x6D6F48657661656CLL;
        }

        if (*v23)
        {
          v50 = 0xEA0000000000656DLL;
        }

        else
        {
          v50 = 0xE900000000000065;
        }

        if (v48)
        {
          v51 = 0x6F48657669727261;
        }

        else
        {
          v51 = 0x6D6F48657661656CLL;
        }

        if (v48)
        {
          v52 = 0xEA0000000000656DLL;
        }

        else
        {
          v52 = 0xE900000000000065;
        }

        if (v49 == v51 && v50 == v52)
        {

          goto LABEL_48;
        }

        v54 = sub_2528C1060();

        if (v54)
        {
LABEL_48:
          sub_25272137C(v33);
          v55 = 1;
          return v55 & 1;
        }

        goto LABEL_54;
      }
    }

LABEL_41:
    sub_2527213D8(v33, &qword_27F4FBE70, &qword_2528C2578);
LABEL_55:
    v55 = 0;
    return v55 & 1;
  }

  sub_25271FF44(v33, v28);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v15 + 8))(v28, v14);
    goto LABEL_41;
  }

  (*(v15 + 32))(v18, v34, v14);
  v55 = sub_2528BEC70();
  v56 = *(v15 + 8);
  v56(v18, v14);
  v56(v28, v14);
  sub_25272137C(v33);
  return v55 & 1;
}

uint64_t sub_25272137C(uint64_t a1)
{
  v2 = type metadata accessor for TriggerEventType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527213D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25272152C(uint64_t *a1, int a2)
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

uint64_t sub_252721574(uint64_t result, int a2, int a3)
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

unint64_t sub_2527215F4()
{
  result = qword_27F4FBF30;
  if (!qword_27F4FBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF30);
  }

  return result;
}

unint64_t sub_25272164C()
{
  result = qword_27F4FBF38;
  if (!qword_27F4FBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF38);
  }

  return result;
}

unint64_t sub_2527216A4()
{
  result = qword_27F4FBF40;
  if (!qword_27F4FBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF40);
  }

  return result;
}

unint64_t sub_2527216F8()
{
  result = qword_27F4FBF48;
  if (!qword_27F4FBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF48);
  }

  return result;
}

unint64_t sub_252721750()
{
  result = qword_27F4FBF50;
  if (!qword_27F4FBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF50);
  }

  return result;
}

unint64_t sub_2527217A8()
{
  result = qword_27F4FBF58;
  if (!qword_27F4FBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF58);
  }

  return result;
}

unint64_t sub_252721800()
{
  result = qword_27F4FBF60;
  if (!qword_27F4FBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF60);
  }

  return result;
}

unint64_t sub_252721858()
{
  result = qword_27F4FBF68;
  if (!qword_27F4FBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF68);
  }

  return result;
}

unint64_t sub_2527218F4()
{
  result = qword_27F4FBF80;
  if (!qword_27F4FBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF80);
  }

  return result;
}

unint64_t sub_25272194C()
{
  result = qword_27F4FBF88;
  if (!qword_27F4FBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF88);
  }

  return result;
}

unint64_t sub_2527219A4()
{
  result = qword_27F4FBF90;
  if (!qword_27F4FBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF90);
  }

  return result;
}

unint64_t sub_2527219FC()
{
  result = qword_27F4FBF98;
  if (!qword_27F4FBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF98);
  }

  return result;
}

unint64_t sub_252721A50()
{
  result = qword_27F4FBFA0;
  if (!qword_27F4FBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFA0);
  }

  return result;
}

unint64_t sub_252721AA8()
{
  result = qword_27F4FBFA8;
  if (!qword_27F4FBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFA8);
  }

  return result;
}

unint64_t sub_252721B00()
{
  result = qword_27F4FBFB0;
  if (!qword_27F4FBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFB0);
  }

  return result;
}

unint64_t sub_252721B58()
{
  result = qword_27F4FBFB8;
  if (!qword_27F4FBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFB8);
  }

  return result;
}

unint64_t sub_252721BB0()
{
  result = qword_27F4FBFC0;
  if (!qword_27F4FBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFC0);
  }

  return result;
}

unint64_t sub_252721C4C()
{
  result = qword_27F4FBFD8;
  if (!qword_27F4FBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFD8);
  }

  return result;
}

unint64_t sub_252721CA4()
{
  result = qword_27F4FBFE0;
  if (!qword_27F4FBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFE0);
  }

  return result;
}

unint64_t sub_252721CFC()
{
  result = qword_27F4FBFE8;
  if (!qword_27F4FBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFE8);
  }

  return result;
}

unint64_t sub_252721D54()
{
  result = qword_27F4FBFF0;
  if (!qword_27F4FBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFF0);
  }

  return result;
}

unint64_t sub_252721DA8()
{
  result = qword_27F4FBFF8;
  if (!qword_27F4FBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFF8);
  }

  return result;
}

unint64_t sub_252721E00()
{
  result = qword_27F4FC000;
  if (!qword_27F4FC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC000);
  }

  return result;
}

unint64_t sub_252721E58()
{
  result = qword_27F4FC008;
  if (!qword_27F4FC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC008);
  }

  return result;
}

unint64_t sub_252721EB0()
{
  result = qword_27F4FC010;
  if (!qword_27F4FC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC010);
  }

  return result;
}

unint64_t sub_252721F08()
{
  result = qword_27F4FC018;
  if (!qword_27F4FC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC018);
  }

  return result;
}

unint64_t sub_252721FA4()
{
  result = qword_27F4FC030;
  if (!qword_27F4FC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC030);
  }

  return result;
}

unint64_t sub_252722204()
{
  result = qword_27F4FC080;
  if (!qword_27F4FC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC080);
  }

  return result;
}

void sub_252722464(uint64_t a1, unint64_t *a2)
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

unint64_t sub_25272258C()
{
  result = qword_27F4FC0D8;
  if (!qword_27F4FC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC0D8);
  }

  return result;
}

unint64_t sub_2527225E4()
{
  result = qword_27F4FC0E0;
  if (!qword_27F4FC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC0E0);
  }

  return result;
}

unint64_t sub_25272263C()
{
  result = qword_27F4FC0E8;
  if (!qword_27F4FC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC0E8);
  }

  return result;
}

uint64_t sub_25272275C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2527227A4()
{
  result = qword_27F4FC120;
  if (!qword_27F4FC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC120);
  }

  return result;
}

unint64_t sub_2527227F8()
{
  result = qword_27F4FC138;
  if (!qword_27F4FC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC138);
  }

  return result;
}

unint64_t sub_25272284C()
{
  result = qword_27F4FC140;
  if (!qword_27F4FC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC140);
  }

  return result;
}

uint64_t sub_252722934()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FC158);
  __swift_project_value_buffer(v0, qword_27F4FC158);
  return sub_2528BE9D0();
}

uint64_t static IntentNavigationDestination.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252722A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1E8, &qword_2528C38C0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F0, &qword_2528C38C8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C35E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = sub_25278CBD0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FC170 = v9;
  return result;
}

uint64_t static IntentNavigationDestination.caseDisplayRepresentations.getter()
{
  if (qword_27F4FB5D8 != -1)
  {
    swift_once();
  }
}

HomeAppIntents::IntentNavigationDestination_optional __swiftcall IntentNavigationDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IntentNavigationDestination.rawValue.getter()
{
  v1 = 0x726577736E61;
  v2 = 0x656369746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x686372616573;
  }

  if (*v0)
  {
    v1 = 0x6B6E694C70656564;
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

void sub_252722D44(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x726577736E61;
  v4 = 0x656369746F6ELL;
  if (*v1 != 2)
  {
    v4 = 0x686372616573;
  }

  if (*v1)
  {
    v3 = 0x6B6E694C70656564;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_252722DBC()
{
  result = qword_27F4FC178;
  if (!qword_27F4FC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC178);
  }

  return result;
}

unint64_t sub_252722E14()
{
  result = qword_27F4FC180;
  if (!qword_27F4FC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC180);
  }

  return result;
}

unint64_t sub_252722E6C()
{
  result = qword_27F4FC188;
  if (!qword_27F4FC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC188);
  }

  return result;
}

unint64_t sub_252722EC4()
{
  result = qword_27F4FC190;
  if (!qword_27F4FC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC190);
  }

  return result;
}

uint64_t sub_252722F18()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_252722FD0()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_252723074()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_25272312C()
{
  result = qword_27F4FC198;
  if (!qword_27F4FC198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC1A0, &qword_2528C36D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC198);
  }

  return result;
}

unint64_t sub_2527231A4()
{
  result = qword_27F4FC1A8;
  if (!qword_27F4FC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1A8);
  }

  return result;
}

unint64_t sub_2527231F8()
{
  result = qword_27F4FC1B0;
  if (!qword_27F4FC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1B0);
  }

  return result;
}

unint64_t sub_25272324C()
{
  result = qword_27F4FC1B8;
  if (!qword_27F4FC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1B8);
  }

  return result;
}

unint64_t sub_2527232A4()
{
  result = qword_27F4FC1C0;
  if (!qword_27F4FC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1C0);
  }

  return result;
}

uint64_t sub_2527232F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2527233F0()
{
  result = qword_27F4FC1C8;
  if (!qword_27F4FC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1C8);
  }

  return result;
}

uint64_t sub_252723444(uint64_t a1)
{
  v2 = sub_2527233F0();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_252723494()
{
  result = qword_27F4FC1D0;
  if (!qword_27F4FC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1D0);
  }

  return result;
}

unint64_t sub_2527234EC()
{
  result = qword_27F4FC1D8;
  if (!qword_27F4FC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1D8);
  }

  return result;
}

unint64_t sub_252723544()
{
  result = qword_27F4FC1E0;
  if (!qword_27F4FC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1E0);
  }

  return result;
}

uint64_t sub_252723598()
{
  if (qword_27F4FB5D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2527235F4(uint64_t a1)
{
  v2 = sub_2527232A4();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for IntentNavigationDestination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntentNavigationDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_252723798(uint64_t a1@<X0>, char *a2@<X8>)
{
  v272 = a2;
  v263 = sub_2528C03B0();
  v267 = *(v263 - 8);
  v3 = *(v267 + 8);
  v4 = MEMORY[0x28223BE20](v263);
  v6 = &v252 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v252 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v252 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v260 = &v252 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v256 = &v252 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v259 = &v252 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v257 = &v252 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v258 = &v252 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v252 - v24;
  MEMORY[0x28223BE20](v23);
  v262 = (&v252 - v26);
  v265 = sub_2528C03F0();
  v269 = *(v265 - 8);
  v27 = *(v269 + 64);
  v28 = MEMORY[0x28223BE20](v265);
  v30 = &v252 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v264 = &v252 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v252 - v37;
  v271 = sub_2528C04F0();
  v273 = *(v271 - 8);
  v39 = *(v273 + 64);
  MEMORY[0x28223BE20](v271);
  v41 = MEMORY[0x28223BE20](&v252 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v41);
  v43 = MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v252 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v48 = MEMORY[0x28223BE20](v47);
  v266 = &v252 - v53;
  v54 = *a1;
  v268 = *(a1 + 8);
  v55 = *(a1 + 16);
  v56 = *(a1 + 32);
  if (v56 >> 1 == 49)
  {
    v255 = *(a1 + 24);
    v72 = v55;
    v260 = v48;
    v261 = v54;
    v73 = v6;
    v266 = v50;
    sub_2528BFB20();
    sub_2528BFA40();
    v74 = v273;
    v75 = v271;
    if ((*(v273 + 48))(v36, 1, v271) == 1)
    {
      sub_2527213D8(v36, &qword_27F4FC208, &qword_2528C6B40);
      v76 = v268;
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v77 = sub_2528C08B0();
      __swift_project_value_buffer(v77, qword_27F5025C8);
      v78 = v72;

      v79 = sub_2528C0890();
      v80 = sub_2528C0CF0();
      v81 = v261;
      v82 = v72;
      v83 = v255;
      sub_25272C15C(v261, v76, v82, v255, v56);
      if (os_log_type_enabled(v79, v80))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v280 = v85;
        *v84 = 136315394;
        *(v84 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v280);
        *(v84 + 12) = 2082;
        v275 = v81;
        v276 = v76;
        v277 = v78;
        v278 = v83;
        v279 = v56;

        v86 = sub_252873604();
        v88 = v87;
        sub_25272C15C(v275, v276, v277, v278, v279);
        v89 = sub_2527389AC(v86, v88, &v280);

        *(v84 + 14) = v89;
        _os_log_impl(&dword_252711000, v79, v80, "%s: No RVC Cluster found for RVC command (%{public}s)", v84, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v85, -1, -1);
        MEMORY[0x2530A8D80](v84, -1, -1);
      }

      v90 = 4;
      goto LABEL_114;
    }

    v107 = v266;
    (*(v74 + 32))();
    sub_2528C0400();
    sub_2528784C8(&v280);
    v108 = (v267 + 8);
    v109 = *(v267 + 1);
    v110 = v9;
    v111 = v263;
    v109(v110, v263);
    v112 = v280;
    if (v280 == 27)
    {
      v113 = v264;
      sub_2528C0410();
      sub_2528788D0(&v275);
      (*(v269 + 8))(v113, v265);
      v112 = v275;
    }

    if (v261 <= 1u)
    {
      if (v261)
      {
        if (v261 != 1 || v112 != 1)
        {
          goto LABEL_47;
        }
      }

      else if (v112)
      {
        goto LABEL_47;
      }
    }

    else if (v261 == 2)
    {
      if (v112 != 2)
      {
        goto LABEL_47;
      }
    }

    else if (v261 != 4 && v261 != 6 || (v112 | 2) != 6)
    {
LABEL_47:
      v267 = v109;
      v135 = v264;
      sub_2528C0410();
      v136 = v107;
      v137 = v269;
      v138 = v265;
      (*(v269 + 104))(v30, *MEMORY[0x277D16868], v265);
      v139 = sub_2528C03E0();
      v140 = *(v137 + 8);
      v140(v30, v138);
      v140(v135, v138);
      v141 = v268;
      if ((v139 & 1) != 0 && (v142 = v262, sub_2528C0400(), sub_252725AC0(v142, v141, &v275), v267(v142, v111), v143 = v275, v275 != 20))
      {
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v148 = sub_2528C08B0();
        __swift_project_value_buffer(v148, qword_27F5025C8);
        v149 = sub_2528C0890();
        v150 = sub_2528C0CF0();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v275 = v153;
          *v151 = 136315394;
          *(v151 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v151 + 12) = 2114;
          sub_25272C1A8();
          swift_allocError();
          *v154 = v143;
          v155 = _swift_stdlib_bridgeErrorToNSError();
          *(v151 + 14) = v155;
          *v152 = v155;
          _os_log_impl(&dword_252711000, v149, v150, "%s: Device has an existing error state: (%{public}@)", v151, 0x16u);
          sub_2527213D8(v152, &qword_27F4FC230, &qword_2528C3928);
          MEMORY[0x2530A8D80](v152, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v153);
          MEMORY[0x2530A8D80](v153, -1, -1);
          MEMORY[0x2530A8D80](v151, -1, -1);
        }

        (*(v273 + 8))(v136, v271);
        *v272 = v143;
      }

      else
      {
        isa = v141[2].isa;
        if (!isa)
        {
LABEL_112:
          (*(v273 + 8))(v266, v271);
          goto LABEL_113;
        }

        v145 = v268 + 4;
        v146 = v268 + 4;
        while (2)
        {
          if (isa)
          {
            switch(LOBYTE(v146->isa))
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 9:
              case 0xA:
              case 0xB:
              case 0xC:
              case 0xD:
                v147 = sub_2528C1060();

                v146 = (v146 + 1);
                isa = (isa - 1);
                if ((v147 & 1) == 0)
                {
                  continue;
                }

                goto LABEL_112;
              default:
                goto LABEL_111;
            }
          }

          break;
        }

        v156 = v268[2].isa;
        v157 = v145;
        while (2)
        {
          if (v156)
          {
            switch(*v157)
            {
              case 1:
                goto LABEL_111;
              default:
                v158 = sub_2528C1060();

                ++v157;
                v156 = (v156 - 1);
                if ((v158 & 1) == 0)
                {
                  continue;
                }

                goto LABEL_112;
            }
          }

          break;
        }

        v178 = v268[2].isa;
        while (2)
        {
          if (v178)
          {
            switch(LOBYTE(v145->isa))
            {
              case 2:
LABEL_111:

                goto LABEL_112;
              default:
                v179 = sub_2528C1060();

                v145 = (v145 + 1);
                v178 = (v178 - 1);
                if ((v179 & 1) == 0)
                {
                  continue;
                }

                goto LABEL_112;
            }
          }

          break;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v193 = sub_2528C08B0();
        __swift_project_value_buffer(v193, qword_27F5025C8);
        v194 = v268;

        v195 = sub_2528C0890();
        v196 = sub_2528C0CF0();

        v197 = os_log_type_enabled(v195, v196);
        v198 = v266;
        if (v197)
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v275 = v200;
          *v199 = 136315394;
          *(v199 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v199 + 12) = 2082;
          v201 = MEMORY[0x2530A81A0](v194, &type metadata for RobotVacuumCleanerCleanMode);
          v203 = sub_2527389AC(v201, v202, &v275);

          *(v199 + 14) = v203;
          _os_log_impl(&dword_252711000, v195, v196, "%s: Clean Mode contains neither vacuum or mop: (%{public}s)", v199, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v200, -1, -1);
          MEMORY[0x2530A8D80](v199, -1, -1);
        }

        v204 = v271;
        type metadata accessor for HomeAppIntentError();
        sub_25272C1FC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        swift_allocError();
        *v205 = 45;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v273 + 8))(v198, v204);
      }

      return;
    }

    v267 = v108;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v127 = sub_2528C08B0();
    __swift_project_value_buffer(v127, qword_27F5025C8);
    v128 = v273;
    v129 = v260;
    (*(v273 + 16))(v260, v107, v75);
    v130 = sub_2528C0890();
    LODWORD(v270) = sub_2528C0CF0();
    if (os_log_type_enabled(v130, v270))
    {
      v131 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      v275 = v268;
      *v131 = 136315394;
      *(v131 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
      *(v131 + 12) = 2082;
      sub_2528C0400();
      sub_2528784C8(&v280);
      v109(v73, v111);
      v132 = v280;
      if (v280 == 27)
      {
        v133 = v264;
        sub_2528C0410();
        sub_2528788D0(&v280);
        (*(v269 + 8))(v133, v265);
        v132 = v280;
      }

      v274 = v132;
      v159 = RobotVacuumCleanerRunState.rawValue.getter();
      v161 = v160;
      v162 = *(v273 + 8);
      v163 = v129;
      v164 = v271;
      v162(v163, v271);
      v165 = sub_2527389AC(v159, v161, &v275);

      *(v131 + 14) = v165;
      _os_log_impl(&dword_252711000, v130, v270, "%s: Device is already in requested state: (%{public}s) ", v131, 0x16u);
      v166 = v268;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v166, -1, -1);
      MEMORY[0x2530A8D80](v131, -1, -1);

      v162(v266, v164);
    }

    else
    {

      v134 = *(v128 + 8);
      v134(v129, v75);
      v134(v107, v75);
    }

    *v272 = 0;
    return;
  }

  if (v56 >> 1 != 48)
  {
    goto LABEL_113;
  }

  v255 = *(a1 + 24);
  v57 = v55;
  v58 = v49;
  v253 = v46;
  v254 = v52;
  v252 = v51;
  v261 = v54;
  sub_2528BFB20();
  sub_2528BFA40();
  v59 = v273;
  v60 = v271;
  if ((*(v273 + 48))(v38, 1, v271) == 1)
  {
    sub_2527213D8(v38, &qword_27F4FC208, &qword_2528C6B40);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v61 = sub_2528C08B0();
    __swift_project_value_buffer(v61, qword_27F5025C8);
    v62 = sub_2528C0890();
    v63 = sub_2528C0CF0();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v268;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v280 = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v280);
      *(v66 + 12) = 2082;
      v275 = v261;
      v276 = v65;
      v277 = v57;
      v278 = v255;
      v279 = v56;
      v68 = sub_252873604();
      v70 = v69;
      sub_25272C15C(v275, v276, v277, v278, v279);
      v71 = sub_2527389AC(v68, v70, &v280);

      *(v66 + 14) = v71;
      _os_log_impl(&dword_252711000, v62, v63, "%s: No RVC Cluster found for RVC command (%{public}s)", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v67, -1, -1);
      MEMORY[0x2530A8D80](v66, -1, -1);
    }

    *v272 = 4;
    return;
  }

  v270 = v12;
  (*(v59 + 32))(v266, v38, v60);
  v91 = v264;
  sub_2528C0410();
  v92 = v269;
  v93 = v265;
  (*(v269 + 104))(v30, *MEMORY[0x277D16868], v265);
  sub_25272C1FC(&qword_27F4FC2C0, MEMORY[0x277D168A0]);
  v94 = sub_2528C0930();
  v95 = *(v92 + 8);
  v95(v30, v93);
  v269 = v92 + 8;
  v95(v91, v93);
  v96 = v60;
  if ((v94 & 1) == 0)
  {
    v97 = v262;
    sub_2528C0400();
    sub_2528C0370();
    v98 = MEMORY[0x2530A79E0](v97, v25);
    v99 = (v267 + 8);
    v100 = *(v267 + 1);
    v101 = v263;
    (v100)(v25, v263);
    v267 = v99;
    (v100)(v97, v101);
    if (v98)
    {
      if (!v261)
      {
        v167 = v259;
        v102 = v266;
        sub_2528C0400();
        sub_2528784C8(&v275);
        v168 = v263;
        (v100)(v167, v263);
        v169 = v275;
        if (v275 == 27)
        {
          v170 = v264;
          sub_2528C0410();
          sub_2528788D0(&v275);
          v95(v170, v265);
          v169 = v275;
        }

        if (v169 == 4 || v169 == 1)
        {
          v171 = v273;
LABEL_83:
          (*(v171 + 8))(v102, v96);
          goto LABEL_113;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v206 = sub_2528C08B0();
        __swift_project_value_buffer(v206, qword_27F5025C8);
        v207 = v273;
        v208 = v253;
        (*(v273 + 16))(v253, v102, v96);
        v209 = sub_2528C0890();
        v210 = v102;
        v211 = sub_2528C0CF0();
        if (os_log_type_enabled(v209, v211))
        {
          v212 = swift_slowAlloc();
          v270 = swift_slowAlloc();
          v275 = v270;
          *v212 = 136315394;
          *(v212 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v212 + 12) = 2082;
          v213 = v256;
          sub_2528C0400();
          sub_2528784C8(&v280);
          (v100)(v213, v168);
          v214 = v280;
          if (v280 == 27)
          {
            v215 = v264;
            sub_2528C0410();
            sub_2528788D0(&v280);
            v95(v215, v265);
            v214 = v280;
          }

          v236 = v208;
          v274 = v214;
          v237 = RobotVacuumCleanerRunState.rawValue.getter();
          v239 = v238;
          v240 = *(v273 + 8);
          v241 = v236;
          v242 = v271;
          v240(v241, v271);
          v243 = sub_2527389AC(v237, v239, &v275);

          *(v212 + 14) = v243;
          _os_log_impl(&dword_252711000, v209, v211, "%s: Cannot pause. Current state (%{public}s) is not an active state", v212, 0x16u);
          v244 = v270;
          goto LABEL_109;
        }

LABEL_104:

        v221 = *(v207 + 8);
        v221(v208, v96);
        v221(v210, v96);
LABEL_110:
        v90 = 1;
        v251 = v272;
LABEL_115:
        *v251 = v90;
        return;
      }

      v102 = v266;
      if (v261 == 1)
      {
        v103 = v260;
        sub_2528C0400();
        sub_2528784C8(&v280);
        v104 = v263;
        (v100)(v103, v263);
        v105 = v280;
        if (v280 == 27)
        {
          v106 = v264;
          sub_2528C0410();
          sub_2528788D0(&v275);
          v95(v106, v265);
          v105 = v275;
        }

        else
        {
          LOBYTE(v275) = v280;
        }

        LOBYTE(v280) = v105;
        if (RobotVacuumCleanerRunState.rawValue.getter() == 0x646573756170 && v180 == 0xE600000000000000)
        {

          v171 = v273;
          goto LABEL_83;
        }

        v181 = sub_2528C1060();

        v171 = v273;
        if (v181)
        {
          goto LABEL_83;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v216 = sub_2528C08B0();
        __swift_project_value_buffer(v216, qword_27F5025C8);
        v207 = v273;
        v208 = v252;
        (*(v273 + 16))(v252, v102, v96);
        v209 = sub_2528C0890();
        v210 = v102;
        v217 = sub_2528C0CF0();
        if (os_log_type_enabled(v209, v217))
        {
          v212 = swift_slowAlloc();
          v268 = swift_slowAlloc();
          v275 = v268;
          *v212 = 136315394;
          *(v212 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v212 + 12) = 2082;
          v218 = v270;
          sub_2528C0400();
          sub_2528784C8(&v280);
          (v100)(v218, v104);
          v219 = v280;
          if (v280 == 27)
          {
            v220 = v264;
            sub_2528C0410();
            sub_2528788D0(&v280);
            v95(v220, v265);
            v219 = v280;
          }

          v245 = v208;
          v274 = v219;
          v246 = RobotVacuumCleanerRunState.rawValue.getter();
          v248 = v247;
          v240 = *(v273 + 8);
          v249 = v245;
          v242 = v271;
          v240(v249, v271);
          v250 = sub_2527389AC(v246, v248, &v275);

          *(v212 + 14) = v250;
          _os_log_impl(&dword_252711000, v209, v217, "%s: Cannot resume. Current state (%{public}s) is not paused", v212, 0x16u);
          v244 = v268;
LABEL_109:
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v244, -1, -1);
          MEMORY[0x2530A8D80](v212, -1, -1);

          v240(v266, v242);
          goto LABEL_110;
        }

        goto LABEL_104;
      }

      v172 = sub_25274336C(&unk_286493A98);
      v173 = v258;
      sub_2528C0400();
      sub_2528784C8(&v275);
      v174 = v100;
      v175 = v263;
      v270 = v174;
      (v174)(v173, v263);
      v176 = v275;
      if (v275 == 27)
      {
        v177 = v264;
        sub_2528C0410();
        sub_2528788D0(&v275);
        v95(v177, v265);
        v176 = v275;
      }

      if ((sub_252818A28(v176, v172) & 1) == 0)
      {
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v182 = sub_2528C08B0();
        __swift_project_value_buffer(v182, qword_27F5025C8);
        v183 = v273;
        v184 = v254;
        v185 = v266;
        (*(v273 + 16))(v254, v266, v96);

        v186 = sub_2528C0890();
        v187 = v96;
        v188 = sub_2528C0CF0();

        if (os_log_type_enabled(v186, v188))
        {
          v268 = v186;
          v189 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          v275 = v262;
          *v189 = 136315650;
          *(v189 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v189 + 12) = 2082;
          v190 = v257;
          sub_2528C0400();
          sub_2528784C8(&v280);
          (v270)(v190, v175);
          v191 = v280;
          if (v280 == 27)
          {
            v192 = v264;
            sub_2528C0410();
            sub_2528788D0(&v280);
            v95(v192, v265);
            v191 = v280;
          }

          v274 = v191;
          v223 = RobotVacuumCleanerRunState.rawValue.getter();
          v225 = v224;
          v226 = *(v273 + 8);
          v227 = v184;
          v228 = v271;
          v226(v227, v271);
          v229 = sub_2527389AC(v223, v225, &v275);

          *(v189 + 14) = v229;
          *(v189 + 22) = 2082;
          sub_25272C244();
          v230 = sub_2528C0C80();
          v232 = v231;

          v233 = sub_2527389AC(v230, v232, &v275);

          *(v189 + 24) = v233;
          v234 = v268;
          _os_log_impl(&dword_252711000, v268, v188, "%s: Cannot cancel. Current state (%{public}s) is not an allowed states (%{public}s)", v189, 0x20u);
          v235 = v262;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v235, -1, -1);
          MEMORY[0x2530A8D80](v189, -1, -1);

          v226(v266, v228);
        }

        else
        {

          v222 = *(v183 + 8);
          v222(v184, v187);
          v222(v185, v187);
        }

        goto LABEL_110;
      }

      (*(v273 + 8))(v102, v96);

LABEL_113:
      v90 = 20;
LABEL_114:
      v251 = v272;
      goto LABEL_115;
    }
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v114 = sub_2528C08B0();
  __swift_project_value_buffer(v114, qword_27F5025C8);
  v115 = v273;
  v116 = v266;
  (*(v273 + 16))(v58, v266, v96);
  v117 = sub_2528C0890();
  v118 = v96;
  v119 = sub_2528C0CF0();
  if (os_log_type_enabled(v117, v119))
  {
    v120 = swift_slowAlloc();
    v269 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v275 = v270;
    *v120 = 136315394;
    *(v120 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
    *(v120 + 12) = 2114;
    sub_25272C1FC(&qword_27F4FC2C8, MEMORY[0x277D16828]);
    swift_allocError();
    sub_2528C0400();
    v121 = _swift_stdlib_bridgeErrorToNSError();
    v122 = *(v115 + 8);
    v122(v58, v118);
    *(v120 + 14) = v121;
    v123 = v269;
    *v269 = v121;
    _os_log_impl(&dword_252711000, v117, v119, "%s: Device has an existing error state: (%{public}@)", v120, 0x16u);
    sub_2527213D8(v123, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v123, -1, -1);
    v124 = v270;
    __swift_destroy_boxed_opaque_existential_0Tm(v270);
    MEMORY[0x2530A8D80](v124, -1, -1);
    v125 = v120;
    v116 = v266;
    MEMORY[0x2530A8D80](v125, -1, -1);
  }

  else
  {

    v122 = *(v115 + 8);
    v122(v58, v118);
  }

  v126 = v262;
  sub_2528C0400();
  sub_25279F404(v126, v272);
  v122(v116, v118);
}

uint64_t sub_252725AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a1;
  v5 = sub_2528C0390();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528C03B0();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v59 = &v54 - v16;
  v17 = *(a2 + 16);
  v18 = (a2 + 32);
  v19 = v17;
  v20 = (a2 + 32);
  v64 = a3;
  while (2)
  {
    if (v19)
    {
      switch(*v20)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
          v21 = sub_2528C1060();

          ++v20;
          --v19;
          if ((v21 & 1) == 0)
          {
            continue;
          }

          goto LABEL_14;
        default:
          goto LABEL_13;
      }
    }

    break;
  }

  v22 = v17;
  v23 = (a2 + 32);
  while (2)
  {
    v25 = v22-- != 0;
    v26 = v25;
    if (v25)
    {
      switch(*v23)
      {
        case 2:
LABEL_13:

LABEL_14:
          v26 = 1;
          break;
        default:
          v24 = sub_2528C1060();

          ++v23;
          if ((v24 & 1) == 0)
          {
            continue;
          }

          break;
      }
    }

    break;
  }

  v27 = v17;
  v28 = (a2 + 32);
  while (2)
  {
    if (v27)
    {
      switch(*v28)
      {
        case 1:
          v30 = v59;
          goto LABEL_53;
        default:
          v29 = sub_2528C1060();

          ++v28;
          --v27;
          if ((v29 & 1) == 0)
          {
            continue;
          }

          v33 = 1;
          v30 = v59;
          break;
      }
    }

    else
    {
      v30 = v59;
      while (2)
      {
        v32 = v17-- != 0;
        v33 = v32;
        if (v32)
        {
          switch(*v18)
          {
            case 2:
LABEL_53:

              v33 = 1;
              break;
            default:
              v31 = sub_2528C1060();

              ++v18;
              if ((v31 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }
    }

    break;
  }

  v35 = v62;
  v34 = v63;
  v36 = *(v62 + 16);
  v37 = v60;
  v36(v30, v60, v63);
  sub_25279F404(v30, &v65);
  v38 = v65;
  v39 = v61;
  v36(v61, v37, v34);
  v40 = (*(v35 + 88))(v39, v34);
  if (v40 != *MEMORY[0x277D16818])
  {
    if (v40 == *MEMORY[0x277D167F0])
    {
      v46 = v54;
      v36(v54, v39, v34);
      (*(v35 + 96))(v46, v34);
      v48 = v55;
      v47 = v56;
      v49 = v57;
      (*(v56 + 32))(v55, v46, v57);
      v50 = (*(v47 + 88))(v48, v49);
      if (v50 == *MEMORY[0x277D16798] || v50 == *MEMORY[0x277D16788])
      {
        v52 = v26 == 0;
      }

      else
      {
        if (v50 != *MEMORY[0x277D167A0] && v50 != *MEMORY[0x277D167B0] && v50 != *MEMORY[0x277D167A8] && v50 != *MEMORY[0x277D167D0] && v50 != *MEMORY[0x277D167B8] && v50 != *MEMORY[0x277D167C8])
        {
          (*(v47 + 8))(v48, v49);
          goto LABEL_50;
        }

        v52 = v33 == 0;
      }

      if (v52)
      {
        v38 = 20;
      }
    }

LABEL_50:
    v45 = v64;
    goto LABEL_51;
  }

  v41 = v58;
  v36(v58, v39, v34);
  (*(v35 + 96))(v41, v34);
  v42 = sub_2528C03A0();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 88))(v41, v42);
  v45 = v64;
  if (v44 == *MEMORY[0x277D16800])
  {
    v38 = 20;
  }

  else
  {
    (*(v43 + 8))(v41, v42);
  }

LABEL_51:
  result = (*(v35 + 8))(v39, v34);
  *v45 = v38;
  return result;
}

void sub_252726504(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v103 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC200, &qword_2528C3920);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v82 - v7;
  v90 = sub_2528BFE20();
  v88 = *(v90 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2528C03B0();
  v83 = *(v84 - 8);
  v10 = *(v83 + 64);
  v11 = MEMORY[0x28223BE20](v84);
  v82 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v99 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v87 = &v82 - v18;
  v19 = sub_2528C04F0();
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = &v82 - v23;
  v24 = sub_2528BF0B0();
  v96 = *(v24 - 8);
  v97 = v24;
  v25 = *(v96 + 64);
  MEMORY[0x28223BE20](v24);
  v95 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2528BF0F0();
  v93 = *(v27 - 8);
  v94 = v27;
  v28 = *(v93 + 64);
  MEMORY[0x28223BE20](v27);
  v92 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2528BFE00();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2528BFE50();
  v35 = *(v34 - 8);
  v36 = *(v35 + 8);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v82 - v40;
  v42 = *(a1 + 32);
  swift_getErrorValue();
  v43 = sub_252727198(v106[2]);
  v106[0] = a2;
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  (*(v35 + 4))(v39, v41, v34);
  sub_2528BFE40();
  sub_25279FC6C(v33, &v105);
  v45 = v105;
  if (v105 != 20)
  {
    v50 = v92;
    sub_2528BFE30();
    v51 = v95;
    sub_2528BF0D0();
    (*(v93 + 8))(v50, v94);
    LOBYTE(v50) = sub_2528BF080();
    (*(v96 + 8))(v51, v97);
    if (v50)
    {
      sub_2528BFB20();
      v52 = v87;
      sub_2528BFA40();
      v54 = v101;
      v53 = v102;
      if ((*(v101 + 48))(v52, 1, v102) == 1)
      {
        (*(v35 + 1))(v39, v34);
        sub_2527213D8(v52, &qword_27F4FC208, &qword_2528C6B40);
      }

      else
      {
        v100 = v34;
        v74 = v85;
        (*(v54 + 32))(v85, v52, v53);
        LOBYTE(v105) = v45;
        if (DeviceError.rawValue.getter() == 0xD00000000000001DLL && 0x80000002528E4A90 == v75)
        {

          v76 = v98;
        }

        else
        {
          v77 = sub_2528C1060();

          v76 = v98;
          if ((v77 & 1) == 0)
          {
            (*(v54 + 8))(v74, v53);
            (*(v35 + 1))(v39, v100);
            goto LABEL_20;
          }
        }

        v98 = v39;
        v99 = v35;
        sub_2528C0400();
        v78 = v82;
        sub_2528C0370();
        sub_25272C1FC(&qword_27F4FC218, MEMORY[0x277D16828]);
        v79 = v84;
        v80 = sub_2528C0930();
        v81 = *(v83 + 8);
        v81(v78, v79);
        v81(v76, v79);
        if (v80)
        {
          (*(v54 + 8))(v74, v53);
          v99[1](v98, v100);
        }

        else
        {
          sub_2528C0400();
          sub_25279F404(v76, &v105);
          (*(v54 + 8))(v74, v53);
          v99[1](v98, v100);
          if (v105 != 20)
          {
            v67 = v103;
            *v103 = v105;
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      (*(v35 + 1))(v39, v34);
    }

LABEL_20:
    v67 = v103;
    *v103 = v45;
LABEL_21:
    v67[1] = 0;
    v67[2] = 0;
    v67[3] = 0;
    *(v67 + 16) = 512;

    return;
  }

  (*(v35 + 1))(v39, v34);
LABEL_4:

  if ((v43 & ((v42 & 0xFC) == 96)) == 1)
  {
    sub_2528BFB20();
    v46 = v99;
    sub_2528BFA40();
    v48 = v101;
    v47 = v102;
    if ((*(v101 + 48))(v46, 1, v102) == 1)
    {
      sub_2527213D8(v46, &qword_27F4FC208, &qword_2528C6B40);
      v49 = v103;
      *v103 = 0u;
      *(v49 + 1) = 0u;
LABEL_51:
      v61 = 256;
      goto LABEL_52;
    }

    v55 = v89;
    (*(v48 + 32))(v89, v46, v47);
    v56 = v98;
    sub_2528C0400();
    sub_25279F404(v56, v106);
    (*(v48 + 8))(v55, v47);
    if (LOBYTE(v106[0]) != 20)
    {
      v49 = v103;
      *v103 = LOBYTE(v106[0]);
      v49[1] = 0;
      v49[2] = 0;
      v49[3] = 0;
      v61 = 512;
      goto LABEL_52;
    }
  }

  v106[0] = a2;
  v57 = a2;
  type metadata accessor for HMError(0);
  if (!swift_dynamicCast())
  {
    v106[0] = a2;
    v62 = a2;
    type metadata accessor for MTRError(0);
    if (swift_dynamicCast())
    {
      v63 = v105;
      v106[0] = v105;
      sub_25272C1FC(&qword_27F4FC090, type metadata accessor for MTRError);
      sub_2528BEBE0();

      v64 = v105;
      if (v105 > 17)
      {
        v66 = v90;
        v65 = v91;
        if (v105 == 18)
        {
          goto LABEL_41;
        }

        if (v105 == 19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v66 = v90;
        v65 = v91;
        if (v105 == 9)
        {
LABEL_49:
          v49 = v103;
          *v103 = v64;
          goto LABEL_50;
        }

        if (v105 == 17)
        {
LABEL_28:
          v64 = 15;
          goto LABEL_49;
        }
      }
    }

    else
    {
      v66 = v90;
      v65 = v91;
    }

    v106[0] = a2;
    v68 = a2;
    v69 = swift_dynamicCast();
    v70 = *(v88 + 56);
    if ((v69 & 1) == 0)
    {
      v70(v65, 1, 1, v66);
      sub_2527213D8(v65, &qword_27F4FC200, &qword_2528C3920);
      goto LABEL_31;
    }

    v71 = v88;
    v70(v65, 0, 1, v66);
    v72 = v86;
    (*(v71 + 32))(v86, v65, v66);
    v73 = sub_2528BFE10();
    (*(v71 + 8))(v72, v66);
    if (v73 <= 17)
    {
      if (v73 == 9)
      {
        v64 = 9;
        goto LABEL_49;
      }

      if (v73 == 17)
      {
        goto LABEL_28;
      }

LABEL_31:
      v64 = 2;
      goto LABEL_49;
    }

    if (v73 != 18)
    {
      if (v73 != 19)
      {
        goto LABEL_31;
      }

LABEL_40:
      v64 = 1;
      goto LABEL_49;
    }

LABEL_41:
    v64 = 8;
    goto LABEL_49;
  }

  v58 = v105;
  v106[0] = v105;
  sub_25272C1FC(&qword_27F4FC0D0, type metadata accessor for HMError);
  sub_2528BEBE0();
  sub_2527A0688(v105, &v104);
  v59 = v104;
  if (v104 != 20)
  {

    v49 = v103;
    *v103 = v59;
LABEL_50:
    v49[1] = 0;
    v49[2] = 0;
    v49[3] = 0;
    goto LABEL_51;
  }

  v106[0] = v58;
  v60 = sub_2528BEC00();

  v49 = v103;
  *v103 = v60;
  v49[1] = 0;
  v49[2] = 0;
  v49[3] = 0;
  v61 = 768;
LABEL_52:
  *(v49 + 16) = v61;
}

uint64_t sub_252727198(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2528BFE20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v2, a1);
  type metadata accessor for HMError(0);
  if (swift_dynamicCast())
  {
    v17 = v26;
    v25 = v26;
    sub_25272C1FC(&qword_27F4FC0D0, type metadata accessor for HMError);
    sub_2528BEBE0();
    if (v24 == 8)
    {

      v18 = 1;
      goto LABEL_12;
    }

    v25 = v17;
    sub_2528BEBE0();

    v20 = v24 == 100;
  }

  else
  {
    type metadata accessor for MTRError(0);
    if (swift_dynamicCast())
    {
      v19 = v26;
      v25 = v26;
      sub_25272C1FC(&qword_27F4FC090, type metadata accessor for MTRError);
      sub_2528BEBE0();

      v20 = v24 == 9;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v18 = 0;
        goto LABEL_12;
      }

      (*(v5 + 32))(v9, v12, v4);
      v21 = sub_2528BFE10();
      (*(v5 + 8))(v9, v4);
      v20 = v21 == 9;
    }
  }

  v18 = v20;
LABEL_12:
  (*(v13 + 8))(v16, a1);
  return v18;
}

uint64_t sub_2527274C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v44 = sub_2528C04F0();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = sub_2528BF290();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2528C0260();
  v23 = *(v22 - 8);
  v48 = v22;
  v49 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v47 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  LODWORD(a1) = *(a1 + 32);
  v50 = a2;
  result = sub_2528C0250();
  v28 = a1 >> 1;
  if (a1 >> 1 == 49)
  {
    sub_2528BFB20();
    sub_2528BFA40();
    v32 = v44;
    if ((*(v11 + 48))(v8, 1, v44) == 1)
    {
      v33 = v8;
      return sub_2527213D8(v33, &qword_27F4FC208, &qword_2528C6B40);
    }

    (*(v11 + 32))(v15, v8, v32);
    LOBYTE(v51[0]) = v26;
    if (RobotVacuumCleanerRunState.rawValue.getter() == 0x676E696E6E7572 && v34 == 0xE700000000000000)
    {
    }

    else
    {
      v37 = sub_2528C1060();

      if ((v37 & 1) == 0)
      {
        LOBYTE(v51[0]) = v26;
        if (RobotVacuumCleanerRunState.rawValue.getter() == 0x646570706F7473 && v40 == 0xE700000000000000)
        {
        }

        else
        {
          v41 = sub_2528C1060();

          if ((v41 & 1) == 0)
          {
            LOBYTE(v51[0]) = v26;
            if (RobotVacuumCleanerRunState.rawValue.getter() == 0x646573756170 && v42 == 0xE600000000000000)
            {
            }

            else
            {
              v43 = sub_2528C1060();

              if ((v43 & 1) == 0)
              {
                return (*(v11 + 8))(v15, v32);
              }
            }

            v38 = v47;
            sub_2528C0340();
LABEL_22:
            sub_2528C0230();
            (*(v49 + 8))(v38, v48);
            return (*(v11 + 8))(v15, v32);
          }
        }

        v38 = v47;
        sub_2528C0270();
        goto LABEL_22;
      }
    }

    v38 = v47;
    sub_2528C0350();
    goto LABEL_22;
  }

  if (v28 == 48)
  {
    if (!v26)
    {
      v29 = sub_2528C0460();
      v52 = v29;
      v53 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v51);
      v31 = MEMORY[0x277D168D8];
      goto LABEL_16;
    }

    if (v26 == 1)
    {
      v29 = sub_2528C0460();
      v52 = v29;
      v53 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v51);
      v31 = MEMORY[0x277D168E0];
LABEL_16:
      (*(*(v29 - 8) + 104))(boxed_opaque_existential_0Tm, *v31, v29);
      sub_2528BFAB0();
      sub_2528BF250();
      (*(v45 + 8))(v21, v46);
      v35 = v47;
      sub_2528C0220();
      (*(v49 + 8))(v35, v48);
      return __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }

    sub_2528BFB20();
    sub_2528BFA40();
    v36 = v44;
    if ((*(v11 + 48))(v10, 1, v44) != 1)
    {
      (*(v11 + 32))(v17, v10, v36);
      v39 = v47;
      sub_2528C0270();
      sub_2528C0230();
      (*(v49 + 8))(v39, v48);
      return (*(v11 + 8))(v17, v36);
    }

    v33 = v10;
    return sub_2527213D8(v33, &qword_27F4FC208, &qword_2528C6B40);
  }

  if (v28 == 44)
  {
    v29 = sub_2528BFFB0();
    v52 = v29;
    v53 = sub_25272C1FC(&qword_27F4FC2A0, MEMORY[0x277D16490]);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v51);
    if (v26)
    {
      v31 = MEMORY[0x277D16470];
    }

    else
    {
      v31 = MEMORY[0x277D16478];
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_252727C6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2528BED90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *sub_252727CD8(uint64_t *a1)
{
  v2 = sub_2528C03F0();
  v175 = *(v2 - 8);
  v176 = v2;
  v3 = *(v175 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v173 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v174 = &v161 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v179 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v177 = &v161 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v178 = &v161 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v180 = &v161 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v161 - v18;
  MEMORY[0x28223BE20](v17);
  v172 = &v161 - v20;
  v21 = sub_2528C0460();
  v181 = *(v21 - 8);
  v182 = v21;
  v22 = *(v181 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v161 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v161 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v161 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v161 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v161 - v39;
  MEMORY[0x28223BE20](v38);
  v171 = &v161 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = &v161 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v161 - v47;
  v185 = sub_2528C04F0();
  v49 = *(*(v185 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v185);
  MEMORY[0x28223BE20](v50);
  v184 = *a1;
  v54 = *(a1 + 32);
  v55 = v54 >> 1;
  if (v54 >> 1 != 49)
  {
    if (v55 != 48)
    {
      if (v55 == 44)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_2528C3910;
        v57 = sub_2528BFFB0();
        *(v56 + 56) = v57;
        *(v56 + 64) = sub_25272C1FC(&qword_27F4FC2A0, MEMORY[0x277D16490]);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v56 + 32));
        if (v184)
        {
          v59 = MEMORY[0x277D16470];
        }

        else
        {
          v59 = MEMORY[0x277D16478];
        }

        (*(*(v57 - 8) + 104))(boxed_opaque_existential_0Tm, *v59, v57);
        v69 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
        v80 = v69[2];
        v79 = v69[3];
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          v69 = sub_252737A38((v79 > 1), v80 + 1, 1, v69);
        }

        goto LABEL_106;
      }

      return MEMORY[0x277D84F90];
    }

    v60 = &v161 - v51;
    v61 = v52;
    sub_2528BFB20();
    sub_2528BFA40();
    v62 = v185;
    if ((*(v61 + 48))(v48, 1, v185) == 1)
    {
      v63 = v48;
LABEL_10:
      sub_2527213D8(v63, &qword_27F4FC208, &qword_2528C6B40);
      return MEMORY[0x277D84F90];
    }

    v70 = v61;
    (*(v61 + 32))(v60, v48, v62);
    if (v184)
    {
      v71 = v182;
      if (v184 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_2528C3910;
        *(v56 + 56) = v71;
        *(v56 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
        __swift_allocate_boxed_opaque_existential_0Tm((v56 + 32));
        sub_2528C0300();
        goto LABEL_49;
      }

      v109 = v172;
      sub_2528C0280();
      v110 = v181;
      if ((*(v181 + 48))(v109, 1, v71) != 1)
      {
        v146 = v171;
        (*(v110 + 32))(v171, v109, v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_2528C3910;
        *(v56 + 56) = v71;
        *(v56 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
        v147 = __swift_allocate_boxed_opaque_existential_0Tm((v56 + 32));
        (*(v110 + 16))(v147, v146, v71);
        v69 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
        v80 = v69[2];
        v148 = v69[3];
        v81 = v80 + 1;
        if (v80 >= v148 >> 1)
        {
          v69 = sub_252737A38((v148 > 1), v80 + 1, 1, v69);
        }

        (*(v110 + 8))(v146, v71);
        goto LABEL_51;
      }

      sub_2527213D8(v109, &qword_27F4FC288, &qword_2528C3950);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2528C3910;
      *(v56 + 56) = v71;
      *(v56 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
      __swift_allocate_boxed_opaque_existential_0Tm((v56 + 32));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2528C3910;
      *(v56 + 56) = v182;
      *(v56 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
      __swift_allocate_boxed_opaque_existential_0Tm((v56 + 32));
    }

    sub_2528C02E0();
LABEL_49:
    v69 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
    v80 = v69[2];
    v111 = v69[3];
    v81 = v80 + 1;
    if (v80 >= v111 >> 1)
    {
      v69 = sub_252737A38((v111 > 1), v80 + 1, 1, v69);
    }

LABEL_51:
    (*(v70 + 8))(v60, v185);
LABEL_106:
    v69[2] = v81;
    v69[v80 + 4] = v56;
    return v69;
  }

  v164 = v19;
  v165 = v40;
  LODWORD(v171) = v54;
  v167 = v37;
  v168 = v34;
  v166 = v31;
  v169 = v28;
  v170 = v25;
  v172 = v53;
  v64 = a1[2];
  v65 = a1[3];
  v66 = a1[1];
  v67 = v52;
  sub_2528BFB20();
  sub_2528BFA40();
  v68 = v185;
  if ((*(v67 + 48))(v46, 1, v185) == 1)
  {
    v63 = v46;
    goto LABEL_10;
  }

  v163 = v67;
  v72 = *(v67 + 32);
  v73 = v172;
  v72(v172, v46, v68);
  LOBYTE(v186) = v184;
  if (RobotVacuumCleanerRunState.rawValue.getter() == 0x676E696E6E7572 && v74 == 0xE700000000000000)
  {

    v75 = v180;
    v77 = v175;
    v76 = v176;
    v78 = v174;
  }

  else
  {
    v82 = sub_2528C1060();

    v75 = v180;
    v77 = v175;
    v76 = v176;
    v78 = v174;
    if ((v82 & 1) == 0)
    {
      v69 = MEMORY[0x277D84F90];
      v113 = v181;
      v88 = v182;
      v114 = v170;
      v115 = v179;
      goto LABEL_84;
    }
  }

  *&v183 = v64;
  sub_2528C0410();
  v83 = v73;
  v84 = v173;
  (*(v77 + 104))(v173, *MEMORY[0x277D16878], v76);
  v85 = sub_2528C03E0();
  v86 = *(v77 + 8);
  v86(v84, v76);
  v86(v78, v76);
  v162 = v66;
  v161 = v65;
  if ((v85 & 1) == 0)
  {
    v69 = MEMORY[0x277D84F90];
    v89 = v181;
    v88 = v182;
    v91 = v171;
    v73 = v83;
    v92 = v183;
    if (!v183)
    {
      goto LABEL_60;
    }

    goto LABEL_27;
  }

  v87 = v164;
  sub_2528C02B0();
  v89 = v181;
  v88 = v182;
  v90 = (*(v181 + 48))(v87, 1, v182);
  v91 = v171;
  v73 = v83;
  if (v90 == 1)
  {
    sub_2527213D8(v87, &qword_27F4FC288, &qword_2528C3950);
    v69 = MEMORY[0x277D84F90];
    v92 = v183;
    if (!v183)
    {
      goto LABEL_60;
    }

LABEL_27:
    v93 = *(v92 + 16);
    v94 = MEMORY[0x277D84F90];
    if (v93)
    {
      *&v186 = MEMORY[0x277D84F90];
      sub_25282EEDC(0, v93, 0);
      v94 = v186;
      v95 = (v92 + 32);
      *&v96 = 134217984;
      v183 = v96;
      do
      {
        v98 = *v95++;
        v97 = v98;
        if (v98 < 0x100000000)
        {
          if (v97 < 0)
          {
            if (qword_27F4FBB40 != -1)
            {
              swift_once();
            }

            v103 = sub_2528C08B0();
            __swift_project_value_buffer(v103, qword_27F5025C8);
            v104 = sub_2528C0890();
            v105 = sub_2528C0D00();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              *v106 = v183;
              *(v106 + 4) = v97;
              _os_log_impl(&dword_252711000, v104, v105, "Tried to convert a Int lower than 0 to UInt32: %ld", v106, 0xCu);
              MEMORY[0x2530A8D80](v106, -1, -1);
            }

            LODWORD(v97) = 0;
          }
        }

        else
        {
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v99 = sub_2528C08B0();
          __swift_project_value_buffer(v99, qword_27F5025C8);
          v100 = sub_2528C0890();
          v101 = sub_2528C0D00();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = v183;
            *(v102 + 4) = v97;
            _os_log_impl(&dword_252711000, v100, v101, "Tried to convert a Int larger than max to UInt32: %ld", v102, 0xCu);
            MEMORY[0x2530A8D80](v102, -1, -1);
          }

          LODWORD(v97) = -1;
        }

        *&v186 = v94;
        v108 = *(v94 + 16);
        v107 = *(v94 + 24);
        if (v108 >= v107 >> 1)
        {
          sub_25282EEDC((v107 > 1), v108 + 1, 1);
          v94 = v186;
        }

        *(v94 + 16) = v108 + 1;
        *(v94 + 4 * v108 + 32) = v97;
        --v93;
      }

      while (v93);
      v89 = v181;
      v88 = v182;
      v73 = v172;
      v112 = v178;
      v91 = v171;
    }

    else
    {
      v112 = v178;
    }

    v75 = v180;
    if ((v91 & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_64:
    v125 = 0;
    goto LABEL_65;
  }

  (*(v89 + 32))(v165, v87, v88);
  v92 = v183;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v116 = sub_2528C08B0();
  __swift_project_value_buffer(v116, qword_27F5025C8);
  v117 = sub_2528C0890();
  v118 = sub_2528C0D10();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_252711000, v117, v118, "Handling request to start rvc while paused. Stopping current run first.", v119, 2u);
    MEMORY[0x2530A8D80](v119, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_2528C3910;
  *(v120 + 56) = v88;
  *(v120 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
  v121 = __swift_allocate_boxed_opaque_existential_0Tm((v120 + 32));
  v122 = v165;
  (*(v89 + 16))(v121, v165, v88);
  v69 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
  v124 = v69[2];
  v123 = v69[3];
  if (v124 >= v123 >> 1)
  {
    v69 = sub_252737A38((v123 > 1), v124 + 1, 1, v69);
  }

  (*(v89 + 8))(v122, v88);
  v69[2] = v124 + 1;
  v69[v124 + 4] = v120;
  v75 = v180;
  if (v92)
  {
    goto LABEL_27;
  }

LABEL_60:
  v94 = 0;
  v112 = v178;
  if (v91)
  {
    goto LABEL_64;
  }

LABEL_61:
  v125 = Int.uint32.getter(v161);
LABEL_65:
  LOBYTE(v186) = v91 & 1;
  sub_252729508(v94, v125 | ((v91 & 1) << 32), v75);

  v126 = *(v89 + 48);
  if (v126(v75, 1, v88) == 1)
  {
    sub_2527213D8(v75, &qword_27F4FC288, &qword_2528C3950);
    v127 = MEMORY[0x277D84F90];
  }

  else
  {
    v128 = v167;
    (*(v89 + 32))(v167, v75, v88);
    v129 = *(v89 + 16);
    v129(v168, v128, v88);
    v127 = sub_252737A14(0, 1, 1, MEMORY[0x277D84F90]);
    v131 = v127[2];
    v130 = v127[3];
    *&v183 = v129;
    v180 = (v131 + 1);
    if (v131 >= v130 >> 1)
    {
      v127 = sub_252737A14((v130 > 1), v131 + 1, 1, v127);
    }

    v132 = *(v89 + 8);
    v88 = v182;
    v132(v167, v182);
    v187 = v88;
    v188 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
    v133 = __swift_allocate_boxed_opaque_existential_0Tm(&v186);
    v134 = v168;
    (v183)(v133, v168, v88);
    v127[2] = v180;
    sub_25271A650(&v186, &v127[5 * v131 + 4]);
    v132(v134, v88);
    v73 = v172;
    v112 = v178;
  }

  sub_25272972C(v162, v112);
  if (v126(v112, 1, v88) == 1)
  {
    sub_2527213D8(v112, &qword_27F4FC288, &qword_2528C3950);
    v113 = v181;
  }

  else
  {
    v113 = v181;
    v135 = v166;
    (*(v181 + 32))(v166, v112, v88);
    v136 = *(v113 + 16);
    v136(v169, v135, v88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v136;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v127 = sub_252737A14(0, v127[2] + 1, 1, v127);
    }

    v139 = v127[2];
    v138 = v127[3];
    if (v139 >= v138 >> 1)
    {
      v127 = sub_252737A14((v138 > 1), v139 + 1, 1, v127);
    }

    v140 = *(v113 + 8);
    v140(v135, v88);
    v187 = v88;
    v188 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
    v141 = __swift_allocate_boxed_opaque_existential_0Tm(&v186);
    v142 = v169;
    (v183)(v141, v169, v88);
    v127[2] = v139 + 1;
    sub_25271A650(&v186, &v127[5 * v139 + 4]);
    v140(v142, v88);
    v73 = v172;
  }

  v114 = v170;
  v115 = v179;
  if (v127[2])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_252737A38(0, v69[2] + 1, 1, v69);
    }

    v144 = v69[2];
    v143 = v69[3];
    if (v144 >= v143 >> 1)
    {
      v69 = sub_252737A38((v143 > 1), v144 + 1, 1, v69);
    }

    v69[2] = v144 + 1;
    v69[v144 + 4] = v127;
    v115 = v179;
  }

  else
  {
  }

LABEL_84:
  v145 = v177;
  if (v184 > 3u)
  {
    if (v184 - 4 >= 3)
    {
LABEL_94:
      (*(v113 + 56))(v115, 1, 1, v88);
      goto LABEL_96;
    }

LABEL_90:
    sub_2528C0280();
    goto LABEL_96;
  }

  if (!v184)
  {
    goto LABEL_90;
  }

  if (v184 == 1)
  {
    sub_2528C02F0();
    goto LABEL_96;
  }

  if (v184 != 2)
  {
    goto LABEL_94;
  }

  sub_2528C02E0();
  (*(v113 + 56))(v115, 0, 1, v88);
LABEL_96:
  sub_25272C03C(v115, v145);
  if ((*(v113 + 48))(v145, 1, v88) != 1)
  {
    (*(v113 + 32))(v114, v145, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2528C3910;
    *(v56 + 56) = v88;
    *(v56 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8]);
    v158 = __swift_allocate_boxed_opaque_existential_0Tm((v56 + 32));
    (*(v113 + 16))(v158, v114, v88);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_252737A38(0, v69[2] + 1, 1, v69);
    }

    v80 = v69[2];
    v159 = v69[3];
    v81 = v80 + 1;
    if (v80 >= v159 >> 1)
    {
      v69 = sub_252737A38((v159 > 1), v80 + 1, 1, v69);
    }

    (*(v113 + 8))(v114, v88);
    (*(v163 + 8))(v73, v185);
    goto LABEL_106;
  }

  sub_2527213D8(v145, &qword_27F4FC288, &qword_2528C3950);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v149 = sub_2528C08B0();
  __swift_project_value_buffer(v149, qword_27F5025C8);
  v150 = sub_2528C0890();
  v151 = sub_2528C0CF0();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *&v186 = v153;
    *v152 = 136446210;
    v189 = v184;
    v154 = RobotVacuumCleanerRunState.rawValue.getter();
    v156 = v73;
    v157 = sub_2527389AC(v154, v155, &v186);

    *(v152 + 4) = v157;
    _os_log_impl(&dword_252711000, v150, v151, "Unexpected run state %{public}s. Not changing run mode", v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v153);
    MEMORY[0x2530A8D80](v153, -1, -1);
    MEMORY[0x2530A8D80](v152, -1, -1);

    (*(v163 + 8))(v156, v185);
  }

  else
  {

    (*(v163 + 8))(v73, v185);
  }

  return v69;
}

uint64_t sub_252729508@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  v10 = sub_2528BF1E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2528C02A0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2527213D8(v9, &qword_27F4FC2A8, &qword_2528C3958);
    v15 = 1;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_25284C2E4(a1, (a2 | ((HIDWORD(a2) & 1) << 32)));
    sub_2528C0310();

    (*(v11 + 8))(v14, v10);
    v15 = 0;
  }

  v16 = sub_2528C0460();
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_25272972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BF290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C04F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2528C0570();
  v112 = *(v90 - 8);
  v14 = *(v112 + 64);
  v15 = MEMORY[0x28223BE20](v90);
  v111 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v76 - v17;
  v18 = sub_2528C04E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F8, &unk_2528D5510);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v89 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v113 = a1;
  v27 = *(a1 + 16);
  if (v27)
  {
    v84 = v19;
    v85 = v18;
    v80 = v13;
    v86 = &v76 - v26;
    v81 = v10;
    v82 = v9;
    v79 = v4;
    v87 = a2;
    v28 = 0;
    v29 = v27;
    v30 = v113;
    v108 = v27;
    while (2)
    {
      v32 = v28;
      if (v27 != v28)
      {
        switch(*(v30 + v28 + 32))
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
            v31 = sub_2528C1060();

            v28 = v32 + 1;
            v27 = v108;
            if ((v31 & 1) == 0)
            {
              continue;
            }

            break;
          default:

            v27 = v108;
            break;
        }
      }

      break;
    }

    v83 = v32;
    v77 = v8;
    v36 = 0;
    while (2)
    {
      v38 = v36;
      if (v27 != v36)
      {
        switch(*(v30 + v36 + 32))
        {
          case 1:

            break;
          default:
            v37 = sub_2528C1060();

            v36 = v38 + 1;
            v27 = v108;
            if ((v37 & 1) == 0)
            {
              continue;
            }

            break;
        }
      }

      break;
    }

    v78 = v5;
    v114 = MEMORY[0x277D84F90];
    sub_25282EF40(0, v29, 0);
    v39 = v114;
    v105 = *MEMORY[0x277D16A18];
    v107 = *MEMORY[0x277D16A60];
    v109 = (v112 + 104);
    v104 = *MEMORY[0x277D16A20];
    v103 = *MEMORY[0x277D16A10];
    v102 = *MEMORY[0x277D16A30];
    v101 = *MEMORY[0x277D16A50];
    v100 = *MEMORY[0x277D16A58];
    v99 = *MEMORY[0x277D16A48];
    v98 = *MEMORY[0x277D16A40];
    v97 = *MEMORY[0x277D16A38];
    v96 = *MEMORY[0x277D16A28];
    v95 = *MEMORY[0x277D16A98];
    v106 = *MEMORY[0x277D16AA8];
    v94 = *MEMORY[0x277D16A70];
    v93 = *MEMORY[0x277D16A78];
    v40 = (v112 + 32);
    v41 = 32;
    v92 = *MEMORY[0x277D16A88];
    v42 = v90;
    v43 = v110;
    do
    {
      switch(*(v113 + v41))
      {
        case 1:
          v44 = sub_2528C0550();
          v45 = v93;
          v46 = v106;
          break;
        case 2:
          v44 = sub_2528C0550();
          v45 = v94;
          v46 = v106;
          break;
        case 3:
          v44 = sub_2528C0550();
          v45 = v95;
          v46 = v106;
          break;
        case 4:
          v44 = sub_2528C0540();
          v45 = v96;
          goto LABEL_31;
        case 5:
          v44 = sub_2528C0540();
          v45 = v98;
          goto LABEL_31;
        case 6:
          v44 = sub_2528C0540();
          v45 = v97;
          goto LABEL_31;
        case 7:
          v44 = sub_2528C0540();
          v45 = v99;
          goto LABEL_31;
        case 8:
          v44 = sub_2528C0540();
          v45 = v100;
          goto LABEL_31;
        case 9:
          v44 = sub_2528C0540();
          v45 = v101;
          goto LABEL_31;
        case 0xA:
          v44 = sub_2528C0540();
          v45 = v102;
          goto LABEL_31;
        case 0xB:
          v44 = sub_2528C0540();
          v45 = v103;
          goto LABEL_31;
        case 0xC:
          v44 = sub_2528C0540();
          v45 = v104;
          goto LABEL_31;
        case 0xD:
          v44 = sub_2528C0540();
          v45 = v105;
LABEL_31:
          v46 = v107;
          break;
        default:
          v44 = sub_2528C0550();
          v45 = v92;
          v46 = v106;
          break;
      }

      v47 = v111;
      (*(*(v44 - 8) + 104))(v111, v45);
      (*v109)(v47, v46, v42);
      v48 = *v40;
      (*v40)(v43, v47, v42);
      v114 = v39;
      v49 = v42;
      v51 = *(v39 + 16);
      v50 = *(v39 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_25282EF40(v50 > 1, v51 + 1, 1);
        v39 = v114;
      }

      *(v39 + 16) = v51 + 1;
      v48((v39 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v51), v43, v49);
      ++v41;
      --v29;
      v42 = v49;
    }

    while (v29);
    sub_252743BB8(v39);

    v52 = v86;
    v53 = v91;
    sub_2528C03D0();

    v54 = v89;
    sub_25272006C(v52, v89, &qword_27F4FC1F8, &unk_2528D5510);
    v55 = v84;
    v56 = v85;
    if ((*(v84 + 48))(v54, 1, v85) == 1)
    {
      sub_2527213D8(v54, &qword_27F4FC1F8, &unk_2528D5510);
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v57 = sub_2528C08B0();
      __swift_project_value_buffer(v57, qword_27F5025C8);
      v58 = v81;
      v59 = v80;
      v60 = v82;
      (*(v81 + 16))(v80, v53, v82);
      v61 = v113;

      v62 = sub_2528C0890();
      v63 = sub_2528C0CF0();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = v61;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v114 = v66;
        *v65 = 136446466;
        v67 = MEMORY[0x2530A81A0](v64, &type metadata for RobotVacuumCleanerCleanMode);
        v69 = sub_2527389AC(v67, v68, &v114);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2048;
        v70 = v77;
        sub_2528C02D0();
        v71 = sub_2528BF0E0();
        (*(v78 + 8))(v70, v79);
        (*(v58 + 8))(v59, v60);
        *(v65 + 14) = v71;
        _os_log_impl(&dword_252711000, v62, v63, "Failed to find cleanMode for %{public}s in rvc clusters on %llu", v65, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        MEMORY[0x2530A8D80](v66, -1, -1);
        MEMORY[0x2530A8D80](v65, -1, -1);
      }

      else
      {
        (*(v58 + 8))(v59, v60);
      }

      sub_2527213D8(v52, &qword_27F4FC1F8, &unk_2528D5510);
      v75 = sub_2528C0460();
      return (*(*(v75 - 8) + 56))(v87, 1, 1, v75);
    }

    else
    {
      v72 = v88;
      (*(v55 + 32))(v88, v54, v56);
      sub_2528C04B0();
      v73 = v87;
      sub_2528C03C0();
      (*(v55 + 8))(v72, v56);
      sub_2527213D8(v52, &qword_27F4FC1F8, &unk_2528D5510);
      v74 = sub_2528C0460();
      return (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    }
  }

  else
  {
    v33 = sub_2528C0460();
    v34 = *(*(v33 - 8) + 56);

    return v34(a2, 1, 1, v33);
  }
}

void sub_25272A4F8(uint64_t a1, _BYTE *a2)
{
  v175 = a2;
  v3 = sub_2528BF290();
  v164 = *(v3 - 8);
  v4 = *(v164 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v162 = &v157[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v159 = &v157[-v8];
  MEMORY[0x28223BE20](v7);
  v161 = &v157[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC220, &qword_2528D1AB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v157[-v12];
  v168 = sub_2528BF0B0();
  v14 = *(v168 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v168);
  v160 = &v157[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v165 = &v157[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v166 = &v157[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v157[-v22];
  v24 = *MEMORY[0x277CD5128];
  v25 = sub_2528C09F0();
  if (*(a1 + 16))
  {
    v27 = sub_252785B30(v25, v26);
    v29 = v28;

    v30 = v175;
    if (v29)
    {
      sub_25272BF98(*(a1 + 56) + 32 * v27, &v173);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
      sub_25272BFF4(0, &qword_27F4FC278, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v167 = v171;
        swift_willThrow();
        return;
      }
    }
  }

  else
  {

    v30 = v175;
  }

  v31 = [v30 cluster];
  [v31 unsignedIntValue];

  sub_2528BF0A0();
  v32 = v168;
  if ((*(v14 + 48))(v13, 1, v168) != 1)
  {
    (*(v14 + 32))(v23, v13, v32);
    v44 = [v30 command];
    v158 = [v44 unsignedIntValue];

    v45 = *MEMORY[0x277CD50D8];
    v46 = sub_2528C09F0();
    if (*(a1 + 16))
    {
      v48 = v3;
      v49 = sub_252785B30(v46, v47);
      v51 = v50;

      if (v51)
      {
        sub_25272BF98(*(a1 + 56) + 32 * v49, &v173);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC270, &qword_2528C3948);
        if (swift_dynamicCast())
        {
          v52 = v171;
        }

        else
        {
          v52 = 0;
        }

LABEL_19:
        v53 = v14;
        sub_25272BFF4(0, &qword_27F4FC238, 0x277CD51C8);
        v54 = sub_2528C0D20();
        if (*(a1 + 16))
        {
          v56 = sub_252785B30(v54, v55);
          v58 = v57;

          if (v58)
          {
            sub_25272BF98(*(a1 + 56) + 32 * v56, &v173);
            v59 = *(&v174 + 1) == 0;
            v60 = v168;
            if (v52)
            {
              goto LABEL_31;
            }

            goto LABEL_25;
          }
        }

        else
        {
        }

        v173 = 0u;
        v174 = 0u;
        v59 = 1;
        v60 = v168;
        if (v52)
        {
          goto LABEL_31;
        }

LABEL_25:
        if (v59)
        {
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v61 = sub_2528C08B0();
          __swift_project_value_buffer(v61, qword_27F5025C8);
          v62 = v175;

          v63 = sub_2528C0890();
          v64 = sub_2528C0D10();

          if (!os_log_type_enabled(v63, v64))
          {

LABEL_77:
            (*(v53 + 8))(v23, v60);
            goto LABEL_78;
          }

          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v67 = v23;
          v68 = swift_slowAlloc();
          *&v171 = v68;
          *v65 = 138543618;
          *(v65 + 4) = v62;
          *v66 = v62;
          *(v65 + 12) = 2080;
          v69 = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
          v70 = sub_2528C08E0();
          v72 = v53;
          v73 = sub_2527389AC(v70, v71, &v171);

          *(v65 + 14) = v73;
          _os_log_impl(&dword_252711000, v63, v64, "Response has no data. command path: (%{public}@) %s", v65, 0x16u);
          sub_2527213D8(v66, &qword_27F4FC230, &qword_2528C3928);
          MEMORY[0x2530A8D80](v66, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v68);
          goto LABEL_30;
        }

LABEL_31:
        v74 = *(v14 + 16);
        v75 = v166;
        v74(v166, v23, v60);
        v76 = (*(v53 + 88))(v75, v60);
        if (v76 == *MEMORY[0x277D15548])
        {
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v77 = sub_2528C08B0();
          __swift_project_value_buffer(v77, qword_27F5025C8);
          v78 = v165;
          v74(v165, v23, v60);

          v79 = sub_2528C0890();
          v80 = v23;
          v81 = sub_2528C0D10();

          if (os_log_type_enabled(v79, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v164 = v52;
            v166 = v83;
            *&v171 = v83;
            *v82 = 136446722;
            v175 = v80;
            v84 = sub_2528BF090();
            v85 = v53;
            v87 = v86;
            v88 = *(v85 + 8);
            v88(v78, v60);
            v89 = sub_2527389AC(v84, v87, &v171);

            *(v82 + 4) = v89;
            *(v82 + 12) = 2082;
            LODWORD(v169[0]) = v158;
            type metadata accessor for MTRCommandIDType(0);
            v90 = sub_2528C0A10();
            v92 = sub_2527389AC(v90, v91, &v171);

            *(v82 + 14) = v92;
            *(v82 + 22) = 2082;
            v169[0] = v164;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
            v93 = sub_2528C0A10();
            v95 = sub_2527389AC(v93, v94, &v171);

            *(v82 + 24) = v95;
            _os_log_impl(&dword_252711000, v79, v81, "We don't have any validation for on/off command results, allowing to proceed unchecked. clusterKind:%{public}s commandID:%{public}s: %{public}s)", v82, 0x20u);
            v96 = v166;
            swift_arrayDestroy();
            MEMORY[0x2530A8D80](v96, -1, -1);
            MEMORY[0x2530A8D80](v82, -1, -1);

            v88(v175, v168);
          }

          else
          {

            v101 = *(v53 + 8);
            v101(v78, v60);
            v101(v80, v60);
          }

          goto LABEL_78;
        }

        if (v76 == *MEMORY[0x277D15540])
        {
          v97 = sub_25272BB10(a1);
          sub_25272006C(&v173, v169, &qword_27F4FC240, &qword_2528C3930);
          v98 = v170;
          if (v170)
          {
            v99 = __swift_project_boxed_opaque_existential_0(v169, v170);
            *(&v172 + 1) = v98;
            boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v171);
            (*(*(v98 - 8) + 16))(boxed_opaque_existential_0Tm, v99, v98);
            __swift_destroy_boxed_opaque_existential_0Tm(v169);
          }

          else
          {
            sub_2527213D8(v169, &qword_27F4FC240, &qword_2528C3930);
            v171 = 0u;
            v172 = 0u;
          }

          sub_25272BFF4(0, &qword_27F4FC250, 0x277CD54B8);
          v110 = sub_25272BD9C(v97, &v171);

          sub_2527213D8(&v171, &qword_27F4FC258, &qword_2528C3940);
          if (v110)
          {

            v111 = v162;
            sub_2528BFAB0();
            v112 = v167;
            sub_2528C0470();
LABEL_70:
            v167 = v112;

            (*(v164 + 8))(v111, v48);
            goto LABEL_77;
          }

          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v113 = sub_2528C08B0();
          __swift_project_value_buffer(v113, qword_27F5025C8);

          v63 = sub_2528C0890();
          v114 = sub_2528C0CF0();

          if (os_log_type_enabled(v63, v114))
          {
            v65 = swift_slowAlloc();
            v67 = v23;
            v68 = swift_slowAlloc();
            *&v171 = v68;
            *v65 = 136315394;
            LODWORD(v169[0]) = v158;
            type metadata accessor for MTRCommandIDType(0);
            v115 = sub_2528C0A10();
            v72 = v53;
            v117 = v52;
            v118 = sub_2527389AC(v115, v116, &v171);

            *(v65 + 4) = v118;
            *(v65 + 12) = 2082;
            v169[0] = v117;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
            v119 = sub_2528C0A10();
            v121 = sub_2527389AC(v119, v120, &v171);

            *(v65 + 14) = v121;
            _os_log_impl(&dword_252711000, v63, v114, "Failed to parse response for RVCOperationalState/%s: %{public}s)", v65, 0x16u);
            swift_arrayDestroy();
LABEL_30:
            MEMORY[0x2530A8D80](v68, -1, -1);
            MEMORY[0x2530A8D80](v65, -1, -1);

            (*(v72 + 8))(v67, v168);
LABEL_78:
            sub_2527213D8(&v173, &qword_27F4FC240, &qword_2528C3930);
            return;
          }

LABEL_76:

          goto LABEL_77;
        }

        if (v76 == *MEMORY[0x277D15520])
        {
          v102 = sub_25272BB10(a1);
          sub_25272006C(&v173, v169, &qword_27F4FC240, &qword_2528C3930);
          v103 = v170;
          if (v170)
          {
            v104 = __swift_project_boxed_opaque_existential_0(v169, v170);
            *(&v172 + 1) = v103;
            v105 = __swift_allocate_boxed_opaque_existential_0Tm(&v171);
            (*(*(v103 - 8) + 16))(v105, v104, v103);
            __swift_destroy_boxed_opaque_existential_0Tm(v169);
          }

          else
          {
            sub_2527213D8(v169, &qword_27F4FC240, &qword_2528C3930);
            v171 = 0u;
            v172 = 0u;
          }

          sub_25272BFF4(0, &qword_27F4FC268, 0x277CD54C8);
          v110 = sub_25272BD9C(v102, &v171);

          sub_2527213D8(&v171, &qword_27F4FC258, &qword_2528C3940);
          if (v110)
          {

            v111 = v161;
            sub_2528BFAB0();
            v112 = v167;
            sub_2528C0480();
            goto LABEL_70;
          }

          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v142 = sub_2528C08B0();
          __swift_project_value_buffer(v142, qword_27F5025C8);

          v63 = sub_2528C0890();
          v143 = sub_2528C0CF0();

          if (!os_log_type_enabled(v63, v143))
          {
            goto LABEL_76;
          }

          v144 = swift_slowAlloc();
          v145 = v23;
          v146 = swift_slowAlloc();
          *&v171 = v146;
          *v144 = 136446210;
          v169[0] = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
          v147 = sub_2528C0A10();
          v148 = v53;
          v149 = v60;
          v151 = sub_2527389AC(v147, v150, &v171);

          *(v144 + 4) = v151;
          v152 = "Failed to parse response for RVCRunMode/ChangeToMode: %{public}s";
        }

        else
        {
          if (v76 != *MEMORY[0x277D15538])
          {
            if (qword_27F4FBB40 != -1)
            {
              swift_once();
            }

            v122 = sub_2528C08B0();
            __swift_project_value_buffer(v122, qword_27F5025C8);
            v123 = v160;
            v74(v160, v23, v60);

            v124 = sub_2528C0890();
            v125 = sub_2528C0D10();

            if (os_log_type_enabled(v124, v125))
            {
              v126 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              *&v171 = v165;
              *v126 = 136446722;
              LODWORD(v164) = v125;
              v127 = sub_2528BF090();
              v163 = v124;
              v128 = v53;
              v130 = v129;
              v131 = *(v128 + 8);
              v131(v123, v60);
              v132 = sub_2527389AC(v127, v130, &v171);

              *(v126 + 4) = v132;
              *(v126 + 12) = 2082;
              LODWORD(v169[0]) = v158;
              type metadata accessor for MTRCommandIDType(0);
              v133 = sub_2528C0A10();
              v135 = sub_2527389AC(v133, v134, &v171);
              v175 = v23;
              v136 = v135;

              *(v126 + 14) = v136;
              *(v126 + 22) = 2082;
              v169[0] = v52;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
              v137 = sub_2528C0A10();
              v139 = sub_2527389AC(v137, v138, &v171);

              *(v126 + 24) = v139;
              v140 = v163;
              _os_log_impl(&dword_252711000, v163, v164, "We don't have any validation for command results, allowing to proceed unchecked. clusterKind:%{public}s commandID:%{public}s: %{public}s)", v126, 0x20u);
              v141 = v165;
              swift_arrayDestroy();
              MEMORY[0x2530A8D80](v141, -1, -1);
              MEMORY[0x2530A8D80](v126, -1, -1);

              v131(v175, v60);
            }

            else
            {

              v131 = *(v53 + 8);
              v131(v123, v60);
              v131(v23, v60);
            }

            v131(v166, v60);
            goto LABEL_78;
          }

          v106 = sub_25272BB10(a1);
          sub_25272006C(&v173, v169, &qword_27F4FC240, &qword_2528C3930);
          v107 = v170;
          if (v170)
          {
            v108 = __swift_project_boxed_opaque_existential_0(v169, v170);
            *(&v172 + 1) = v107;
            v109 = __swift_allocate_boxed_opaque_existential_0Tm(&v171);
            (*(*(v107 - 8) + 16))(v109, v108, v107);
            __swift_destroy_boxed_opaque_existential_0Tm(v169);
          }

          else
          {
            sub_2527213D8(v169, &qword_27F4FC240, &qword_2528C3930);
            v171 = 0u;
            v172 = 0u;
          }

          sub_25272BFF4(0, &qword_27F4FC260, 0x277CD5498);
          v110 = sub_25272BD9C(v106, &v171);

          sub_2527213D8(&v171, &qword_27F4FC258, &qword_2528C3940);
          if (v110)
          {

            v111 = v159;
            sub_2528BFAB0();
            v112 = v167;
            sub_2528C0490();
            goto LABEL_70;
          }

          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v153 = sub_2528C08B0();
          __swift_project_value_buffer(v153, qword_27F5025C8);

          v63 = sub_2528C0890();
          v143 = sub_2528C0CF0();

          if (!os_log_type_enabled(v63, v143))
          {
            goto LABEL_76;
          }

          v144 = swift_slowAlloc();
          v145 = v23;
          v146 = swift_slowAlloc();
          *&v171 = v146;
          *v144 = 136446210;
          v169[0] = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
          v154 = sub_2528C0A10();
          v148 = v53;
          v149 = v60;
          v156 = sub_2527389AC(v154, v155, &v171);

          *(v144 + 4) = v156;
          v152 = "Failed to parse response for RVCCleanMode/ChangeToMode: %{public}s";
        }

        _os_log_impl(&dword_252711000, v63, v143, v152, v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v146);
        MEMORY[0x2530A8D80](v146, -1, -1);
        MEMORY[0x2530A8D80](v144, -1, -1);

        (*(v148 + 8))(v145, v149);
        goto LABEL_78;
      }
    }

    else
    {
      v48 = v3;
    }

    v52 = 0;
    goto LABEL_19;
  }

  sub_2527213D8(v13, &qword_27F4FC220, &qword_2528D1AB0);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v33 = sub_2528C08B0();
  __swift_project_value_buffer(v33, qword_27F5025C8);
  v34 = v175;

  v35 = sub_2528C0890();
  v36 = sub_2528C0CF0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v173 = v39;
    *v37 = 136315650;
    *(v37 + 4) = sub_2527389AC(0xD000000000000034, 0x80000002528E54F0, &v173);
    *(v37 + 12) = 2114;
    v40 = [v34 cluster];
    *(v37 + 14) = v40;
    *v38 = v40;
    *(v37 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
    v41 = sub_2528C08E0();
    v43 = sub_2527389AC(v41, v42, &v173);

    *(v37 + 24) = v43;
    _os_log_impl(&dword_252711000, v35, v36, "%s: Unknown cluster ID %{public}@ in result %s", v37, 0x20u);
    sub_2527213D8(v38, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v38, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v39, -1, -1);
    MEMORY[0x2530A8D80](v37, -1, -1);
  }
}

unint64_t sub_25272BB10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
    v2 = sub_2528C0F20();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_2528BEA50();

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_25272BF98(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_252712E3C(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
        swift_dynamicCast();
        sub_252712E3C(&v25, v27);
        sub_252712E3C(v27, v28);
        sub_252712E3C(v28, &v26);
        result = sub_252785B30(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_252712E3C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_252712E3C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_25272BD9C(uint64_t a1, uint64_t a2)
{
  sub_25272006C(a2, v6, &qword_27F4FC258, &qword_2528C3940);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_2527213D8(v6, &qword_27F4FC258, &qword_2528C3940);
  }

  if (!a1)
  {
    return 0;
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return sub_25272BE6C();
}

id sub_25272BE6C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2528C08C0();

  v7[0] = 0;
  v2 = [v0 initWithResponseValue:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2528BEC10();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25272BF98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25272BFF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25272C03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25272C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xFE) == 0x62)
  {
  }

  return result;
}

unint64_t sub_25272C1A8()
{
  result = qword_27F4FC2B8;
  if (!qword_27F4FC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2B8);
  }

  return result;
}

uint64_t sub_25272C1FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25272C244()
{
  result = qword_27F4FC2D0;
  if (!qword_27F4FC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2D0);
  }

  return result;
}

unint64_t sub_25272C2A4()
{
  result = qword_27F4FC2D8;
  if (!qword_27F4FC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2D8);
  }

  return result;
}

uint64_t sub_25272C2F8(uint64_t a1)
{
  v3 = sub_2528BEC40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_25282EF84(0, v6, 0);
    v38 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    v10 = sub_2528C0E00();
    v39 = *(a1 + 36);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3D0, &qword_2528C3EE8);
    v11 = 0;
    v34 = "SupportedAttributes";
    v35 = result;
    v30 = a1 + 72;
    v31 = v6;
    v32 = a1 + 64;
    v33 = a1;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = *(*(a1 + 48) + v10);
      v15 = *(*(a1 + 56) + 8 * v10);

      sub_2528BEC20();
      sub_25272E944();
      v16 = sub_2528BE6E0();
      sub_2528BEA50();
      sub_2528BEC20();
      sub_25272E998();
      v17 = sub_2528BE700();
      LOBYTE(v40) = v14;
      sub_2528BEA50();
      sub_2528BE6C0();
      v40 = v15;
      sub_2528BE6C0();

      v18 = v38;
      v41 = v38;
      v20 = *(v38 + 16);
      v19 = *(v38 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_25282EF84((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      a1 = v33;
      v12 = 1 << *(v33 + 32);
      if (v10 >= v12)
      {
        goto LABEL_25;
      }

      v8 = v32;
      v22 = *(v32 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      v38 = v18;
      if (v39 != *(v33 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_25271A63C(v10, v39, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_25271A63C(v10, v39, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v38;
      }
    }

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
  }

  return result;
}

uint64_t sub_25272C67C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for DeviceEntity();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2528C09B0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  v17 = *v14;
  sub_2528BE6B0();
  sub_25272E840(v14);
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v9 + 56))(v7, 1, 1, v8);
  v18 = sub_2528BE8D0();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  return sub_2528BE900();
}

uint64_t sub_25272C958()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F5027F8);
  __swift_project_value_buffer(v0, qword_27F5027F8);
  return sub_2528BE9D0();
}

uint64_t sub_25272C9BC()
{
  v0 = type metadata accessor for DeviceEntity();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2528BE6B0();
  v4 = *v3;
  sub_2528BE6B0();
  v5 = v15;
  v6 = v16;
  sub_25272E840(v3);
  v15 = v5;
  v16 = v6;
  MEMORY[0x2530A80B0](2108704, 0xE300000000000000);
  sub_2528BE6B0();
  v7 = v3[2];
  sub_2528BE6B0();
  sub_25272E840(v3);
  v14 = v13;
  v8 = DeviceType.description.getter();
  MEMORY[0x2530A80B0](v8);

  MEMORY[0x2530A80B0](8250, 0xE200000000000000);
  sub_2528BE6B0();
  v9 = MEMORY[0x2530A81A0](v13, &type metadata for SupportedAttributeInfo);
  v11 = v10;

  MEMORY[0x2530A80B0](v9, v11);

  return v15;
}

uint64_t sub_25272CB14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25272E2C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25272CB3C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25272C9BC();
}

unint64_t sub_25272CB48()
{
  result = qword_27F4FC2E0;
  if (!qword_27F4FC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2E0);
  }

  return result;
}

unint64_t sub_25272CBA0()
{
  result = qword_27F4FC2E8;
  if (!qword_27F4FC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2E8);
  }

  return result;
}

unint64_t sub_25272CBF8()
{
  result = qword_27F4FC2F0;
  if (!qword_27F4FC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2F0);
  }

  return result;
}

uint64_t sub_25272CC90(uint64_t a1)
{
  v2 = sub_25272EA94();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_25272CCE0()
{
  result = qword_27F4FC308;
  if (!qword_27F4FC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC308);
  }

  return result;
}

unint64_t sub_25272CD34()
{
  result = qword_27F4FC310;
  if (!qword_27F4FC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC310);
  }

  return result;
}

unint64_t sub_25272CD88()
{
  result = qword_27F4FC318;
  if (!qword_27F4FC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC318);
  }

  return result;
}

unint64_t sub_25272CDE0()
{
  result = qword_27F4FC320;
  if (!qword_27F4FC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC320);
  }

  return result;
}

uint64_t sub_25272CE34()
{
  sub_25272EA94();

  return sub_2528BE550();
}

uint64_t sub_25272CEE8(uint64_t a1)
{
  v2 = sub_25272C2A4();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_25272CF38()
{
  result = qword_27F4FC338;
  if (!qword_27F4FC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC338);
  }

  return result;
}

uint64_t sub_25272CF94(uint64_t a1)
{
  v2 = sub_25272CDE0();

  return MEMORY[0x28210C4B8](a1, v2);
}