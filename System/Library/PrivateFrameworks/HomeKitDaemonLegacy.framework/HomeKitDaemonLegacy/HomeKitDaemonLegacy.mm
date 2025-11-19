BOOL sub_2531FCD94(void *a1, uint64_t *a2)
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

void *sub_2531FCE14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2531FCE8C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2A30, &qword_253D48628);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FCEC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FCEFC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2531FCF54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2531FCFA8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2D70, &qword_253D489B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FCFD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD020()
{
  v1 = sub_253CCFEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2531FD0CC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3010, &qword_253D48B98);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD0FC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD168()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD1B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FD248()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2531FD290(void *a1)
{
  [v1 setDispatchQueue_];
}

uint64_t sub_2531FD2EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD324()
{
  MEMORY[0x259C041E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD360()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD398()
{
  MEMORY[0x259C041E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD3D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2531FD41C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2531FD42C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2531FD43C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD480()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD4C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD500()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531FD54C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD590()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 242, 7);
}

uint64_t sub_2531FD5C8()
{
  v1 = sub_253CCFEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FD650()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD688()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2531FD6D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD708()
{
  v1 = sub_253CCFEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2531FD7E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531FD824()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2531FD86C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3658, &qword_253D49720);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD89C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD8DC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3788, &qword_253D49848);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD90C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3798, &unk_253D49900);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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

uint64_t sub_2531FDA14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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

uint64_t sub_2531FDAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FDB94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FDC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FDD18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FDDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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

uint64_t sub_2531FDE98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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

uint64_t sub_2531FDF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FE018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FE0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FE19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FE4B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FE4F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FE534(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_253CD07E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2531FE5E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_253CD07E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2531FE6EC()
{
  v1 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() <= 0x16)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_2531FE7F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FE830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
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

uint64_t sub_2531FE908()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531FE948()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FEA28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FEA60()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2531FEAA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2531FEAFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FEB90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FEBD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2531FEC98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2531FED4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2531FEDB0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2531FEDF8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2531FEDF8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2531FEE08()
{
  v1 = (type metadata accessor for NetworkDetectAccessory() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  v7 = sub_253CCFF58();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[7], v7);
  v9 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2531FEF30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FEF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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

uint64_t sub_2531FF028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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

_OWORD *sub_2531FF150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2531FF170(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_2531FF1E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2531FF314()
{
  v1 = sub_253CD07E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253200644(0, &qword_27F5A2820, off_27971A0D0);
  sub_253CD0C58();
  sub_253CD07F8();
  v6 = v0;
  v7 = sub_253CD07C8();
  v8 = sub_253CD0C78();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v18 = 91;
    v19 = 0xE100000000000000;
    v20 = v10;
    v11 = [v6 logIdentifier];
    v12 = sub_253CD0968();
    v14 = v13;

    MEMORY[0x259C00940](v12, v14);

    MEMORY[0x259C00940](93, 0xE100000000000000);
    v15 = sub_253277BA8(v18, v19, &v20);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2531F8000, v7, v8, "%s Configuring swift extensions", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C040E0](v10, -1, -1);
    MEMORY[0x259C040E0](v9, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t variable initialization expression of DiscoveryController.queue()
{
  v0 = sub_253CD0CE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_253CD0CC8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_253CD0838() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_253200644(0, &qword_281530E48, 0x277D85C78);
  sub_253CD0828();
  v8[1] = MEMORY[0x277D84F90];
  sub_253200360(&qword_281530E50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2498, &unk_253D47D20);
  sub_2531FF83C();
  sub_253CD0E38();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  return sub_253CD0D28();
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

unint64_t sub_2531FF83C()
{
  result = qword_281530EC0;
  if (!qword_281530EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F5A2498, &unk_253D47D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530EC0);
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

uint64_t variable initialization expression of DiscoveryController.logger()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();

  return sub_253CD07D8();
}

uint64_t sub_2531FF984(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a3;
  return result;
}

uint64_t variable initialization expression of NetworkInfoController.logger()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();

  return sub_253CD07D8();
}

uint64_t sub_2531FFAC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2531FFAE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2531FFB1C(uint64_t a1, id *a2)
{
  result = sub_253CD0948();
  *a2 = 0;
  return result;
}

uint64_t sub_2531FFB94(uint64_t a1, id *a2)
{
  v3 = sub_253CD0958();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2531FFC14@<X0>(uint64_t *a1@<X8>)
{
  sub_253CD0968();
  v2 = sub_253CD0938();

  *a1 = v2;
  return result;
}

uint64_t sub_2531FFC58(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A2880, type metadata accessor for HMError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2531FFCC4(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A2880, type metadata accessor for HMError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2531FFD34(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError);

  return MEMORY[0x28211CA68](a1, v2);
}

void *sub_2531FFDD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2531FFDFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2531FFEBC(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2531FFF28(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2531FFF94(void *a1, uint64_t a2)
{
  v4 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_253200048(uint64_t a1, uint64_t a2)
{
  v4 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2532000C4()
{
  v2 = *v0;
  sub_253CD11C8();
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253200124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25320060C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_253200164@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_253CD0938();

  *a2 = v5;
  return result;
}

uint64_t sub_2532001AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_253CD0968();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2532001D8(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28C0, type metadata accessor for Name);
  v3 = sub_253200360(&qword_27F5A28C8, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_253200294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_253200360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_253200480()
{
  v1 = *v0;
  v2 = sub_253CD0968();
  v3 = MEMORY[0x259C00980](v2);

  return v3;
}

uint64_t sub_2532004BC()
{
  v1 = *v0;
  sub_253CD0968();
  sub_253CD09A8();
}

uint64_t sub_253200510()
{
  v1 = *v0;
  sub_253CD0968();
  sub_253CD11C8();
  sub_253CD09A8();
  v2 = sub_253CD11E8();

  return v2;
}

uint64_t sub_253200584(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_253CD0968();
  v6 = v5;
  if (v4 == sub_253CD0968() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_253CD1118();
  }

  return v9 & 1;
}

uint64_t sub_25320060C(uint64_t a1)
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

uint64_t sub_253200644(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2532009A4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_253200A3C()
{
  result = qword_27F5A28A8;
  if (!qword_27F5A28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A28A8);
  }

  return result;
}

void sub_253200C54()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageDispatcher);
  v2 = *MEMORY[0x277CCF1C8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_253D48580;
  *(v3 + 32) = [objc_opt_self() policyWithEntitlements_];
  *(v3 + 40) = [objc_opt_self() policyWithEntitlementRequirement_];
  sub_253200644(0, &qword_281530E60, 0x277D0F838);
  v4 = sub_253CD0A38();

  [v1 registerForMessage:v2 receiver:v0 policies:v4 selector:sel_handleActiveAssertionUpdateStateMessage_];

  v5 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
  v6 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport);
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidStartNotification_ name:@"HMDXPCClientConnectionDidStartNotification" object:v6];
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidInvalidateNotification_ name:@"HMDXPCClientConnectionDidInvalidateNotification" object:v6];
  v7 = HMDProcessMonitorProcessStateDidChangeNotification;
  v8 = [v6 processMonitor];
  [v5 addObserver:v0 selector:sel_handleProcessInfoStateChangedNotification_ name:v7 object:v8];
}

BOOL sub_253200EC0()
{
  v1 = v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  v2 = *(v1 + 8);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + 8);
    }

    v4 = sub_253CD0ED8();
  }

  else
  {
    v4 = *(v2 + 16);
  }

  v5 = v4 != 0;
  os_unfair_lock_unlock(v1);
  return v5;
}

void sub_253200F28(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0888();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_253CD08A8();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    sub_253CD1078();
    __break(1u);
    return;
  }

  v16 = [a1 sendPolicyParameters];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = [a1 inactiveUpdatingLevel];
    v20 = [a1 processInfo];
    v21 = [v20 shouldMonitor];

    if (v21)
    {
      v22 = [a1 processInfo];
      v23 = [v22 isForegrounded];

      if (v23)
      {
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = 2;
      }
    }

    else if (v19 <= 1)
    {
      v19 = 1;
    }

    v30 = v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
    v31 = *(v30 + 16);
    if (*(v31 + 16) && (v32 = *(v30 + 16), v33 = sub_253217CF0(a1), (v34 & 1) != 0))
    {
      v35 = *(*(*(v31 + 56) + 8 * v33) + 16);
      os_unfair_lock_unlock(v30);
      if (v35)
      {
LABEL_17:
        v36 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      os_unfair_lock_unlock(v30);
    }

    if (v19 == 2)
    {
      [a1 deactivate];
      if ([v18 isActive])
      {
        v36 = 0;
        goto LABEL_24;
      }

LABEL_29:

      return;
    }

    v36 = 0;
LABEL_23:
    [a1 activate];
    if (v36 != [v18 isActive])
    {
LABEL_24:
      v37 = [a1 sendPolicyParameters];
      [v37 mutableCopy];

      sub_253CD0E18();
      swift_unknownObjectRelease();
      sub_253200644(0, &qword_281530D30, off_27971A1D8);
      if (swift_dynamicCast())
      {
        v38 = v40;
        [v40 setActive_];
        [a1 updateSendPolicyParameters_];
        if (v36)
        {
          sub_253201488(a1);
        }

        else
        {
          sub_253201AE8(a1);
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_253211D58(ObjectType, &off_2864FA6E8);
  v24 = a1;
  v25 = sub_253CD07C8();
  v26 = sub_253CD0C98();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = [v24 sendPolicyParameters];
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_2531F8000, v25, v26, "Connection's send policy parameters were not of type HMDHomeManagerXPCMessageSendPolicyParameters: %@", v27, 0xCu);
    sub_253206054(v28, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v28, -1, -1);
    MEMORY[0x259C040E0](v27, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

void sub_253201488(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v63 = sub_253CD07E8();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  v12 = sub_253CD0888();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_253CD08A8();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v19 = v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  v20 = a1;
  v21 = sub_25328683C(&v66, v20);

  if ((v21 & 1) == 0)
  {
    os_unfair_lock_unlock(v19);
    return;
  }

  v22 = *(v19 + 8);
  if ((v22 & 0xC000000000000001) != 0)
  {
    if (v22 < 0)
    {
      v23 = *(v19 + 8);
    }

    v24 = sub_253CD0ED8();
    if (*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = *(v22 + 16);
    if (*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  v25 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_accessoryBrowser);
  v26 = v9;
  v27 = ObjectType;
  v28 = v5;
  v29 = v24;
  v30 = sub_253CD0938();
  v31 = [v25 beginActiveAssertionWithReason_];

  v24 = v29;
  v5 = v28;
  ObjectType = v27;
  v9 = v26;
  v32 = *(v19 + 24);
  *(v19 + 24) = v31;
  swift_unknownObjectRelease();
LABEL_8:
  os_unfair_lock_unlock(v19);
  sub_253211D58(ObjectType, &off_2864FA6E8);
  v33 = v20;
  v34 = sub_253CD07C8();
  v35 = sub_253CD0CB8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v62 = v9;
    v37 = ObjectType;
    v38 = v5;
    v39 = v24;
    v40 = v36;
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v33;
    *v41 = v33;
    v42 = v33;
    _os_log_impl(&dword_2531F8000, v34, v35, "Adding active connection: %@", v40, 0xCu);
    sub_253206054(v41, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v41, -1, -1);
    v43 = v40;
    v24 = v39;
    v5 = v38;
    ObjectType = v37;
    v9 = v62;
    MEMORY[0x259C040E0](v43, -1, -1);
  }

  v44 = *(v5 + 8);
  v44(v11, v63);
  [v33 initiateRefresh];
  v45 = [objc_allocWithZone(HMDActiveXPCConnectionLogEvent) initWithXPCConnection:v33 added:1];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_logEventSubmitter) submitLogEvent_];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter) postNotificationName:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:v33];

  if (v24 == 1)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v46 = sub_253CD07C8();
    v47 = sub_253CD0CB8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2531F8000, v46, v47, "Posting notification because first home manager connection has become active", v48, 2u);
      MEMORY[0x259C040E0](v48, -1, -1);
    }

    v44(v9, v63);
    v49 = MEMORY[0x277D84F98];
    v68 = MEMORY[0x277D84F98];
    v50 = sub_253CD0968();
    v52 = v51;
    v53 = [v33 clientIdentifier];
    if (v53)
    {
      v54 = v53;
      v55 = sub_253CD0968();
      v57 = v56;

      v67 = MEMORY[0x277D837D0];
      *&v66 = v55;
      *(&v66 + 1) = v57;
      sub_2531FF150(&v66, v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v49;
      sub_25327A864(v65, v50, v52, isUniquelyReferenced_nonNull_native);

      v59 = v64;
    }

    else
    {
      sub_253279D58(v50, v52, &v66);

      sub_253206054(&v66, &qword_27F5A2AB0, &unk_253D4A560);
      v59 = v68;
    }

    v60 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
    sub_25322E744(v59);

    v61 = sub_253CD08B8();

    [v60 postNotificationName:@"HMDHomeManagerFirstProcessDidBecomeActiveNotification" object:v2 userInfo:v61];
  }
}

void sub_253201AE8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = sub_253CD0888();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_253CD08A8();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v19 = v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  v20 = sub_2532049C0(a1);
  if (!v20)
  {
    os_unfair_lock_unlock(v19);
    return;
  }

  v21 = *(v19 + 8);
  if ((v21 & 0xC000000000000001) != 0)
  {
    if (v21 < 0)
    {
      v22 = *(v19 + 8);
    }

    v23 = sub_253CD0ED8();
    if (!*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(v21 + 16);
    if (!*(v19 + 24))
    {
      goto LABEL_8;
    }
  }

  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_accessoryBrowser) endActiveAssertion_];
  v24 = *(v19 + 24);
  *(v19 + 24) = 0;
  swift_unknownObjectRelease();
LABEL_8:
  os_unfair_lock_unlock(v19);
  sub_253211D58(ObjectType, &off_2864FA6E8);
  v25 = a1;
  v26 = sub_253CD07C8();
  v27 = sub_253CD0CB8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v54 = ObjectType;
    v29 = v6;
    v30 = v5;
    v31 = v23;
    v32 = v28;
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v25;
    *v33 = v25;
    v34 = v25;
    _os_log_impl(&dword_2531F8000, v26, v27, "Removing inactive connection: %@", v32, 0xCu);
    sub_253206054(v33, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v33, -1, -1);
    v35 = v32;
    v23 = v31;
    v5 = v30;
    v6 = v29;
    ObjectType = v54;
    MEMORY[0x259C040E0](v35, -1, -1);
  }

  v36 = *(v6 + 8);
  v36(v11, v5);
  v37 = [objc_allocWithZone(HMDActiveXPCConnectionLogEvent) initWithXPCConnection:v25 added:0];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_logEventSubmitter) submitLogEvent_];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter) postNotificationName:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:v25];

  if (!v23)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v38 = sub_253CD07C8();
    v39 = sub_253CD0CB8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2531F8000, v38, v39, "Posting notification because last home manager connection has become inactive", v40, 2u);
      MEMORY[0x259C040E0](v40, -1, -1);
    }

    v36(v55, v5);
    v41 = MEMORY[0x277D84F98];
    v60 = MEMORY[0x277D84F98];
    v42 = sub_253CD0968();
    v44 = v43;
    v45 = [v25 clientIdentifier];
    if (v45)
    {
      v46 = v45;
      v47 = sub_253CD0968();
      v49 = v48;

      v59 = MEMORY[0x277D837D0];
      *&v58 = v47;
      *(&v58 + 1) = v49;
      sub_2531FF150(&v58, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v41;
      sub_25327A864(v57, v42, v44, isUniquelyReferenced_nonNull_native);

      v51 = v56;
    }

    else
    {
      sub_253279D58(v42, v44, &v58);

      sub_253206054(&v58, &qword_27F5A2AB0, &unk_253D4A560);
      v51 = v60;
    }

    v52 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
    sub_25322E744(v51);

    v53 = sub_253CD08B8();

    [v52 postNotificationName:@"HMDHomeManagerLastProcessDidBecomeInactiveNotification" object:v2 userInfo:v53];
  }
}

