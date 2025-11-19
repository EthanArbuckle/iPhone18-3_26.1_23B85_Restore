_OWORD *sub_1DAF183D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DAF18404(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAF40780(a1, a2);
  }

  return a1;
}

uint64_t sub_1DAF1A024()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  if (*(v0 + 80))
  {
    v5 = *(v0 + 88);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DAF1A0B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    sub_1DAF40780(*(v0 + 48), v3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAF1A138()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAF1A170()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    sub_1DAF40780(*(v0 + 32), v2);
  }

  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    sub_1DAF40780(*(v0 + 48), v3);
  }

  v4 = *(v0 + 72);
  if (v4 >> 60 != 15)
  {
    sub_1DAF40780(*(v0 + 64), v4);
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DAF1A294(char a1)
{
  if (a1)
  {
    return 0x736D61726170;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DAF1A2E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAF1A324()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A0, &qword_1DB0A3608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAF1A3B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAF1A3F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAF1A448()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAF1A498()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAF1A524(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAF1A5E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAF1A690(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAF1A74C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAF1B900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E778, &unk_1DB0A4EC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DAF1B9A8()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  if (v0[10])
  {

    v2 = v0[12];

    v3 = v0[14];

    v4 = v0[16];
  }

  if (v0[18])
  {

    v5 = v0[20];

    v6 = v0[22];

    v7 = v0[24];
  }

  v8 = v0[26];

  v9 = v0[28];

  v10 = v0[30];

  v11 = v0[31];

  v12 = v0[32];

  v13 = v0[34];

  v14 = v0[36];
  if (v14 >> 60 != 15)
  {
    sub_1DAF40780(v0[35], v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, 298, 7);
}

uint64_t sub_1DAF1BA7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  if (*(v0 + 80))
  {
    v5 = *(v0 + 88);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DAF1BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB09DF64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DAF1BE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DB09DF64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DAF1BF18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7] != 1)
  {

    v5 = v0[9];

    v6 = v0[12];

    v7 = v0[15];

    v8 = v0[18];

    v9 = v0[21];

    v10 = v0[24];

    v11 = v0[29];

    v12 = v0[34];

    v13 = v0[37];

    v14 = v0[40];

    v15 = v0[43];

    v16 = v0[46];

    v17 = v0[49];

    v18 = v0[52];

    v19 = v0[55];

    v20 = v0[67];

    v21 = v0[70];

    v22 = v0[73];

    v23 = v0[76];

    v24 = v0[79];

    v25 = v0[82];

    v26 = v0[85];

    v27 = v0[88];

    v28 = v0[91];

    v29 = v0[94];

    v30 = v0[97];

    v31 = v0[100];

    v32 = v0[103];

    v33 = v0[127];

    v34 = v0[130];

    v35 = v0[133];
  }

  v36 = v0[137];

  return MEMORY[0x1EEE6BDD0](v0, 1108, 7);
}

uint64_t sub_1DAF1C078()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DAF1C0B8()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_1DAF40780(v0[6], v0[7]);
  if (v0[10])
  {
    sub_1DAF40780(v0[8], v0[9]);
    v3 = v0[10];
  }

  if (v0[13])
  {
    sub_1DAF40780(v0[11], v0[12]);
    v4 = v0[13];
  }

  if (v0[16])
  {
    sub_1DAF40780(v0[14], v0[15]);
    v5 = v0[16];
  }

  if (v0[19])
  {
    sub_1DAF40780(v0[17], v0[18]);
    v6 = v0[19];
  }

  v7 = v0[20];

  sub_1DAF40780(v0[21], v0[22]);
  sub_1DAF40780(v0[23], v0[24]);
  v8 = v0[25];

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1DAF1C180()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAF1C288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 448);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DB09DF64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAF1C334(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 448) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB09DF64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAF1C3E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DAF1C428()
{
  v1 = sub_1DB09CF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAF1C4FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC20, &qword_1DB0ABE98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAF1C590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAF1C5D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAF1C608()
{
  v1 = *(v0 + 32);

  sub_1DAFC4354(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DAF1C648()
{
  sub_1DAFC4354(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DAF1C680()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAF1C6C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAF1D590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAF1D5C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1DAF1D608()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  if (v3 >= 3)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAF1D658()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAF1D6A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAF1D778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F000, &unk_1DB0AD880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DAF1D828()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAF1D860()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B8, &unk_1DB0AE9E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DAF1D960()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F0E0, &unk_1DB0AEA20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAF1DA34()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DAF1DA8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DB09D154();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAF1DB38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB09D154();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1DAF1DE7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DAF1DE90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAF1DF68()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAF1DFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 400);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F348, &unk_1DB0AFA60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 88);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAF1E070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 400) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F348, &unk_1DB0AFA60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 88);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAF1E120(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAF1E1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAF1E298()
{
  v1 = v0[3];

  if (v0[6])
  {

    v2 = v0[8];

    v3 = v0[10];

    v4 = v0[12];
  }

  if (v0[14])
  {

    v5 = v0[16];

    v6 = v0[18];

    v7 = v0[20];

    v8 = v0[22];
  }

  v9 = v0[24];

  v10 = v0[26];

  v11 = v0[29];

  if (v0[36] != 1)
  {
  }

  v12 = v0[40];

  v13 = v0[41];

  v14 = v0[47];

  return MEMORY[0x1EEE6BDD0](v0, 384, 7);
}

uint64_t sub_1DAF1E360()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {

    v3 = v0[9];

    v4 = v0[11];

    v5 = v0[13];
  }

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  v10 = v0[23];

  v11 = v0[25];

  if (v0[30] != 1)
  {
  }

  v12 = v0[32];

  return MEMORY[0x1EEE6BDD0](v0, 289, 7);
}

uint64_t sub_1DAF1E40C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DAF1E45C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  sub_1DAF40780(v0[9], v0[10]);
  v2 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAF1E4AC()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_1DAF40780(v0[6], v0[7]);
  if (v0[10])
  {
    sub_1DAF40780(v0[8], v0[9]);
    v3 = v0[10];
  }

  if (v0[13])
  {
    sub_1DAF40780(v0[11], v0[12]);
    v4 = v0[13];
  }

  if (v0[16])
  {
    sub_1DAF40780(v0[14], v0[15]);
    v5 = v0[16];
  }

  if (v0[19])
  {
    sub_1DAF40780(v0[17], v0[18]);
    v6 = v0[19];
  }

  v7 = v0[20];

  sub_1DAF40780(v0[21], v0[22]);
  sub_1DAF40780(v0[23], v0[24]);
  v8 = v0[25];

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1DAF1E574()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1DAF1E5E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAF1E624(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DB09D484();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAF1E6D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DB09D484();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAF1E774(unsigned __int8 a1)
{
  v1 = 0x726564616568;
  v2 = 0x64616F6C796170;
  if (a1 != 2)
  {
    v2 = 0x727574616E676973;
  }

  if (a1)
  {
    v1 = 0x65746365746F7270;
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

uint64_t sub_1DAF1E7F8(char a1)
{
  if (a1)
  {
    return 7168373;
  }

  else
  {
    return 6501752;
  }
}

uint64_t sub_1DAF1E818@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_1DB0132E4();
}

uint64_t sub_1DAF1E854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DB00BE68(v4);
}

__n128 sub_1DAF1E88C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DAF1E8A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_1DB013318();
  a2[1] = v4;
}

uint64_t sub_1DAF1E8E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1DB00BF38(v2, v3);
}

__n128 sub_1DAF1E980@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *a2 = *(v3 + 168);
  *(a2 + 16) = v4;
  result = *(v3 + 200);
  v6 = *(v3 + 216);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

__n128 sub_1DAF1E9D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(v3 + 168) = *a1;
  *(v3 + 184) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v3 + 200) = result;
  *(v3 + 216) = v6;
  return result;
}

uint64_t sub_1DAF1EA30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAF1EA80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAF1EAD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAF1EB08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAF1EB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB09CF64();
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

uint64_t sub_1DAF1EC14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DB09CF64();
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

uint64_t sub_1DAF1EDF4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DAF1EECC(uint64_t a1, __int16 a2, uint64_t a3, int a4)
{
  if (BYTE1(a4) == 220)
  {
    return 0;
  }

  if (HIBYTE(a2) == 220)
  {
    return 1;
  }

  if (BYTE1(a4) != 211)
  {
    if (HIBYTE(a2) <= 0xD6u)
    {
      if (HIBYTE(a2) > 0xD4u)
      {
        if (HIBYTE(a2) == 213)
        {
          if (BYTE1(a4) == 213)
          {
            goto LABEL_7;
          }
        }

        else if (BYTE1(a4) == 214)
        {
          goto LABEL_7;
        }

        return 0;
      }

      if (HIBYTE(a2) == 211)
      {
        return 0;
      }

      if (HIBYTE(a2) == 212)
      {
        if (BYTE1(a4) == 212)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }

    else
    {
      if (HIBYTE(a2) <= 0xD8u)
      {
        if (HIBYTE(a2) == 215)
        {
          if (BYTE1(a4) == 215)
          {
            goto LABEL_7;
          }
        }

        else if (BYTE1(a4) == 216)
        {
          goto LABEL_7;
        }

        return 0;
      }

      switch(HIBYTE(a2))
      {
        case 0xD9u:
          if (BYTE1(a4) == 217)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDAu:
          if (BYTE1(a4) == 218)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDBu:
          if (BYTE1(a4) == 219)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (BYTE1(a4) - 211 >= 9 && qword_1DB0BD040[HIBYTE(a2) ^ 0x80u] == qword_1DB0BD040[BYTE1(a4) ^ 0x80u])
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (HIBYTE(a2) != 211)
  {
    return 1;
  }

LABEL_7:
  v5 = (a1 == a3) & ~a4;
  if (a2)
  {
    v5 = a4;
  }

  return (v5 ^ 1) & 1;
}

uint64_t sub_1DAF1F398(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v9 != 213)
        {
          return 0;
        }
      }

      else if (v9 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v9 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v9 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v6 <= 216)
    {
      if (v6 == 215)
      {
        if (v9 != 215)
        {
          return 0;
        }
      }

      else if (v9 != 216)
      {
        return 0;
      }

      goto LABEL_31;
    }

    switch(v6)
    {
      case 0xD9:
        if (v9 != 217)
        {
          return 0;
        }

        goto LABEL_31;
      case 0xDA:
        if (v9 != 218)
        {
          return 0;
        }

        goto LABEL_31;
      case 0xDB:
        if (v9 != 219)
        {
          return 0;
        }

        goto LABEL_31;
    }
  }

  if ((v9 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v9 ^ 0x80])
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      if (sub_1DB09E254())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DAF1F530()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[12];

  v5 = v0[15];

  v6 = v0[18];

  v7 = v0[21];

  v8 = v0[24];

  v9 = v0[27];

  v10 = v0[30];

  v11 = v0[33];

  v12 = v0[36];

  return MEMORY[0x1EEE6BDD0](v0, 297, 7);
}

uint64_t sub_1DAF1F5C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 114, 7);
}

uint64_t sub_1DAF1F600()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DAF1F648@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 112), 0x40AuLL);
  memcpy(a2, (v3 + 112), 0x40AuLL);
  return sub_1DAF96A98(__dst, v5);
}

uint64_t sub_1DAF1F6D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAF1F734()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAF1F76C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DAF1F7C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DAF1F820()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAF1F898()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_1DB041AD8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  v4 = *(v0 + 152);

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1DAF1F8FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v3 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAF1F950()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAF1F998()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DAF1F9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DAF1FA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void bcgsyabc74vz12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1DAF1FB54()
{
  result = 4294940294;
  v2 = *(v0 - 104);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DAF1FCE4()
{
  *STACK[0x3B8] = 75;
  *(v2 + 17) = 0x94871355BFFE36D1;
  *(v2 + 25) = 1947997477;
  *(v2 + 29) = -20318;
  *(v5 - 145) = 67;
  if (v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((((v0 - 16) ^ (v0 - 76) & 0x3F ^ 0x1C) * v7) ^ v0)))();
}

uint64_t sub_1DAF1FD60()
{
  STACK[0x3B8] = &STACK[0x3D0];
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v2 + 8 * ((((v0 - 16) ^ (v0 - 76) & 0x3F ^ 0x1C) * v5) ^ v0)))();
}

uint64_t sub_1DAF1FDA8@<X0>(unsigned int a1@<W8>)
{
  v3 = ((2 * v1) & 0xDE31A7FE) + (v1 ^ 0x6F18D3FF) - 1108378372;
  v5 = (((((v3 ^ 0x2F) + 44) ^ v3 ^ ((v3 ^ 0xE9) - 18) ^ ((v3 ^ 0xCA) - 49)) ^ ((v3 ^ 0xF7) - 12)) & 0xF) != ((a1 + 1) | 8) - 29 || (((v3 ^ 0x3D13212F) - 270234068) ^ v3 ^ ((v3 ^ 0x64C35EE9) - 1238044178) ^ ((v3 ^ 0xA07D4CA) - 655328305) ^ ((v3 ^ 0x7EDFFBF7) - 1406642956)) == ((a1 - 344965220) & 0x5F) + 755519712;
  return (*(v2 + 8 * ((85 * v5) ^ a1)))();
}

uint64_t sub_1DAF1FECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v47 = (*(v46 + 8 * (v45 + 57)))(1032);
  v48 = (*(v46 + 8 * (v45 + 57)))(1032);
  STACK[0x270] = v47;
  STACK[0x268] = v48;
  if (v47)
  {
    v56 = v48 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = !v56;
  return (*(v46 + 8 * ((v57 * (((v45 - 5) ^ 0x12) - 22)) ^ v45)))(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1DAF1FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  STACK[0x3A0] = v59;
  STACK[0x3C8] = v58;
  LODWORD(STACK[0x3B4]) = v57 >> 3;
  v61 = (v57 >> 3) ^ 0x5A10A1F;
  v62 = v56[(v56[(v56[(v56[0x69A4AE39 % v61] + 3195531922) % v61] + 2561233832) % v61] + 1010281663) % v61] + 2952637770;
  STACK[0x3A8] = v61;
  LODWORD(v62) = v62 % v61 - ((2 * (v62 % v61)) & 0x1BB0A5E2) - 841461007;
  v63 = (((v62 ^ 0xB9A64B90) - 957279469) ^ ((v62 ^ 0x660E4112) + 425269649) ^ ((v62 ^ 0x12705873) + 1831272690)) + 1393072888;
  STACK[0x3C0] = v60;
  *v60 = *v56 ^ 0x8A8A8A8A8A8A8A8ALL;
  v64 = v63 > 0x597A56D;
  if (v63 < 0x597A56C)
  {
    v64 = 1;
  }

  return (*(STACK[0x3C8] + 8 * ((30 * !v64) ^ v55)))(32 * !v64, 0x1AEBBB1000000000, 93824364, v63, 0x683A163700000000, 0x3956BC4D00000000, 0x42C3E81200000000, 0x4167DE6C00000000, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1DAF219B8@<X0>(int a1@<W8>)
{
  v5 = (a1 - 970742834) & 0x39DC5C2D;
  v6 = (((LODWORD(STACK[0x3B4]) ^ 0x61355F33) - 1274375952) ^ ((LODWORD(STACK[0x3B4]) ^ 0x892D3945) + 1544746650) ^ ((LODWORD(STACK[0x3B4]) ^ 0xEDB96C69) + 948347830)) - 1465213416;
  v7 = v6 < (v5 ^ 0x794963D4u);
  v8 = 8 * ((v3 | ((v3 < 0x1642AEC7) << 32)) + 0x292D51176AA1EDA5) - 0x496A88BC0724E360;
  v9 = *(v2 + v8);
  v10 = 0x77338F1D15730F63 * v9 + 0x3BCB0D247B15E35;
  v11 = (v10 ^ 0xFD2A2F093B0EBDE2) & (2 * (v10 & 0xFC434F2DB84EA1CBLL)) ^ v10 & 0xFC434F2DB84EA1CBLL;
  v12 = ((2 * ((v5 + 15) ^ 0x3DAEA95B6B02BFE1 ^ v10)) ^ 0x83DBCCEDA6983C7ALL) & ((v5 + 15) ^ 0x3DAEA95B6B02BFE1 ^ v10) ^ (2 * ((v5 + 15) ^ 0x3DAEA95B6B02BFE1 ^ v10)) & 0xC1EDE676D34C1E3CLL;
  v13 = v12 ^ 0x4024221251440205;
  v14 = (v12 ^ 0x8109446482080C38) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x7B799DB4D3078F4) & v13 ^ (4 * v13) & 0xC1EDE676D34C1E3CLL;
  v16 = (v15 ^ 0x1A5805241001830) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0xC0486624924C0609)) ^ 0x1EDE676D34C1E3D0) & (v15 ^ 0xC0486624924C0609) ^ (16 * (v15 ^ 0xC0486624924C0609)) & 0xC1EDE676D34C1E30;
  v18 = (v17 ^ 0xCC666410400200) & (v16 << 8) ^ v16;
  v19 = (((v17 ^ 0xC1218012C30C1C2DLL) << 8) ^ 0xEDE676D34C1E3D00) & (v17 ^ 0xC1218012C30C1C2DLL) ^ ((v17 ^ 0xC1218012C30C1C2DLL) << 8) & 0xC1EDE676D34C1E00;
  v20 = v18 ^ 0xC1EDE676D34C1E3DLL ^ (v19 ^ 0xC1E46652400C0000) & (v18 << 16);
  v21 = v10 ^ (2 * ((v20 << 32) & 0x41EDE67600000000 ^ v20 ^ ((v20 << 32) ^ 0x534C1E3D00000000) & (((v19 ^ 0x980249340023DLL) << 16) & 0x41EDE67600000000 ^ 0x189243200000000 ^ (((v19 ^ 0x980249340023DLL) << 16) ^ 0x6676D34C00000000) & (v19 ^ 0x980249340023DLL))));
  *(STACK[0x3C0] + v8) = v9 ^ 0x8A8A8A8A8A8A8A8ALL;
  v22 = (v3 | ((v3 < 0x1642AEC7) << 32)) - 0x45082B599CB49A91 + (((v21 ^ 0x248D3C2D1C6142A5 ^ v4 ^ 0x48FADDBD037B2723) - 0x48FADDBD037B2723) ^ ((v21 ^ 0x248D3C2D1C6142A5 ^ v4 ^ 0xC39723D7BE54CB67) + 0x3C68DC2841AB3499) ^ ((v21 ^ 0x248D3C2D1C6142A5 ^ v4 ^ 0x3EFE33512A2B427FLL) - 0x3EFE33512A2B427FLL));
  v23 = (v22 ^ 0xF0D3FA11D9745985) & (2 * (v22 & 0xFA9BF8951D769A05)) ^ v22 & 0xFA9BF8951D769A05;
  v24 = ((2 * (v22 ^ 0x35E42B13F9FC698DLL)) ^ 0x9EFFA70DC915E710) & (v22 ^ 0x35E42B13F9FC698DLL) ^ (2 * (v22 ^ 0x35E42B13F9FC698DLL)) & 0xCF7FD386E48AF388;
  v25 = v24 ^ 0x41005082248A1088;
  v26 = (v24 ^ 0x8E7F8204C000E000) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x3DFF4E1B922BCE20) & v25 ^ (4 * v25) & 0xCF7FD386E48AF388;
  v28 = (v27 ^ 0xD7F4202800AC200) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0xC200918464803188)) ^ 0xF7FD386E48AF3880) & (v27 ^ 0xC200918464803188) ^ (16 * (v27 ^ 0xC200918464803188)) & 0xCF7FD386E48AF380;
  v30 = (v29 ^ 0xC77D1006408A3000) & (v28 << 8) ^ v28;
  v31 = (((v29 ^ 0x802C380A400C308) << 8) ^ 0x7FD386E48AF38800) & (v29 ^ 0x802C380A400C308) ^ ((v29 ^ 0x802C380A400C308) << 8) & 0xCF7FD386E48AF300;
  v32 = v30 ^ 0xCF7FD386E48AF388 ^ (v31 ^ 0x4F53828480820000) & (v30 << 16);
  v33 = (v22 ^ (2 * ((v32 << 32) & 0x4F7FD38600000000 ^ v32 ^ ((v32 << 32) ^ 0x648AF38800000000) & (((v31 ^ 0x802C510264087388) << 16) & 0x4F7FD38600000000 ^ 0xC79130400000000 ^ (((v31 ^ 0x802C510264087388) << 16) ^ 0x5386E48A00000000) & (v31 ^ 0x802C510264087388))))) >> 32;
  v34 = v22 + 0x40264AE58AD6B142 + (((v33 ^ 0x2AB0B6868CA672A3) - 0x6F3AE4D60DB79D06) ^ ((v33 ^ 0x427CE4052E82BB09) - 0x7F6B655AF9354ACLL) ^ ((v33 ^ 0x68CC52834E553132) - 0x2D4600D3CF44DE97));
  v35 = v34 + (v34 >> 16) + ((v34 + (v34 >> 16)) >> 8);
  v36 = v35 - ((2 * v35) & 0x3FDCE540041CBA9CLL) - 0x60118D5FFDF1A2B2;
  v37 = (v3 | ((v3 < 0x1642AEC7) << 32)) - 0x4E8C0E85C87220F1 + (((v36 ^ v21 ^ 0x248D3C2D1C6142A5 ^ 0x16F96CA64A6F3C6DLL) - 0x16F96CA64A6F3C6DLL) ^ ((v36 ^ v21 ^ 0x248D3C2D1C6142A5 ^ 0x5699B8E93391F3CFLL) - 0x5699B8E93391F3CFLL) ^ ((v36 ^ v21 ^ 0x248D3C2D1C6142A5 ^ 0x603156A79474DF8) - 0x603156A79474DF8));
  v38 = v37 - 0x6B1030554D170B7CLL + (((((v37 ^ 0x40CE6ED3BD135746) - 0x2BDE5E86F0045C3ALL) ^ v37 ^ ((v37 ^ 0x68D9FECF8D237D02) - 0x3C9CE9AC034767ELL) ^ ((v37 ^ 0xFCFAC9B39A40F54ELL) + 0x6815061928A801CELL) ^ ((v37 ^ 0xBFFD69FAE767D476) + 0x2B12A650558F20F6)) >> 32) ^ 0x6B103055);
  v39 = v38 + (v38 >> 16) + ((v38 + (v38 >> 16)) >> 8);
  v40 = (v3 | ((v3 < 0x1642AEC7) << 32)) - 0x787DE4D64F612F88 + (((v39 ^ v21 ^ 0x11A85B319668537ALL) + 0x246D8A83F8E158F3) ^ ((v39 ^ v21 ^ 0xA55599C6E9B2747DLL) - 0x6F6FB78B78C4800ALL) ^ ((v39 ^ v21 ^ 0x49FD4D5F610CBAB6) + 0x7C389CED0F85B13FLL));
  v41 = (v40 ^ 0xFB834B384BCCAA7) & (2 * (v40 & 0xAFB886BBC8BEEA87)) ^ v40 & 0xAFB886BBC8BEEA87;
  v42 = ((2 * (v40 ^ 0x7C93DF215BC9AAFLL)) ^ 0x50E37693BA04E050) & (v40 ^ 0x7C93DF215BC9AAFLL) ^ (2 * (v40 ^ 0x7C93DF215BC9AAFLL)) & 0xA871BB49DD027028;
  v43 = v42 ^ 0xA810894845021028;
  v44 = (v42 ^ 0x70B20100006000) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0xA1C6ED277409C0A0) & v43 ^ (4 * v43) & 0xA871BB49DD027028;
  v46 = (v45 ^ 0xA040A90154004020) & (16 * v44) ^ v44;
  v47 = ((16 * (v45 ^ 0x831124889023008)) ^ 0x871BB49DD0270280) & (v45 ^ 0x831124889023008) ^ (16 * (v45 ^ 0x831124889023008)) & 0xA871BB49DD027020;
  v48 = (v47 ^ 0x8011B009D0020000) & (v46 << 8) ^ v46;
  v49 = (((v47 ^ 0x28600B400D007028) << 8) ^ 0x71BB49DD02702800) & (v47 ^ 0x28600B400D007028) ^ ((v47 ^ 0x28600B400D007028) << 8) & 0xA871BB49DD027000;
  v50 = v48 ^ 0xA871BB49DD027028 ^ (v49 ^ 0x2031094900000000) & (v48 << 16);
  v51 = v40 - 0x5047794437411579 + (((v40 ^ (2 * ((v50 << 32) & 0x2871BB4900000000 ^ v50 ^ ((v50 << 32) ^ 0x5D02702800000000) & (((v49 ^ 0x8840B200DD025028) << 16) & 0x2871BB4900000000 ^ 0x30224900000000 ^ (((v49 ^ 0x8840B200DD025028) << 16) ^ 0x3B49DD0200000000) & (v49 ^ 0x8840B200DD025028))))) >> 32) ^ 0xEF5B9038);
  if (v7 == v3 + 1661383958 < 0x794963DC)
  {
    v7 = v3 + 1661383958 < v6;
  }

  v52 = v51 + (v51 >> 16) + ((v51 + (v51 >> 16)) >> 8);
  return (*(STACK[0x3C8] + 8 * (v5 ^ (4 * v7))))(v36 ^ v1 ^ v39 ^ (v52 - ((2 * v52) & 0x2B66E25E) - 1783402193), 4015755320, 0x4F7FD38600000000, 1661383958);
}

uint64_t sub_1DAF224FC()
{
  if (((*(STACK[0x3B8] + (*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 14) + 6) & 0xFLL)) & 0xF)) & 0xF ^ 8)) + 3) & 0xE) != 0)
  {
    v1 = (*(STACK[0x3B8] + (*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 14) + 6) & 0xFLL)) & 0xF)) & 0xF ^ 8)) + 3) & 0xF;
  }

  else
  {
    v1 = 1;
  }

  v2 = STACK[0x3A0];
  v3 = -177997545 * *STACK[0x3B8];
  return (*(STACK[0x3C8] + 8 * (((16 * (v1 == 1)) | (32 * (v1 == 1))) ^ v0)))(21, 3328166710, 752556415);
}

uint64_t sub_1DAF25C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, int a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v81 = LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x254]) ^ a54 ^ a78 ^ LODWORD(STACK[0x368]) ^ a69 ^ LODWORD(STACK[0x200]) ^ LODWORD(STACK[0x29C]) ^ a74 ^ LODWORD(STACK[0x350]) ^ a80 ^ LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0x228]) ^ a79 ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x2EC]) ^ a53 ^ a72 ^ LODWORD(STACK[0x344]) ^ a75 ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x220]) ^ LODWORD(STACK[0x230]) ^ a63 ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x210]) ^ a52 ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x234]) ^ a70 ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x204]) ^ LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x21C]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x25C]) ^ LODWORD(STACK[0x264]) ^ a71 ^ LODWORD(STACK[0x2BC]) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x298]) ^ a55 ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x258]) ^ a73 ^ LODWORD(STACK[0x20C]) ^ LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x334]);
  v86 = v81 ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x364]) ^ a77 ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x22C]) ^ a76 ^ a64 ^ a50;
  LODWORD(v82) = *(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 5) + 11) & 0xFLL)) + 14) & 0xF)) + 10) & 0xF)) & 0xF ^ 8;
  if (v82 <= 1)
  {
    v82 = 1;
  }

  else
  {
    v82 = v82;
  }

  v83 = STACK[0x3C0];
  v84 = -947166359 * *STACK[0x3B8];
  return (*(STACK[0x3C8] + 8 * (((v82 != 1) | (4 * (v82 != 1))) ^ (v80 - 5))))(3159698914);
}