void sub_2532020D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = &v99 - v6;
  v7 = sub_253CD07E8();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v99 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v99 - v16;
  MEMORY[0x28223BE20](v15);
  v112 = &v99 - v18;
  v111 = sub_253CCFF58();
  v113 = *(v111 - 8);
  v19 = v113[8];
  v20 = MEMORY[0x28223BE20](v111);
  v109 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v99 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v110 = &v99 - v25;
  MEMORY[0x28223BE20](v24);
  v114 = &v99 - v26;
  v27 = sub_253CD0888();
  v33 = *(v27 - 1);
  v28 = *(v33 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v30 = v31;
  (*(v33 + 104))(v30, *MEMORY[0x277D85200], v27);
  v32 = v31;
  LOBYTE(v31) = sub_253CD08A8();
  v34 = *(v33 + 8);
  LOBYTE(v33) = v33 + 8;
  v34(v30, v27);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v35 = [a1 proxyConnection];
  v36 = a1;
  if (!v35)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v67 = a1;
    v68 = sub_253CD07C8();
    v69 = sub_253CD0C98();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v67;
      *v71 = v67;
      v72 = v67;
      _os_log_impl(&dword_2531F8000, v68, v69, "Could not find connection for active assertion message: %@", v70, 0xCu);
      sub_253206054(v71, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v71, -1, -1);
      MEMORY[0x259C040E0](v70, -1, -1);
    }

    (*(v115 + 8))(v11, v116);
    v73 = objc_opt_self();
    v74 = sub_253CD0938();
    v75 = [v73 hmErrorWithCode:2 description:0 reason:v74 suggestion:0];

    v66 = sub_253CCFE08();
    [v67 respondWithError_];

    goto LABEL_14;
  }

  v37 = v35;
  if (![v35 principalClass] || (swift_getObjCClassMetadata(), sub_253200644(0, &qword_281530E78, 0x277CD1A90), !swift_dynamicCastMetatype()))
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v59 = v37;
    v60 = sub_253CD07C8();
    v61 = sub_253CD0C98();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v63 = v37;
      v64 = v59;
      _os_log_impl(&dword_2531F8000, v60, v61, "Cannot update assertion for non-home-manager connection: %@", v62, 0xCu);
      sub_253206054(v63, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v63, -1, -1);
      MEMORY[0x259C040E0](v62, -1, -1);
    }

    (*(v115 + 8))(v14, v116);
    type metadata accessor for HMError(0);
    v118 = 48;
    sub_253276CC0(MEMORY[0x277D84F90]);
    sub_2532060B4(&qword_27F5A28B8, type metadata accessor for HMError);
    sub_253CCFDF8();
    v65 = v117[0];
    v66 = sub_253CCFE08();

    [v36 respondWithError_];
LABEL_14:

    return;
  }

  v38 = [a1 uuidForKey_];
  if (!v38)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v76 = sub_253CD07C8();
    v77 = sub_253CD0C98();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_2531F8000, v76, v77, "Could not find assertion UUID in update state message payload", v78, 2u);
      MEMORY[0x259C040E0](v78, -1, -1);
    }

    (*(v115 + 8))(v17, v116);
    type metadata accessor for HMError(0);
    v118 = 3;
    sub_253276CC0(MEMORY[0x277D84F90]);
    sub_2532060B4(&qword_27F5A28B8, type metadata accessor for HMError);
    sub_253CCFDF8();
    v79 = v117[0];
    v80 = sub_253CCFE08();

    [v36 respondWithError_];
    return;
  }

  v106 = v1;
  v39 = v114;
  v40 = v38;
  sub_253CCFF38();

  v41 = *MEMORY[0x277CCF1B8];
  v104 = v36;
  v105 = [v36 BOOLForKey_];
  v30 = v112;
  sub_253211D58(ObjectType, &off_2864FA6E8);
  v42 = v113;
  v43 = v110;
  v33 = v111;
  v102 = v113[2];
  v103 = v113 + 2;
  v102(v110, v39, v111);
  v44 = v37;
  v45 = sub_253CD07C8();
  v46 = sub_253CD0CB8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v117[0] = v101;
    *v47 = 136315650;
    sub_2532060B4(&qword_281531980, MEMORY[0x277CC95F0]);
    v48 = sub_253CD10E8();
    v30 = v49;
    v50 = v43;
    v51 = v113[1];
    v51(v50, v33);
    v52 = sub_253277BA8(v48, v30, v117);

    *(v47 + 4) = v52;
    *(v47 + 12) = 1024;
    v53 = v105;
    *(v47 + 14) = v105;
    *(v47 + 18) = 2112;
    *(v47 + 20) = v44;
    v54 = v100;
    *v100 = v37;
    v27 = v51;
    v55 = v44;
    _os_log_impl(&dword_2531F8000, v45, v46, "Updating assertion with UUID %s to %{BOOL}d for connection: %@", v47, 0x1Cu);
    sub_253206054(v54, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v54, -1, -1);
    v56 = v101;
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x259C040E0](v56, -1, -1);
    v57 = v47;
    v42 = v113;
    MEMORY[0x259C040E0](v57, -1, -1);

    (*(v115 + 8))(v112, v116);
    v58 = v106;
    v11 = v44;
  }

  else
  {

    v27 = v42[1];
    v27(v43, v33);
    (*(v115 + 8))(v30, v116);
    v58 = v106;
    v11 = v44;
    v53 = v105;
  }

  a1 = v58 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v58 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  if (!v53)
  {
    v90 = sub_253202DEC(v117, v11);
    if (*v91)
    {
      v92 = v108;
      sub_253204B58(v114, v108);
      sub_253206054(v92, &unk_27F5A2AD0, &unk_253D486A0);
      (v90)(v117, 0);
    }

    else
    {
      (v90)(v117, 0);
      v98 = v108;
      (v42[7])(v108, 1, 1, v33);
      sub_253206054(v98, &unk_27F5A2AD0, &unk_253D486A0);
    }

    v30 = v104;
    goto LABEL_33;
  }

  v102(v109, v114, v33);
  v81 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117[0] = *(a1 + 16);
  v83 = v117[0];
  *(a1 + 16) = 0x8000000000000000;
  ObjectType = sub_253217CF0(v11);
  v85 = v83[2];
  v86 = (v84 & 1) == 0;
  v87 = v85 + v86;
  if (__OFADD__(v85, v86))
  {
    goto LABEL_35;
  }

  LOBYTE(v33) = v84;
  if (v83[3] >= v87)
  {
    v30 = v104;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

LABEL_36:
    sub_2532859EC();
    v83 = v117[0];
    goto LABEL_28;
  }

  sub_253283F7C(v87, isUniquelyReferenced_nonNull_native);
  v83 = v117[0];
  v88 = sub_253217CF0(v11);
  v30 = v104;
  if ((v33 & 1) == (v89 & 1))
  {
    ObjectType = v88;
LABEL_28:
    v93 = v107;
    v94 = *(a1 + 16);
    *(a1 + 16) = v83;

    v95 = *(a1 + 16);
    if ((v33 & 1) == 0)
    {
      sub_25327B000(ObjectType, v11, MEMORY[0x277D84FA0], *(a1 + 16));
      v96 = v11;
    }

    v97 = *(v95 + 56) + 8 * ObjectType;
    sub_253286A74(v93, v109);
    v33 = v111;
    v27(v93, v111);
LABEL_33:
    os_unfair_lock_unlock(a1);
    sub_253200F28(v11);
    [v30 respondWithSuccess];

    v27(v114, v33);
    return;
  }

  sub_253200644(0, &qword_281530E30, off_27971A270);
  sub_253CD1158();
  __break(1u);
}

void (*sub_253202DEC(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2532059E4(v4, a2);
  return sub_253202E64;
}

void sub_253202E64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_253202F18(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_253CD07E8();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - v15;
  v16 = sub_253CD0888();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_253CD08A8();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v23 = sub_253CCFD48();
  if (!v23)
  {
    v54 = 0u;
    v55 = 0u;
    v26 = v5;
    goto LABEL_14;
  }

  v24 = v23;
  v51 = sub_253CD0968();
  v52 = v25;
  sub_253CD0F58();
  v26 = v5;
  if (!*(v24 + 16) || (v27 = sub_253217D40(v53), (v28 & 1) == 0))
  {

    sub_253205FA4(v53);
    v54 = 0u;
    v55 = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v24 + 56) + 32 * v27, &v54);
  sub_253205FA4(v53);

  if (!*(&v55 + 1))
  {
LABEL_14:
    sub_253206054(&v54, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_15;
  }

  sub_253200644(0, &qword_281530E30, off_27971A270);
  if (swift_dynamicCast())
  {
    v29 = v53[0];
    if ([v53[0] principalClass] && (swift_getObjCClassMetadata(), sub_253200644(0, &qword_281530E78, 0x277CD1A90), swift_dynamicCastMetatype()))
    {
      v30 = v47;
      sub_253211D58(ObjectType, &off_2864FA6E8);
      v31 = v29;
      v32 = sub_253CD07C8();
      v33 = sub_253CD0C78();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&dword_2531F8000, v32, v33, "Setting initial home manager policy parameters on connection: %@", v34, 0xCu);
        sub_253206054(v35, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v35, -1, -1);
        MEMORY[0x259C040E0](v34, -1, -1);
      }

      (*(v49 + 8))(v30, v50);
      v37 = [objc_allocWithZone(HMDHomeManagerXPCMessageSendPolicyParameters) initWithEntitlements:objc_msgSend(v31 options:{sel_entitlements), objc_msgSend(v31, sel_homeManagerOptions)}];
      [v31 updateSendPolicyParameters_];
      [v31 notifyOfExternallyManagedActivation];
      sub_253200F28(v31);
    }

    else
    {
    }

    return;
  }

LABEL_15:
  sub_253211D58(ObjectType, &off_2864FA6E8);
  (*(v6 + 16))(v9, a1, v26);
  v38 = sub_253CD07C8();
  v39 = sub_253CD0CA8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53[0] = v41;
    *v40 = 136315138;
    *&v54 = sub_253CCFD48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
    v42 = sub_253CD0978();
    v44 = v43;
    (*(v6 + 8))(v9, v26);
    v45 = sub_253277BA8(v42, v44, v53);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_2531F8000, v38, v39, "XPC connection did activate notification user info did not contain a HMDXPCClientConnection: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x259C040E0](v41, -1, -1);
    MEMORY[0x259C040E0](v40, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v26);
  }

  (*(v49 + 8))(v14, v50);
}

void sub_2532035CC(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_253CD07E8();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = v58 - v15;
  v16 = sub_253CD0888();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_253CD08A8();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v23 = sub_253CCFD48();
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v64 = sub_253CD0968();
  v65 = v25;
  sub_253CD0F58();
  if (!*(v24 + 16) || (v26 = sub_253217D40(v66), (v27 & 1) == 0))
  {

    sub_253205FA4(v66);
LABEL_13:
    v67 = 0u;
    v68 = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v24 + 56) + 32 * v26, &v67);
  sub_253205FA4(v66);

  if (!*(&v68 + 1))
  {
LABEL_14:
    sub_253206054(&v67, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_15;
  }

  sub_253200644(0, &qword_281530E30, off_27971A270);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_253211D58(ObjectType, &off_2864FA6E8);
    (*(v6 + 16))(v9, a1, v5);
    v35 = sub_253CD07C8();
    v36 = sub_253CD0CA8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66[0] = v38;
      *v37 = 136315138;
      *&v67 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v39 = sub_253CD0978();
      v41 = v40;
      (*(v6 + 8))(v9, v5);
      v42 = sub_253277BA8(v39, v41, v66);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2531F8000, v35, v36, "XPC connection did activate notification user info did not contain a HMDXPCClientConnection: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x259C040E0](v38, -1, -1);
      MEMORY[0x259C040E0](v37, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v62 + 8))(v14, v63);
    return;
  }

  v28 = v66[0];
  if ([v66[0] principalClass] && (swift_getObjCClassMetadata(), v58[1] = sub_253200644(0, &qword_281530E78, 0x277CD1A90), swift_dynamicCastMetatype()))
  {
    v29 = v61;
    v30 = (v61 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState);
    os_unfair_lock_lock((v61 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
    v31 = v28;
    sub_25327858C(0, v31);
    os_unfair_lock_unlock(v30);
    sub_253201AE8(v31);
    v59 = [v31 processInfo];
    v32 = [*(v29 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport) connections];
    a1 = sub_253CD0A58();

    v58[0] = v31;
    if (a1 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
    {
      v34 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x259C00F30](v34, a1);
        }

        else
        {
          if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v43 = *(a1 + 8 * v34 + 32);
        }

        v44 = v43;
        v45 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        sub_253200644(0, &qword_281530D00, 0x277D82BB8);
        v46 = [v44 processInfo];
        v47 = sub_253CD0D88();

        if (v47)
        {
          v48 = [v44 principalClass];

          if (v48)
          {
            swift_getObjCClassMetadata();
            if (swift_dynamicCastMetatype())
            {

              return;
            }
          }
        }

        else
        {
        }

        ++v34;
        if (v45 == i)
        {
          goto LABEL_36;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v49 = v60;
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v50 = v59;
    v51 = sub_253CD07C8();
    v52 = sub_253CD0C78();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_2531F8000, v51, v52, "Posting notification that no more client connections exist for process: %@", v53, 0xCu);
      sub_253206054(v54, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v54, -1, -1);
      MEMORY[0x259C040E0](v53, -1, -1);
    }

    (*(v62 + 8))(v49, v63);
    v56 = *(v61 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
    v57 = v50;
    [v56 postNotificationName:@"HMDHomeManagerClientProcessDisconnectedNotification" object:v57];
  }

  else
  {
  }
}

uint64_t sub_253203E08(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_253CD07E8();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_253CD0888();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v2;
  v19 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_253CD08A8();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    v27 = sub_253CD0ED8();
    if (v27)
    {
      goto LABEL_9;
    }

LABEL_27:
  }

  v21 = sub_253CCFD48();
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;
  v45 = sub_253CD0968();
  v46 = v23;
  sub_253CD0F58();
  if (!*(v22 + 16) || (v24 = sub_253217D40(v47), (v25 & 1) == 0))
  {

    sub_253205FA4(v47);
LABEL_18:
    v48 = 0u;
    v49 = 0u;
    goto LABEL_19;
  }

  sub_253205FF8(*(v22 + 56) + 32 * v24, &v48);
  sub_253205FA4(v47);

  if (!*(&v49 + 1))
  {
LABEL_19:
    sub_253206054(&v48, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_20;
  }

  sub_253200644(0, &qword_281530E70, off_27971A208);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_253211D58(ObjectType, &off_2864FA6E8);
    (*(v6 + 16))(v9, a1, v5);
    v34 = sub_253CD07C8();
    v35 = sub_253CD0CA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47[0] = v37;
      *v36 = 136315138;
      *&v48 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v38 = sub_253CD0978();
      v40 = v39;
      (*(v6 + 8))(v9, v5);
      v41 = sub_253277BA8(v38, v40, v47);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2531F8000, v34, v35, "Process info state changed notification user info did not contain a HMDProcessInfo: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x259C040E0](v37, -1, -1);
      MEMORY[0x259C040E0](v36, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return (*(v43 + 8))(v13, v44);
  }

  v6 = v47[0];
  v26 = [*(v42 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport) connections];
  sub_253200644(0, &qword_281530E30, off_27971A270);
  v13 = sub_253CD0A58();

  if (v13 >> 62)
  {
    goto LABEL_26;
  }

  v27 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_9:
  result = sub_253200644(0, &qword_281530D00, 0x277D82BB8);
  if (v27 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x259C00F30](i, v13);
      }

      else
      {
        v30 = *(v13 + 8 * i + 32);
      }

      v31 = v30;
      v32 = [v30 processInfo];
      v33 = sub_253CD0D88();

      if (v33)
      {
        sub_253200F28(v31);
      }
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_2532043EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_253CCFD58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFD18();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

HMDHomeManagerXPCClientConnectionsManagerFactory __swiftcall HMDHomeManagerXPCClientConnectionsManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for HomeManagerXPCClientConnectionsManager()
{
  result = qword_281531620;
  if (!qword_281531620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253204810()
{
  result = sub_253CCFF58();
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_253204928(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_253204970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2532049C0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_253CD0F18();

    if (v7)
    {
      v8 = sub_253204FF4();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_253200644(0, &qword_281530E30, off_27971A270);
  v11 = *(v3 + 40);
  v12 = sub_253CD0D78();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_253CD0D88();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25328A2C8();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_253205320(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_253204B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_253CD08F8();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_2532060B4(&qword_27F5A2AE0, MEMORY[0x277CC95F0]);
      v22 = sub_253CD0918();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25328A418();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2532054C0(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_253204E00()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_253CD0F18();

    if (v4)
    {
      v5 = sub_25320515C();

      return v5;
    }

    return 0;
  }

  v18 = v0;
  v7 = *(v1 + 40);
  sub_253CD11C8();
  sub_253CCFF58();
  sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  v8 = sub_253CD11E8();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v1 + 48) + 8 * v10);

    v13 = sub_253CCFF28();

    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v18;
  v19 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25328A650();
    v16 = v19;
  }

  v17 = *(*(v16 + 48) + 8 * v10);
  sub_2532057C8(v10);
  result = v17;
  *v18 = v19;
  return result;
}

uint64_t sub_253204FF4()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_253CD0ED8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_253287808(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_253CD0D78();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_253200644(0, &qword_281530E30, off_27971A270);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_253CD0D88();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_253205320(v9);
  result = sub_253CD0D88();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25320515C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_253CD0ED8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2532879F8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);
  sub_253CD11C8();
  sub_253CCFF58();
  sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0]);

  sub_253CD0908();
  v7 = sub_253CD11E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);

      v12 = sub_253CCFF28();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2532057C8(v9);
  result = sub_253CCFF28();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_253205320(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_253CD0E58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_253CD0D78();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2532054C0(int64_t a1)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_253CD0E58();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0]);
        v27 = sub_253CD08F8();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_2532057C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_253CD0E58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_253CD11C8();
        sub_253CCFF58();
        sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0]);

        sub_253CD0908();
        v13 = sub_253CD11E8();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_2532059E4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_253205CF0(v6);
  v6[9] = sub_253205AE8(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_253205A88;
}

void sub_253205A88(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_253205AE8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_253217CF0(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2532859EC();
      v11 = v19;
      goto LABEL_11;
    }

    sub_253283F7C(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_253217CF0(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_253200644(0, &qword_281530E30, off_27971A270);
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_253205C40;
}

void sub_253205C40(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_25327B000(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_25327A1B0(v6, v7);
  }

  v10 = *v1;

  free(v1);
}

uint64_t (*sub_253205CF0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_253205D18;
}

id sub_253205D24(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v31 = a2;
  v7 = sub_253CCFF58();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = v8[2];
  v15(&v28 - v13, a3, v7);
  v15(v12, v14, v7);
  v30 = [objc_opt_self() defaultTransport];
  v29 = [objc_opt_self() defaultCenter];
  v16 = type metadata accessor for HomeManagerXPCClientConnectionsManager();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState];
  *v18 = 0;
  v19 = MEMORY[0x277D84F98];
  *(v18 + 1) = MEMORY[0x277D84FA0];
  *(v18 + 2) = v19;
  *(v18 + 3) = 0;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue] = a1;
  v20 = v31;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageDispatcher] = v31;
  v15(&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageTargetUUID], v12, v7);
  v21 = v33;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_accessoryBrowser] = v32;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_logEventSubmitter] = v21;
  v22 = v29;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport] = v30;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter] = v22;
  v34.receiver = v17;
  v34.super_class = v16;
  v23 = a1;
  v24 = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = v8[1];
  v26(v12, v7);
  v26(v14, v7);
  return v25;
}

uint64_t sub_253205FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_253206054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2532060B4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25320612C(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 uuid];
  sub_253CCFF38();

  LOBYTE(v9) = sub_253CCFF28();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    swift_unknownObjectRetain();
    return v2;
  }

  v11 = sub_253CCFF18();
  v12 = [v2 roomWithUUID_];

  if (v12)
  {
    return v12;
  }

  v13 = [v2 zones];
  sub_253200644(0, &qword_281530D10, off_27971A280);
  v14 = sub_253CD0A58();

  MEMORY[0x28223BE20](v15);
  *(&v33 - 2) = a1;
  v12 = sub_25323FE0C(sub_253207054, (&v33 - 4), v14);

  if (v12)
  {
    return v12;
  }

  result = [v2 actionSets];
  if (result)
  {
    v17 = result;
    sub_253200644(0, &qword_281530E90, off_279719FF0);
    v18 = sub_253CD0A58();

    MEMORY[0x28223BE20](v19);
    *(&v33 - 2) = a1;
    v12 = sub_25323FE0C(sub_253207180, (&v33 - 4), v18);

    if (v12)
    {
      return v12;
    }

    v20 = sub_253206668(a1);
    if (v20)
    {
      return v20;
    }

    v20 = sub_253206A30(a1);
    if (v20)
    {
      return v20;
    }

    result = [v2 mediaSystems];
    if (result)
    {
      v21 = result;
      sub_253200644(0, &qword_27F5A2AF0, off_27971A1A0);
      v22 = sub_253CD0A58();

      if (v22 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
      {
        v24 = 0;
        v36 = v22 & 0xFFFFFFFFFFFFFF8;
        v37 = v22 & 0xC000000000000001;
        v34 = i;
        v35 = v22;
        while (1)
        {
          if (v37)
          {
            v25 = MEMORY[0x259C00F30](v24, v22);
          }

          else
          {
            if (v24 >= *(v36 + 16))
            {
              goto LABEL_32;
            }

            v25 = *(v22 + 8 * v24 + 32);
          }

          v26 = v25;
          v39 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          v27 = [v25 messageTargetUUID];
          sub_253CCFF38();

          LOBYTE(v27) = sub_253CCFF28();
          v10(v8, v4);
          if (v27)
          {

            return v26;
          }

          v28 = [v26 settingsController];
          if (v28)
          {
            v38 = v26;
            v29 = v28;
            v2 = [v29 messageHandler];
            v30 = [v2 messageTargetUUID];
            sub_253CCFF38();

            LOBYTE(v30) = sub_253CCFF28();
            v10(v8, v4);
            if (v30)
            {

              v32 = v38;
LABEL_30:

              return v2;
            }

            v31 = sub_253CCFF18();
            v32 = [v29 settingForUUID_];

            if (v32)
            {
              goto LABEL_30;
            }

            swift_unknownObjectRelease();
            i = v34;
            v22 = v35;
          }

          else
          {
          }

          ++v24;
          if (v39 == i)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

LABEL_34:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_253206668(void (**a1)(char *, uint64_t))
{
  v25 = sub_253CCFF58();
  v3 = *(v25 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 triggers];
  if (!result)
  {
    goto LABEL_25;
  }

  v8 = result;
  sub_253200644(0, &qword_27F5A2B08, off_27971A250);
  v9 = sub_253CD0A58();

  if (v9 >> 62)
  {
    goto LABEL_23;
  }

  v26 = v9 & 0xFFFFFFFFFFFFFF8;
  v28 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = 0;
  v27 = v9 & 0xC000000000000001;
  v24 = (v3 + 8);
  while (1)
  {
    if (v28 == v10)
    {

      return 0;
    }

    if (v27)
    {
      v14 = MEMORY[0x259C00F30](v10, v9);
    }

    else
    {
      if (v10 >= *(v26 + 16))
      {
        goto LABEL_22;
      }

      v14 = *(v9 + 8 * v10 + 32);
    }

    v15 = v14;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v26 = v9 & 0xFFFFFFFFFFFFFF8;
      v28 = sub_253CD0ED8();
      goto LABEL_4;
    }

    v16 = [v14 messageTargetUUID];
    sub_253CCFF38();

    LOBYTE(v16) = sub_253CCFF28();
    (*v24)(v6, v25);
    if (v16)
    {

      return v15;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      break;
    }

LABEL_5:
    v11 = [v15 actionSets];
    sub_253200644(0, &qword_281530E90, off_279719FF0);
    v12 = sub_253CD0A58();

    MEMORY[0x28223BE20](v13);
    *(&v24 - 2) = a1;
    v3 = sub_25323FE0C(sub_253207180, (&v24 - 4), v12);

    ++v10;
    if (v3)
    {

      return v3;
    }
  }

  v18 = v17;
  v19 = v15;
  result = [v18 events];
  if (result)
  {
    v20 = result;
    sub_253200644(0, &qword_27F5A2B10, off_27971A0B8);
    v21 = sub_253CD0A58();

    MEMORY[0x28223BE20](v22);
    *(&v24 - 2) = a1;
    v23 = sub_25323FE0C(sub_253207180, (&v24 - 4), v21);

    if (v23)
    {

      return v23;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_253206A30(uint64_t a1)
{
  v2 = v1;
  v43 = sub_253CCFF58();
  v4 = *(v43 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 accessories];
  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  v8 = sub_253CD0A58();

  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v10 = 0;
    v39 = v8 & 0xFFFFFFFFFFFFFF8;
    v40 = v8 & 0xC000000000000001;
    v41 = (v4 + 1);
    while (1)
    {
      if (v40)
      {
        v11 = MEMORY[0x259C00F30](v10, v8);
      }

      else
      {
        if (v10 >= *(v39 + 16))
        {
          goto LABEL_28;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v44 = v10 + 1;
      v13 = [v11 uuid];
      v4 = v42;
      sub_253CCFF38();

      LOBYTE(v13) = sub_253CCFF28();
      v14 = *v41;
      (*v41)(v4, v43);
      if (v13)
      {

        return v12;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v4 = v12;
        v17 = [v16 services];
        sub_253200644(0, &qword_27F5A2B00, off_27971A228);
        v18 = sub_253CD0A58();

        MEMORY[0x28223BE20](v19);
        *(&v36 - 2) = a1;
        v20 = sub_25323FE0C(sub_253207180, (&v36 - 4), v18);

        if (v20)
        {

          return v20;
        }
      }

      else
      {
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = v25;
          v4 = v12;
          v27 = [v26 settingsController];
          if (v27)
          {
            v38 = v4;
            v4 = v27;
            v37 = [v4 messageHandler];
            v28 = [v37 messageTargetUUID];
            v29 = v42;
            sub_253CCFF38();

            LOBYTE(v28) = sub_253CCFF28();
            v14(v29, v43);
            if (v28)
            {

              v34 = v38;

              return v37;
            }

            v30 = a1;
            v31 = sub_253CCFF18();
            v32 = [v4 settingForUUID_];

            v33 = v38;
            if (v32)
            {

              return v37;
            }

            swift_unknownObjectRelease();
            a1 = v30;
          }

          else
          {
          }
        }
      }

      v21 = [v12 accessoryProfiles];
      if (v21)
      {
        v22 = v21;
        sub_253200644(0, &qword_27F5A2AF8, off_279719FE8);
        v4 = sub_253CD0A58();

        MEMORY[0x28223BE20](v23);
        *(&v36 - 2) = a1;
        v24 = sub_25323FE0C(sub_253207180, (&v36 - 4), v4);

        if (v24)
        {

          return v24;
        }
      }

      else
      {
      }

      ++v10;
      if (v44 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:

  return 0;
}

uint64_t sub_253207074(id *a1)
{
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 messageTargetUUID];
  sub_253CCFF38();

  v8 = sub_253CCFF28();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_25320727C(void *a1, uint64_t a2)
{
  v20[3] = sub_253CD06F8();
  v20[4] = MEMORY[0x277D17D60];
  v20[0] = a2;
  v4 = qword_281530E80;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_2532074E4(v20, v19);
  v5 = sub_253CD06D8();
  v6 = objc_allocWithZone(v5);

  v7 = sub_253CD06C8();
  v8 = objc_allocWithZone(sub_253CD06B8());
  v9 = v7;
  v10 = sub_253CD0698();
  v11 = sub_253CD0938();
  v12 = [a1 preferenceForKey_];

  v13 = [v12 numberValue];
  if (v13)
  {
    [v13 doubleValue];
    sub_2532074E4(v20, v19);
    v14 = objc_allocWithZone(v5);

    v15 = sub_253CD06C8();
    sub_253CD0968();
    v16 = v15;
    sub_253CD06A8();
  }

  v17 = [objc_allocWithZone(sub_253CD0658()) init];
  sub_253CD0968();
  sub_253CD06A8();

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v10;
}

uint64_t sub_2532074E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_253207588(uint64_t a1)
{
  v3 = sub_253CCFEE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_253CCFF58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v47 = result;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = *(v1 + 24);
      v46 = a1;
      swift_unknownObjectRetain();
      v19 = [v17 groupName];
      sub_253CD0968();

      v20 = [v17 homeUUID];
      sub_253CCFF38();

      v21 = [v17 accessoryUUID];
      sub_253CCFF38();

      v22 = sub_253CD04E8();

      v23 = *(v8 + 8);
      v23(v12, v7);
      v23(v14, v7);
      if (v22)
      {

        v24 = [v17 date];
        sub_253CCFEA8();

        v25 = sub_25323059C(v47, v22, v6);
LABEL_13:
        swift_unknownObjectRelease();

        return v25;
      }

      goto LABEL_18;
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      v28 = *(v1 + 24);
      swift_unknownObjectRetain();
      v29 = [v27 groupName];
      sub_253CD0968();

      v30 = [v27 homeUUID];
      sub_253CCFF38();

      v31 = sub_253CD04F8();

      (*(v8 + 8))(v14, v7);
      if (v31)
      {

        v32 = [v27 date];
LABEL_12:
        v37 = v32;
        sub_253CCFEA8();

        v25 = sub_25323059C(v47, v31, v6);
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (!v33)
      {
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (!v38)
        {
          v48 = 0;
          v49 = 0xE000000000000000;
          sub_253CD0FB8();
          MEMORY[0x259C00940](0xD00000000000001BLL, 0x8000000253D4D730);
          swift_getObjectType();
          v45 = sub_253CD1228();
          MEMORY[0x259C00940](v45);

          MEMORY[0x259C00940](0xD000000000000027, 0x8000000253D4D750);
          result = sub_253CD1078();
          __break(1u);
          return result;
        }

        v39 = v38;
        v40 = v1;
        v41 = *(v1 + 24);
        swift_unknownObjectRetain();
        v42 = [v39 groupName];
        sub_253CD0968();

        v43 = sub_253CD0508();

        if (v43)
        {
          v44 = *(v40 + 32);
          v25 = sub_253230794(v47, v43, v44);
          swift_unknownObjectRelease();
          return v25;
        }

        goto LABEL_18;
      }

      v34 = v33;
      v35 = *(v1 + 24);
      swift_unknownObjectRetain();
      v36 = [v34 groupName];
      sub_253CD0968();

      v31 = sub_253CD0508();

      if (v31)
      {

        v32 = [v34 date];
        goto LABEL_12;
      }
    }

LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_253207BD8()
{
  sub_25320833C(v0 + 16);
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_253207C5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, id, uint64_t))
{
  v33 = a7;
  v34 = a5;
  v29[2] = a4;
  v11 = sub_253CCFEE8();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_getObjectType();
  sub_253CD0528();
  v15 = a3;
  swift_unknownObjectRetain();
  v16 = v32;
  v17 = v33(a1, a2, v15, a6);
  if (v16)
  {

    swift_unknownObjectRelease();

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v17;
    v29[1] = 0;
    v32 = v14;
    v33 = v11;
    [objc_opt_self() defaultSaveInterval];
    v21 = v20;
    v22 = [objc_opt_self() sharedInstance];
    if (v34)
    {
      sub_253CD04A8();
    }

    _s16CoreDataDelegateCMa();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v23 + 24) = v19;
    *(v23 + 32) = v15;
    v24 = objc_allocWithZone(ObjCClassFromObject);
    v25 = v15;

    v26 = [v24 initWithDelegate:v23 saveInterval:v22 uptimeProvider:v21];

    v27 = [v25 startOfCurrentDay];
    v28 = v32;
    sub_253CCFEA8();

    sub_253CD0478();

    (*(v31 + 8))(v28, v33);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return v26;
  }
}

uint64_t sub_253207F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, id, uint64_t))
{
  v12 = sub_253CD0968();
  v14 = v13;
  if (a5)
  {
    a5 = sub_253CD0968();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4;
  swift_unknownObjectRetain();
  return sub_253207C5C(v12, v14, v17, a5, v16, a6, a8);
}

id sub_25320817C(uint64_t a1, void *a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_253CCFEE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    sub_253CD04A8();
  }

  _s16CoreDataDelegateCMa();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v18 = a2;

  v19 = [v17 initWithDelegate:v16 saveInterval:a6 uptimeProvider:a3];

  v20 = [v18 startOfCurrentDay];
  sub_253CCFEA8();

  sub_253CD0478();

  (*(v12 + 8))(v15, v11);
  return v19;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_253208370(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2532083CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_253208528()
{
  v2.receiver = v0;
  v2.super_class = _s22DefaultSwiftExtensionsCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_253208594(void *a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1;
  *v6 = [v7 workQueue];
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = sub_253CD08A8();

  result = (*(v3 + 8))(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void sub_2532086C0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v32 = a7;
  v34 = sub_253CCFF58();
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v34);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253205FF8(a5, v36);
  v17 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v18 = objc_allocWithZone(v17);
  swift_unknownObjectWeakInit();
  v19 = &v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v19 = 0xD00000000000003BLL;
  *(v19 + 1) = 0x8000000253D4D890;
  *&v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  v20 = v33;
  swift_unknownObjectWeakAssign();
  *&v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_nodeId] = a1;
  *&v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_endpointId] = a2;
  *&v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_clusterId] = a3;
  *&v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_attributeId] = a4;
  sub_253205FF8(v36, &v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v18[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a6;
  v21 = a6;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = [v20 uuid];
  sub_253CCFF38();

  v26 = sub_253CCFF18();
  (*(v13 + 8))(v16, v34);
  v35.receiver = v18;
  v35.super_class = v17;
  v27 = objc_msgSendSuper2(&v35, sel_initWithHomeUUID_, v26);

  __swift_destroy_boxed_opaque_existential_0(v36);
  v28 = [v20 logEventSubmitter];
  if (v28)
  {
    v29 = v28;
    if (v32)
    {
      v30 = sub_253CCFE08();
    }

    else
    {
      v30 = 0;
    }

    [v29 submitLogEvent:v27 error:v30];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_253208B60(void *a1)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uuid];
  sub_253CCFF38();

  v9 = [a1 workQueue];
  Controller = type metadata accessor for AccessoryInfoFetchController();
  v11 = objc_allocWithZone(Controller);
  *&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageDispatcher] = 0;
  *&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_remoteEventRouterClientController] = 0;
  (*(v4 + 16))(&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageTargetUUID], v7, v3);
  *&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageReceiveQueue] = v9;
  v16.receiver = v11;
  v16.super_class = Controller;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  (*(v4 + 8))(v7, v3);
  *&v1[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions_accessoryInfoFetchController] = v12;
  v13 = _s22DefaultSwiftExtensionsCMa();
  v15.receiver = v1;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_253208D18(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a6;
  v30 = a5;
  v31 = sub_253CCFF58();
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v31);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003ALL;
  *(v18 + 1) = 0x8000000253D4D850;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_nodeId] = a1;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_endpointId] = a2;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId] = a3;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId] = a4;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source] = v30;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = [v7 uuid];
  sub_253CCFF38();

  v23 = sub_253CCFF18();
  (*(v12 + 8))(v15, v31);
  v32.receiver = v17;
  v32.super_class = v16;
  v24 = objc_msgSendSuper2(&v32, sel_initWithHomeUUID_, v23);

  v25 = [v7 logEventSubmitter];
  if (v25)
  {
    v26 = v25;
    if (v29)
    {
      v27 = sub_253CCFE08();
    }

    else
    {
      v27 = 0;
    }

    [v26 submitLogEvent:v24 error:v27];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_253208F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_253208FB8, a4, 0);
}