uint64_t sub_1DAF263A4@<X0>(uint64_t a1@<X4>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v68 = a2 + v64;
  v69 = (a2 + v64) >> 16;
  v70 = v58 + a2 + ((a2 + v60 + ((v68 - v69) >> 8) + ((a2 + v60 + ((v68 - v69) >> 8) - v69) >> 11) - v69) >> 4) + ((a2 + v60 + ((v68 - v69) >> 8) - v69) >> 11) + ((v68 - v69) >> 8) - v69 - a3;
  v71 = (v70 ^ 0xB6252153) - ((v70 ^ 0xB6252153) >> 9) + (((v70 ^ 0xB6252153) - ((v70 ^ 0xB6252153) >> 9)) >> 3);
  v72 = v71 ^ v63;
  v73 = v71 - 1726457715 - ((v71 - 1726457715) >> 10) - ((v71 - 1726457715 - ((v71 - 1726457715) >> 10)) >> 8);
  v74 = v73 - 1999805803 + ((v73 - 1999805803) >> 8) - ((v73 - 1999805803 + ((v73 - 1999805803) >> 8)) >> 6);
  v75 = (v74 ^ 0xF28203A6) - ((v74 ^ 0xF28203A6) >> 14) + (((v74 ^ 0xF28203A6) - ((v74 ^ 0xF28203A6) >> 14)) >> 1);
  v76 = v72 ^ v75;
  v77 = v75 - 1158522589 + ((v75 - 1158522589) >> 11) - ((v75 - 1158522589 + ((v75 - 1158522589) >> 11)) >> 2);
  v78 = (v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8) + (((v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8)) >> 5);
  v79 = v70 ^ v61 ^ v74 ^ (v78 - ((2 * v78) & 0xEAA48A24) - 179157742);
  v80 = (v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12) - (((v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12)) >> 6);
  v81 = v76 ^ v80;
  v82 = v73 ^ v59 ^ v77 ^ (v80 + 1674369025 + ((v80 + 1674369025) >> 8) - ((v80 + 1674369025 + ((v80 + 1674369025) >> 8)) >> 5));
  LODWORD(STACK[0x390]) = v82;
  LODWORD(STACK[0x34C]) = v82 & 7 ^ 2;
  v83 = -(v82 & 7 ^ 2) & 7;
  v84 = (v82 & 7) == 2;
  if ((v82 & 7) == 2)
  {
    v85 = 0;
  }

  else
  {
    v85 = 255;
  }

  LODWORD(STACK[0x348]) = v83;
  v86 = v85 << v83;
  v87 = -117440512 * v86;
  v88 = ((*(v66 + 8 * (((*(v66 + 8 * (((*(v66 + 8 * (((*(v66 + 8 * (0xE3F29D41 % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2961423375u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 3263808933u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 3092999889u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 4181209568u) % STACK[0x3A8];
  v89 = (v79 ^ 0x5C7D213B) & 0xFE ^ 0x14;
  v90 = 16843009 * v86;
  v91 = v86 ^ 0xB3;
  if (v84)
  {
    v91 = 76;
  }

  LODWORD(STACK[0x280]) = v81;
  LODWORD(STACK[0x310]) = v87 & (v81 ^ 0x82000000);
  LODWORD(STACK[0x32C]) = v79;
  LODWORD(STACK[0x340]) = v90;
  LODWORD(STACK[0x254]) = v90 ^ v79 & 0x4C ^ v91 & (v79 ^ 0x3B);
  LODWORD(STACK[0x290]) = 16843009 * ((v81 ^ BYTE1(v81) ^ BYTE2(v81)) ^ HIBYTE(v81) ^ 0x1D);
  v92 = LODWORD(STACK[0x394]) ^ 0xF42B3858;
  v93 = LODWORD(STACK[0x3A0]) ^ 0xBBFE888E;
  v94 = ((((v88 - ((2 * v88) & 0x11A24B0E) + 147924359) ^ 0x29FAE01) - 951799598) ^ (((v88 - ((2 * v88) & 0x11A24B0E) + 147924359) ^ 0xF26AA7B) - 889342804) ^ (((v88 - ((2 * v88) & 0x11A24B0E) + 147924359) ^ 0x56821FDu) - 1061994706)) + 705096883;
  v95 = LODWORD(STACK[0x39C]) ^ 0x31D49EDE;
  LODWORD(STACK[0x344]) = 16843009 * v89;
  v96 = 3 * (v62 ^ 0x3Bu);
  v97 = (*STACK[0x3C0] ^ 0x8A8A8A8A8A8A8A8ALL) * (v96 ^ 0x6B512F49E9CDF50DLL);
  v98 = (((v97 ^ v65 ^ 0x7CA82CB17018E54ALL) + 0x7E34D12FA767BB0BLL) ^ ((v97 ^ v65 ^ 0xF8C88A1AAF51A948) - 0x5AB887B87D108F7) ^ ((v97 ^ v65 ^ 0x8460A6ABDF494C02) - 0x7903A4CAF7C9EDBDLL)) + 0x37363DC98FB5B5B1;
  v99 = (v98 ^ 0xC50C809758C2E8ACLL) & (2 * (v98 & 0xC62CC49798CAEC0ELL)) ^ v98 & 0xC62CC49798CAEC0ELL;
  v100 = ((2 * (v98 ^ 0xC14D00BA48C3A0A4)) ^ 0xEC3885BA0129954) & (v98 ^ 0xC14D00BA48C3A0A4) ^ (2 * (v98 ^ 0xC14D00BA48C3A0A4)) & 0x761C42DD0094CAALL;
  v101 = (v100 ^ 0x41400890000480) & (4 * v99) ^ v99;
  v102 = ((4 * (v100 ^ 0x1204424500944AALL)) ^ 0x1D8710B7402532A8) & (v100 ^ 0x1204424500944AALL) ^ (4 * (v100 ^ 0x1204424500944AALL)) & 0x761C42DD0094CA8;
  v103 = (v102 ^ 0x5010025400100A0) & (16 * v101) ^ v101;
  v104 = ((16 * (v102 ^ 0x260C40890084C02)) ^ 0x761C42DD0094CAA0) & (v102 ^ 0x260C40890084C02) ^ (16 * (v102 ^ 0x260C40890084C02)) & 0x761C42DD0094CA0;
  v105 = (v104 ^ 0x600400D00004800) & (v103 << 8) ^ v103;
  v106 = (((v104 ^ 0x1618420D009040ALL) << 8) ^ 0x61C42DD0094CAA00) & (v104 ^ 0x1618420D009040ALL) ^ ((v104 ^ 0x1618420D009040ALL) << 8) & 0x761C42DD0094C00;
  v107 = v105 ^ 0x761C42DD0094CAALL ^ (v106 ^ 0x140040000080000) & (v105 << 16);
  v108 = v98 - 0x39D33B68673513F2 + (((v98 ^ (2 * ((v107 << 32) & 0x761C42D00000000 ^ v107 ^ ((v107 << 32) ^ 0x50094CAA00000000) & (((v106 ^ 0x621C02DD00144AALL) << 16) & 0x761C42D00000000 ^ 0x340042400000000 ^ (((v106 ^ 0x621C02DD00144AALL) << 16) ^ 0x442DD00900000000) & (v106 ^ 0x621C02DD00144AALL))))) >> 32) ^ 0xC8EDC49C);
  v109 = v108 + (v108 >> 16) + ((v108 + (v108 >> 16)) >> 8);
  v110 = (v109 + v67) ^ v93;
  v109 -= 0x6D4C1E1C670AB82;
  v111 = v109 ^ v95;
  v112 = (((v109 ^ v97 ^ 0xBCC5290659A76FE3) + 0x3E67D5C2BDB1990CLL) ^ ((v109 ^ v97 ^ 0xDB15FF0154BA3B8DLL) + 0x59B703C5B0ACCD66) ^ ((v109 ^ v97 ^ 0x67D0D6070D1D546ELL) - 0x1A8DD53C16F45D79)) - 0x5EB97FD8350951ECLL;
  v113 = (v112 ^ 0x9B868A5B18F31312) & (2 * (v112 & 0xDC16831350F25B03)) ^ v112 & 0xDC16831350F25B03;
  v114 = ((2 * (v112 ^ 0xB8A8C7B9953A314)) ^ 0xAF381ED19343F02ELL) & (v112 ^ 0xB8A8C7B9953A314) ^ (2 * (v112 ^ 0xB8A8C7B9953A314)) & 0xD79C0F68C9A1F816;
  v115 = v114 ^ 0x5084012848A00811;
  v116 = (v114 ^ 0x80180D608921F004) & (4 * v113) ^ v113;
  v117 = ((4 * v115) ^ 0x5E703DA32687E05CLL) & v115 ^ (4 * v115) & 0xD79C0F68C9A1F814;
  v118 = (v117 ^ 0x56100D200081E010) & (16 * v116) ^ v116;
  v119 = ((16 * (v117 ^ 0x818C0248C9201803)) ^ 0x79C0F68C9A1F8170) & (v117 ^ 0x818C0248C9201803) ^ (16 * (v117 ^ 0x818C0248C9201803)) & 0xD79C0F68C9A1F810;
  v120 = (v119 ^ 0x5180060888018000) & (v118 << 8) ^ v118;
  v121 = (((v119 ^ 0x861C096041A07807) << 8) ^ 0x9C0F68C9A1F81700) & (v119 ^ 0x861C096041A07807) ^ ((v119 ^ 0x861C096041A07807) << 8) & 0xD79C0F68C9A1F800;
  v122 = v120 ^ 0xD79C0F68C9A1F817 ^ (v121 ^ 0x940C084881A00000) & (v120 << 16);
  v123 = v112 - 0x23E97CECAF0DA4FDLL + (((v112 ^ (2 * ((v122 << 32) & 0x579C0F6800000000 ^ v122 ^ ((v122 << 32) ^ 0x49A1F81700000000) & (((v121 ^ 0x439007204801E817) << 16) & 0x579C0F6800000000 ^ 0x5094064800000000 ^ (((v121 ^ 0x439007204801E817) << 16) ^ 0xF68C9A100000000) & (v121 ^ 0x439007204801E817))))) >> 32) ^ 0xF02E8DC2);
  v124 = v123 + (v123 >> 16) + ((v123 + (v123 >> 16)) >> 8);
  LODWORD(v121) = v110 ^ (v124 + v67);
  v124 -= 0x6D4C1E1C670AB82;
  v125 = v111 ^ v124;
  v126 = (((v124 ^ v97 ^ 0xFD75F83355329BE8) + 0x4B637A0D7D06592) ^ ((v124 ^ v97 ^ 0x76D0875403BABD32) - 0x70ECB7387EA7BCB4) ^ ((v124 ^ v97 ^ 0x8BA57F67568826DALL) + 0x7266B0F4D46AD8A4)) + 0x9179F5E98EB7FBBLL;
  v127 = v126 - 0x2DB6EF21BCE7E35 + (((((v126 ^ 0x84FD838E83E9999ELL) + 0x79D9128367D81855) ^ v126 ^ ((v126 ^ 0xF1F5DB6C81430FD6) + 0xCD14A6165728E1DLL) ^ ((v126 ^ 0x80D4AEFE613B7A4) - 0xAD6241DFDDDC991) ^ ((v126 ^ 0x7FDE7CFFFF775FD8) - 0x7D05120DE4B921ECLL)) >> 32) ^ 0x2DB6EF2);
  v128 = v127 + (v127 >> 16) + ((v127 + (v127 >> 16)) >> 8);
  v129 = v121 ^ (v128 + v67);
  v130 = v94 > 0xF711280C;
  if (v94 < 0xF711280B)
  {
    v130 = 1;
  }

  return (*(STACK[0x3C8] + 8 * ((29 * !v130) ^ v62)))(v94 < 0xF711280B, v129, v96, v94, a1, 4145096715, 0xFD24910DE43181CBLL, v125 ^ (v128 + 965694590), a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_1DAF26F14(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (a3 + 565884917) & 0xDE4547F9;
  LODWORD(STACK[0x328]) = LODWORD(STACK[0x280]) ^ 0xC94ABE28;
  v100 = LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x340]);
  v102 = (16843009 * a70) ^ LODWORD(STACK[0x290]) ^ 0x84848484;
  v101 = LODWORD(STACK[0x390]) ^ 0x54DC8DAA;
  v74 = (((LODWORD(STACK[0x3B4]) ^ 0xF751A025) + 577662970) ^ ((LODWORD(STACK[0x3B4]) ^ 0xCF06AB69) + 439968950) ^ ((LODWORD(STACK[0x3B4]) ^ v73 ^ 0x3DF60162) - 389427568)) + 8314883;
  v75 = v74 < 0xD11DA5C7;
  v76 = v71 < 0x55860E6;
  v77 = 0x6B512F49E9CDF54FLL * (*(STACK[0x3C0] + 8 * ((v71 | (v76 << 32)) + 0x3824F8884E3D0C1 + ((v73 - 157493946) & 0x9632ACB ^ 0x1C7DB07775C3CE1ALL))) ^ 0x8A8A8A8A8A8A8A8ALL);
  v78 = (v71 | (v76 << 32)) + 0x8606EC372FB0618 + (((v77 ^ v70 ^ 0xADD3A9ABFFB7C74ALL) - 0x753239DA88A55301) ^ ((v77 ^ v70 ^ 0x753FBF67626650E3) + 0x5221D0E9EA8B3B58) ^ ((v77 ^ v70 ^ 0xD8EC16CC9DD197A9) - 0xD86BDEAC303E2));
  v79 = v78 - 0x2F7EDE520140D2B3 + (((((v78 ^ 0x699755F7E1AA52EELL) - 0x46E98BA5E0EA805DLL) ^ v78 ^ ((v78 ^ 0xA70048E9EBBC53C8) + 0x7781694415037E85) ^ ((v78 ^ 0x1B161DB8E3A83C0ALL) - 0x3468C3EAE2E8EEB9) ^ ((v78 ^ 0xFAFFDEF4E8FEEF9CLL) + 0x2A7EFF591641C2D4)) >> 32) ^ 0x2F7EDE52);
  v80 = v79 + (v79 >> 16) + ((v79 + (v79 >> 16)) >> 8);
  v81 = (v80 + v72) ^ a2;
  v82 = (v71 | (v76 << 32)) + 0x7E516E02A76A1969 + ((((v80 - 0x6D4C1E1C670AB82) ^ v77 ^ 0xD040F5DF8C955381) + 0x4D1EBC4F70609DB3) ^ (((v80 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x2B0FA76501D8133) - 0x60114C195317B0FFLL) ^ (((v80 - 0x6D4C1E1C670AB82) ^ v77 ^ 0xD2F00FA9DC88D2B2) + 0x4FAE4639207D1C82));
  v83 = v82 - 0x1BAFB793A9B84883 + (((((v82 ^ 0xD6C5FB97CCCEF3E7) + 0x3295B3FB9A89449CLL) ^ v82 ^ ((v82 ^ 0x7F4D8B6C3FCB0CA3) - 0x64E23CFF96734420) ^ ((v82 ^ 0x4C5031978642B23ALL) - 0x57FF86042FFAFAB9) ^ ((v82 ^ 0xFE77F6FFDCFF05FCLL) + 0x1A27BE938AB8B282)) >> 32) ^ 0x1BAFB793);
  v84 = v83 + (v83 >> 16) + ((v83 + (v83 >> 16)) >> 8);
  v85 = v81 ^ (v84 + v72);
  v86 = (v71 | (v76 << 32)) - 0x7A1554479EA82237 + ((((v84 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x380198034E7B0E6DLL) - 0x44C02C3DE04250A2) ^ (((v84 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x64207062F27E986ELL) - 0x18E1C45C5C47C6A1) ^ (((v84 - 0x6D4C1E1C670AB82) ^ v77 ^ 0x5C21E861BC059603) - 0x20E05C5F123CC8CCLL));
  v87 = (v86 ^ 0xF6D76E4707C41E15) & (2 * (v86 & 0xF6D7088647892020)) ^ v86 & 0xF6D7088647892020;
  v88 = ((2 * (v86 ^ 0x93716F4F06D65E15)) ^ 0xCB4CCF9282BEFC6ALL) & (v86 ^ 0x93716F4F06D65E15) ^ (2 * (v86 ^ 0x93716F4F06D65E15)) & 0x65A667C9415F7E34;
  v89 = v88 ^ 0x24A2204941410215;
  v90 = (v88 ^ 0x41064640410C0214) & (4 * v87) ^ v87;
  v91 = ((4 * v89) ^ 0x96999F25057DF8D4) & v89 ^ (4 * v89) & 0x65A667C9415F7E34;
  v92 = (v91 ^ 0x4800701015D7800) & (16 * v90) ^ v90;
  v93 = ((16 * (v91 ^ 0x612660C840020621)) ^ 0x5A667C9415F7E350) & (v91 ^ 0x612660C840020621) ^ (16 * (v91 ^ 0x612660C840020621)) & 0x65A667C9415F7E30;
  v94 = (v93 ^ 0x4026648001576200) & (v92 << 8) ^ v92;
  v95 = (((v93 ^ 0x2580034940081C25) << 8) ^ 0xA667C9415F7E3500) & (v93 ^ 0x2580034940081C25) ^ ((v93 ^ 0x2580034940081C25) << 8) & 0x65A667C9415F7E00;
  v96 = v94 ^ 0x65A667C9415F7E35 ^ (v95 ^ 0x24264141415E0000) & (v94 << 16);
  v97 = v86 - 0x928F779B876DFE0 + (((v86 ^ (2 * ((v96 << 32) & 0x65A667C900000000 ^ v96 ^ ((v96 << 32) ^ 0x415F7E3500000000) & (((v95 ^ 0x4180268800014A35) << 16) & 0x65A667C900000000 ^ 0x26268000000000 ^ (((v95 ^ 0x4180268800014A35) << 16) ^ 0x67C9415F00000000) & (v95 ^ 0x4180268800014A35))))) >> 32) ^ 0xBF970B16);
  v98 = v85 ^ (v97 + (v97 >> 16) + ((v97 + (v97 >> 16)) >> 8) + v72);
  if (v75 == v71 - 876264222 < 0xD11DA5C7)
  {
    v75 = v74 > v71 - 876264222;
  }

  return (*(STACK[0x3C8] + 8 * ((115 * v75) ^ v73)))(0x415F7E3500000000, v98, 0x26268000000000, 3214347030, a5, 3418703074);
}

uint64_t sub_1DAF276CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v72 ^ 0x40;
  v83 = a72 - (LODWORD(STACK[0x358]) + LODWORD(STACK[0x308])) - 1023109288;
  v74 = STACK[0x390] & 0xFFFFFFF8;
  if (((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 13) + 6) & 0xF)) + 11) & 0xF)) + 9) & 0xF)) + 9) & 0xE) != 0)
  {
    v75 = (*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 13) + 6) & 0xF)) + 11) & 0xF)) + 9) & 0xF)) + 9) & 0xF;
  }

  else
  {
    v75 = 1;
  }

  v76 = STACK[0x3C0];
  v77 = -947166359 * *STACK[0x3B8];
  v78 = ((v77 ^ 0xEF35161F) - 1135268382 - ((v77 ^ 0xEF35161F) >> 16) + (((v77 ^ 0xEF35161F) - ((v77 ^ 0xEF35161F) >> 16)) >> 8)) ^ v77;
  v79 = (v78 - HIWORD(v78)) >> 8;
  v80 = (v78 - 1135268382 - HIWORD(v78) + ((v78 - HIWORD(v78)) >> 8)) ^ v77;
  v81 = *(STACK[0x3C8] + 8 * (v73 | ((v75 != 1) << 6)));
  HIDWORD(a48) = LODWORD(STACK[0x290]) ^ 0x7E15AE58;
  return v81(v81, 0, v80, (v80 - HIWORD(v80)) >> 8, a5, 3159698914, v79, -1135268382, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_1DAF27A20@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X4>, int a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v46 = LODWORD(STACK[0x254]) ^ 0xCA0F3304;
  v39 = a4 + v36 + a2 + ((a2 + a1 - ((a2 + a1) >> 16)) >> 8) - ((a2 + a1) >> 16) - 1;
  v40 = v37;
  v41 = -947166359 * *(v37 + a5);
  v42 = (a5 - 1135268382 + (v41 ^ v39) - ((a5 + (v41 ^ v39)) >> (v35 + 13)) + (((v41 ^ v39) + a5 - ((a5 + (v41 ^ v39)) >> (v35 + 13))) >> 8)) ^ v41;
  v43 = (a5 - 1135268382 + v42 - ((v42 + a5) >> 16) + ((v42 + a5 - ((v42 + a5) >> 16)) >> 8)) ^ v41;
  v44 = *(v38 + 8 * ((46 * (a5 != 15)) ^ (v35 + 11)));
  return v44((v35 + 577004884), v40, -567634191, -1135268382, a3 - 1, a5, a5 - 1135268382 + v43 - ((v43 + a5) >> 16) + ((v43 + a5 - ((v43 + a5) >> 16)) >> 8), v44, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1DAF28BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = (v73 + 18) | 0x20;
  LODWORD(STACK[0x200]) = (LODWORD(STACK[0x200]) ^ 0x93) & a69;
  LODWORD(a49) = a71 + LODWORD(STACK[0x358]);
  HIDWORD(v122) = 1635098713 * a37;
  v123 = a68 + LODWORD(STACK[0x2BC]);
  LODWORD(v122) = a70 ^ 0x97A074D8 ^ LODWORD(STACK[0x340]) ^ v76;
  LODWORD(STACK[0x2BC]) = LODWORD(STACK[0x2AC]) + LODWORD(STACK[0x2E8]);
  LODWORD(STACK[0x324]) = LODWORD(STACK[0x324]) - HIDWORD(a48) + HIDWORD(a41);
  LODWORD(STACK[0x2E8]) = 871393671 * a38;
  v77 = (((LODWORD(STACK[0x3B4]) ^ 0x4F7CD13E) - 1706877213) ^ ((LODWORD(STACK[0x3B4]) ^ 0xCDC8306F) + 418906036) ^ ((LODWORD(STACK[0x3B4]) ^ 0x8715EB4E) + 1378493587)) + 719883958;
  v78 = v77 < 0xFB87547A;
  v79 = v72 < 0x6764713A;
  v80 = (v72 | (v79 << 32)) + 0x2EAA89862C5E9335;
  v81 = 0x6B512F49E9CDF54FLL * (v76 ^ 0x8A8A8A8A8A8A8ABELL ^ *(STACK[0x3C0] + 8 * v80 - 0x75544C349E182378));
  v82 = (v72 | (v79 << 32)) + 0x1C4BA1802A090622 + (((v81 ^ v74 ^ 0x39DDF14E17C3DD14) + 0x692E00978D49F0A9) ^ ((v81 ^ v74 ^ 0xC92CA0032955CAFALL) - 0x6620AE254C2018B9) ^ ((v81 ^ v74 ^ 0xF0F1514D3E9617EELL) - 0x5FFD5F6B5BE3C5ADLL));
  v83 = v82 - 0x6D3F935A2BF7A519 + (((((v82 ^ 0xDBDFB64B20F42556) + 0x491FDAEEF4FC7FB1) ^ v82 ^ ((v82 ^ 0x7551A88E1F548621) - 0x186E3BD434A32338) ^ ((v82 ^ 0xB26E6278EA809D90) + 0x20AE0EDD3E88C777) ^ ((v82 ^ 0x71DFEFE7FED79BFELL) - 0x1CE07CBDD5203EE7)) >> 32) ^ 0x6D3F935A);
  v84 = v83 + (v83 >> 16) + ((v83 + (v83 >> 16)) >> 8);
  v85 = v75 & (v84 >> 2) ^ v84 ^ a7;
  v86 = v84 - 0x6D4C1E1C670AB82;
  LODWORD(v84) = v75 & ((v84 + 965694590) >> 2) ^ (v84 + 965694590) ^ a8;
  v87 = v86 ^ v81;
  v88 = (v80 ^ 0xC335543C6FBCFB41) & (2 * (v80 & 0x96C3CFB91)) ^ v80 & 0x96C3CFB91;
  v89 = ((2 * (v80 ^ 0xC335542E3FC42D61)) ^ 0x248044AEA7F1ADE0) & (v80 ^ 0xC335542E3FC42D61) ^ (2 * (v80 ^ 0xC335542E3FC42D61)) & 0x1220225753F8D6F0;
  v90 = v89 ^ 0x1220225150085210;
  v91 = (v89 ^ 0x601F084C0) & (4 * v88) ^ v88;
  v92 = ((4 * v90) ^ 0x4980895D4FE35BC0) & v90 ^ (4 * v90) & 0x1260225753F8D6F0;
  v93 = (v92 ^ 0x5543E052C0) & (16 * v91) ^ v91;
  v94 = ((16 * (v92 ^ 0x1260220210188430)) ^ 0x260225753F8D6F00) & (v92 ^ 0x1260220210188430) ^ (16 * (v92 ^ 0x1260220210188430)) & 0x1260225753F8D6F0;
  v95 = (v94 ^ 0x200205513884600) & (v93 << 8) ^ v93;
  v96 = (((v94 ^ 0x10600202407090F0) << 8) ^ 0x60225753F8D6F000) & (v94 ^ 0x10600202407090F0) ^ ((v94 ^ 0x10600202407090F0) << 8) & 0x1260225753F8D600;
  v97 = v95 ^ 0x1260225753F8D6F0 ^ (v96 ^ 0x20025350D00000) & (v95 << 16);
  v98 = (v97 << 32) & 0x1260225700000000 ^ v97 ^ ((v97 << 32) ^ 0x53F8D6F000000000) & (((v96 ^ 0x12402004032806F0) << 16) & 0x1260225700000000 ^ 0x1020200700000000 ^ (((v96 ^ 0x12402004032806F0) << 16) ^ 0x225753F800000000) & (v96 ^ 0x12402004032806F0));
  v99 = ((v80 ^ 0x658DC7DE6BA3C4E1) - 0x4B274E58F860C08ELL) ^ v80 ^ ((v80 ^ 0xB5BC33EFADCFB984) + 0x64E94596C1F34215) ^ ((v80 ^ 0x81C6104CA8518E21) + 0x50936635C46D75B2) ^ ((v80 ^ 0x7F5D6DFBFDFEF72BLL) - 0x51F7E47D6E3DF344);
  v100 = (v80 ^ v87 ^ (2 * v98) ^ 0xD1553677CBCD5671) + ((2 * ((v87 ^ 0x3CBA8216D97D930FLL) & (v99 ^ 0x2EAA898693C3046FLL) ^ v99 & 0x3CBA8216D97D930FLL)) ^ 0x5955000D2282001ELL);
  v101 = v100 + HIDWORD(v100) + ((v100 + HIDWORD(v100)) >> 16);
  v102 = v101 + (v101 >> 8);
  v103 = v85 ^ v75 & (v102 >> 2) ^ v102;
  v102 -= 0x6D4C1E1C670AB82;
  v104 = v75 & (v102 >> 2) ^ v102;
  v105 = v80 - 0x57FA1F7AE809E106 + (((v102 ^ v81 ^ 0x3A093BD09D4EB499) + 0xE1064099DDF9D4) ^ ((v102 ^ v81 ^ 0xE2CFC65DC3F403DELL) - 0x27D804323898B16BLL) ^ ((v102 ^ v81 ^ 0xD8C6FD8D5EBAB747) - 0x1DD13FE2A5D605F2));
  v106 = (v105 ^ 0xCD6717640FBB2E2FLL) & (2 * (v105 & 0xEE6758644FB38F4CLL)) ^ v105 & 0xEE6758644FB38F4CLL;
  v107 = ((2 * (v105 ^ 0xD12D07A417DB302FLL)) ^ 0x7E94BF80B0D17EC6) & (v105 ^ 0xD12D07A417DB302FLL) ^ (2 * (v105 ^ 0xD12D07A417DB302FLL)) & 0x3F4A5FC05868BF62;
  v108 = v107 ^ 0x14A404048288121;
  v109 = (v107 ^ 0x3A4003C01060BE40) & (4 * v106) ^ v106;
  v110 = ((4 * v108) ^ 0xFD297F0161A2FD8CLL) & v108 ^ (4 * v108) & 0x3F4A5FC05868BF60;
  v111 = (v110 ^ 0x3D085F004020BD00) & (16 * v109) ^ v109;
  v112 = ((16 * (v110 ^ 0x24200C018480263)) ^ 0xF4A5FC05868BF630) & (v110 ^ 0x24200C018480263) ^ (16 * (v110 ^ 0x24200C018480263)) & 0x3F4A5FC05868BF60;
  v113 = (v112 ^ 0x34005C000008B600) & (v111 << 8) ^ v111;
  v114 = (((v112 ^ 0xB4A03C058600943) << 8) ^ 0x4A5FC05868BF6300) & (v112 ^ 0xB4A03C058600943) ^ ((v112 ^ 0xB4A03C058600943) << 8) & 0x3F4A5FC05868BF00;
  v115 = v113 ^ 0x3F4A5FC05868BF63 ^ (v114 ^ 0xA4A404048280000) & (v113 << 16);
  v116 = v105 - 0x1198A79BB04C70B4 + (((v105 ^ (2 * ((v115 << 32) & 0x3F4A5FC000000000 ^ v115 ^ ((v115 << 32) ^ 0x5868BF6300000000) & (((v114 ^ 0x35001F8010409C63) << 16) & 0x3F4A5FC000000000 ^ 0x200A078000000000 ^ (((v114 ^ 0x35001F8010409C63) << 16) ^ 0x5FC0586800000000) & (v114 ^ 0x35001F8010409C63))))) >> 32) ^ 0xA063D964);
  v117 = v116 + (v116 >> 16) + ((v116 + (v116 >> 16)) >> 8);
  v118 = v103 ^ v75 & (v117 >> 2) ^ v117;
  v119 = v84 ^ v104;
  if (v78 == v72 - 1809652927 < 0xFB87547A)
  {
    v78 = v72 - 1809652927 < v77;
  }

  v120 = v75 & ((v117 + 965694590) >> 2) ^ (v117 + 965694590);
  HIDWORD(a41) = a72 ^ 0xCF0F7F0D;
  return (*(STACK[0x3C8] + 8 * ((120 * v78) ^ v76)))(v117, v77, a3, v120, 0x1260225700000000, 0x3CBA8216D97D930FLL, v118, v119 ^ v120, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v122, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1DAF295FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x204]) ^= a66 ^ LODWORD(STACK[0x200]);
  HIDWORD(a47) = HIDWORD(a36) + LODWORD(STACK[0x304]);
  v106 = LODWORD(STACK[0x330]) + a69 + HIDWORD(a37) + LODWORD(STACK[0x358]) + a36 + 1;
  v72 = LODWORD(STACK[0x2CC]) ^ HIDWORD(a44);
  v73 = a1 - 0x369BE84673CB3440 - ((a1 - 0x369BE84673CB3440) >> 27) + ((a1 - 0x369BE84673CB3440 - ((a1 - 0x369BE84673CB3440) >> 27)) >> 13);
  v74 = v73 + (v73 >> 4);
  v75 = (v74 ^ 0xADAC748FBD04EE8) - ((v74 ^ 0xADAC748FBD04EE8) >> 28) + (((v74 ^ 0xADAC748FBD04EE8) - ((v74 ^ 0xADAC748FBD04EE8) >> 28)) >> 9);
  v76 = v75 - (v75 >> 4);
  v77 = v76 - 0x5C54758B833A97B6 + ((v76 - 0x5C54758B833A97B6) >> 24) + ((v76 - 0x5C54758B833A97B6 + ((v76 - 0x5C54758B833A97B6) >> 24)) >> 15);
  v78 = v77 - (v77 >> 3) - 0x559699A1ED7B6348 - ((v77 - (v77 >> 3) - 0x559699A1ED7B6348) >> 29) + ((v77 - (v77 >> 3) - 0x559699A1ED7B6348 - ((v77 - (v77 >> 3) - 0x559699A1ED7B6348) >> 29)) >> 9);
  v79 = v78 - (v78 >> 2);
  v80 = v79 + 0x146ED71D74A08A22 + ((v79 + 0x146ED71D74A08A22) >> 28) + ((v79 + 0x146ED71D74A08A22 + ((v79 + 0x146ED71D74A08A22) >> 28)) >> 8);
  v81 = v80 + (v80 >> 4);
  v82 = v81 - 0x3470DD8D9748A9B6 - ((v81 - 0x3470DD8D9748A9B6) >> 28) + ((v81 - 0x3470DD8D9748A9B6 - ((v81 - 0x3470DD8D9748A9B6) >> 28)) >> 8);
  v83 = v82 + (v82 >> 4) - 0x67E2EC43689F95D3 - ((v82 + (v82 >> 4) - 0x67E2EC43689F95D3) >> 29) - ((v82 + (v82 >> 4) - 0x67E2EC43689F95D3 - ((v82 + (v82 >> 4) - 0x67E2EC43689F95D3) >> 29)) >> 15);
  v84 = v83 - (v83 >> 3);
  v85 = v71 ^ v76;
  LODWORD(v76) = v81 ^ v76;
  LODWORD(v81) = v85 ^ v81;
  v86 = (v84 ^ 0x234BDBC597D1E217) + ((v84 ^ 0x234BDBC597D1E217) >> 31) - (((v84 ^ 0x234BDBC597D1E217) + ((v84 ^ 0x234BDBC597D1E217) >> 31)) >> 15);
  v87 = v81 ^ (v76 >> 2) & 0x9A0BBEF ^ 0x70EE02CF ^ v70 & ((v86 - (v86 >> 4)) >> 2) ^ (v86 - (v86 >> 4));
  HIDWORD(a37) = 4 * LODWORD(STACK[0x2A8]);
  LODWORD(STACK[0x2BC]) -= a65;
  HIDWORD(a44) = v72;
  LODWORD(STACK[0x330]) = v72 ^ 0xDEF9C00A;
  v88 = a7 ^ v74 ^ v79 ^ v84 ^ 0x1C2B6224 ^ ((v79 ^ v74 ^ v84) >> 2) & 0x9A0BBEF;
  if (((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 3) + 11) & 0xF)) + 4) & 0xF)) + 5) & 0xF)) + 4) & 0xE) != 0)
  {
    v89 = (*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + ((*(STACK[0x3B8] + 3) + 11) & 0xF)) + 4) & 0xF)) + 5) & 0xF)) + 4) & 0xF;
  }

  else
  {
    v89 = 1;
  }

  v90 = -947166359 * *STACK[0x3B8];
  v91 = (v90 ^ 0xEF35161F) >> 16;
  v92 = (v90 ^ 0xEF35161F) - v91 + (((v90 ^ 0xEF35161F) - v91) >> 8);
  v93 = (v90 ^ 0xEF35161F) - 567634191 - v91 + (((v90 ^ 0xEF35161F) - v91) >> 8);
  v94 = (v90 ^ 0xEF35161F) - 1135268382 - v91 + (((v90 ^ 0xEF35161F) - v91) >> 8);
  v95 = (v94 ^ v90) >> 16;
  v96 = (v94 ^ v90) - v95;
  v97 = v95 - (v94 ^ v90) - (v96 >> 8);
  v98 = (v94 ^ v90) - 567634191 - v95 + (((v94 ^ v90) - v95) >> 8);
  v99 = (v94 ^ v90) - 1135268382 - v95 + (((v94 ^ v90) - v95) >> 8);
  v100 = v99 ^ v90;
  v101 = v92 ^ v88 ^ (v92 >> (((v69 + 65) | 5) - 85)) & 0x9A0BBEF;
  v102 = HIWORD(v100);
  v103 = (v100 - HIWORD(v100)) >> 8;
  v104 = v100 - 1135268382 - HIWORD(v100) + v103;
  return (*(STACK[0x3C8] + 8 * ((15 * (v89 == 1)) ^ v69)))(v104, (v104 >> 2) & 0x9A0BBEF, a3, v99, v87 ^ 0x9A0BBEF ^ v93 ^ (v93 >> 2) & 0x9A0BBEF ^ v98 ^ ((v97 + 567634190) >> 2) & 0x9A0BBEF ^ (v100 - 567634191 - v102 + v103) ^ ((v100 - 567634191 - v102 + v103) >> 2) & 0x9A0BBEF, v100 - 567634191 - v102 + v103, v101 ^ (v96 + (v96 >> 8)) ^ ((v96 + (v96 >> 8)) >> 2) & 0x9A0BBEF ^ (v100 - v102 + ((v100 - v102) >> 8)) ^ ((v100 - v102 + ((v100 - v102) >> 8)) >> 2) & 0x9A0BBEF, v103, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_1DAF29A2C@<X0>(uint64_t a1@<X2>, int a2@<W4>, int a3@<W6>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{
  LODWORD(STACK[0x200]) = a62 ^ v69;
  LODWORD(STACK[0x2CC]) = LODWORD(STACK[0x2A0]) ^ 0x9E82FEA0;
  v89 = a34 + LODWORD(STACK[0x2E8]);
  v70 = v68 + v64 - ((v64 + v62) >> 16) + v65 + ((v64 + v62 - ((v64 + v62) >> 16)) >> 8) - 1;
  v71 = -947166359 * *(STACK[0x3B8] + v63);
  v72 = (v71 ^ v70) + v63;
  v73 = HIWORD(v72);
  v74 = (v72 - HIWORD(v72)) >> 8;
  v75 = v72 - HIWORD(v72) + v74;
  v76 = v63 - 567634191 + (v71 ^ v70) - HIWORD(v72) + v74;
  v77 = v63 - 1135268382 + (v71 ^ v70) - v73 + v74;
  v78 = (v77 ^ v71) + v63;
  v79 = v63 - 567634191 + (v77 ^ v71) - HIWORD(v78);
  LODWORD(v74) = v63 - 1135268382 + (v77 ^ v71) - HIWORD(v78);
  v80 = (v78 - HIWORD(v78)) >> 8;
  v81 = v78 - HIWORD(v78) + v80;
  v82 = v79 + v80;
  LODWORD(v74) = v74 + v80;
  v83 = v74 ^ v71;
  v84 = v67 ^ v77 ^ v66 & (v77 >> 2) ^ v74 ^ 0xBC1FBCD1 ^ v66 & (v74 >> 2);
  v85 = (v83 + v63) >> 16;
  v86 = (v83 + v63 - v85) >> 8;
  v87 = v63 + v83 - v85 + v86;
  return (*(STACK[0x3C8] + 8 * ((56 * (v63 == 15)) ^ (a4 - 577004865))))((v63 - 1135268382 + v83 - v85 + v86) ^ ((v84 & 0xFFEE872 ^ 0xDC27D72D) & (v84 & 0xF001178D ^ 0x8FFEFAFF) | v84 & 0x20000080) ^ 0x30396EFC, -460898638, a1, v83, v76 ^ a2 ^ v66 & (v76 >> 2) ^ v82 ^ v66 & (v82 >> 2) ^ (v63 - 567634191 + v83 - v85 + v86) ^ v66 & ((v63 - 567634191 + v83 - v85 + v86) >> 2), 809070332, v75 ^ a3 ^ (v75 >> (5 * (a4 ^ 0x55) - 8)) & v66 ^ v81 ^ v66 & (v81 >> 2) ^ v87 ^ v66 & (v87 >> 2), v87, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_1DAF29CD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = a4 + v71;
  v78 = (a4 + v71) >> 16;
  v79 = v72 + a4 + ((v77 - v78) >> 8) - v78 + ((a4 + ((v77 - v78) >> 8) + v70 - v78) >> 11) + v74 + ((a4 + ((v77 - v78) >> 8) + v70 + ((a4 + ((v77 - v78) >> 8) + v70 - v78) >> 11) - v78) >> 4);
  v80 = (v79 ^ 0xB6252153) - ((v79 ^ 0xB6252153) >> 9) + (((v79 ^ 0xB6252153) - ((v79 ^ 0xB6252153) >> 9)) >> 3);
  LODWORD(STACK[0x304]) = v80;
  v81 = v80 - 1726457715 - ((v80 - 1726457715) >> 10) - ((v80 - 1726457715 - ((v80 - 1726457715) >> 10)) >> 8);
  v82 = v81 - 1999805803 + ((v81 - 1999805803) >> 8) - ((v81 - 1999805803 + ((v81 - 1999805803) >> 8)) >> 6);
  v83 = (v82 ^ 0xF28203A6) - ((v82 ^ 0xF28203A6) >> 14) + (((v82 ^ 0xF28203A6) - ((v82 ^ 0xF28203A6) >> 14)) >> 1);
  LODWORD(STACK[0x2E8]) = v83;
  v84 = v83 - 1158522589 + ((v83 - 1158522589) >> 11) - ((v83 - 1158522589 + ((v83 - 1158522589) >> 11)) >> 2);
  v85 = (v84 ^ 0xCB745339) + ((v84 ^ 0xCB745339) >> 8) + (((v84 ^ 0xCB745339) + ((v84 ^ 0xCB745339) >> 8)) >> 5);
  v86 = (v85 ^ 0xB4E1846A) - ((v85 ^ 0xB4E1846A) >> 12) - (((v85 ^ 0xB4E1846A) - ((v85 ^ 0xB4E1846A) >> 12)) >> 6);
  v87 = LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x32C]);
  v88 = ((*(STACK[0x3C0] + 8 * (((*(STACK[0x3C0] + 8 * (((*(STACK[0x3C0] + 8 * (((*(STACK[0x3C0] + 8 * (0x84FF5F38 % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2439277448u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2265876698u) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 803491171) % STACK[0x3A8])) ^ 0x8A8A8A8A8A8A8A8ALL) + 2306454608u) % STACK[0x3A8];
  v95 = a49 + LODWORD(STACK[0x308]);
  v89 = LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x39C]);
  LODWORD(STACK[0x2AC]) ^= v75 & (LODWORD(STACK[0x368]) >> 2) ^ LODWORD(STACK[0x368]) ^ a68 ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x2A8]) ^ v87 ^ a38 ^ v75 & (v87 >> 2) ^ v89 ^ a43 ^ a40 ^ v75 & ((a45 + a69) >> 2) ^ v75 & (((a45 + a69) ^ v89) >> 2) ^ a42 ^ a41 ^ a70 ^ a7 ^ v76 ^ v79 ^ v81 ^ v82 ^ v84 ^ v85 ^ v75 & ((v82 ^ v79 ^ v85) >> 2) ^ (v86 + 1674369025 + ((v86 + 1674369025) >> 8) - ((v86 + 1674369025 + ((v86 + 1674369025) >> 8)) >> 5)) ^ v75 & ((v84 ^ v81 ^ (v86 + 1674369025 + ((v86 + 1674369025) >> 8) - ((v86 + 1674369025 + ((v86 + 1674369025) >> 8)) >> 5))) >> 2);
  v90 = LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x2E8]);
  LODWORD(STACK[0x3A8]) = v86;
  LODWORD(STACK[0x390]) = (v90 ^ v86) >> 2;
  v91 = ((((v88 - ((2 * v88) & 0xE853524) - 415065454) ^ 0x42312DAF) - 470071950) ^ (((v88 - ((2 * v88) & 0xE853524) - 415065454) ^ 0x97CD95C3) + 906493214) ^ (((v88 - ((2 * v88) & 0xE853524) - 415065454) ^ 0x32BE22FE) - 1821095391)) - 65474921;
  v92 = 0x6B512F49E9CDF54FLL * (((v73 + 2) | 1u) ^ 0x8A8A8A8A8A8A8A87 ^ *STACK[0x3C0]);
  v93 = v91 < 0x42A1E0E4 || v91 > 0x42A1E0E5;
  return (*(STACK[0x3C8] + 8 * (!v93 | (4 * !v93) | v73)))(v91 > 0x42A1E0E5);
}

uint64_t sub_1DAF2A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v61 = (v56 + 24);
  LODWORD(STACK[0x3A8]) ^= LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x354]) ^ a5 ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x2E8]) ^ STACK[0x390] & v59;
  v62 = (((LODWORD(STACK[0x3B4]) ^ 0xCDF40830) + 416008173) ^ ((LODWORD(STACK[0x3B4]) ^ 0xCDFDE954) + 415377033) ^ ((LODWORD(STACK[0x3B4]) ^ 0x5A8EB7B) - 795401048)) + 2048878486;
  v63 = v62 < 0x4ABE2D5A;
  v64 = 0x6B512F49E9CDF54FLL * (*(STACK[0x3C0] + 8 * ((v60 | ((v60 < 0x3ED344D6) << 32)) + 0x681FE467209177DDLL) - 0x40FF233AFB25E598) ^ 0x8A8A8A8A8A8A8A8ALL);
  v65 = (v60 | ((v60 < 0x3ED344D6) << 32)) - 0x5026DB8BB01787E0 + (((((v56 + 55) | 9u) ^ 0xD84DA6AF5D8DCA1ELL ^ v64 ^ v58) - 0x774D22F9F0D47A12) ^ ((v64 ^ v58 ^ 0x80D29CAF46F2C7C6) - 0x2FD218F9EBAB7787) ^ ((v64 ^ v58 ^ 0x589F3A001B7F0D95) + 0x86041A949D9422CLL));
  v66 = v65 - 0xD8A01DE1620CB5 + (((((v65 ^ 0xD918ED12F8C53CF8) + 0x263FB2F0E658CFB3) ^ v65 ^ ((v65 ^ 0x6047991D05C10032) - 0x609F3900E4A30C87) ^ ((v65 ^ 0xD67E2B6BC5BDD7A0) + 0x29597489DB2024EBLL) ^ ((v65 ^ 0x6FF9FF79D9DBE7DELL) - 0x6F215F6438B9EB6ALL)) >> 32) ^ 0xD8A01D);
  v67 = v66 + (v66 >> 16) + ((v66 + (v66 >> 16)) >> 8);
  v68 = v57 & (2 * (v67 + a3)) ^ (v67 + a3) ^ a7;
  v69 = (v60 | ((v60 < 0x3ED344D6) << 32)) - 0x44FED7CE76D60C24 + ((((v67 - 0x6D4C1E1C670AB82) ^ v64 ^ 0x33E293252FC18340) - 0x4117901DB88F6D5BLL) ^ (((v67 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xC774143ED201418FLL) + 0x4A7EE8F9BAB0506CLL) ^ (((v67 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xF496871BFDC0C2CFLL) + 0x799C7BDC9571D32CLL));
  v70 = (v69 ^ 0x27F39306CF452041) & (2 * (v69 & 0xB7F3DB06CF51B569)) ^ v69 & 0xB7F3DB06CF51B569;
  v71 = ((2 * (v69 ^ 0x6F94310E5DE44A51)) ^ 0xB0CFD411256BFE70) & (v69 ^ 0x6F94310E5DE44A51) ^ (2 * (v69 ^ 0x6F94310E5DE44A51)) & 0xD867EA0892B5FF38;
  v72 = v71 ^ 0x48202A0892940108;
  v73 = (v71 ^ 0x9067C2008011FE20) & (4 * v70) ^ v70;
  v74 = ((4 * v72) ^ 0x619FA8224AD7FCE0) & v72 ^ (4 * v72) & 0xD867EA0892B5FF38;
  v75 = (v74 ^ 0x4007A8000295FC20) & (16 * v73) ^ v73;
  v76 = ((16 * (v74 ^ 0x9860420890200318)) ^ 0x867EA0892B5FF380) & (v74 ^ 0x9860420890200318) ^ (16 * (v74 ^ 0x9860420890200318)) & 0xD867EA0892B5FF30;
  v77 = (v76 ^ 0x8066A0080215F300) & (v75 << 8) ^ v75;
  v78 = (((v76 ^ 0x58014A0090A00C38) << 8) ^ 0x67EA0892B5FF3800) & (v76 ^ 0x58014A0090A00C38) ^ ((v76 ^ 0x58014A0090A00C38) << 8) & 0xD867EA0892B5FF00;
  v79 = v77 ^ 0xD867EA0892B5FF38 ^ (v78 ^ 0x4062080090B50000) & (v77 << 16);
  v80 = v69 - 0x480C24F930AE4A97 + (((v69 ^ (2 * ((v79 << 32) & 0x5867EA0800000000 ^ v79 ^ ((v79 << 32) ^ 0x12B5FF3800000000) & (((v78 ^ 0x9805E2080200C738) << 16) & 0x5867EA0800000000 ^ 0x1067680800000000 ^ (((v78 ^ 0x9805E2080200C738) << 16) ^ 0x6A0892B500000000) & (v78 ^ 0x9805E2080200C738))))) >> 32) ^ 0x2777DB07);
  v81 = v80 + (v80 >> 16) + ((v80 + (v80 >> 16)) >> 8);
  v82 = (v60 | ((v60 < 0x3ED344D6) << 32)) - 0x724617328D4A890DLL + ((((v81 - 0x6D4C1E1C670AB82) ^ v64 ^ 0x793C8BC840FE3154) - 0x46AB9AF03F824BC1) ^ (((v81 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xCACA5073720BD21FLL) + 0xAA2BEB4F2885776) ^ (((v81 - 0x6D4C1E1C670AB82) ^ v64 ^ 0xB3F6DBBB32F5E34BLL) + 0x739E357CB2766622));
  v83 = (v82 ^ 0xB5982460EDF33CC9) & (2 * (v82 & 0xB1DD286ACDF3BECCLL)) ^ v82 & 0xB1DD286ACDF3BECCLL;
  v84 = ((2 * (v82 ^ 0xD5B27421E7327DC9)) ^ 0xC8DEB8965583860ALL) & (v82 ^ 0xD5B27421E7327DC9) ^ (2 * (v82 ^ 0xD5B27421E7327DC9)) & 0x646F5C4B2AC1C304;
  v85 = v84 ^ 0x242144492A404105;
  v86 = (v84 ^ 0x604C040200818204) & (4 * v83) ^ v83;
  v87 = ((4 * v85) ^ 0x91BD712CAB070C14) & v85 ^ (4 * v85) & 0x646F5C4B2AC1C304;
  v88 = (v87 ^ 0x2D50082A010000) & (16 * v86) ^ v86;
  v89 = ((16 * (v87 ^ 0x64420C4300C0C301)) ^ 0x46F5C4B2AC1C3050) & (v87 ^ 0x64420C4300C0C301) ^ (16 * (v87 ^ 0x64420C4300C0C301)) & 0x646F5C4B2AC1C300;
  v90 = (v89 ^ 0x4465440228000000) & (v88 << 8) ^ v88;
  v91 = (((v89 ^ 0x200A184902C1C305) << 8) ^ 0x6F5C4B2AC1C30500) & (v89 ^ 0x200A184902C1C305) ^ ((v89 ^ 0x200A184902C1C305) << 8) & 0x646F5C4B2AC1C300;
  v92 = v90 ^ 0x646F5C4B2AC1C305 ^ (v91 ^ 0x644C480A00C10000) & (v90 << 16);
  v93 = v82 - 0x4E22D795320C4134 + (((v82 ^ (2 * ((v92 << 32) & 0x646F5C4B00000000 ^ v92 ^ ((v92 << 32) ^ 0x2AC1C30500000000) & (((v91 ^ 0x2314412A00C205) << 16) & 0x646F5C4B00000000 ^ 0x2024540A00000000 ^ (((v91 ^ 0x2314412A00C205) << 16) ^ 0x5C4B2AC100000000) & (v91 ^ 0x2314412A00C205))))) >> 32) ^ 0x398110FE);
  if (v63 == v60 + 199944325 < 0x4ABE2D5A)
  {
    v63 = v62 > v60 + 199944325;
  }

  v95 = *(STACK[0x3C8] + 8 * (v61 | (16 * v63)));
  v94 = v93 + (v93 >> 16) + ((v93 + (v93 >> 16)) >> 8);
  return v95(v95, a2, a3, v62, 0xF92B3E1E398F547ELL, 0x2AC1C30500000000, v68 ^ v57 & (2 * (v81 + a3)) ^ (v81 + a3) ^ v57 & (2 * (v94 + a3)) ^ (v94 + a3), v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1DAF2B174()
{
  LODWORD(STACK[0x2A8]) = LODWORD(STACK[0x2AC]) ^ 0xB44F2234;
  if (((*(STACK[0x3B8] + ((*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 15) + 2) & 0xF)) & 0xF)) + 3) & 0xF)) + 9) & 0xE) != 0)
  {
    v1 = (*(STACK[0x3B8] + ((*(STACK[0x3B8] + (*(STACK[0x3B8] + ((*(STACK[0x3B8] + 15) + 2) & 0xF)) & 0xF)) + 3) & 0xF)) + 9) & 0xF;
  }

  else
  {
    v1 = 1;
  }

  v2 = -947166359 * *STACK[0x3B8];
  return (*(STACK[0x3C8] + 8 * ((103 * (v1 != 1)) ^ (v0 - 35))))();
}