uint64_t sub_253208FB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_253209030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_253209054, a4, 0);
}

uint64_t sub_253209054()
{
  v1 = v0[2];
  sub_253209690(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_253209148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532091EC, 0, 0);
}

uint64_t sub_2532091EC()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_253CD0B58();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v0[8] = sub_25324690C(0, 0, v1, &unk_253D488D0, v6);
  v7 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_253209354;

  return MEMORY[0x282200460]();
}

uint64_t sub_253209354()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25320946C, 0, 0);
}

uint64_t sub_25320946C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  (*(v0 + 40))();

  v3 = *(v0 + 8);

  return v3();
}

void sub_253209690(int64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_253CD0E98();
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    sub_25320C584();
    sub_253CD0C28();
    v2 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_25320C5EC();
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_253CD0E98();
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        sub_25320C584();
        sub_253CD0C28();
        a1 = v35;
        v17 = v36;
        v18 = v37;
        v19 = v38;
        v20 = v39;
      }

      else
      {
        v21 = -1 << *(a1 + 32);
        v17 = a1 + 56;
        v18 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 & *(a1 + 56);

        v19 = 0;
      }

      if (a1 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v24 = v19;
        v25 = v20;
        v26 = v19;
        if (!v20)
        {
          break;
        }

LABEL_29:
        v27 = (v25 - 1) & v25;
        v28 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
LABEL_35:
          sub_25320C5EC();
          return;
        }

        while (1)
        {
          sub_253209A1C(v28);

          v19 = v26;
          v20 = v27;
          if ((a1 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (sub_253CD0F08())
          {
            sub_253200644(0, &qword_281530EA0, off_279719FE0);
            swift_dynamicCast();
            v28 = v29;
            v26 = v19;
            v27 = v20;
            if (v29)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_37;
        }

        if (v26 >= ((v18 + 64) >> 6))
        {
          goto LABEL_35;
        }

        v25 = *(v17 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      sub_25320A3BC(v15);

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_253CD0F08();
      if (v16)
      {
        v29 = v16;
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        swift_dynamicCast();
        v15 = v35;
        v13 = v6;
        v14 = v7;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_253209A1C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD07E8();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v81 = &v80 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v80 - v19;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_253217DFC(a1), v22 = v21, , (v22 & 1) != 0))
  {
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v23 = a1;
    v24 = sub_253CD07C8();
    v25 = sub_253CD0C88();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_2531F8000, v24, v25, "Ignoring request to monitor reachability for %@ as it is already tracked", v26, 0xCu);
      sub_253206054(v27, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v27, -1, -1);
      MEMORY[0x259C040E0](v26, -1, -1);
    }

    (*(v85 + 8))(v13, v86);
  }

  else
  {
    v82 = [a1 home];
    if (v82)
    {
      v29 = v5;
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v30 = a1;
      v31 = sub_253CD07C8();
      v32 = sub_253CD0C78();

      v33 = os_log_type_enabled(v31, v32);
      v83 = v30;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v88 = v80;
        *v34 = 136315138;
        v35 = [v30 uuid];
        sub_253CCFF38();

        sub_25320C52C();
        v36 = sub_253CD10E8();
        v38 = v37;
        (*(v29 + 8))(v8, v4);
        v39 = sub_253277BA8(v36, v38, &v88);
        v30 = v83;

        *(v34 + 4) = v39;
        _os_log_impl(&dword_2531F8000, v31, v32, "Starting monitoring of %s", v34, 0xCu);
        v40 = v80;
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x259C040E0](v40, -1, -1);
        MEMORY[0x259C040E0](v34, -1, -1);
      }

      v80 = *(v85 + 8);
      (v80)(v20, v86);
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsReachableNotification" object:v30];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotReachableNotification" object:v30];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsRemotelyReachableNotification" object:v30];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v30];
      v41 = [v30 home];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 isCurrentDevicePrimaryResident];
        v44 = &selRef_isReachable;
        if (!v43)
        {
          v44 = &selRef_isRemotelyReachable;
        }

        v45 = [v30 *v44];
      }

      else
      {
        v45 = 0;
      }

      swift_beginAccess();
      v52 = *(v2 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      sub_25327AB30(v45, v30, isUniquelyReferenced_nonNull_native);
      v54 = v87;
      *(v2 + 112) = v87;
      swift_endAccess();
      v55 = 1 << *(v54 + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & *(v54 + 64);
      v58 = (v55 + 63) >> 6;
      swift_retain_n();
      v59 = 0;
      while (v57)
      {
LABEL_27:
        v61 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
        v62 = *(*(v54 + 48) + ((v59 << 9) | (8 * v61)));
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        v63 = v62;
        if ((sub_253CD0D88() & 1) != 0 || (v64 = [v63 home]) == 0)
        {

          v30 = v83;
        }

        else
        {
          v65 = v64;
          sub_253200644(0, &unk_281530D20, off_27971A118);
          v66 = v82;
          v67 = sub_253CD0D88();

          v30 = v83;
          if (v67)
          {

            return;
          }
        }
      }

      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          return;
        }

        if (v60 >= v58)
        {
          break;
        }

        v57 = *(v54 + 64 + 8 * v60);
        ++v59;
        if (v57)
        {
          v59 = v60;
          goto LABEL_27;
        }
      }

      v68 = v81;
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v69 = v30;
      v70 = v82;
      v71 = v82;
      v72 = sub_253CD07C8();
      v73 = sub_253CD0C78();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = v30;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412546;
        *(v75 + 4) = v71;
        *(v75 + 12) = 2112;
        *(v75 + 14) = v69;
        *v76 = v70;
        v76[1] = v74;
        v77 = v69;
        v78 = v71;
        _os_log_impl(&dword_2531F8000, v72, v73, "Monitoring resident changes in %@ due to monitoring %@", v75, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AC8, &qword_253D48890);
        swift_arrayDestroy();
        MEMORY[0x259C040E0](v76, -1, -1);
        MEMORY[0x259C040E0](v75, -1, -1);
      }

      (v80)(v68, v86);
      v79 = *(v2 + 136);
      [v79 addObserver:v2 selector:sel_handlePrimaryResidentDeviceManagerUpdatePrimaryResidentWithNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v71, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v46 = a1;
      v47 = sub_253CD07C8();
      v48 = sub_253CD0C98();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&dword_2531F8000, v47, v48, "Accessory %@ to start monitoring is missing a home", v49, 0xCu);
        sub_253206054(v50, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v50, -1, -1);
        MEMORY[0x259C040E0](v49, -1, -1);
      }

      (*(v85 + 8))(v16, v86);
    }
  }
}

void sub_25320A3BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - v16;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_253217DFC(a1), v19 = v18, , (v19 & 1) != 0))
  {
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v20 = a1;
    v21 = sub_253CD07C8();
    v22 = sub_253CD0C88();

    v23 = os_log_type_enabled(v21, v22);
    v76 = ObjectType;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v20;
      *v25 = v20;
      v26 = v20;
      _os_log_impl(&dword_2531F8000, v21, v22, "Stopping monitoring of %@", v24, 0xCu);
      sub_253206054(v25, &qword_27F5A2AC8, &qword_253D48890);
      v27 = v25;
      ObjectType = v76;
      MEMORY[0x259C040E0](v27, -1, -1);
      MEMORY[0x259C040E0](v24, -1, -1);
    }

    v74 = *(v6 + 8);
    v75 = v6 + 8;
    v74(v17, v5);
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsReachableNotification" object:v20];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotReachableNotification" object:v20];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsRemotelyReachableNotification" object:v20];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v20];
    swift_beginAccess();
    sub_253279DFC(v20);
    swift_endAccess();
    v28 = [v20 home];
    if (v28)
    {
      v77 = v28;
      v73 = v5;
      v29 = *(v2 + 112);
      v32 = *(v29 + 64);
      v31 = v29 + 64;
      v30 = v32;
      v33 = 1 << *(*(v2 + 112) + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & v30;
      v36 = (v33 + 63) >> 6;
      v78 = *(v2 + 112);
      swift_bridgeObjectRetain_n();
      v37 = 0;
      while (v35)
      {
LABEL_19:
        v49 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v50 = *(*(v78 + 48) + ((v37 << 9) | (8 * v49)));
        v51 = [v50 home];
        if (v51)
        {
          v52 = v51;
          sub_253200644(0, &unk_281530D20, off_27971A118);
          v53 = v77;
          v54 = sub_253CD0D88();

          if (v54)
          {

            return;
          }
        }

        else
        {
        }
      }

      v47 = v76;
      while (1)
      {
        v48 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          return;
        }

        if (v48 >= v36)
        {
          break;
        }

        v35 = *(v31 + 8 * v48);
        ++v37;
        if (v35)
        {
          v37 = v48;
          goto LABEL_19;
        }
      }

      v55 = v79;
      sub_253211D58(v47, &off_2864FA7A0);
      v56 = v77;
      v57 = v77;
      v58 = sub_253CD07C8();
      v59 = sub_253CD0C78();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v61 = v56;
        v62 = v57;
        _os_log_impl(&dword_2531F8000, v58, v59, "No longer monitoring resident changes in %@", v60, 0xCu);
        sub_253206054(v61, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v61, -1, -1);
        MEMORY[0x259C040E0](v60, -1, -1);
      }

      v74(v55, v73);
      v63 = *(v2 + 136);
      [v63 removeObserver:v2 name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v57, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v64 = v20;
      v65 = sub_253CD07C8();
      v66 = sub_253CD0C98();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = v5;
        v69 = swift_slowAlloc();
        *v67 = 138412290;
        *(v67 + 4) = v64;
        *v69 = v20;
        v70 = v64;
        _os_log_impl(&dword_2531F8000, v65, v66, "Accessory %@ to stop monitoring is missing a home", v67, 0xCu);
        sub_253206054(v69, &qword_27F5A2AC8, &qword_253D48890);
        v71 = v69;
        v5 = v68;
        MEMORY[0x259C040E0](v71, -1, -1);
        MEMORY[0x259C040E0](v67, -1, -1);
      }

      v74(v13, v5);
    }
  }

  else
  {
    v38 = v6;
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v39 = a1;
    v40 = sub_253CD07C8();
    v41 = sub_253CD0C98();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v5;
      v44 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v44 = v39;
      v45 = v39;
      _os_log_impl(&dword_2531F8000, v40, v41, "Ignoring request to stop monitoring reachability for %@ as it was not being tracked", v42, 0xCu);
      sub_253206054(v44, &qword_27F5A2AC8, &qword_253D48890);
      v46 = v44;
      v5 = v43;
      MEMORY[0x259C040E0](v46, -1, -1);
      MEMORY[0x259C040E0](v42, -1, -1);
    }

    (*(v38 + 8))(v10, v5);
  }
}

uint64_t sub_25320ABA4(void *a1)
{
  v2 = v1;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v43 = sub_253CD07E8();
  v45 = *(v43 - 8);
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - v7;
  v8 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(v1 + 112);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = *(v1 + 112);

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(*(v9 + 48) + ((v15 << 9) | (8 * v17)));
    if (sub_25320B0BC(v18))
    {
      v19 = v18;
      MEMORY[0x259C00990]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_253CD0A78();
      }

      sub_253CD0A88();

      v8 = v47;
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_24:
      v33 = sub_253CD0ED8();
      v21 = v44;
      if (v33)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v13 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_24;
  }

  v21 = v44;
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    sub_253211D58(ObjectType, &off_2864FA7A0);

    v22 = v21;
    v23 = sub_253CD07C8();
    v24 = sub_253CD0C78();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 134218242;
      v27 = v45;
      if (v13)
      {
        v28 = sub_253CD0ED8();
      }

      else
      {
        v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v43;
      *(v25 + 4) = v28;

      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v26 = v22;
      v30 = v22;
      _os_log_impl(&dword_2531F8000, v23, v24, "Notifying delegate of changes to %ld accessories' reachability for home %@", v25, 0x16u);
      sub_253206054(v26, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v26, -1, -1);
      MEMORY[0x259C040E0](v25, -1, -1);
    }

    else
    {

      v29 = v43;
      v27 = v45;
    }

    (*(v27 + 8))(v46, v29);
    if (!*(v2 + 120))
    {
    }

    v31 = off_2864FB740[0];
    _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
    swift_unknownObjectRetain();
    v31();

    return swift_unknownObjectRelease();
  }

LABEL_25:

  v34 = v42;
  sub_253211D58(ObjectType, &off_2864FA7A0);
  v35 = v21;
  v36 = sub_253CD07C8();
  v37 = sub_253CD0C88();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_2531F8000, v36, v37, "No updated accessory reachability for home %@", v38, 0xCu);
    sub_253206054(v39, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v39, -1, -1);
    MEMORY[0x259C040E0](v38, -1, -1);
  }

  return (*(v45 + 8))(v34, v43);
}

uint64_t sub_25320B0BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  swift_beginAccess();
  v13 = *(v1 + 112);
  if (!*(v13 + 16))
  {
    goto LABEL_9;
  }

  v14 = sub_253217DFC(a1);
  if ((v15 & 1) == 0)
  {

LABEL_9:
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v22 = a1;
    v23 = sub_253CD07C8();
    v24 = sub_253CD0C78();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v23, v24, "Ignoring request to calculate reachability for %@ as it is not tracked", v25, 0xCu);
      sub_253206054(v26, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v26, -1, -1);
      MEMORY[0x259C040E0](v25, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  v16 = *(*(v13 + 56) + v14);

  result = [a1 home];
  if (!result)
  {
    v21 = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  v18 = result;
  v19 = [result isCurrentDevicePrimaryResident];
  v20 = &selRef_isReachable;
  if (!v19)
  {
    v20 = &selRef_isRemotelyReachable;
  }

  v21 = [a1 *v20];

  if (v16 == v21)
  {
    return 0;
  }

LABEL_15:
  sub_253211D58(ObjectType, &off_2864FA7A0);
  v28 = a1;
  v29 = sub_253CD07C8();
  v30 = sub_253CD0C88();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 67109378;
    *(v31 + 4) = v21;
    *(v31 + 8) = 2112;
    *(v31 + 10) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_2531F8000, v29, v30, "Widget reachability changed to %{BOOL}d for %@", v31, 0x12u);
    sub_253206054(v32, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v32, -1, -1);
    MEMORY[0x259C040E0](v31, -1, -1);
  }

  (*(v6 + 8))(v12, v5);
  swift_beginAccess();
  v34 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_25327AB30(v21, v28, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v37;
  swift_endAccess();
  return 1;
}

uint64_t sub_25320B4BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_253CD07E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v29 - v10;
  v12 = sub_253CCFD48();
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v29[1] = sub_253CD0968();
  v29[2] = v14;
  sub_253CD0F58();
  if (!*(v13 + 16) || (v15 = sub_253217D40(v30), (v16 & 1) == 0))
  {

    sub_253205FA4(v30);
LABEL_9:
    v31 = 0u;
    v32 = 0u;
    return sub_253206054(&v31, &qword_27F5A2AB0, &unk_253D4A560);
  }

  sub_253205FF8(*(v13 + 56) + 32 * v15, &v31);
  sub_253205FA4(v30);

  if (!*(&v32 + 1))
  {
    return sub_253206054(&v31, &qword_27F5A2AB0, &unk_253D4A560);
  }

  sub_253200644(0, &unk_27F5A3380, off_27971A218);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v30[0];
    v19 = [v30[0] home];
    if (v19)
    {
      v20 = v19;
      v21 = sub_253CD0B58();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v1;
      v22[5] = v20;

      sub_25324690C(0, 0, v11, &unk_253D488B0, v22);
    }

    else
    {
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v23 = v18;
      v24 = sub_253CD07C8();
      v25 = sub_253CD0C98();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&dword_2531F8000, v24, v25, "Resident %@ is missing a home", v26, 0xCu);
        sub_253206054(v27, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v27, -1, -1);
        MEMORY[0x259C040E0](v26, -1, -1);
      }

      else
      {
        v28 = v24;
        v24 = v23;
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_25320B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25320B8B4, a4, 0);
}

uint64_t sub_25320B8B4()
{
  v1 = *(v0 + 16);
  sub_25320ABA4(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25320B92C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v70 = sub_253CCFD58();
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v70);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v69 = &v66 - v13;
  v14 = sub_253CD07E8();
  v15 = *(v14 - 8);
  v71 = v14;
  v72 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v66 - v24;
  sub_253CCFD38();
  if (v74[3])
  {
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    if (swift_dynamicCast())
    {
      v26 = v73;
      v27 = [v73 home];
      if (v27)
      {
        v28 = v27;
        v29 = sub_253CD0B58();
        (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = 0;
        v30[4] = v2;
        v30[5] = v28;

        sub_25324690C(0, 0, v25, &unk_253D488A0, v30);
      }

      else
      {
        v50 = v21;
        sub_253211D58(ObjectType, &off_2864FA7A0);
        v51 = v5;
        v52 = v69;
        v53 = v70;
        (*(v5 + 16))(v69, a1, v70);
        v54 = v26;
        v55 = sub_253CD07C8();
        v56 = sub_253CD0C98();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v74[0] = v66;
          *v57 = 138412546;
          *(v57 + 4) = v54;
          *v58 = v54;
          *(v57 + 12) = 2080;
          v68 = v54;
          v59 = sub_253CCFD28();
          v60 = sub_253CD0968();
          v67 = v50;
          v61 = v60;
          v63 = v62;

          (*(v51 + 8))(v52, v53);
          v64 = sub_253277BA8(v61, v63, v74);

          *(v57 + 14) = v64;
          _os_log_impl(&dword_2531F8000, v55, v56, "Accessory %@ is missing a home for notification %s", v57, 0x16u);
          sub_253206054(v58, &qword_27F5A2AC8, &qword_253D48890);
          MEMORY[0x259C040E0](v58, -1, -1);
          v65 = v66;
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x259C040E0](v65, -1, -1);
          MEMORY[0x259C040E0](v57, -1, -1);

          return (*(v72 + 8))(v67, v71);
        }

        else
        {

          (*(v51 + 8))(v52, v53);
          return (*(v72 + 8))(v50, v71);
        }
      }
    }
  }

  else
  {
    sub_253206054(v74, &qword_27F5A2AB0, &unk_253D4A560);
  }

  sub_253211D58(ObjectType, &off_2864FA7A0);
  v32 = *(v5 + 16);
  v33 = v70;
  v32(v12, a1, v70);
  v32(v9, a1, v33);
  v34 = sub_253CD07C8();
  v35 = sub_253CD0C98();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v69 = v19;
    v37 = v36;
    v68 = swift_slowAlloc();
    v73 = v68;
    *v37 = 136315394;
    LODWORD(v67) = v35;
    v38 = sub_253CCFD28();
    v39 = sub_253CD0968();
    v41 = v40;

    v42 = *(v5 + 8);
    v42(v12, v33);
    v43 = sub_253277BA8(v39, v41, &v73);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    sub_253CCFD38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AB0, &unk_253D4A560);
    v44 = sub_253CD0978();
    v46 = v45;
    v42(v9, v33);
    v47 = sub_253277BA8(v44, v46, &v73);

    *(v37 + 14) = v47;
    _os_log_impl(&dword_2531F8000, v34, v67, "%s is missing an accessory as its object: %s", v37, 0x16u);
    v48 = v68;
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v48, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);

    return (*(v72 + 8))(v69, v71);
  }

  else
  {

    v49 = *(v5 + 8);
    v49(v9, v33);
    v49(v12, v33);
    return (*(v72 + 8))(v19, v71);
  }
}

uint64_t sub_25320C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25320C7AC, a4, 0);
}

uint64_t sub_25320C0B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFD18();

  a4(v9);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25320C1DC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25320C270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C7A8;

  return sub_25320C078(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25320C378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C438;

  return sub_25320B894(a1, v4, v5, v7, v6);
}

uint64_t sub_25320C438()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_25320C52C()
{
  result = qword_281531980;
  if (!qword_281531980)
  {
    sub_253CCFF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281531980);
  }

  return result;
}

unint64_t sub_25320C584()
{
  result = qword_281530E98;
  if (!qword_281530E98)
  {
    sub_253200644(255, &qword_281530EA0, off_279719FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530E98);
  }

  return result;
}

uint64_t sub_25320C604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25320C7A8;

  return sub_253209148(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25320C6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C7A8;

  return sub_253209030(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25320C7B4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_253CD0DD8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_25320C860()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = sub_253CD0DD8();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25320C8FC()
{
  sub_25320C860();

  return MEMORY[0x282200960](v0);
}

uint64_t HMDRemoteConnectivityMonitor.hasConnectivity.getter()
{
  v1 = v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v18.receiver = v9;
  v18.super_class = v4;
  v11 = a2;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v16;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v7 = &v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v7 = 0;
  v7[4] = 0;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v12 = *&v10[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v13 = v10;
  [v12 setDelegate_];
  [*&v10[v11] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v13;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v12 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v14 = &v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v14 = 0;
  v14[4] = 0;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v11;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v22.receiver = v13;
  v22.super_class = v12;
  v15 = v11;
  swift_unknownObjectRetain();
  v16 = a3;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v19 = *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v20 = v17;
  [v19 setDelegate_];
  [*&v17[v18] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v20;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v8 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v7;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = v7;
  swift_unknownObjectRetain();
  v12 = a3;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.underlyingConnectionChanged(connected:)(Swift::Bool connected)
{
  v3 = sub_253CD0888();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_253CD08A8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection) = connected;
    sub_25320D7F8();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageSucceeded()()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_253CD08A8();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer);
    if ([v8 isRunning])
    {
      [v8 suspend];
    }

    *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages) = 0;
    *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 0;
    sub_25320D7F8();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageFailed()()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_253CD08A8();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages);
  if ((v8 & 0x8000000000000000) == 0 && v8 >= *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold))
  {
    goto LABEL_6;
  }

  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages) = v10;
  sub_25320D7F8();
LABEL_6:
  v11 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer);
  if (([v11 isRunning] & 1) == 0)
  {
    [v11 resume];
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.timerDidFire(_:)(HMFTimer *a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_253CD08A8();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_25320DC70();
    v9 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer);
    if (sub_253CD0D88())
    {
      *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 1;
      sub_25320D7F8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25320D7F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_253CD07E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_253CD0888();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_253CD08A8();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection;
    if (v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] == 1)
    {
      v16 = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages];
      v17 = 1;
      if ((v16 & 0x8000000000000000) == 0 && v16 >= *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold])
      {
        v17 = v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] ^ 1;
      }
    }

    else
    {
      v17 = 0;
    }

    sub_253211D58(ObjectType, &off_2864FA938);
    v18 = v1;
    v19 = sub_253CD07C8();
    v20 = sub_253CD0C88();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109888;
      *(v21 + 4) = v17 & 1;
      *(v21 + 8) = 1024;
      *(v21 + 10) = v1[v15];
      *(v21 + 14) = 2048;
      *(v21 + 16) = *(v18 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages);
      *(v21 + 24) = 1024;
      *(v21 + 26) = *(&v18->isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired);

      _os_log_impl(&dword_2531F8000, v19, v20, "Has connectivity: %{BOOL}d (has underlying connection: %{BOOL}d, failed messages, %ld, connectivity lost timer fired: %{BOOL}d)", v21, 0x1Eu);
      MEMORY[0x259C040E0](v21, -1, -1);
    }

    else
    {

      v19 = v18;
    }

    (*(v4 + 8))(v7, v3);
    v22 = (v18 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity);
    os_unfair_lock_lock((v18 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity));
    if ((v17 & 1) == LOBYTE(v22[1]._os_unfair_lock_opaque))
    {
      os_unfair_lock_unlock(v22);
    }

    else
    {
      LOBYTE(v22[1]._os_unfair_lock_opaque) = v17 & 1;
      os_unfair_lock_unlock(v22);
      v23 = *(&v18->isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate);
      if (v23)
      {
        [v23 hasConnectivityDidChangeFor_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id HMDRemoteConnectivityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMDRemoteConnectivityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25320DC70()
{
  result = qword_281530D00;
  if (!qword_281530D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530D00);
  }

  return result;
}

id sub_25320DD74(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_25320DEA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_25320DFB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v8(v9, v10, v11);

  return v12;
}

id HMDHomeManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDHomeManagerDataSource()
{
  result = qword_27F5A2E08;
  if (!qword_27F5A2E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A2E08);
  }

  return result;
}

id sub_25320E6BC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25320E70C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_25320E74C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_25320E790(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_25320E8F4()
{
  v201 = MEMORY[0x277D84F98];
  v1 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_readWriteEvent);
  sub_253278690([v1 thSensorSSIDSame], 0xD000000000000010, 0x8000000253D4DEE0);
  sub_253278690([v1 thSensorIPv4AddressSameAsCachedIP], 0xD000000000000021, 0x8000000253D4DF00);
  sub_253278690([v1 thSensorIPv4NetworkSignatureSame], 0xD000000000000020, 0x8000000253D4DF30);
  sub_253278690([v1 thSensorIPv6AddressSameAsCachedIP], 0xD000000000000021, 0x8000000253D4DF60);
  sub_253278690([v1 thSensorIPv6NetworkSignatureSame], 0xD000000000000020, 0x8000000253D4DF90);
  sub_253278690([v1 thSensorReachableViaIDS], 0xD000000000000017, 0x8000000253D4DFC0);
  sub_253278690([v1 thSensorReachable], 0xD000000000000011, 0x8000000253D4DFE0);
  sub_253278690([v1 thSensorPrimaryInterfaceType], 0xD00000000000001ALL, 0x8000000253D4E000);
  sub_253278690([v1 thSensorPrimaryInterfaceName], 0xD00000000000001ALL, 0x8000000253D4E020);
  sub_253278690([v1 thSensorCachedSourceIPType], 0xD000000000000018, 0x8000000253D4E040);
  sub_253278690([v1 thSensorDurationSecondsSinceLastStatusKitAssertion], 0xD00000000000002ALL, 0x8000000253D4E060);
  v2 = sub_253CD0968();
  v4 = v3;
  [v1 isCurrentDevicePrimaryResident];
  v5 = sub_253CD0AA8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = sub_253CD0968();
  v9 = v8;
  [v1 isCurrentDeviceAvailableResident];
  v10 = sub_253CD0AA8();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v10, v7, v9, v11);

  v12 = sub_253CD0968();
  v14 = v13;
  [v1 isPrimaryResidentReachable];
  v15 = sub_253CD0AA8();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v15, v12, v14, v16);

  v17 = sub_253CD0968();
  v19 = v18;
  [v1 isLocal];
  v20 = sub_253CD0AA8();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v20, v17, v19, v21);

  v22 = sub_253CD0968();
  v24 = v23;
  [v1 isResidentAvailable];
  v25 = sub_253CD0AA8();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v25, v22, v24, v26);

  v27 = v201;
  if ([v1 linkLayerType] != 4 && objc_msgSend(v1, sel_linkType) == 1)
  {
    v28 = [v1 expectedTransport];
    v29 = sub_253CD0968();
    v31 = v30;

    if (v29 != sub_253CD0968() || v31 != v32)
    {
      sub_253CD1118();
    }
  }

  v33 = sub_253CD0968();
  v35 = v34;
  v36 = sub_253CD0AA8();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v36, v33, v35, v37);

  v38 = sub_253CD0968();
  v40 = v39;
  [v1 triggerSource];
  v41 = sub_253CD0DE8();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v41, v38, v40, v42);

  v43 = sub_253CD0968();
  v45 = v44;
  [v1 timeIntervalSinceFirstFailure];
  v46 = sub_253CD0BE8();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v46, v43, v45, v47);

  v48 = sub_253CD0968();
  v50 = v49;
  [v1 noSessionDuration];
  v51 = sub_253CD0BE8();
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v51, v48, v50, v52);

  v53 = sub_253CD0968();
  v55 = v54;
  [v1 localDurationInMilliseconds];
  v56 = sub_253CD0C38();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v56, v53, v55, v57);

  v58 = sub_253CD0968();
  v60 = v59;
  [v1 residentFirstDurationInMilliseconds];
  v61 = sub_253CD0C38();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v61, v58, v60, v62);

  v63 = sub_253CD0968();
  v65 = v64;
  [v1 durationMilliseconds];
  v66 = sub_253CD0C38();
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v66, v63, v65, v67);

  v68 = sub_253CD0968();
  v70 = v69;
  [v1 hasSession];
  v71 = sub_253CD0AA8();
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v71, v68, v70, v72);

  v73 = sub_253CD0968();
  v75 = v74;
  [v1 isReachable];
  v76 = sub_253CD0AA8();
  v77 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v76, v73, v75, v77);

  v78 = sub_253CD0968();
  v80 = v79;
  [v1 recentSessionRetries];
  v81 = sub_253CD0C38();
  v82 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v81, v78, v80, v82);

  v83 = sub_253CD0968();
  v85 = v84;
  [v1 topSessionFailureErrorCode];
  v86 = sub_253CD0C38();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v86, v83, v85, v87);

  v88 = sub_253CD0968();
  sub_253278690([v1 topSessionFailureErrorDomain], v88, v89);
  if ([v1 residentFirstError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
    sub_253200644(0, &qword_27F5A2E98, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v90 = sub_253CD0968();
      v92 = v91;
      result = [v200 domain];
      if (!result)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v94 = result;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v94, v90, v92, v95);

      v96 = sub_253CD0968();
      v98 = v97;
      [v200 code];
      v99 = sub_253CD0C38();
      v100 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v99, v96, v98, v100);
    }
  }

  if ([v1 residentFirstUnderlyingError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
    sub_253200644(0, &qword_27F5A2E98, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v101 = sub_253CD0968();
      v103 = v102;
      result = [v200 domain];
      if (!result)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v104 = result;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v104, v101, v103, v105);

      v106 = sub_253CD0968();
      v108 = v107;
      [v200 code];
      v109 = sub_253CD0C38();
      v110 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v109, v106, v108, v110);
    }
  }

  v111 = sub_253CD0968();
  v113 = v112;
  [v1 isNetworkAvailable];
  v114 = sub_253CD0AA8();
  v115 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v114, v111, v113, v115);

  v116 = sub_253CD0968();
  v118 = v117;
  [v1 hasSucceededOnce];
  v119 = sub_253CD0AA8();
  v120 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v119, v116, v118, v120);

  v121 = sub_253CD0968();
  v123 = v122;
  [v1 hasFailedOnce];
  v124 = sub_253CD0AA8();
  v125 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v124, v121, v123, v125);

  v126 = sub_253CD0968();
  v128 = v127;
  [v1 isSSIDSameAsLastSuccessRequest];
  v129 = sub_253CD0AA8();
  v130 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v129, v126, v128, v130);

  v131 = sub_253CD0968();
  v133 = v132;
  [v1 isBSSIDSameAsLastSuccessRequest];
  v134 = sub_253CD0AA8();
  v135 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v134, v131, v133, v135);

  v136 = sub_253CD0968();
  v138 = v137;
  [v1 isPrimaryResidentAvailable];
  v139 = sub_253CD0AA8();
  v140 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v139, v136, v138, v140);

  v141 = sub_253CD0968();
  sub_253278690([v1 wifiAccessPointOUI], v141, v142);
  if (![v1 isCurrentDevicePrimaryResident])
  {
    goto LABEL_23;
  }

  v143 = sub_253CD0968();
  v145 = v144;
  result = [v1 timeIntervalSinceCurrentDeviceAsPrimary];
  if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v146 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v146 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v147 = sub_253CD0C38();
  v148 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v147, v143, v145, v148);

  if (isHomePod())
  {
    v149 = sub_253CD0968();
    v151 = v150;
    [v1 mediaSystemConfiguration];
    v152 = sub_253CD0DE8();
    v153 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v152, v149, v151, v153);
  }