uint64_t sub_1DAF2B508(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x2C4]) ^ 0xEA73F024;
  v6 = -947166359 * *(v4 + v2);
  return (*(v5 + 8 * ((26 * (v2 != 15)) | (v3 - 577004887))))(v2, a2 + 1);
}

uint64_t sub_1DAF2B6EC@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62, uint64_t a63)
{
  v71 = (v70 + a1) >> 16;
  v72 = v66 + v70 + ((v70 + a1 - v71) >> 8) - v71 + ((v70 + ((v70 + a1 - v71) >> 8) + v67 - v71) >> 11) + a2 + ((v70 + ((v70 + a1 - v71) >> 8) + v67 + ((v70 + ((v70 + a1 - v71) >> 8) + v67 - v71) >> 11) - v71) >> 4);
  v73 = (v72 ^ 0xB6252153) - ((v72 ^ 0xB6252153) >> 9) + (((v72 ^ 0xB6252153) - ((v72 ^ 0xB6252153) >> 9)) >> 3);
  v74 = v73 - 1726457715 - ((v73 - 1726457715) >> 10) - ((v73 - 1726457715 - ((v73 - 1726457715) >> 10)) >> 8);
  v75 = v74 - 1999805803 + ((v74 - 1999805803) >> 8) - ((v74 - 1999805803 + ((v74 - 1999805803) >> 8)) >> 6);
  v76 = (v75 ^ 0xF28203A6) - ((v75 >> 14) ^ 0x3CA08) + (((v75 ^ 0xF28203A6) - ((v75 >> 14) ^ 0x3CA08)) >> 1);
  v77 = v76 - 1158522589 + ((v76 - 1158522589) >> 11) - ((v76 - 1158522589 + ((v76 - 1158522589) >> 11)) >> 2);
  v78 = (v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8) + (((v77 ^ 0xCB745339) + ((v77 ^ 0xCB745339) >> 8)) >> 5);
  v79 = (v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12) - (((v78 ^ 0xB4E1846A) - ((v78 ^ 0xB4E1846A) >> 12)) >> 6);
  v80 = v79 + 1674369025 + ((v79 + 1674369025) >> 8) - ((v79 + 1674369025 + ((v79 + 1674369025) >> 8)) >> 5);
  v81 = LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x32C]) ^ 0x7BCDE333 ^ a4 ^ v72 ^ v75 ^ v78 ^ v68 & (2 * (LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x32C]) ^ 0x7BCDE333 ^ v72 ^ v75 ^ v78));
  v82 = LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x3A0]);
  v83 = STACK[0x39C];
  LODWORD(STACK[0x3A0]) = v73;
  LODWORD(STACK[0x394]) = v76;
  LODWORD(STACK[0x36C]) = v79;
  LODWORD(STACK[0x354]) = 2 * (v82 ^ v73 ^ v76 ^ v79);
  LODWORD(a36) = v81;
  LODWORD(STACK[0x3B4]) = LODWORD(STACK[0x30C]) ^ v83 ^ LODWORD(STACK[0x390]) ^ v83 ^ a38 ^ 0x6C910F4C ^ v69 ^ v74 ^ v77 ^ v80 ^ v68 & (2 * (LODWORD(STACK[0x390]) ^ v83 ^ a38 ^ 0x6C910F4C ^ v74 ^ v77 ^ v80));
  v84 = STACK[0x254];
  LODWORD(STACK[0x30C]) = LODWORD(STACK[0x254]) ^ 8;
  LODWORD(a38) = 2 * a61;
  v85 = STACK[0x200];
  LODWORD(STACK[0x308]) = ~LODWORD(STACK[0x200]);
  v86 = v85 & 0x23AB9781;
  v87 = STACK[0x204];
  LODWORD(STACK[0x304]) = LODWORD(STACK[0x204]) ^ 0x90;
  LODWORD(STACK[0x344]);
  v88 = *(*(&off_1E85EE0C0 + v65 - 36) + ((2 * v65) ^ 0x54u) + 28) + 676423364;
  v89 = v88 ^ (((v88 ^ 0xC03FFED8) & STACK[0x310]) >> 1);
  v90 = (v89 ^ 0xE3946959) & STACK[0x308] | v86;
  v91 = (v87 & 0x499398E7 ^ (v89 ^ 0x89AC663F) & STACK[0x304] ^ 0x80) >> LODWORD(STACK[0x340]);
  v92 = (v90 ^ 0x23AB9781) << LODWORD(STACK[0x34C]);
  v93 = (2 * v92) & 0xF4D5551E;
  v94 = 4 * ((a65 ^ (a61 - ((2 * a61) & 0x83) - 63) ^ (((STACK[0x30C] & 0xEC ^ v84 & 0xEC ^ 8) >> LODWORD(STACK[0x348])) | (-115237376 << LODWORD(STACK[0x358])))) ^ 0x55u);
  *(STACK[0x270] + v94) = a39 ^ HIDWORD(a36) ^ (v91 - ((2 * v91) & 0xA1DBA6A8) - 789720236) ^ (v92 - v93 + 2053810831) ^ 0xEF41BB9A;
  v95 = STACK[0x268];
  *(STACK[0x268] + v94) = a39 ^ HIDWORD(a36) ^ 0x45C63D91 ^ (*(*(&off_1E85EE0C0 + v65 - 37) + 188) - 17081);
  v96 = *(STACK[0x3C8] + 8 * v65);
  return v96(v96, v95, 4107621662, v93, a3, &off_1E85EE0C0, v84 & 0xEC, v86, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

void sub_1DAF32F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61)
{
  LODWORD(STACK[0x244]) = a58 ^ (v61 - 10) ^ 0x3E028DD6;
  LODWORD(STACK[0x24C]) = a54 ^ 0xB8C758E3;
  LODWORD(STACK[0x240]) = a56 ^ 0x704CAFE7;
  LODWORD(STACK[0x248]) = a55 ^ 0xE4FD9863;
  v62 = STACK[0x35C];
  v63 = STACK[0x278];
  if (STACK[0x35C])
  {
    v64 = a60;
  }

  else
  {
    v64 = STACK[0x278];
  }

  if (v62)
  {
    a59 = a61;
  }

  if (v62)
  {
    v66 = STACK[0x278];
  }

  if ((v62 & 2) != 0)
  {
    v67 = a59;
  }

  else
  {
    v67 = v64;
  }

  LODWORD(STACK[0x278]) = v67;
  JUMPOUT(0x1DAF30974);
}

void sub_1DAF3301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53)
{
  (*(v53 + 8 * (a53 + 37)))(STACK[0x268]);
  (*(v53 + 8 * (a53 ^ 0x27)))(STACK[0x270]);
  JUMPOUT(0x1DAF1FC24);
}

char *sub_1DAF3305C(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

uint64_t sub_1DAF332B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DAF33380(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF333C0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

id DigestSha256(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = CC_SHA256(v2, v3, md);
  if (v4)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id ECDSASHA256DERToRaw(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 bytes];
  v7 = v2 + [v1 length];
  memset(v8, 0, sizeof(v8));
  v3 = ccder_decode_sequence_tl();
  if (!v3)
  {
    goto LABEL_6;
  }

  if (v3 < v7)
  {
    ccder_decode_tag();
    v4 = ccder_decode_len();
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v3 != v7)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:64];
LABEL_7:

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

unint64_t swapBytes(unint64_t result, uint64_t a2)
{
  v2 = (result + a2 - 1);
  if (v2 > result)
  {
    v3 = result + 1;
    do
    {
      v4 = *(v3 - 1);
      *(v3 - 1) = *v2;
      *v2-- = v4;
    }

    while (v3++ < v2);
  }

  return result;
}

id ECDSASHA256RawToDER(void *a1)
{
  v1 = a1;
  if ([v1 length] != 64)
  {
    goto LABEL_9;
  }

  v2 = [v1 bytes];
  v3 = (v2 + 31);
  v4 = v2 + 1;
  do
  {
    v5 = *(v4 - 1);
    *(v4 - 1) = *v3;
    *v3-- = v5;
    v6 = v4++ >= v3;
  }

  while (!v6);
  v7 = (v2 + 63);
  v8 = v2 + 33;
  do
  {
    v9 = *(v8 - 1);
    *(v8 - 1) = *v7;
    *v7-- = v9;
    v6 = v8++ >= v7;
  }

  while (!v6);
  ccder_sizeof_integer();
  ccder_sizeof_integer();
  v10 = ccder_sizeof();
  if (v10 >= 0x40)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10];
    v13 = v12;
    if (v12)
    {
      [v12 mutableBytes];
      ccder_encode_integer();
      ccder_encode_integer();
      ccder_encode_constructed_tl();
      v11 = [MEMORY[0x1E695DEF0] dataWithData:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

_BYTE *HexToBytes(void *a1)
{
  v1 = a1;
  v9 = 0;
  if (([v1 length] & 1) == 0)
  {
    v2 = malloc_type_malloc([v1 length] >> 1, 0x945D82EFuLL);
    if (!v2)
    {
      goto LABEL_10;
    }

    if (![v1 length])
    {
LABEL_7:
      v2 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v2 length:objc_msgSend(v1 freeWhenDone:{"length") >> 1, 1}];
      goto LABEL_10;
    }

    v3 = 0;
    v4 = v2;
    while (1)
    {
      __str[0] = [v1 characterAtIndex:v3];
      v5 = v3 + 1;
      __str[1] = [v1 characterAtIndex:v5];
      v7 = 0;
      *v4 = strtol(__str, &v7, 16);
      if (v7 != &v9)
      {
        break;
      }

      ++v4;
      v3 = v5 + 1;
      if (v3 >= [v1 length])
      {
        goto LABEL_7;
      }
    }

    free(v2);
  }

  v2 = 0;
LABEL_10:

  return v2;
}

BOOL initBYSetupAssistantNeedsToRun()
{
  if (LoadSetupAssistant_loadPredicate[0] != -1)
  {
    initBYSetupAssistantNeedsToRun_cold_1();
  }

  softLinkBYSetupAssistantNeedsToRun = dlsym(LoadSetupAssistant_frameworkLibrary, "BYSetupAssistantNeedsToRun");
  return softLinkBYSetupAssistantNeedsToRun != 0;
}

void *__LoadSetupAssistant_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  LoadSetupAssistant_frameworkLibrary = result;
  return result;
}

double ODIBindingsDict.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_1DAF3550C(a1, a2, MEMORY[0x1E69E60C8], sub_1DAF35720), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;

    sub_1DAF3523C(v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DAF33CC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1DAF40A84(a1, v7, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DAF40A84(v7, v6, &qword_1ECC0E178, &qword_1DB09FFB0);

  sub_1DAF33DDC(v6, v3, v4);
  return sub_1DAF40AEC(v7, &qword_1ECC0E178, &qword_1DB09FFB0);
}

uint64_t ODIBindingsDict.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAF40A84(a1, v7, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DAF33DDC(v7, a2, a3);
  return sub_1DAF40AEC(a1, &qword_1ECC0E178, &qword_1DB09FFB0);
}

uint64_t sub_1DAF33DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DAF332B8(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1DAF3ADF4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1DAF40AEC(a1, &qword_1ECC0E178, &qword_1DB09FFB0);
    sub_1DB07F73C(a2, a3, v10);

    return sub_1DAF40AEC(v10, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  return result;
}

_OWORD *sub_1DAF33EAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1DAF183D0(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1DAF3AF98(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1DAF40AEC(a1, &qword_1ECC0E370, &qword_1DB0A09B0);
    v8 = *v2;
    v9 = sub_1DAF35340(a2, ODIErrorPropertyKey.rawValue.getter, sub_1DAF357D8);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1DAF3C924(&qword_1ECC0E378, &qword_1DB0A0300);
        v14 = v16;
      }

      sub_1DAF183D0((*(v14 + 56) + 32 * v11), v17);
      sub_1DB07FD5C(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1DAF40AEC(v17, &qword_1ECC0E370, &qword_1DB0A09B0);
  }

  return result;
}

_OWORD *sub_1DAF33FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1DAF183D0(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1DAF3B2BC(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1DAF40AEC(a1, &qword_1ECC0E370, &qword_1DB0A09B0);
    v8 = *v2;
    v9 = sub_1DAF35340(a2, DIPErrorPropertyKey.rawValue.getter, sub_1DAF35CCC);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1DAF3C924(&qword_1ECC0E360, &qword_1DB0A02E8);
        v14 = v16;
      }

      sub_1DAF183D0((*(v14 + 56) + 32 * v11), v17);
      sub_1DB080100(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1DAF40AEC(v17, &qword_1ECC0E370, &qword_1DB0A09B0);
  }

  return result;
}

uint64_t sub_1DAF34124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1DAF3B440(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1DAF3550C(a3, a4, MEMORY[0x1E69E60C8], sub_1DAF35720);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1DAF3CA90();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1DB08060C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1DAF34254(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F0, &qword_1DB0A0278);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DAF40AEC(a1, &qword_1ECC0E2F0, &qword_1DB0A0278);
    sub_1DB07F7E8(a2, v9);
    sub_1DAF407D4(a2);
    return sub_1DAF40AEC(v9, &qword_1ECC0E2F0, &qword_1DB0A0278);
  }

  else
  {
    sub_1DAF40828(a1, v14);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1DAF3B7F4(v14, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1DAF407D4(a2);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1DAF34408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E238, &qword_1DB0A01D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AnyODIKnownBinding(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_1DAF40AEC(a1, &qword_1ECC0E238, &qword_1DB0A01D0);
    sub_1DB07F9AC(a2, a3, v11);

    return sub_1DAF40AEC(v11, &qword_1ECC0E238, &qword_1DB0A01D0);
  }

  else
  {
    sub_1DAF40398(a1, v16);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1DAF3BB0C(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

void (*ODIBindingsDict.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x90uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[16] = a3;
  v7[17] = v3;
  v7[15] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720), (v11 & 1) != 0))
  {
    sub_1DAF3523C(*(v9 + 56) + 40 * v10, v8);
  }

  else
  {
    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
  }

  return sub_1DAF346B4;
}

void sub_1DAF346B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 120);
  if (a2)
  {
    sub_1DAF40A84(*a1, v2 + 40, &qword_1ECC0E178, &qword_1DB09FFB0);
    sub_1DAF40A84(v2 + 40, v2 + 80, &qword_1ECC0E178, &qword_1DB09FFB0);

    sub_1DAF33DDC(v2 + 80, v5, v4);
    sub_1DAF40AEC(v2 + 40, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  else
  {
    sub_1DAF40A84(*a1, v2 + 40, &qword_1ECC0E178, &qword_1DB09FFB0);

    sub_1DAF33DDC(v2 + 40, v5, v4);
  }

  sub_1DAF40AEC(v2, &qword_1ECC0E178, &qword_1DB09FFB0);

  free(v2);
}

double ODIBindingsDict.subscript.getter@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v12 = *a1;
  v5 = BindingsKeys.rawValue.getter();
  if (!*(v4 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = *(v4 + 56) + 40 * v7;

  sub_1DAF3523C(v10, a2);
  return result;
}

double sub_1DAF348A4@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v6 = *a1;
  v5 = v3;
  return ODIBindingsDict.subscript.getter(&v5, a3);
}

uint64_t sub_1DAF348E4(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  sub_1DAF40A84(a1, v9, &qword_1ECC0E178, &qword_1DB09FFB0);
  v8[47] = v3;
  v4 = BindingsKeys.rawValue.getter();
  v6 = v5;
  sub_1DAF40A84(v9, v8, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DAF33DDC(v8, v4, v6);
  return sub_1DAF40AEC(v9, &qword_1ECC0E178, &qword_1DB09FFB0);
}

uint64_t ODIBindingsDict.subscript.setter(uint64_t a1, _BYTE *a2)
{
  v7[47] = *a2;
  v3 = BindingsKeys.rawValue.getter();
  v5 = v4;
  sub_1DAF40A84(a1, v7, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DAF33DDC(v7, v3, v5);
  return sub_1DAF40AEC(a1, &qword_1ECC0E178, &qword_1DB09FFB0);
}

void (*ODIBindingsDict.subscript.modify(uint64_t *a1, char *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  *a1 = v5;
  *(v5 + 120) = v2;
  v6 = *a2;
  *(v5 + 128) = *a2;
  v9 = *v2;
  v8 = v6;
  ODIBindingsDict.subscript.getter(&v8, v5);
  return sub_1DAF34AC8;
}

void sub_1DAF34AC8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 120);
    sub_1DAF40A84(*a1, v2 + 40, &qword_1ECC0E178, &qword_1DB09FFB0);
    v5 = BindingsKeys.rawValue.getter();
    v7 = v6;
    sub_1DAF40A84(v2 + 40, v2 + 80, &qword_1ECC0E178, &qword_1DB09FFB0);
    sub_1DAF33DDC(v2 + 80, v5, v7);
    sub_1DAF40AEC(v2 + 40, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  else
  {
    v8 = *(v2 + 120);
    v12 = *(v2 + 128);
    v9 = BindingsKeys.rawValue.getter();
    v11 = v10;
    sub_1DAF40A84(v2, v2 + 40, &qword_1ECC0E178, &qword_1DB09FFB0);
    sub_1DAF33DDC(v2 + 40, v9, v11);
  }

  sub_1DAF40AEC(v2, &qword_1ECC0E178, &qword_1DB09FFB0);

  free(v2);
}

double ODIBindingsDict.makeIterator()@<D0>(uint64_t a1@<X8>)
{
  sub_1DAF3DF90(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_1DAF40A84(v8, &v4, &qword_1ECC0E180, &qword_1DB09FFB8);
  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t ODIBindingsDict.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DAF3DFCC(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (!v5)
  {

LABEL_18:
    *a2 = v4;
    return result;
  }

  v26 = a2;
  v6 = 0;
  v7 = a1 + 32;
  while (v6 < *(a1 + 16))
  {
    sub_1DAF40A84(v7, v28, &qword_1ECC0E188, &qword_1DB09FFC0);
    v11 = v28[0];
    v10 = v28[1];
    sub_1DAF332B8(&v29, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1DAF3550C(v11, v10, MEMORY[0x1E69E60C8], sub_1DAF35720);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_20;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_1DAF3761C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1DAF3550C(v11, v10, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v13;
    sub_1DAF3C3E8();
    v13 = v24;
    if (v19)
    {
LABEL_3:
      v8 = v13;

      v9 = (v4[7] + 40 * v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      sub_1DAF332B8(v27, v9);
      goto LABEL_4;
    }

LABEL_12:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v4[6] + 16 * v13);
    *v21 = v11;
    v21[1] = v10;
    sub_1DAF332B8(v27, v4[7] + 40 * v13);
    v22 = v4[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_21;
    }

    v4[2] = v23;
LABEL_4:
    ++v6;

    v7 += 56;
    if (v5 == v6)
    {

      a2 = v26;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ODIBindingsDict.merge(with:)(CoreODIEssentials::ODIBindingsDict with)
{
  v2 = *with.contents._rawValue;

  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  *v1 = 0x8000000000000000;
  sub_1DAF3FF70(v2, sub_1DAF3DDCC, 0, isUniquelyReferenced_nonNull_native, &v7);

  v5 = v7;
  v6 = *v1;

  *v1 = v5;
}

double sub_1DAF34FA4@<D0>(uint64_t a1@<X8>)
{
  sub_1DAF3DF90(v7);
  v3 = *v1;
  sub_1DAF40A84(v7, &v6, &qword_1ECC0E1F8, &qword_1DB09FFC8);

  result = *v7;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1DAF35020()
{
  v1 = sub_1DB040134(*v0);

  return v1;
}

uint64_t sub_1DAF35088(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1DB09D414();
}

_DWORD *sub_1DAF350F4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1DAF35104()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DB09D434();
}

uint64_t sub_1DAF35150()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DB09D424();
}

uint64_t sub_1DAF351A8()
{
  sub_1DB09E3A4();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1DB09D424();
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF3523C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1DAF35340(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  v7 = sub_1DB09E3A4();
  a2(v7);
  sub_1DB09D794();

  v8 = sub_1DB09E3E4();

  return a3(a1, v8);
}

unint64_t sub_1DAF353E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DB09DD84();

  return sub_1DAF36480(a1, v5);
}

unint64_t sub_1DAF35424(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DB09DC24();
  return sub_1DAF37474(a1, v5, &qword_1EE3018B0, 0x1E696AEC0);
}

unint64_t sub_1DAF35474(char a1)
{
  v3 = *(v1 + 40);
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](a1 & 1);
  v4 = sub_1DB09E3E4();

  return sub_1DAF36548(a1 & 1, v4);
}

uint64_t sub_1DAF3550C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1DB09E3A4();
  a3(v12, a1, a2);
  v9 = sub_1DB09E3E4();

  return a4(a1, a2, v9);
}

uint64_t sub_1DAF355A0(void *__src)
{
  v3 = *(v1 + 40);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DB09E3A4();
  sub_1DAF8D1F0(&v7, v4);
  v5 = sub_1DB09E3E4();

  return sub_1DAF36E1C(__src, v5);
}

unint64_t sub_1DAF35620(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DB09DC24();
  return sub_1DAF37474(a1, v5, &qword_1ECC0E240, 0x1E695CF60);
}

unint64_t sub_1DAF35670(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](a1);
  v4 = sub_1DB09E3E4();

  return sub_1DAF37540(a1, v4);
}

unint64_t sub_1DAF356DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DB09E394();

  return sub_1DAF375B0(a1, v4);
}

unint64_t sub_1DAF35720(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DB09E254())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DAF357D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000004449;
      v8 = 0x776F6C666B726F77;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x72656469766F7270;
          break;
        case 2:
          v7 = 0xE90000000000004CLL;
          v8 = 0x5255726576726573;
          break;
        case 3:
          v8 = 0xD000000000000010;
          v7 = 0x80000001DB0C0CF0;
          break;
        case 4:
          v8 = 0xD000000000000013;
          v7 = 0x80000001DB0C0D10;
          break;
        case 5:
          v8 = 0x4974736575716572;
          v7 = 0xE900000000000044;
          break;
        case 6:
          v8 = 0x61737265766E6F63;
          v7 = 0xEE0044496E6F6974;
          break;
        case 7:
          v8 = 0xD000000000000010;
          v7 = 0x80000001DB0C0D40;
          break;
        case 8:
          v8 = 0x6552656369766564;
          v7 = 0xEC0000006E6F6967;
          break;
        case 9:
          v8 = 0xD000000000000012;
          v7 = 0x80000001DB0C0DC0;
          break;
        case 0xA:
          v7 = 0xE900000000000065;
          v8 = 0x6761735574726563;
          break;
        case 0xB:
          v8 = 0x6573616261746164;
          v7 = 0xEE006E6D756C6F43;
          break;
        case 0xC:
          v8 = 0x74737973656C6966;
          v7 = 0xEE00687461506D65;
          break;
        case 0xD:
          v8 = 0x69796C7265646E75;
          v7 = 0xEF6F6E727245676ELL;
          break;
        case 0xE:
          v7 = 0xE800000000000000;
          v8 = 0x746E756F43797274;
          break;
        default:
          break;
      }

      v9 = 0x776F6C666B726F77;
      v10 = 0xEA00000000004449;
      switch(a1)
      {
        case 1:
          if (v8 == 0x72656469766F7270)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        case 2:
          v10 = 0xE90000000000004CLL;
          if (v8 != 0x5255726576726573)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 3:
          v10 = 0x80000001DB0C0CF0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 4:
          v10 = 0x80000001DB0C0D10;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 5:
          v10 = 0xE900000000000044;
          if (v8 != 0x4974736575716572)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 6:
          v11 = 0x61737265766E6F63;
          v12 = 0x44496E6F6974;
          goto LABEL_40;
        case 7:
          v10 = 0x80000001DB0C0D40;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 8:
          v10 = 0xEC0000006E6F6967;
          if (v8 != 0x6552656369766564)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 9:
          v10 = 0x80000001DB0C0DC0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 10:
          v10 = 0xE900000000000065;
          v9 = 0x6761735574726563;
          goto LABEL_43;
        case 11:
          v11 = 0x6573616261746164;
          v12 = 0x6E6D756C6F43;
          goto LABEL_40;
        case 12:
          v11 = 0x74737973656C6966;
          v12 = 0x687461506D65;
LABEL_40:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 13:
          v10 = 0xEF6F6E727245676ELL;
          if (v8 != 0x69796C7265646E75)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        case 14:
          v10 = 0xE800000000000000;
          if (v8 != 0x746E756F43797274)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        default:
LABEL_43:
          if (v8 != v9)
          {
            goto LABEL_45;
          }

LABEL_44:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_45:
          v13 = sub_1DB09E254();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1DAF35CCC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00004449776F6CLL;
      v8 = 0x666B726F576F6E69;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x69766F72506F6E69;
          v9 = 0x4449726564;
          goto LABEL_28;
        case 2:
          v8 = 0x6C666B726F577073;
          v7 = 0xEC0000004449776FLL;
          break;
        case 3:
          v8 = 0x6469766F72507073;
          v7 = 0xEC00000044497265;
          break;
        case 4:
          v8 = 0x7475626972747461;
          v7 = 0xEB00000000444965;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x80000001DB0C0CD0;
          break;
        case 6:
          v8 = 0x5255726576726573;
          v7 = 0xE90000000000004CLL;
          break;
        case 7:
          v8 = 0xD000000000000010;
          v7 = 0x80000001DB0C0CF0;
          break;
        case 8:
          v8 = 0xD000000000000013;
          v7 = 0x80000001DB0C0D10;
          break;
        case 9:
          v8 = 0x4974736575716572;
          v7 = 0xE900000000000044;
          break;
        case 0xA:
          v8 = 0x61737265766E6F63;
          v7 = 0xEE0044496E6F6974;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x80000001DB0C0D40;
          break;
        case 0xC:
          v8 = 0xD000000000000012;
          v7 = 0x80000001DB0C0D60;
          break;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x80000001DB0C0D80;
          break;
        case 0xE:
          v8 = 0x63655264756F6C63;
          v7 = 0xEF656E6F5A64726FLL;
          break;
        case 0xF:
          v8 = 0x6552656369766564;
          v7 = 0xEC0000006E6F6967;
          break;
        case 0x10:
          v8 = 0xD000000000000012;
          v7 = 0x80000001DB0C0DC0;
          break;
        case 0x11:
          v8 = 0x6761735574726563;
          v7 = 0xE900000000000065;
          break;
        case 0x12:
          v8 = 0x6573616261746164;
          v7 = 0xEE006E6D756C6F43;
          break;
        case 0x13:
          v8 = 0x74737973656C6966;
          v7 = 0xEE00687461506D65;
          break;
        case 0x14:
          v8 = 0x69796C7265646E75;
          v7 = 0xEF6F6E727245676ELL;
          break;
        case 0x15:
          v8 = 0x636E456567616D69;
          v9 = 0x676E69646FLL;
          goto LABEL_28;
        case 0x16:
          v7 = 0xE400000000000000;
          v8 = 1701273968;
          break;
        case 0x17:
          v8 = 0x636E75614C6F6E69;
          v9 = 0x7265695468;
LABEL_28:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x18:
          v7 = 0xE800000000000000;
          v8 = 0x746E756F43797274;
          break;
        default:
          break;
      }

      v10 = 0x666B726F576F6E69;
      v11 = 0xED00004449776F6CLL;
      switch(a1)
      {
        case 1:
          v12 = 0x69766F72506F6E69;
          v13 = 0x4449726564;
          goto LABEL_79;
        case 2:
          v11 = 0xEC0000004449776FLL;
          if (v8 != 0x6C666B726F577073)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 3:
          v14 = 0x6469766F72507073;
          v15 = 1145664101;
          goto LABEL_49;
        case 4:
          v11 = 0xEB00000000444965;
          if (v8 != 0x7475626972747461)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 5:
          v11 = 0x80000001DB0C0CD0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 6:
          v11 = 0xE90000000000004CLL;
          if (v8 != 0x5255726576726573)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 7:
          v11 = 0x80000001DB0C0CF0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 8:
          v11 = 0x80000001DB0C0D10;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 9:
          v11 = 0xE900000000000044;
          if (v8 != 0x4974736575716572)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 10:
          v16 = 0x61737265766E6F63;
          v17 = 0x44496E6F6974;
          goto LABEL_66;
        case 11:
          v11 = 0x80000001DB0C0D40;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 12:
          v11 = 0x80000001DB0C0D60;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 13:
          v11 = 0x80000001DB0C0D80;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 14:
          v11 = 0xEF656E6F5A64726FLL;
          if (v8 != 0x63655264756F6C63)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 15:
          v14 = 0x6552656369766564;
          v15 = 1852795239;
LABEL_49:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v14)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 16:
          v11 = 0x80000001DB0C0DC0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 17:
          v11 = 0xE900000000000065;
          if (v8 != 0x6761735574726563)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 18:
          v16 = 0x6573616261746164;
          v17 = 0x6E6D756C6F43;
LABEL_66:
          v11 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v16)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 19:
          v10 = 0x74737973656C6966;
          v11 = 0xEE00687461506D65;
          goto LABEL_73;
        case 20:
          v11 = 0xEF6F6E727245676ELL;
          if (v8 != 0x69796C7265646E75)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 21:
          v12 = 0x636E456567616D69;
          v13 = 0x676E69646FLL;
          goto LABEL_79;
        case 22:
          v11 = 0xE400000000000000;
          if (v8 != 1701273968)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 23:
          v12 = 0x636E75614C6F6E69;
          v13 = 0x7265695468;
LABEL_79:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v12)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        case 24:
          v11 = 0xE800000000000000;
          if (v8 != 0x746E756F43797274)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        default:
LABEL_73:
          if (v8 != v10)
          {
            goto LABEL_75;
          }

LABEL_74:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_75:
          v18 = sub_1DB09E254();

          if (v18)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1DAF36480(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DAF403FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E1280460](v9, a1);
      sub_1DAF4057C(v9);
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

unint64_t sub_1DAF36548(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1DAF365B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_139:
    v63 = *MEMORY[0x1E69E9840];
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v75 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v72 = v14;
  __n = BYTE6(a2);
  v70 = a1;
  v71 = HIDWORD(a1) - a1;
  v66 = (a1 >> 32) - a1;
  v67 = a1 >> 32;
  v73 = v10;
  v74 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v75) & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v71;
          if (v72)
          {
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
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_139;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      goto LABEL_139;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_1DAF40674(v17, v16);
      v35 = sub_1DB09CD44();
      if (v35)
      {
        v40 = sub_1DB09CD74();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_1DB09CD64();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v65 = *(a1 + 24);
        v37 = sub_1DB09CD44();
        if (v37)
        {
          v60 = sub_1DB09CD74();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v65, v59);
        v61 = v65 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_1DB09CD64();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v67 < v70)
        {
          goto LABEL_154;
        }

        v37 = sub_1DB09CD44();
        if (v37)
        {
          v41 = sub_1DB09CD74();
          if (__OFSUB__(v70, v41))
          {
            goto LABEL_161;
          }

          v37 += v70 - v41;
        }

        result = sub_1DB09CD64();
        v39 = v66;
        if (result < v66)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v68;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_1DAF40674(v17, v16);
      v32 = sub_1DB09CD44();
      if (v32)
      {
        v49 = sub_1DB09CD74();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_1DB09CD64();
      v7 = v69;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v67 < v70)
    {
      goto LABEL_146;
    }

    sub_1DAF40674(v17, v16);
    v29 = sub_1DB09CD44();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_1DB09CD74();
    if (__OFSUB__(v70, v31))
    {
      goto LABEL_152;
    }

    v32 = v70 - v31 + v30;
    result = sub_1DB09CD64();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v66)
    {
      v50 = v66;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_1DAF40780(v17, v16);
LABEL_135:
    v10 = v73;
    v4 = v74;
    if (!v62)
    {
      goto LABEL_139;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_139;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_1DAF40674(v17, v16);
    v35 = sub_1DB09CD44();
    if (v35)
    {
      v36 = sub_1DB09CD74();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_1DB09CD64();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v64 = *(a1 + 24);
      v37 = sub_1DB09CD44();
      if (v37)
      {
        v57 = sub_1DB09CD74();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v64, v56);
      v58 = v64 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_1DB09CD64();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v67 < v70)
      {
        goto LABEL_148;
      }

      v37 = sub_1DB09CD44();
      if (v37)
      {
        v38 = sub_1DB09CD74();
        if (__OFSUB__(v70, v38))
        {
          goto LABEL_159;
        }

        v37 += v70 - v38;
      }

      result = sub_1DB09CD64();
      v39 = v66;
      if (result < v66)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_1DAF40780(v17, v16);
        goto LABEL_139;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1DAF40780(v17, v16);
      v7 = v69;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v68;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v78 = BYTE2(a1);
    v79 = BYTE3(a1);
    v80 = v68;
    v81 = BYTE5(a1);
    v82 = BYTE6(a1);
    v83 = HIBYTE(a1);
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      goto LABEL_139;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_1DAF40674(v17, v16);
    v32 = sub_1DB09CD44();
    if (v32)
    {
      v44 = sub_1DB09CD74();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_1DB09CD64();
    v7 = v69;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v67 < v70)
  {
    goto LABEL_147;
  }

  sub_1DAF40674(v17, v16);
  v51 = sub_1DB09CD44();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1DB09CD74();
    if (__OFSUB__(v70, v53))
    {
      goto LABEL_151;
    }

    v32 = v70 - v53 + v52;
    result = sub_1DB09CD64();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_1DB09CD64();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_1DB09CD64();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

uint64_t sub_1DAF36E1C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  v7 = v6 & ~v5;
  if ((*(v2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v2;
    v9 = ~v5;
    v10 = *(v3 + 1042);
    v34 = *v3;
    memcpy(v46, (v3 + 8), 0x40AuLL);
    v11 = v10 & 1;
    v12 = &unk_1ECC0E318;
    v33 = v11;
    v31 = v9;
    v32 = v4;
    v30 = v8;
    do
    {
      memcpy(v45, (*(v8 + 48) + 1048 * v7), 0x414uLL);
      if (BYTE2(v45[130]) != v11)
      {
        goto LABEL_5;
      }

      memcpy(v43, &v45[1], 0x40AuLL);
      memcpy(&v43[130], v46, 0x40AuLL);
      memcpy(v44, &v45[1], 0x40AuLL);
      if (sub_1DAF40964(v44) == 1)
      {
        memcpy(v42, &v43[130], 0x40AuLL);
        if (sub_1DAF40964(v42) != 1)
        {
          sub_1DAF40898(v45, v41);
          sub_1DAF40A84(&v45[1], v41, v12, &qword_1DB0A02A0);
          sub_1DAF40A84(v46, v41, v12, &qword_1DB0A02A0);
          goto LABEL_4;
        }

        memcpy(v40, v43, 0x40AuLL);
        sub_1DAF40898(v45, v41);
        sub_1DAF40A84(&v45[1], v41, v12, &qword_1DB0A02A0);
        sub_1DAF40A84(v46, v41, v12, &qword_1DB0A02A0);
        sub_1DAF40AEC(v40, v12, &qword_1DB0A02A0);
      }

      else
      {
        memcpy(v40, v43, 0x40AuLL);
        memcpy(v39, v43, 0x40AuLL);
        memcpy(v42, &v43[130], 0x40AuLL);
        if (sub_1DAF40964(v42) == 1)
        {
          memcpy(__dst, v43, 0x40AuLL);
          sub_1DAF40898(v45, v41);
          sub_1DAF40A84(&v45[1], v41, v12, &qword_1DB0A02A0);
          sub_1DAF40A84(v46, v41, v12, &qword_1DB0A02A0);
          sub_1DAF40A84(v40, v41, v12, &qword_1DB0A02A0);
          sub_1DAF40988(__dst);
LABEL_4:
          memcpy(v41, v43, 0x81AuLL);
          sub_1DAF40AEC(v41, &qword_1ECC0E320, &qword_1DB0A02A8);
          sub_1DAF407D4(v45);
          goto LABEL_5;
        }

        memcpy(__src, &v43[130], 0x40AuLL);
        sub_1DAF40898(v45, v41);
        sub_1DAF40A84(&v45[1], v41, v12, &qword_1DB0A02A0);
        sub_1DAF40A84(v46, v41, v12, &qword_1DB0A02A0);
        sub_1DAF40A84(v40, v41, v12, &qword_1DB0A02A0);
        v13 = _s17CoreODIEssentials16ArmandDeviceDataV2eeoiySbAC_ACtFZ_0(v39, __src);
        memcpy(v36, __src, 0x40AuLL);
        sub_1DAF40988(v36);
        memcpy(v37, v39, 0x40AuLL);
        sub_1DAF40988(v37);
        memcpy(__dst, v43, 0x40AuLL);
        sub_1DAF40AEC(__dst, v12, &qword_1DB0A02A0);
        if ((v13 & 1) == 0)
        {
          sub_1DAF407D4(v45);
          goto LABEL_5;
        }
      }

      v14 = v45[0];
      v15 = v34;
      if (v45[0] == v34)
      {
LABEL_33:
        v43[0] = v14;
        v41[0] = v15;
        v29 = ODIBindingsDict.isSubset(of:)(v41);
        sub_1DAF407D4(v45);
        v11 = v33;
        if (v29)
        {
          return v7;
        }
      }

      else
      {
        if (*(v45[0] + 16) == *(v34 + 16))
        {
          v16 = 1 << *(v45[0] + 32);
          if (v16 < 64)
          {
            v17 = ~(-1 << v16);
          }

          else
          {
            v17 = -1;
          }

          v18 = v17 & *(v45[0] + 64);
          v19 = (v16 + 63) >> 6;

          v21 = 0;
          do
          {
            if (v18)
            {
              if (!*(v34 + 16))
              {
                break;
              }
            }

            else
            {
              v15 = v34;
              do
              {
                v22 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
                  __break(1u);
                  return result;
                }

                if (v22 >= v19)
                {

                  v9 = v31;
                  v4 = v32;
                  v8 = v30;
                  goto LABEL_33;
                }

                v18 = *(v14 + 64 + 8 * v22);
                ++v21;
              }

              while (!v18);
              v21 = v22;
              if (!*(v34 + 16))
              {
                break;
              }
            }

            v23 = __clz(__rbit64(v18));
            v18 &= v18 - 1;
            v24 = (*(v14 + 48) + ((v21 << 10) | (16 * v23)));
            v25 = v12;
            v26 = *v24;
            v27 = v24[1];

            sub_1DAF3550C(v26, v27, MEMORY[0x1E69E60C8], sub_1DAF35720);
            LOBYTE(v26) = v28;
            v12 = v25;
          }

          while ((v26 & 1) != 0);

          sub_1DAF407D4(v45);
          v9 = v31;
          v4 = v32;
          v8 = v30;
        }

        else
        {
          sub_1DAF407D4(v45);
        }

        v11 = v33;
      }

LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1DAF37474(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1DAF4062C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1DB09DC34();

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

unint64_t sub_1DAF37540(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DAF375B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1DAF3761C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E3A0, &unk_1DB0A28E0);
  v36 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1DAF332B8(v25, v37);
      }

      else
      {
        sub_1DAF3523C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1DAF332B8(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF378F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E230, &qword_1DB0A01C8);
  v41 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1DAF403FC(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF37BC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E378, &qword_1DB0A0300);
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_1DAF183D0(v25, v33);
      }

      else
      {
        sub_1DAF409DC(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();

      result = sub_1DB09E3E4();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_1DAF183D0(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF38064(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E388, &unk_1DB0A0310);
  v36 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1DAF183D0(v25, v37);
      }

      else
      {
        sub_1DAF409DC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1DAF183D0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF3831C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E360, &qword_1DB0A02E8);
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v3;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 32 * v24);
      if (a2)
      {
        sub_1DAF183D0(v26, v34);
      }

      else
      {
        sub_1DAF409DC(v26, v34);
      }

      v27 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();

      result = sub_1DB09E3E4();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = (-1 << v17) & ~*(v15 + 8 * (v17 >> 6));
      if (!v19)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v18);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64(v19)) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v8 + 48) + v20) = v25;
      result = sub_1DAF183D0(v34, (*(v8 + 56) + 32 * v20));
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF38924(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E268, &qword_1DB0A01F8);
  v40 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF38BE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E260, &qword_1DB0A01F0);
  v50 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v48 = v3;
    v49 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v24 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v27 = v24 | (v9 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      if (v50)
      {
        v31 = *(v5 + 56) + 368 * v27;
        v72 = *v31;
        v68 = *(v31 + 8);
        v66 = *(v31 + 16);
        v32 = *(v31 + 40);
        v78 = *(v31 + 24);
        v79 = v32;
        v33 = *(v31 + 72);
        v80 = *(v31 + 56);
        v81 = v33;
        v34 = *(v31 + 88);
        v35 = *(v31 + 104);
        v36 = *(v31 + 120);
        v37 = *(v31 + 152);
        v85 = *(v31 + 136);
        v86 = v37;
        v83 = v35;
        v84 = v36;
        v82 = v34;
        v52 = *(v31 + 168);
        v55 = *(v31 + 176);
        v56 = *(v31 + 192);
        v57 = *(v31 + 184);
        v58 = *(v31 + 200);
        v59 = *(v31 + 208);
        v60 = *(v31 + 216);
        v61 = *(v31 + 224);
        v38 = *(v31 + 232);
        v64 = *(v31 + 240);
        v65 = *(v31 + 256);
        v62 = *(v31 + 280);
        v63 = *(v31 + 272);
        v51 = *(v31 + 288);
        v67 = *(v31 + 304);
        v69 = *(v31 + 312);
        v70 = *(v31 + 296);
        v71 = *(v31 + 320);
        v53 = *(v31 + 328);
        v54 = *(v31 + 344);
        v75 = *(v31 + 352);
        v73 = *(v31 + 336);
        v74 = *(v31 + 360);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 368 * v27), sizeof(__dst));
        v74 = *(&__dst[22] + 1);
        v75 = *&__dst[22];
        v73 = *&__dst[21];
        v53 = BYTE8(__dst[20]);
        v54 = BYTE8(__dst[21]);
        v69 = *(&__dst[19] + 1);
        v70 = *(&__dst[18] + 1);
        v71 = *&__dst[20];
        v67 = *&__dst[19];
        v51 = __dst[18];
        v64 = __dst[15];
        v65 = __dst[16];
        v62 = *(&__dst[17] + 1);
        v63 = *&__dst[17];
        v38 = BYTE8(__dst[14]);
        v60 = *(&__dst[13] + 1);
        v61 = *&__dst[14];
        v59 = __dst[13];
        v57 = *(&__dst[11] + 1);
        v58 = *(&__dst[12] + 1);
        v55 = *&__dst[11];
        v56 = *&__dst[12];
        v68 = *(&__dst[0] + 1);
        v72 = *&__dst[0];
        v52 = *(&__dst[10] + 1);
        v66 = *&__dst[1];

        sub_1DAF40520(__dst, v76);
        v78 = *(&__dst[1] + 8);
        v79 = *(&__dst[2] + 8);
        v80 = *(&__dst[3] + 8);
        v81 = *(&__dst[4] + 8);
        v84 = *(&__dst[7] + 8);
        v85 = *(&__dst[8] + 8);
        v86 = *(&__dst[9] + 8);
        v82 = *(&__dst[5] + 8);
        v83 = *(&__dst[6] + 8);
      }

      v39 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v40 = -1 << *(v8 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v15 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v15 + 8 * v42);
          if (v46 != -1)
          {
            v16 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v41) & ~*(v15 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(__dst[0]) = v38;
      v76[0] = v51;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v29;
      v17[1] = v30;
      v18 = *(v8 + 56) + 368 * v16;
      v19 = v80;
      *(v18 + 72) = v81;
      *(v18 + 56) = v19;
      v20 = v78;
      *(v18 + 40) = v79;
      *(v18 + 24) = v20;
      v21 = v83;
      *(v18 + 88) = v82;
      v22 = v85;
      *(v18 + 152) = v86;
      v23 = v84;
      *(v18 + 136) = v22;
      *(v18 + 120) = v23;
      *v18 = v72;
      *(v18 + 8) = v68;
      *(v18 + 16) = v66;
      *(v18 + 104) = v21;
      *(v18 + 168) = v52;
      *(v18 + 176) = v55;
      *(v18 + 184) = v57;
      *(v18 + 192) = v56;
      *(v18 + 200) = v58;
      *(v18 + 208) = v59;
      *(v18 + 216) = v60;
      *(v18 + 224) = v61;
      *(v18 + 232) = __dst[0];
      *(v18 + 240) = v64;
      *(v18 + 256) = v65;
      *(v18 + 272) = v63;
      *(v18 + 280) = v62;
      *(v18 + 288) = v76[0];
      *(v18 + 296) = v70;
      *(v18 + 304) = v67;
      *(v18 + 312) = v69;
      *(v18 + 320) = v71;
      *(v18 + 328) = v53;
      *(v18 + 336) = v73;
      *(v18 + 344) = v54;
      *(v18 + 352) = v75;
      *(v18 + 360) = v74;
      ++*(v8 + 16);
      v5 = v49;
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v13 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v10, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF39144(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v56 = &v46 - v9;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E300, &qword_1DB0A0288);
  v53 = a2;
  v12 = sub_1DB09DFE4();
  v13 = v12;
  if (*(v10 + 16))
  {
    v14 = 0;
    v52 = v10;
    v15 = *(v10 + 64);
    v49 = (v10 + 64);
    v50 = v12;
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v47 = v3;
    v48 = (v16 + 63) >> 6;
    v19 = v12 + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v24 = (v18 - 1) & v18;
LABEL_17:
      v28 = v23 | (v14 << 6);
      v55 = v24;
      if (v53)
      {
        v29 = *(v52 + 48) + 1048 * v28;
        v30 = *v29;
        memcpy(v59, (v29 + 8), sizeof(v59));
        v31 = *(v29 + 1042);
        v32 = *(v29 + 1043);
        v33 = *(v52 + 56);
        v54 = *(v51 + 72);
        sub_1DAF40828(v33 + v54 * v28, v56);
      }

      else
      {
        memcpy(v58, (*(v52 + 48) + 1048 * v28), 0x414uLL);
        v34 = *(v52 + 56);
        v54 = *(v51 + 72);
        sub_1DAF40A84(v34 + v54 * v28, v56, &qword_1ECC0E2F8, &qword_1DB0A0280);
        v32 = BYTE3(v58[130]);
        v31 = BYTE2(v58[130]);
        v30 = v58[0];
        sub_1DAF40898(v58, v57);
        memcpy(v59, &v58[1], sizeof(v59));
      }

      v13 = v50;
      v35 = *(v50 + 40);
      v58[0] = v30;
      memcpy(&v58[1], v59, 0x40AuLL);
      BYTE2(v58[130]) = v31;
      BYTE3(v58[130]) = v32;
      sub_1DB09E3A4();
      sub_1DAF8D1F0(v57, v36);
      result = sub_1DB09E3E4();
      v37 = -1 << *(v13 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v19 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v21 = v30;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v19 + 8 * v39);
          if (v43 != -1)
          {
            v20 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v38) & ~*(v19 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v21 = v30;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v22 = *(v13 + 48) + 1048 * v20;
      *v22 = v21;
      memcpy((v22 + 8), v59, 0x40AuLL);
      *(v22 + 1042) = v31;
      *(v22 + 1043) = v32;
      sub_1DAF40828(v56, *(v13 + 56) + v54 * v20);
      ++*(v13 + 16);
      v18 = v55;
    }

    v25 = v14;
    result = v49;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v48)
      {
        break;
      }

      v27 = v49[v14];
      ++v25;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v24 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_37;
    }

    v44 = v52;
    v45 = 1 << *(v52 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v49, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v45;
    }

    *(v44 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_1DAF39584(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E298, &qword_1DB0A0220);
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = *(*(v5 + 48) + v22);
      v34 = *(*(v5 + 56) + v22);
      v35 = v23;
      if ((a2 & 1) == 0)
      {
        sub_1DAF40674(v23, *(&v23 + 1));
        sub_1DAF40674(v34, *(&v34 + 1));
      }

      v24 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D044();
      result = sub_1DB09E3E4();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v35;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      *(*(v8 + 56) + v18) = v34;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DAF3983C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A0, &qword_1DB0A0228);
  v38 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF39ADC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnyODIKnownBinding(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E228, &qword_1DB0A01C0);
  v45 = a2;
  result = sub_1DB09DFE4();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_1DAF40398(v32, v46);
      }

      else
      {
        sub_1DAF40458(v32, v46);
      }

      v33 = *(v13 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_1DAF40398(v46, *(v13 + 56) + v31 * v21);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1DAF39E18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E248, &qword_1DB0A01D8);
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v36 = *v23;
      v24 = *(v23 + 16);
      if ((a2 & 1) == 0)
      {
        v25 = v22;
      }

      v26 = *(v8 + 40);
      result = sub_1DB09DC24();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v36;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DAF3A09C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E250, &unk_1DB0A01E0);
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v8 + 40);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v22);
      result = sub_1DB09E3E4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v25;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF3A328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E258, &qword_1DB0B2710);
  v34 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v21);
      result = sub_1DB09E3E4();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF3A5B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2D0, &qword_1DB0A0258);
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1DB09E394();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DAF3A82C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1DB09DFE4();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1DAF3AACC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A8, &qword_1DB0A0230);
  v40 = a2;
  result = sub_1DB09DFE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 112 * v21;
      if (v40)
      {
        v41 = *v23;
        v42 = *(v23 + 16);
        v43 = *(v23 + 32);
        v44 = *(v23 + 48);
        v45 = *(v23 + 64);
        v46 = *(v23 + 80);
        v24 = *(v23 + 104);
        v47 = *(v23 + 96);
      }

      else
      {
        v25 = *(v23 + 48);
        v26 = *(v23 + 64);
        v27 = *(v23 + 96);
        v54 = *(v23 + 80);
        v55 = v27;
        v52 = v25;
        v53 = v26;
        v28 = *v23;
        v29 = *(v23 + 32);
        v50 = *(v23 + 16);
        v51 = v29;
        v49 = v28;
        v24 = *(&v27 + 1);
        v47 = v27;
        v45 = v26;
        v46 = v54;
        v43 = v29;
        v44 = v52;
        v41 = v28;
        v42 = v50;
        sub_1DAF406C8(&v49, v48);
      }

      v30 = *(v8 + 40);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v22);
      result = sub_1DB09E3E4();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 112 * v16;
      *v17 = v41;
      *(v17 + 16) = v42;
      *(v17 + 32) = v43;
      *(v17 + 48) = v44;
      *(v17 + 64) = v45;
      *(v17 + 80) = v46;
      *(v17 + 96) = v47;
      *(v17 + 104) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAF3ADF4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1DAF3C3E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DAF3761C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DB09E2E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1DAF332B8(a1, v23);
  }

  else
  {
    sub_1DAF3C0EC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1DAF3AF98(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DAF35340(a2, ODIErrorPropertyKey.rawValue.getter, sub_1DAF357D8);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1DAF3C924(&qword_1ECC0E378, &qword_1DB0A0300);
      v9 = v17;
      goto LABEL_8;
    }

    sub_1DAF37BC4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1DAF35340(a2, ODIErrorPropertyKey.rawValue.getter, sub_1DAF357D8);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_1DB09E2E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    return sub_1DAF3C1C8(v9, a2, a1, v20);
  }

  v21 = (v20[7] + 32 * v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_1DAF183D0(a1, v21);
}