LABEL_23:
  if ([v1 hasEnabledResidents])
  {
    v154 = sub_253CD0968();
    v156 = v155;
    result = [v1 timeIntervalSincePrimaryChanged];
    if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v157 > -9.22337204e18)
      {
        if (v157 < 9.22337204e18)
        {
          v158 = sub_253CD0C38();
          v159 = swift_isUniquelyReferenced_nonNull_native();
          sub_25327AC9C(v158, v154, v156, v159);

          v160 = sub_253CD0968();
          v162 = v161;
          result = [v1 timeIntervalSincePrimaryLost];
          if ((*&v163 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v163 > -9.22337204e18)
            {
              if (v163 < 9.22337204e18)
              {
                v164 = sub_253CD0C38();
                v165 = swift_isUniquelyReferenced_nonNull_native();
                sub_25327AC9C(v164, v160, v162, v165);

                v166 = sub_253CD0968();
                v168 = v167;
                [v1 percentageOfLocalReachableResidents];
                v169 = sub_253CD0C38();
                v170 = swift_isUniquelyReferenced_nonNull_native();
                sub_25327AC9C(v169, v166, v168, v170);

                goto LABEL_31;
              }

              goto LABEL_44;
            }

LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_31:
  if ([v1 isCurrentDeviceAvailableResident])
  {
    v171 = sub_253CD0968();
    v173 = v172;
    [v1 isThreadNetworkUpInHome];
    v174 = sub_253CD0AA8();
    v175 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v174, v171, v173, v175);

    v176 = sub_253CD0968();
    v178 = v177;
    [v1 threadPreferredNetworkExistsInHome];
    v179 = sub_253CD0AA8();
    v180 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v179, v176, v178, v180);
  }

  v181 = sub_253CD0968();
  v183 = v182;
  [v1 threadNetworkConnectionState];
  v184 = sub_253CD0C38();
  v185 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v184, v181, v183, v185);

  v186 = sub_253CD0968();
  v188 = v187;
  [v1 threadNetworkNodeType];
  v189 = sub_253CD0C38();
  v190 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v189, v186, v188, v190);

  if ([v1 isIPAccessoryServer])
  {
    v191 = sub_253CD0968();
    sub_253278690([v1 ipSocketIPType], v191, v192);
    v193 = sub_253CD0968();
    sub_253278690([v1 ipSocketUpdateType], v193, v194);
    v195 = sub_253CD0968();
    v197 = v196;
    [v1 isSeenOnBonjour];
    v198 = sub_253CD0AA8();
    v199 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v198, v195, v197, v199);

    return v201;
  }

  return v27;
}

id sub_25320FECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25320FFA0()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_27F5A2EA0);
  __swift_project_value_buffer(v0, qword_27F5A2EA0);
  v1 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  return sub_253CD07D8();
}

uint64_t sub_2532100B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2F60, &unk_253D48AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_253D48A50;
  *(v0 + 32) = sub_253200644(0, &qword_27F5A2F68, off_27971A050);
  result = sub_253200644(0, &unk_27F5A2F70, off_27971A058);
  *(v0 + 40) = result;
  qword_27F5B7850 = v0;
  return result;
}

uint64_t sub_2532102CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + *a4);
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_253210310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex;
  *v6 = 0;
  *(v6 + 4) = 0;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_logEventDispatcher) = a1;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager) = a2;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler) = a3;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider) = a4;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_currentHomeDataSource) = a5;
  v8.super_class = HMDCameraRecordingEventObserver;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_253210420(_BYTE *a1, void *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_27F5A2418 != -1)
    {
      swift_once();
    }

    v4 = sub_253CD07E8();
    __swift_project_value_buffer(v4, qword_27F5A2EA0);
    v5 = sub_253CD07C8();
    v6 = sub_253CD0C78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2531F8000, v5, v6, "Starting", v7, 2u);
      MEMORY[0x259C040E0](v7, -1, -1);
    }

    v8 = [a2 logEventDispatcher];
    if (qword_27F5A2420 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2F58, &qword_253D48A98);
    v9 = sub_253CD0A38();
    [v8 addObserver:a2 forEventClasses:v9];
    swift_unknownObjectRelease();

    v10 = [a2 dailyScheduler];
    [v10 registerDailyTaskRunner_];

    *a1 = 1;
  }
}

_BYTE *sub_253210674(_BYTE *result, void *a2)
{
  if (*result == 1)
  {
    v3 = result;
    if (qword_27F5A2418 != -1)
    {
      swift_once();
    }

    v4 = sub_253CD07E8();
    __swift_project_value_buffer(v4, qword_27F5A2EA0);
    v5 = sub_253CD07C8();
    v6 = sub_253CD0C78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2531F8000, v5, v6, "Stopping", v7, 2u);
      MEMORY[0x259C040E0](v7, -1, -1);
    }

    [objc_msgSend(a2 logEventDispatcher)];
    result = swift_unknownObjectRelease();
    *v3 = 0;
  }

  return result;
}

void sub_253210880(void *a1)
{
  v2 = v1;
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 dateProvider];
  v10 = [v9 startOfCurrentDay];

  sub_253CCFEA8();
  v11 = [v2 countersManager];
  v12 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v13 = sub_253CD0938();
  v14 = sub_253CCFE98();
  v15 = [v12 initWithGroupName:v13 date:v14];

  v16 = [v11 objectForKeyedSubscript_];
  if ([a1 operationType] == 5)
  {
    v17 = sub_253CD0938();
    [v16 incrementEventCounterForEventName_];

    v18 = sub_253CD0938();
    [v16 incrementEventCounterForEventName:v18 withValue:{objc_msgSend(a1, sel_totalClipDurationMilliseconds)}];

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

id sub_253210B68()
{
  v1 = sub_253CCFF58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = [objc_msgSend(v0 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  sub_253CCFF38();

  (*(v2 + 32))(v8, v6, v1);
  v10 = sub_253210CE0(v8);
  (*(v2 + 8))(v8, v1);
  return v10;
}

id sub_253210CE0(uint64_t a1)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = [objc_msgSend(v1 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_253CCFF38();

    if (sub_253CCFF28())
    {
      v12 = [v1 countersManager];
      v13 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
      v14 = sub_253CD0938();
      v15 = sub_253CCFE98();
      v16 = [v13 initWithGroupName:v14 date:v15];

      v17 = [v12 objectForKeyedSubscript_];
      v18 = sub_253CD0938();
      v30 = [v17 fetchEventCounterForEventName_];

      v19 = sub_253CD0938();
      v20 = [v17 fetchEventCounterForEventName_];

      v21 = sub_253CD0938();
      v22 = [v17 fetchEventCounterForEventName_];

      (*(v4 + 16))(v8, a1, v3);
      v23 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
      v24 = objc_allocWithZone(v23);
      *&v24[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v30;
      *&v24[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v20;
      *&v24[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v22;
      v24[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 0;
      v25 = sub_253CCFF18();
      v31.receiver = v24;
      v31.super_class = v23;
      v26 = objc_msgSendSuper2(&v31, sel_initWithHomeUUID_, v25);

      v27 = *(v4 + 8);
      v27(v8, v3);
      v27(v10, v3);
      return v26;
    }

    (*(v4 + 8))(v10, v3);
  }

  return 0;
}

void sub_253211170(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (a1)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 countersManager];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  aBlock[4] = sub_253211A14;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_253211534;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  [v10 removeCounterGroupsBasedOnPredicate_];
  _Block_release(v13);
}

uint64_t sub_253211354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v11 = [v10 groupName];
    v12 = sub_253CD0968();
    v14 = v13;

    v15 = [v10 date];
    sub_253CCFEA8();

    v16 = sub_253CCFEC8();
    (*(v5 + 8))(v8, v4);
    if (v16 == a3)
    {
      if (v12 == 0xD000000000000014 && 0x8000000253D4E0F0 == v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = sub_253CD1118();
      }
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_253211534(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_253211720()
{
  v1 = v0;
  v2 = sub_253CCFEE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dateProvider];
  v8 = [v7 startOfCurrentDay];

  sub_253CCFEA8();
  v9 = sub_253CCFE98();
  v10 = [v1 logEventForCurrentHomeWithDate_];

  if (v10)
  {
    [objc_msgSend(v1 logEventDispatcher)];

    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v6, v2);
}

void __swiftcall HMDCameraRecordingEventObserver.init()(HMDCameraRecordingEventObserver *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_253211A14(uint64_t a1)
{
  v3 = *(sub_253CCFEE8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_253211354(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253211AC8()
{
  v1 = v0;
  v2 = sub_253CCFEE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dateProvider];
  v8 = [v7 startOfCurrentDay];

  sub_253CCFEA8();
  v9 = [v1 countersManager];
  v10 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v11 = sub_253CD0938();
  v12 = sub_253CCFE98();
  v13 = [v10 initWithGroupName:v11 date:v12];

  v14 = [v9 objectForKeyedSubscript_];
  v15 = sub_253CD0938();
  [v14 incrementEventCounterForEventName_];

  return (*(v3 + 8))(v6, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_253211D58(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  (*(a2 + 16))(a1, a2);

  return sub_253CD07D8();
}

uint64_t sub_253211E5C()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_281531050);
  __swift_project_value_buffer(v0, qword_281531050);
  v1 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  return sub_253CD07D8();
}

id sub_253211ED8()
{
  MyHandler = type metadata accessor for FindMyHandler();
  v1 = *(MyHandler + 48);
  v2 = *(MyHandler + 52);
  swift_allocObject();
  result = sub_253215D44();
  qword_281532BF0 = result;
  return result;
}

id sub_253211F18()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_253215D44();
}

uint64_t sub_253211F4C()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253211FE8, v0, 0);
}

uint64_t sub_253211FE8()
{
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v1 = sub_253CD07E8();
  __swift_project_value_buffer(v1, qword_281531050);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Starting find my handler", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v5 = v0[2];

  if (*(v5 + 112) == 1)
  {
    v6 = sub_253CD07C8();
    v7 = sub_253CD0C98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2531F8000, v6, v7, "Find my handler has already been started. Cannot start again.", v8, 2u);
      MEMORY[0x259C040E0](v8, -1, -1);
    }
  }

  else
  {
    v9 = v0[2];
    v10 = v0[3];
    *(v5 + 112) = 1;
    v11 = sub_253CD0B58();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = sub_2532166A0();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = v9;
    swift_retain_n();
    sub_25324690C(0, 0, v10, &unk_253D48BE0, v13);
  }

  v14 = v0[3];

  v15 = v0[1];

  return v15();
}

uint64_t sub_253212230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = sub_253CCFFF8();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3028, &qword_253D48BE8) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3030, &qword_253D48BF0);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3038, &qword_253D48BF8);
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v18 = sub_253CD0058();
  v4[25] = v18;
  v19 = *(v18 - 8);
  v4[26] = v19;
  v20 = *(v19 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v21 = sub_253CCFFC8();
  v4[29] = v21;
  v22 = *(v21 - 8);
  v4[30] = v22;
  v23 = *(v22 + 64) + 15;
  v4[31] = swift_task_alloc();
  v24 = sub_253CCFFD8();
  v4[32] = v24;
  v25 = *(v24 - 8);
  v4[33] = v25;
  v26 = *(v25 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532125D4, a4, 0);
}

uint64_t sub_2532125D4()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  (*(v0[30] + 104))(v0[31], *MEMORY[0x277D09060], v0[29]);
  sub_253CCFFE8();
  (*(v4 + 16))(v1, v2, v3);
  v5 = sub_253CD0088();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = *(MEMORY[0x277D09498] + 4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_2532126EC;
  v10 = v0[34];

  return MEMORY[0x28215FBB8](v10);
}

uint64_t sub_2532126EC(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  v6 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 296) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_253212860, v6, 0);
}