_OWORD *sub_1DAF3B11C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1DAF3C76C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DAF38064(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DB09E2E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1DAF183D0(a1, v23);
  }

  else
  {
    sub_1DAF3C15C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1DAF3B2BC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DAF35340(a2, DIPErrorPropertyKey.rawValue.getter, sub_1DAF35CCC);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1DAF3C924(&qword_1ECC0E360, &qword_1DB0A02E8);
      v9 = v17;
      goto LABEL_8;
    }

    sub_1DAF3831C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1DAF35340(a2, DIPErrorPropertyKey.rawValue.getter, sub_1DAF35CCC);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_1DB09E2E4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    return sub_1DAF3C1C8(v9, a2, a1, v20);
  }

  v21 = (v20[7] + 32 * v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_1DAF183D0(a1, v21);
}

uint64_t sub_1DAF3B440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DAF3550C(a3, a4, MEMORY[0x1E69E60C8], sub_1DAF35720);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1DAF38924(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1DAF3550C(a3, a4, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1DB09E2E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DAF3CA90();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1DAF3B618(const void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAF38BE4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DB09E2E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DAF3CC08();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 368 * v11;

    return sub_1DAF405D0(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  memcpy((v22[7] + 368 * v11), a1, 0x170uLL);
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1DAF3B7F4(uint64_t a1, void *__src, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DAF355A0(__src);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1DAF3CDC4();
      goto LABEL_7;
    }

    sub_1DAF39144(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1DAF355A0(__src);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DAF3C2A4(v10, __src, a1, v16);
      return sub_1DAF40898(__src, v23);
    }

LABEL_15:
    result = sub_1DB09E2E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = v17 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280) - 8) + 72) * v10;

  return sub_1DAF408F4(a1, v18);
}