uint64_t sub_253212860()
{
  v1 = v0[7];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[37];

  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_253212918;
  v4 = v0[37];
  v5 = v0[24];
  v6 = v0[7];

  return sub_2532148A0(v5, v4);
}

uint64_t sub_253212918()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253212A28, v2, 0);
}

uint64_t sub_253212A28()
{
  v39 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = *(v2 + 48);
  v0[39] = v4;
  v0[40] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_253206054(v3, &qword_27F5A3008, &qword_253D48B90);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v9 = sub_253CD07E8();
    __swift_project_value_buffer(v9, qword_281531050);
    v10 = *(v8 + 16);
    v10(v5, v6, v7);
    v11 = sub_253CD07C8();
    v12 = sub_253CD0C78();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[25];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v17 = 136315138;
      v34 = sub_253CD0038();
      v37 = v10;
      v19 = v18;
      v35 = v12;
      v20 = *(v15 + 8);
      v20(v14, v16);
      v21 = v20;
      v22 = sub_253277BA8(v34, v19, &v38);
      v10 = v37;

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2531F8000, v11, v35, "Found designated ME device %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x259C040E0](v36, -1, -1);
      MEMORY[0x259C040E0](v17, -1, -1);
    }

    else
    {

      v23 = *(v15 + 8);
      v23(v14, v16);
      v21 = v23;
    }

    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[26];
    v27 = v0[23];
    v28 = v0[7];
    v10(v27, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    sub_2532152E8(v27);
    sub_253206054(v27, &qword_27F5A3008, &qword_253D48B90);
    v21(v24, v25);
  }

  v29 = *(MEMORY[0x277D09448] + 4);
  v30 = swift_task_alloc();
  v0[41] = v30;
  *v30 = v0;
  v30[1] = sub_253212D74;
  v31 = v0[37];
  v32 = v0[19];

  return MEMORY[0x28215FB78](v32);
}

uint64_t sub_253212D74()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_253213CA0;
  }

  else
  {
    v6 = sub_253212EA0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_253212EA0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_253CD0B78();
  v4 = sub_2532166A0();
  v5 = OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice;
  *(v0 + 344) = v4;
  *(v0 + 352) = v5;
  *(v0 + 384) = *MEMORY[0x277D091A0];
  *(v0 + 388) = *MEMORY[0x277D09178];
  *(v0 + 392) = *MEMORY[0x277D09198];
  *(v0 + 396) = *MEMORY[0x277D09180];
  v6 = *(v0 + 336);
  *(v0 + 360) = @"HMDFMFStatusUpdateNotification";
  *(v0 + 368) = v6;
  v7 = *(v0 + 56);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  *v9 = v0;
  v9[1] = sub_253212FC4;
  v10 = *(v0 + 128);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);

  return MEMORY[0x2822003E8](v11, v7, v4, v12);
}

uint64_t sub_253212FC4()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2532130D4, v2, 0);
}

void sub_2532130D4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 296);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);

    (*(v10 + 8))(v8, v9);
    (*(v6 + 8))(v5, v7);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 248);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = *(v0 + 160);
    v101 = *(v0 + 152);
    v102 = *(v0 + 128);
    v103 = *(v0 + 104);
    v104 = *(v0 + 96);
    v105 = *(v0 + 72);
    v106 = *(v0 + 64);

    v21 = *(v0 + 8);

    v21();
    return;
  }

  v22 = *(v0 + 384);
  v23 = *(v0 + 96);
  (*(v3 + 32))(v23, v1, v2);
  v24 = (*(v3 + 88))(v23, v2);
  if (v24 != v22)
  {
    if (v24 == *(v0 + 388))
    {
      v41 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v41, *(v0 + 80));
      v42 = *v41;
      if (qword_281531048 != -1)
      {
        swift_once();
      }

      v43 = sub_253CD07E8();
      __swift_project_value_buffer(v43, qword_281531050);
      v44 = sub_253CD07C8();
      v45 = sub_253CD0C78();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_23;
      }

      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v42;
      v47 = "myLocation enabled: %{BOOL}d";
    }

    else
    {
      if (v24 != *(v0 + 392))
      {
        if (v24 == *(v0 + 396))
        {
          if (qword_281531048 != -1)
          {
            swift_once();
          }

          v69 = sub_253CD07E8();
          __swift_project_value_buffer(v69, qword_281531050);
          v70 = sub_253CD07C8();
          v71 = sub_253CD0C78();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_2531F8000, v70, v71, "FindMy Session created. Going to query the ME device.", v72, 2u);
            MEMORY[0x259C040E0](v72, -1, -1);
          }

          v73 = *(v0 + 344);
          v75 = *(v0 + 64);
          v74 = *(v0 + 72);
          v76 = *(v0 + 56);

          v77 = sub_253CD0B58();
          v78 = *(v77 - 8);
          (*(v78 + 56))(v74, 1, 1, v77);
          v79 = swift_allocObject();
          v79[2] = v76;
          v79[3] = v73;
          v79[4] = v76;
          sub_2532168A0(v74, v75, qword_27F5A2C48, &unk_253D48880);
          LODWORD(v74) = (*(v78 + 48))(v75, 1, v77);
          swift_retain_n();

          v80 = *(v0 + 64);
          if (v74 == 1)
          {
            sub_253206054(*(v0 + 64), qword_27F5A2C48, &unk_253D48880);
          }

          else
          {
            sub_253CD0B48();
            (*(v78 + 8))(v80, v77);
          }

          v96 = v79[2];
          v95 = v79[3];
          swift_unknownObjectRetain();

          if (v96)
          {
            swift_getObjectType();
            v97 = sub_253CD0AB8();
            v99 = v98;
            swift_unknownObjectRelease();
          }

          else
          {
            v97 = 0;
            v99 = 0;
          }

          sub_253206054(*(v0 + 72), qword_27F5A2C48, &unk_253D48880);
          v100 = swift_allocObject();
          *(v100 + 16) = &unk_253D48C08;
          *(v100 + 24) = v79;
          if (v99 | v97)
          {
            *(v0 + 16) = 0;
            *(v0 + 24) = 0;
            *(v0 + 32) = v97;
            *(v0 + 40) = v99;
          }

          swift_task_create();
        }

        else
        {
          if (qword_281531048 != -1)
          {
            swift_once();
          }

          v81 = sub_253CD07E8();
          __swift_project_value_buffer(v81, qword_281531050);
          v82 = sub_253CD07C8();
          v83 = sub_253CD0C98();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_2531F8000, v82, v83, "FindMy async stream : unknown case", v84, 2u);
            MEMORY[0x259C040E0](v84, -1, -1);
          }

          v86 = *(v0 + 88);
          v85 = *(v0 + 96);
          v87 = *(v0 + 80);

          (*(v86 + 8))(v85, v87);
        }

        goto LABEL_24;
      }

      v49 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v49, *(v0 + 80));
      v50 = *v49;
      if (qword_281531048 != -1)
      {
        swift_once();
      }

      v51 = sub_253CD07E8();
      __swift_project_value_buffer(v51, qword_281531050);
      v44 = sub_253CD07C8();
      v45 = sub_253CD0C78();
      if (!os_log_type_enabled(v44, v45))
      {
LABEL_23:

LABEL_24:
        v52 = *(v0 + 368);
LABEL_43:
        *(v0 + 368) = v52;
        v88 = *(v0 + 344);
        v89 = *(v0 + 56);
        v90 = *(MEMORY[0x277D85798] + 4);
        v91 = swift_task_alloc();
        *(v0 + 376) = v91;
        *v91 = v0;
        v91[1] = sub_253212FC4;
        v92 = *(v0 + 128);
        v93 = *(v0 + 104);
        v94 = *(v0 + 112);

        MEMORY[0x2822003E8](v93, v89, v88, v94);
        return;
      }

      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v50;
      v47 = "friendRequests allowed: %{BOOL}d";
    }

    _os_log_impl(&dword_2531F8000, v44, v45, v47, v46, 8u);
    MEMORY[0x259C040E0](v46, -1, -1);
    goto LABEL_23;
  }

  v25 = *(v0 + 176);
  v26 = *(v0 + 96);
  (*(*(v0 + 88) + 96))(v26, *(v0 + 80));
  sub_2532161F8(v26, v25);
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v29 = sub_253CD07E8();
  __swift_project_value_buffer(v29, qword_281531050);
  sub_2532168A0(v28, v27, &qword_27F5A3008, &qword_253D48B90);
  v30 = sub_253CD07C8();
  v31 = sub_253CD0C78();
  if (os_log_type_enabled(v30, v31))
  {
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v34 = *(v0 + 200);
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *(v0 + 48) = v38;
    *v37 = 136315138;
    sub_2532168A0(v35, v36, &qword_27F5A3008, &qword_253D48B90);
    if (v33(v36, 1, v34) == 1)
    {
      sub_253206054(*(v0 + 160), &qword_27F5A3008, &qword_253D48B90);
      v39 = 0xE400000000000000;
      v40 = 1701736302;
    }

    else
    {
      v53 = *(v0 + 200);
      v54 = *(v0 + 208);
      v55 = *(v0 + 160);
      v40 = sub_253CD0038();
      v39 = v56;
      (*(v54 + 8))(v55, v53);
    }

    sub_253206054(*(v0 + 168), &qword_27F5A3008, &qword_253D48B90);
    v57 = sub_253277BA8(v40, v39, (v0 + 48));

    *(v37 + 4) = v57;
    _os_log_impl(&dword_2531F8000, v30, v31, "meDevice changed: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x259C040E0](v38, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);
  }

  else
  {
    v48 = *(v0 + 168);

    sub_253206054(v48, &qword_27F5A3008, &qword_253D48B90);
  }

  v58 = *(v0 + 368);
  v59 = *(v0 + 176);
  v60 = *(v0 + 56);
  v61 = (v60 + *(v0 + 352));
  os_unfair_lock_lock(v61);
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  sub_253206054(v61 + v62, &qword_27F5A3008, &qword_253D48B90);
  sub_2532168A0(v59, v61 + v62, &qword_27F5A3008, &qword_253D48B90);
  os_unfair_lock_unlock(v61);
  v63 = sub_253216268(v59);
  os_unfair_lock_lock((v60 + 128));
  sub_2532153EC((v60 + 136), v63, (v0 + 400));
  os_unfair_lock_unlock((v60 + 128));
  if (!v58)
  {
    if (*(v0 + 400))
    {
      v64 = *(v0 + 56);
      v65 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
      os_unfair_lock_lock((v64 + 128));
      v66 = *(v64 + 136);
      os_unfair_lock_unlock((v64 + 128));
      v67 = [objc_opt_self() fmfStatusWithValue_];
      [v67 addToPayload_];

      v68 = v65;
      sub_253CD08C8();

      logAndPostNotification(*(v0 + 360), *(v0 + 56), 0);
    }

    sub_253206054(*(v0 + 176), &qword_27F5A3008, &qword_253D48B90);
    v52 = 0;
    goto LABEL_43;
  }
}

uint64_t sub_253213CA0()
{
  v1 = v0[37];

  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = sub_253CD07E8();
  __swift_project_value_buffer(v3, qword_281531050);
  v4 = v2;
  v5 = sub_253CD07C8();
  v6 = sub_253CD0CA8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[42];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2531F8000, v5, v6, "According to FindMy team this should never happen. Please file a radar if you see this. %@", v9, 0xCu);
    sub_253206054(v10, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v10, -1, -1);
    MEMORY[0x259C040E0](v9, -1, -1);
  }

  else
  {
  }

  *(v0[7] + 112) = 0;
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[31];
  v17 = v0[27];
  v16 = v0[28];
  v19 = v0[23];
  v18 = v0[24];
  v20 = v0[21];
  v21 = v0[22];
  v22 = v0[20];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[12];
  v29 = v0[9];
  v30 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_253213F30()
{
  v1 = *(v0[2] + 120);
  v0[3] = v1;

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_253213FE4;
  v3 = v0[2];

  return sub_2532140F4(v1);
}

uint64_t sub_253213FE4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2532140F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_253CD0058();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253214204, v1, 0);
}

uint64_t sub_253214204()
{
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v1 = sub_253CD07E8();
  v0[10] = __swift_project_value_buffer(v1, qword_281531050);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Going to query & process ME device", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v5 = v0[2];

  if (v5)
  {
    v6 = v0[2];

    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_25321443C;
    v8 = v0[5];
    v9 = v0[3];

    return sub_2532148A0(v8, v6);
  }

  else
  {
    v11 = sub_253CD07C8();
    v12 = sub_253CD0CA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2531F8000, v11, v12, "Unable to open FindMyLocate session", v13, 2u);
      MEMORY[0x259C040E0](v13, -1, -1);
    }

    v15 = v0[8];
    v14 = v0[9];
    v17 = v0[4];
    v16 = v0[5];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_25321443C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25321454C, v2, 0);
}

uint64_t sub_25321454C()
{
  v40 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[10];
  if (v4 == 1)
  {
    sub_253206054(v3, &qword_27F5A3008, &qword_253D48B90);
    v6 = sub_253CD07C8();
    v7 = sub_253CD0C98();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[2];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2531F8000, v6, v7, "Unable to query the ME device from FindMyLocate", v10, 2u);
      MEMORY[0x259C040E0](v10, -1, -1);
    }
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    (*(v2 + 32))(v11, v3, v1);
    v13 = *(v2 + 16);
    v13(v12, v11, v1);
    v14 = sub_253CD07C8();
    v15 = sub_253CD0C78();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v20 = 136315138;
      v35 = sub_253CD0038();
      v37 = v13;
      v22 = v21;
      v38 = *(v18 + 8);
      v38(v17, v19);
      v23 = sub_253277BA8(v35, v22, &v39);
      v13 = v37;

      *(v20 + 4) = v23;
      _os_log_impl(&dword_2531F8000, v14, v15, "Found designated ME device %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x259C040E0](v36, -1, -1);
      MEMORY[0x259C040E0](v20, -1, -1);
    }

    else
    {

      v38 = *(v18 + 8);
      v38(v17, v19);
    }

    v24 = v0[9];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[4];
    v28 = v0[2];
    v13(v27, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    sub_2532152E8(v27);

    sub_253206054(v27, &qword_27F5A3008, &qword_253D48B90);
    v38(v24, v25);
  }

  v30 = v0[8];
  v29 = v0[9];
  v32 = v0[4];
  v31 = v0[5];

  v33 = v0[1];

  return v33();
}