unint64_t sub_1DAF3B958(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAF3983C(v16, a4 & 1);
      v20 = *v5;
      result = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1DB09E2E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DAF3D1A0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1DAF3BB0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DAF3D308();
      goto LABEL_7;
    }

    sub_1DAF39ADC(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1DAF3550C(a2, a3, MEMORY[0x1E69E60C8], sub_1DAF35720);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DB09E2E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AnyODIKnownBinding(0) - 8) + 72) * v12;

    return sub_1DAF404BC(a1, v20);
  }

LABEL_13:
  sub_1DAF3C350(v12, a2, a3, a1, v18);
}

unint64_t sub_1DAF3BCC0(uint64_t a1, uint64_t a2, char a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  result = sub_1DAF35620(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_1DAF39E18(v17, a5 & 1);
      v21 = *v6;
      result = sub_1DAF35620(a4);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
        result = sub_1DB09E2E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_1DAF3D538();
      result = v20;
    }
  }

  v23 = *v6;
  if (v18)
  {
    v24 = v23[7] + 24 * result;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3 & 1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = a4;
  v25 = v23[7] + 24 * result;
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3 & 1;
  v26 = v23[2];
  v16 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v27;

  return a4;
}

unint64_t sub_1DAF3BE58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1DAF356DC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1DAF3D958();
    result = v17;
    goto LABEL_8;
  }

  sub_1DAF3A5B4(v14, a3 & 1);
  v18 = *v4;
  result = sub_1DAF356DC(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

unint64_t sub_1DAF3BF7C(__int128 *a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1DAF35670(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DAF3AACC(v14, a3 & 1);
      v18 = *v4;
      result = sub_1DAF35670(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1DB09E2E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1DAF3DC18();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    v22 = (v20[7] + 112 * result);
    v23 = *a1;
    v24 = a1[2];
    v22[1] = a1[1];
    v22[2] = v24;
    *v22 = v23;
    v25 = a1[3];
    v26 = a1[4];
    v27 = a1[6];
    v22[5] = a1[5];
    v22[6] = v27;
    v22[3] = v25;
    v22[4] = v26;
    v28 = v20[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v20[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 112 * result;

  return sub_1DAF40724(a1, v21);
}

uint64_t sub_1DAF3C0EC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DAF332B8(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1DAF3C15C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DAF183D0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1DAF3C1C8(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1DAF183D0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1DAF3C230(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 368 * a1), __src, 0x170uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DAF3C2A4(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  memcpy((a4[6] + 1048 * a1), a2, 0x414uLL);
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  result = sub_1DAF40828(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1DAF3C350(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AnyODIKnownBinding(0);
  result = sub_1DAF40398(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1DAF3C3E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E3A0, &unk_1DB0A28E0);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1DAF3523C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DAF332B8(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DAF3C5A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E230, &qword_1DB0A01C8);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1DAF403FC(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DAF3C76C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E388, &unk_1DB0A0310);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1DAF409DC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DAF183D0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DAF3C924(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DB09DFD4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + v19);
        sub_1DAF409DC(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + v19) = v20;
        result = sub_1DAF183D0(v21, (*(v6 + 56) + 32 * v19));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1DAF3CA90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E268, &qword_1DB0A01F8);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DAF3CC08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E260, &qword_1DB0A01F0);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DAF40520(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 368 * v16;
      memcpy(__dst, (*(v2 + 56) + 368 * v16), 0x170uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x170uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DAF3CDC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v24 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E300, &qword_1DB0A0288);
  v7 = *v0;
  v8 = sub_1DB09DFD4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v25 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 64);
    for (i = (v14 + 63) >> 6; v16; result = sub_1DAF40898(v28, &v27))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = v18 | (v13 << 6);
      v22 = 1048 * v21;
      memcpy(v28, (*(v7 + 48) + 1048 * v21), 0x414uLL);
      v23 = *(v26 + 72) * v21;
      sub_1DAF40A84(*(v7 + 56) + v23, v6, &qword_1ECC0E2F8, &qword_1DB0A0280);
      memcpy((*(v9 + 48) + v22), v28, 0x414uLL);
      sub_1DAF40828(v6, *(v9 + 56) + v23);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1DAF3D01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E298, &qword_1DB0A0220);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        sub_1DAF40674(v18, *(&v18 + 1));
        result = sub_1DAF40674(v19, *(&v19 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DAF3D1A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A0, &qword_1DB0A0228);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DAF3D308()
{
  v1 = v0;
  v2 = type metadata accessor for AnyODIKnownBinding(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E228, &qword_1DB0A01C0);
  v6 = *v0;
  v7 = sub_1DB09DFD4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_1DAF40458(*(v6 + 56) + v28, v32);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_1DAF40398(v27, *(v29 + 56) + v28);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1DAF3D538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E248, &qword_1DB0A01D8);
  v2 = *v0;
  v3 = sub_1DB09DFD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *(v19 + 16);
        v21 = *v19;
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v21;
        *(v22 + 16) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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