uint64_t sub_2532148A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_253CCFF58();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = *(MEMORY[0x277D09410] + 4);
  v9 = swift_task_alloc();
  v3[9] = v9;
  *v9 = v3;
  v9[1] = sub_2532149C0;

  return MEMORY[0x28215FB40](a1, 1);
}

uint64_t sub_2532149C0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_253214BA0;
  }

  else
  {
    v4 = sub_253214AE8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_253214AE8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];
  v4 = sub_253CD0058();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_253214BA0()
{
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_253CD07E8();
  v0[11] = __swift_project_value_buffer(v2, qword_281531050);
  v3 = v1;
  v4 = sub_253CD07C8();
  v5 = sub_253CD0C78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2531F8000, v4, v5, "Could not find the me device from cache %@. Going to force fetch from the FindMy daemon", v7, 0xCu);
    sub_253206054(v8, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v8, -1, -1);
    MEMORY[0x259C040E0](v7, -1, -1);
  }

  v11 = *(MEMORY[0x277D09410] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_253214D74;
  v13 = v0[2];
  v14 = v0[3];

  return MEMORY[0x28215FB40](v13, 0);
}

uint64_t sub_253214D74()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_253214F60;
  }

  else
  {
    v6 = sub_253214EA0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_253214EA0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = sub_253CD0058();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_253214F60()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v1;
  v4 = sub_253CD07C8();
  v5 = sub_253CD0C98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2531F8000, v4, v5, "Unable to fetch the FindMy device from daemon. %@.", v7, 0xCu);
    sub_253206054(v8, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v8, -1, -1);
    MEMORY[0x259C040E0](v7, -1, -1);
  }

  if (isInternalBuild() && (v11 = [objc_opt_self() sharedPreferences], v12 = sub_253CD0938(), v13 = objc_msgSend(v11, sel_preferenceForKey_, v12), v12, v11, LODWORD(v11) = objc_msgSend(v13, sel_BOOLValue), v13, v11))
  {
    v14 = v0[11];
    v15 = sub_253CD07C8();
    v16 = sub_253CD0C78();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2531F8000, v15, v16, "Preference 'fakeCurrentDeviceAsDesignatedMeDevice' is enabled, returning a fake device as Me device", v17, 2u);
      MEMORY[0x259C040E0](v17, -1, -1);
    }

    v18 = v0[13];
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[5];
    v22 = v0[6];
    v32 = v0[2];
    v33 = v0[10];

    sub_253CCFF48();
    sub_253CCFF08();
    v23 = *(v22 + 8);
    v23(v19, v21);
    sub_253CCFF48();
    sub_253CCFF08();
    v23(v20, v21);
    sub_253CD0028();
    v24 = v33;
    v25 = 0;
  }

  else
  {
    v18 = v0[13];
    v24 = v0[10];
    v25 = 1;
  }

  v27 = v0[7];
  v26 = v0[8];
  v28 = v0[2];
  v29 = sub_253CD0058();
  (*(*(v29 - 8) + 56))(v28, v25, 1, v29);

  v30 = v0[1];

  return v30();
}

void sub_2532152E8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  sub_253206054(v3 + v4, &qword_27F5A3008, &qword_253D48B90);
  sub_2532168A0(a1, v3 + v4, &qword_27F5A3008, &qword_253D48B90);
  os_unfair_lock_unlock(v3);
  v5 = sub_253216268(a1);
  os_unfair_lock_lock((v1 + 128));
  sub_2532153EC((v1 + 136), v5, &v6);
  os_unfair_lock_unlock((v1 + 128));
  if (v6 == 1)
  {

    sub_25321571C();
  }
}

void sub_2532153EC(unint64_t *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  if (*a1 == a2)
  {
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v6 = sub_253CD07E8();
    __swift_project_value_buffer(v6, qword_281531050);
    v7 = sub_253CD07C8();
    v8 = sub_253CD0C78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      v11 = HMDFMFStatusAsString(a2);
      v12 = sub_253CD0968();
      v14 = v13;

      v15 = sub_253277BA8(v12, v14, &v35);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_2531F8000, v7, v8, "FMF status is not changing from %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x259C040E0](v10, -1, -1);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    v16 = 0;
  }

  else
  {
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v18 = sub_253CD07E8();
    __swift_project_value_buffer(v18, qword_281531050);
    v19 = sub_253CD07C8();
    v20 = sub_253CD0C78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      v23 = HMDFMFStatusAsString(v5);
      v34 = a3;
      v24 = sub_253CD0968();
      v26 = v25;

      v27 = sub_253277BA8(v24, v26, &v35);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = HMDFMFStatusAsString(a2);
      v29 = sub_253CD0968();
      v31 = v30;

      v32 = v29;
      a3 = v34;
      v33 = sub_253277BA8(v32, v31, &v35);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_2531F8000, v19, v20, "FMF status is changing from %s to %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v22, -1, -1);
      MEMORY[0x259C040E0](v21, -1, -1);
    }

    *a1 = a2;
    v16 = 1;
  }

  *a3 = v16;
}

void sub_25321571C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  os_unfair_lock_lock((v0 + 128));
  v2 = *(v0 + 136);
  os_unfair_lock_unlock((v0 + 128));
  v3 = [objc_opt_self() fmfStatusWithValue_];
  [v3 addToPayload_];

  v4 = v1;
  sub_253CD08C8();

  logAndPostNotification(@"HMDFMFStatusUpdateNotification", v0, 0);
}

uint64_t sub_2532159D4(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_253215A50, a2, 0);
}

uint64_t sub_253215A50()
{
  v1 = *(v0[2] + 120);
  v0[4] = v1;

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_253215B04;
  v3 = v0[2];

  return sub_2532140F4(v1);
}

uint64_t sub_253215B04()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_253215C30, v3, 0);
}

uint64_t sub_253215C30()
{
  v1 = v0[2];
  v2 = v0[3];
  os_unfair_lock_lock((v1 + 128));
  v3 = *(v1 + 136);
  os_unfair_lock_unlock((v1 + 128));
  v4 = [objc_opt_self() fmfStatusWithValue_];

  (v2)[2](v2, v4);
  _Block_release(v2);

  v5 = v0[1];

  return v5();
}

id sub_253215D44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v5 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice);
  v6 = sub_253CD0058();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  *v5 = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3020, &qword_253D48BD0);
  bzero(v5 + v7, *(*(v8 - 8) + 64));
  sub_2532161F8(v4, v5 + v7);
  MyHandler = type metadata accessor for FindMyHandler();
  v11.receiver = v0;
  v11.super_class = MyHandler;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_253215EB8()
{
  v1 = *(v0 + 120);

  v2 = v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0);
  sub_253206054(v2 + *(v3 + 28), &qword_27F5A3008, &qword_253D48B90);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

HMDFMFHandlerFactory __swiftcall HMDFMFHandlerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for FindMyHandler()
{
  result = qword_27F5A2FF0;
  if (!qword_27F5A2FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_253216058()
{
  sub_253216110();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_253216110()
{
  if (!qword_27F5A3000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A3008, &qword_253D48B90);
    v0 = sub_253CD0708();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5A3000);
    }
  }
}

unint64_t type metadata accessor for HMDFMFHandlerFactory()
{
  result = qword_27F5A3018;
  if (!qword_27F5A3018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A3018);
  }

  return result;
}

uint64_t sub_2532161F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253216268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_253CD0058();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  sub_2532168A0(a1, v5, &qword_27F5A3008, &qword_253D48B90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_253206054(v5, &qword_27F5A3008, &qword_253D48B90);
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v14 = sub_253CD07E8();
    __swift_project_value_buffer(v14, qword_281531050);
    v15 = sub_253CD07C8();
    v16 = sub_253CD0C78();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2531F8000, v15, v16, "There is no designated ME device on this account", v17, 2u);
      MEMORY[0x259C040E0](v17, -1, -1);
    }

    return 1;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v19 = sub_253CD07E8();
    __swift_project_value_buffer(v19, qword_281531050);
    (*(v7 + 16))(v11, v13, v6);
    v20 = sub_253CD07C8();
    v21 = sub_253CD0C78();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v22 = 136315138;
      v23 = sub_253CD0038();
      v25 = v24;
      v26 = *(v7 + 8);
      v26(v11, v6);
      v27 = sub_253277BA8(v23, v25, &v31);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2531F8000, v20, v21, "Designated ME device : %s", v22, 0xCu);
      v28 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C040E0](v28, -1, -1);
      MEMORY[0x259C040E0](v22, -1, -1);
    }

    else
    {

      v26 = *(v7 + 8);
      v26(v11, v6);
    }

    if (sub_253CD0008())
    {
      v26(v13, v6);
      return 2;
    }

    else
    {
      v29 = sub_253CD0048();
      v26(v13, v6);
      if (v29)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_2532166A0()
{
  result = qword_2815314C0;
  if (!qword_2815314C0)
  {
    type metadata accessor for FindMyHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815314C0);
  }

  return result;
}

uint64_t sub_2532166F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253212230(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2532167EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253213F10(a1, v4, v5, v6);
}

uint64_t sub_2532168A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_253216908(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C438;

  return sub_25324BD44(a1, v5);
}

uint64_t sub_2532169C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25320C438;

  return sub_2532159D4(v2, v3);
}

uint64_t sub_253216A6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25320C7A8;

  return sub_253227DD0(v2, v3, v5);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_253216B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C7A8;

  return sub_253227EB8(a1, v4, v5, v7);
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_253CCFF18();
  v17.receiver = v12;
  v17.super_class = v6;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_253CCFF58();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter()
{
  v1 = v0;
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48C40;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000253D4E5E0;
  v8 = MEMORY[0x277D83B88];
  *(inited + 48) = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions];
  *(inited + 72) = v8;
  strcpy((inited + 80), "numClipUploads");
  *(inited + 95) = -18;
  *(inited + 96) = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads];
  *(inited + 120) = v8;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = 0x8000000253D4E600;
  *(inited + 144) = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds];
  *(inited + 168) = v8;
  *(inited + 176) = 0x44495555656D6F68;
  *(inited + 184) = 0xE800000000000000;
  v9 = [v1 homeUUID];
  sub_253CCFF38();

  v10 = sub_253CCFF08();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  v13 = MEMORY[0x277D837D0];
  *(inited + 192) = v10;
  *(inited + 200) = v12;
  *(inited + 216) = v13;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000253D4E620;
  LOBYTE(v13) = v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent];
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v13;
  v14 = sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_253CCFF18();
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_253CCFF58();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_253CCFF58();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    v41 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  v12 = sub_253217D84(0xD000000000000014, 0x8000000253D4E5E0);
  if ((v13 & 1) == 0)
  {
    v41 = 0;
    v16 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_14:
    v39 = 0;
    v40 = 0;
    v21 = 1;
    goto LABEL_22;
  }

  sub_253205FF8(*(a1 + 56) + 32 * v12, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v14 = swift_dynamicCast();
  v15 = v44;
  if (!v14)
  {
    v15 = 0;
  }

  v41 = v15;
  v16 = v14 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v17 = sub_253217D84(0x5570696C436D756ELL, 0xEE007364616F6C70);
  if (v18)
  {
    sub_253205FF8(*(a1 + 56) + 32 * v17, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    v19 = swift_dynamicCast();
    v20 = v44;
    if (!v19)
    {
      v20 = 0;
    }

    v40 = v20;
    v21 = v19 ^ 1;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v40 = 0;
    v21 = 1;
    if (!*(a1 + 16))
    {
LABEL_21:
      v39 = 0;
LABEL_22:
      v26 = 1;
      if (*(a1 + 16))
      {
        goto LABEL_23;
      }

LABEL_20:
      v27 = 0;
      goto LABEL_36;
    }
  }

  v22 = sub_253217D84(0xD00000000000001FLL, 0x8000000253D4E600);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_253205FF8(*(a1 + 56) + 32 * v22, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v24 = swift_dynamicCast();
  v25 = v44;
  if (!v24)
  {
    v25 = 0;
  }

  v39 = v25;
  v26 = v24 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_23:
  v28 = sub_253217D84(0x44495555656D6F68, 0xE800000000000000);
  if (v29)
  {
    sub_253205FF8(*(a1 + 56) + 32 * v28, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    if (swift_dynamicCast())
    {
      v27 = v45;
    }

    else
    {
      v27 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v27 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  v30 = sub_253217D84(0xD000000000000013, 0x8000000253D4E620);
  if (v31)
  {
    sub_253205FF8(*(a1 + 56) + 32 * v30, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    if (swift_dynamicCast())
    {
      v32 = v44;
    }

    else
    {
      v32 = 2;
    }

    if (v16)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_36:

  v32 = 2;
  if (v16)
  {
LABEL_39:

LABEL_40:
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_37:
  if (v21 || v26)
  {
    goto LABEL_39;
  }

  if (!v27)
  {
    goto LABEL_40;
  }

  sub_253CCFEF8();

  v34 = v42;
  if ((*(v42 + 48))(v7, 1, v8) == 1)
  {
    sub_25321869C(v7);
    goto LABEL_40;
  }

  (*(v34 + 32))(v11, v7, v8);
  if (v32 == 2)
  {
    (*(v34 + 8))(v11, v8);
    goto LABEL_40;
  }

  v35 = v40;
  *&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v41;
  *&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v35;
  *&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v39;
  v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = v32;
  v36 = sub_253CCFF18();
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v46, sel_initWithHomeUUID_, v36);

  (*(v34 + 8))(v11, v8);
  return v37;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventName.getter()
{
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent))
  {
    result = 0xD000000000000047;
  }

  else
  {
    result = 0xD00000000000003DLL;
  }

  *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent);
  return result;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48C50;
  strcpy((inited + 32), "numClipUploads");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x8000000253D4E5E0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x8000000253D4E600;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = sub_253218704(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
  swift_arrayDestroy();
  return v2;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_253CCFF18();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_253CCFF58();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_253CCFF18();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_253CCFF58();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id CameraRecordingEventDailySummaryLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_253217CF0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_253CD0D78();
  return sub_2532181FC(a1, v5, &qword_281530E30, off_27971A270);
}

unint64_t sub_253217D40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_253CD0F38();

  return sub_25321807C(a1, v5);
}

unint64_t sub_253217D84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_253CD11C8();
  sub_253CD09A8();
  v6 = sub_253CD11E8();

  return sub_253218144(a1, a2, v6);
}

unint64_t sub_253217DFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_253CD0D78();
  return sub_2532181FC(a1, v5, &qword_281530EA0, off_279719FE0);
}

unint64_t sub_253217E4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_253CCFF58();
  v5 = MEMORY[0x277CC95F0];
  sub_253219058(&qword_281531988, MEMORY[0x277CC95F0]);
  v6 = sub_253CD08F8();
  return sub_2532183CC(a1, v6, MEMORY[0x277CC95F0], &qword_27F5A2AE0, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_253217F20(char a1)
{
  v3 = *(v1 + 40);
  sub_253CD11C8();
  sub_253244E38(a1);
  sub_253CD09A8();

  v4 = sub_253CD11E8();

  return sub_2532182C8(a1, v4);
}

unint64_t sub_253217FA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_253CD0548();
  v5 = MEMORY[0x277D17D28];
  sub_253219058(&qword_27F5A3098, MEMORY[0x277D17D28]);
  v6 = sub_253CD08F8();
  return sub_2532183CC(a1, v6, MEMORY[0x277D17D28], &qword_27F5A30A0, v5, MEMORY[0x277D17D38]);
}

unint64_t sub_25321807C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2532190A0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C00EB0](v9, a1);
      sub_253205FA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_253218144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_253CD1118())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2532181FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_253200644(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_253CD0D88();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2532182C8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_253244E38(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_253244E38(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_253CD1118();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}