uint64_t sub_25BD8F214()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BD8F25C()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25BD8F2E4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BD8F334()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BD8F37C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F3B4()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_25BD8F4AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8F4E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F520()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F598()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F5D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8F608()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F640()
{
  v1 = *(type metadata accessor for NDOSignpost() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 2);

  if (*(v0 + 3))
  {
    v5 = *(v0 + 4);
  }

  v6 = (v2 + 40) & ~v2;
  v7 = sub_25BDDF638();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);

  return MEMORY[0x2821FE8E8](v0, v6 + v3, v2 | 7);
}

uint64_t sub_25BD8F720()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F758()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7);
  swift_unknownObjectRelease();
  v12 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_25BD8F874()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_25BD8F974()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8F9BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BDDF638();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25BD8FAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25BDDF638();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25BD8FC74()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8FCAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8FCEC()
{
  v1 = (type metadata accessor for CoverageCentralSectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v19 = sub_25BDDFA98();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_25BDDFA88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v18 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  v15 = v1[7];
  v16 = sub_25BDDF6E8();
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v18, v13 | 7);
}

uint64_t sub_25BD8FF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25BDDF6E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25BD90024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25BDDF6E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25BD90134()
{
  v1 = (type metadata accessor for CoverageCentralSectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_25BDDF6E8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD90268()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD902A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD902D8()
{
  v1 = *(type metadata accessor for NDOSignpost() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_25BDDF638();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD903AC()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD903E4()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25BD904BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD904F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD9052C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD9056C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_25BD905A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD905F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD668, qword_25BDE2DA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25BD906FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD668, qword_25BDE2DA8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25BD90814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD90884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BD908EC()
{
  v1 = type metadata accessor for CoverageCentralMainView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_25BDDF5D8();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v1 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v10 - 8) + 8))(&v6[v9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD90A50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90A9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90AD4()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD90B0C()
{
  v1 = sub_25BDDF558();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25BD90BE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD90C1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90C54()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BD90C9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BD90CDC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BD90D2C()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BD90D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25BD90E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25BD90E90()
{
  v1 = *(type metadata accessor for DeviceWarrantyMainView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD90F70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25BDDF778();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25BD910B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25BDDF778();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25BD911C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD9120C()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD91244()
{
  v1 = *(type metadata accessor for NDOSignpost() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_25BDDF638();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD91318()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD91350()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD91390()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD913CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_25BDDF408();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v0 + v8 + 8);

  v14 = *(v0 + v9);

  v15 = *(v0 + v10);
  swift_unknownObjectRelease();

  v16 = *(v0 + v12);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_25BD91574()
{
  v1 = sub_25BDDF6E8();
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

uint64_t sub_25BD91640()
{
  v1 = sub_25BDDF6E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25BDDFA88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25BD91798()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_25BD95134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD95E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD9816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_25BD9A5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD9C674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD9D7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD9DCD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25BD9F35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_25BDA2160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25BDA23D4(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_25BDB4690(a1, a2);
  sub_25BDE0048();
  v3 = *(a2 + *(type metadata accessor for NDOSignpost() + 20));
  v4 = sub_25BDB4754(v3);
  sub_25BDB47FC(v3);
  sub_25BDDF618();
}

uint64_t sub_25BDA2488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v8 = swift_allocObject();
  v8[2] = v7;
  type metadata accessor for AMSPresenter();
  v8[4] = 0;
  v8[5] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_25BDA6D3C;
  *(v9 + 24) = v8;
  qword_27FBDDA40 = v9;

  swift_unknownObjectRelease();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  v11 = sub_25BDA4DBC();
  v12 = sub_25BDD4B8C();
  sub_25BDD28A8(v11, v12, a2, v9, sub_25BDA6D6C, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BDA25C8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  type metadata accessor for AMSPresenter();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_25BDA8658;
  *(v9 + 24) = v8;
  v10 = a2;
  v11 = a1;
  sub_25BDA6D70(a3);
  return v9;
}

uint64_t sub_25BDA2664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v13 = swift_allocObject();
  v13[2] = v12;
  type metadata accessor for AMSPresenter();
  v13[4] = 0;
  v13[5] = 0;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_25BDA8658;
  *(v14 + 24) = v13;
  qword_27FBDDA40 = v14;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD070, &qword_25BDE2210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BDE21F0;
  strcpy((inited + 32), "X-source-type");
  *(inited + 46) = -4864;
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v16 = sub_25BDA6C28(inited);
  swift_setDeallocating();
  sub_25BDA8554(inited + 32, &qword_27FBDD078, qword_25BDE2218);
  v17 = qword_27FBDDA40;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  swift_unknownObjectRetain();

  v19 = sub_25BDA865C();
  v20 = sub_25BDD4B8C();
  sub_25BDD2D24(a1, a2, v19, v20, v16, v17, sub_25BDA869C, v18);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void (*sub_25BDA2860(void *a1, uint64_t a2, void *a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a3;
  v6[4] = a2;
  v7 = a1;
  v8 = a3;
  swift_unknownObjectRetain();
  return sub_25BDA6E34;
}

void sub_25BDA28E4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_25BDDF3C8();
    sub_25BDA6E40(MEMORY[0x277D84F90]);
    v3 = sub_25BDDFDF8();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_25BDA29B8(uint64_t a1)
{
  v2 = sub_25BDDF668();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25BDDF408();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v36);
  v8 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = objc_opt_self();
  v12 = [v11 sharedApplication];
  v13 = sub_25BDDF3C8();
  v14 = [v12 canOpenURL_];

  if (v14)
  {
    v15 = [v11 sharedApplication];
    v16 = sub_25BDDF3C8();
    v17 = v36;
    (*(v5 + 16))(v10, a1, v36);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    (*(v5 + 32))(v19 + v18, v10, v17);
    aBlock[4] = sub_25BDA6FBC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA3168;
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);

    [v15 openURL:v16 withCompletionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    v21 = sub_25BDB7ADC();
    v23 = v33;
    v22 = v34;
    (*(v33 + 16))(v35, v21, v34);
    (*(v5 + 16))(v8, a1, v36);
    v24 = sub_25BDDF648();
    v25 = sub_25BDDFFC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      sub_25BDA7F44(&unk_27FBDD0E0, MEMORY[0x277CC9260]);
      v28 = v36;
      v29 = sub_25BDE01A8();
      v31 = v30;
      (*(v5 + 8))(v8, v28);
      v32 = sub_25BDA6444(v29, v31, aBlock);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_25BD8D000, v24, v25, "URL can not be openend: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F87C8F0](v27, -1, -1);
      MEMORY[0x25F87C8F0](v26, -1, -1);

      (*(v23 + 8))(v35, v34);
    }

    else
    {

      (*(v5 + 8))(v8, v36);
      (*(v23 + 8))(v35, v22);
    }
  }
}

uint64_t sub_25BDA2E38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25BDA2E7C(char a1, uint64_t a2)
{
  v4 = sub_25BDDF408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BDDF668();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v15 = sub_25BDB7ADC();
    (*(v10 + 16))(v14, v15, v9);
    (*(v5 + 16))(v8, a2, v4);
    v16 = sub_25BDDF648();
    v17 = sub_25BDDFFC8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = v18;
      v28 = swift_slowAlloc();
      v29 = v28;
      *v18 = 136315138;
      sub_25BDA7F44(&unk_27FBDD0E0, MEMORY[0x277CC9260]);
      v19 = sub_25BDE01A8();
      v21 = v20;
      (*(v5 + 8))(v8, v4);
      v22 = sub_25BDA6444(v19, v21, &v29);

      v23 = v27;
      *(v27 + 1) = v22;
      v24 = v23;
      _os_log_impl(&dword_25BD8D000, v16, v17, "Failed to open url: %s", v23, 0xCu);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x25F87C8F0](v25, -1, -1);
      MEMORY[0x25F87C8F0](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_25BDA3168(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t (*sub_25BDA31BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5))(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a2;
  v11 = a1;
  v12 = a3;

  swift_unknownObjectRetain();
  return sub_25BDA7044;
}

uint64_t sub_25BDA3254(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a7;
  v43 = a5;
  v44 = a6;
  v14 = sub_25BDDF668();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v20 = sub_25BDDFE38();
  LODWORD(v19) = [v19 isValidPath_];

  if (!v19)
  {
    return a3(0, 0);
  }

  v40 = a9;
  v41 = a3;
  v21 = sub_25BDB7ADC();
  (*(v15 + 16))(v18, v21, v14);

  v22 = sub_25BDDF648();
  v23 = sub_25BDDFFB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39 = a8;
    v26 = v25;
    v45 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_25BDA6444(a1, a2, &v45);
    _os_log_impl(&dword_25BD8D000, v22, v23, "Creating universal AMSUI view controller with path: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v27 = v26;
    a8 = v39;
    MEMORY[0x25F87C8F0](v27, -1, -1);
    MEMORY[0x25F87C8F0](v24, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v28 = swift_allocObject();
  v29 = v43;
  v30 = v44;
  v28[2] = v43;
  v28[3] = v30;
  v28[4] = v42;
  v28[5] = a8;
  type metadata accessor for AMSPresenter();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_25BDA8658;
  *(v31 + 24) = v28;
  qword_27FBDDA48 = v31;
  v32 = v29;
  v33 = v30;

  swift_unknownObjectRelease();
  v34 = swift_allocObject();
  v34[2] = v41;
  v34[3] = a4;
  v34[4] = v33;
  v35 = v33;

  v36 = sub_25BDA247C();
  sub_25BDD23E8(a1, a2, v32, v40, v36, v31, sub_25BDA8038, v34);
}

void sub_25BDA35A0(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v10 = sub_25BDDF668();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v16 = objc_allocWithZone(NDOAMSUILoadingViewController);
      aBlock[4] = sub_25BDA8044;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BDA6394;
      aBlock[3] = &block_descriptor_80;
      v17 = _Block_copy(aBlock);
      v18 = a1;
      v19 = [v16 initWithCreateAMSViewController_];
      _Block_release(v17);

      [v19 setPresenter_];
      sub_25BDA8054(v19, a5);
      a3(0, 1);
    }

    else
    {
      v24 = a1;

      sub_25BDA76A4(v24, a3, a4);
    }
  }

  else
  {
    v20 = sub_25BDB7ADC();
    (*(v11 + 16))(v14, v20, v10);
    v21 = sub_25BDDF648();
    v22 = sub_25BDDFFC8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25BD8D000, v21, v22, "Cannot create AMS view controller", v23, 2u);
      MEMORY[0x25F87C8F0](v23, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    a3(0, 0);
  }
}

void sub_25BDA388C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v84 = a6;
  v75 = a4;
  v76 = a5;
  v9 = sub_25BDDF408();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v80 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v66[-v14];
  v16 = sub_25BDDF668();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v77 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v66[-v21];
  v23 = sub_25BDB7ADC();
  v85 = v17;
  v24 = *(v17 + 16);
  v71 = v23;
  v70 = v24;
  v24(v22);
  v25 = *(v10 + 16);
  v79 = a1;
  v73 = v25;
  v74 = v10 + 16;
  v25(v15, a1, v9);

  v26 = sub_25BDDF648();
  v27 = sub_25BDDFFE8();
  v72 = a3;

  v28 = os_log_type_enabled(v26, v27);
  v82 = v9;
  v83 = a2;
  v81 = v10;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v69 = v16;
    v30 = v9;
    v31 = v29;
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v31 = 136315650;
    sub_25BDA7F44(&unk_27FBDD0E0, MEMORY[0x277CC9260]);
    v67 = v27;
    v32 = sub_25BDE01A8();
    v34 = v33;
    v35 = v30;
    v16 = v69;
    (*(v10 + 8))(v15, v35);
    v36 = sub_25BDA6444(v32, v34, aBlock);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = sub_25BDDFE18();
    v39 = sub_25BDA6444(v37, v38, aBlock);

    *(v31 + 14) = v39;
    *(v31 + 22) = 2080;
    v40 = v72;
    v41 = sub_25BDDFE18();
    v43 = sub_25BDA6444(v41, v42, aBlock);

    *(v31 + 24) = v43;
    _os_log_impl(&dword_25BD8D000, v26, v67, "OpenAMS action handler for url:%s, headers: %s, body: %s", v31, 0x20u);
    v44 = v68;
    swift_arrayDestroy();
    MEMORY[0x25F87C8F0](v44, -1, -1);
    MEMORY[0x25F87C8F0](v31, -1, -1);

    v45 = *(v85 + 8);
    v45(v22, v16);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
    v45 = *(v85 + 8);
    v45(v22, v16);
    v40 = v72;
  }

  v46 = swift_allocObject();
  v48 = v75;
  v47 = v76;
  v46[2] = v75;
  v46[3] = v47;
  type metadata accessor for AMSPresenter();
  v46[4] = 0;
  v46[5] = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_25BDA8658;
  *(v49 + 24) = v46;
  qword_27FBDDA40 = v49;
  v50 = v48;
  v76 = v47;
  swift_unknownObjectRelease();
  v51 = v77;
  v70(v77, v71, v16);
  v52 = sub_25BDDF648();
  v53 = sub_25BDDFFE8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_25BD8D000, v52, v53, "OpenAMS action handler. Making AMS controller", v54, 2u);
    MEMORY[0x25F87C8F0](v54, -1, -1);
  }

  v45(v51, v16);
  v55 = v80;
  v56 = v82;
  v73(v80, v79, v82);
  v57 = v81;
  v58 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v59 = (v78 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v84;
  *(v60 + 16) = v50;
  *(v60 + 24) = v61;
  (*(v57 + 32))(v60 + v58, v55, v56);
  *(v60 + v59) = v83;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v62 = objc_allocWithZone(NDOAMSUILoadingViewController);
  aBlock[4] = sub_25BDA81EC;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA6394;
  aBlock[3] = &block_descriptor_110;
  v63 = _Block_copy(aBlock);

  v64 = v50;
  swift_unknownObjectRetain();
  v65 = [v62 initWithCreateAMSViewController_];
  _Block_release(v63);

  [v65 setPresenter_];
  sub_25BDA8054(v65, v76);
}

uint64_t sub_25BDA3F74(unint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void, void, void), uint64_t a6)
{
  v88 = a6;
  v81 = a3;
  v10 = sub_25BDDF668();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v84 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v80 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v80 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v80 - v19;
  v21 = sub_25BDB7ADC();
  v22 = v11[2];
  v90 = v21;
  v91 = v22;
  (v22)(v20);

  v23 = sub_25BDDF648();
  v24 = sub_25BDDFFE8();

  v25 = os_log_type_enabled(v23, v24);
  v92 = a5;
  if (v25)
  {
    v85 = v11;
    v83 = v10;
    v89 = a4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 134218242;
    v82 = a1;
    *(v26 + 4) = a1;
    *(v26 + 12) = 2080;
    if (!a2)
    {
      sub_25BDA7300(MEMORY[0x277D84F90]);
    }

    v28 = sub_25BDDFE18();
    v30 = v29;

    v31 = sub_25BDA6444(v28, v30, aBlock);

    *(v26 + 14) = v31;
    _os_log_impl(&dword_25BD8D000, v23, v24, "Got message from ams. Status: %lu params:%s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x25F87C8F0](v27, -1, -1);
    MEMORY[0x25F87C8F0](v26, -1, -1);

    v11 = v85;
    v32 = v85[1];
    v10 = v83;
    v32(v20, v83);
    a4 = v89;
    a5 = v92;
    a1 = v82;
  }

  else
  {

    v32 = v11[1];
    v32(v20, v10);
  }

  v33 = v93;
  v87 = a2;
  if (!a2)
  {
    goto LABEL_16;
  }

  aBlock[6] = 0xD00000000000001CLL;
  aBlock[7] = 0x800000025BDE4EC0;
  sub_25BDE0108();
  if (!*(a2 + 16) || (v34 = sub_25BDA6A64(aBlock), v35 = v86, (v36 & 1) == 0))
  {
    sub_25BDA8490(aBlock);
LABEL_16:
    v95 = 0u;
    v96 = 0u;
    goto LABEL_17;
  }

  sub_25BDA71F0(*(a2 + 56) + 32 * v34, &v95);
  sub_25BDA8490(aBlock);
  if (!*(&v96 + 1))
  {
LABEL_17:
    sub_25BDA8554(&v95, &qword_27FBDD1B0, &qword_25BDE23F0);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD1B8, &qword_25BDE23F8);
  if (swift_dynamicCast())
  {
    if (*(aBlock[0] + 16))
    {
      v85 = v11;
      v37 = aBlock[0];
      v91(v35, v90, v10);

      v38 = sub_25BDDF648();
      v39 = sub_25BDDFFE8();
      v89 = v37;
      v40 = v39;

      if (os_log_type_enabled(v38, v40))
      {
        v41 = swift_slowAlloc();
        v83 = v10;
        v42 = v41;
        v43 = swift_slowAlloc();
        v82 = v32;
        v44 = a1;
        v45 = v43;
        aBlock[0] = v43;
        *v42 = 136315138;
        v46 = MEMORY[0x25F87BC80](v89, MEMORY[0x277D837D0]);
        v48 = a4;
        v49 = sub_25BDA6444(v46, v47, aBlock);

        *(v42 + 4) = v49;
        a4 = v48;
        v33 = v93;
        _os_log_impl(&dword_25BD8D000, v38, v40, "Found follow ups to dismiss. Dismissing %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v50 = v45;
        a1 = v44;
        v32 = v82;
        a5 = v92;
        MEMORY[0x25F87C8F0](v50, -1, -1);
        v51 = v42;
        v10 = v83;
        MEMORY[0x25F87C8F0](v51, -1, -1);
      }

      v32(v86, v10);
      v52 = v89;
      v53 = sub_25BDDFEC8();
      v54 = swift_allocObject();
      *(v54 + 16) = v52;
      aBlock[4] = sub_25BDA84E4;
      aBlock[5] = v54;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BDA4BA4;
      aBlock[3] = &block_descriptor_135;
      v55 = _Block_copy(aBlock);

      [v81 dismissFollowUps:v53 completion:v55];
      _Block_release(v55);
    }

    else
    {
    }
  }

LABEL_18:
  v56 = swift_allocObject();
  *(v56 + 16) = a4;
  if (a1 < 2)
  {
    v82 = v32;
    v91(v33, v90, v10);
    v57 = a4;
    v58 = sub_25BDDF648();
    v59 = v10;
    v60 = sub_25BDDFFE8();
    if (os_log_type_enabled(v58, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v89 = a4;
      v63 = v62;
      aBlock[0] = v62;
      *v61 = 136315138;
      if (a1)
      {
        v64 = 0x7373696D736964;
      }

      else
      {
        v64 = 0x6C65636E6163;
      }

      if (a1)
      {
        v65 = 0xE700000000000000;
      }

      else
      {
        v65 = 0xE600000000000000;
      }

      v66 = sub_25BDA6444(v64, v65, aBlock);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_25BD8D000, v58, v60, "Dismissing AMS UI due to %s signal", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      v67 = v63;
      a4 = v89;
      MEMORY[0x25F87C8F0](v67, -1, -1);
      MEMORY[0x25F87C8F0](v61, -1, -1);

      v68 = v93;
    }

    else
    {

      v68 = v33;
    }

    v82(v68, v59);
    if (a4)
    {
      [v57 dismissViewControllerAnimated:1 completion:0];
    }

    qword_27FBDDA40 = 0;
    swift_unknownObjectRelease();
    qword_27FBDDA48 = 0;
    swift_unknownObjectRelease();
    if (v92)
    {
      v92(v87, 0, 0);
    }
  }

  if (a1 != 2)
  {
    v72 = a4;
  }

  if (a5)
  {
    v69 = swift_allocObject();
    *(v69 + 16) = sub_25BDA841C;
    *(v69 + 24) = v56;
    v70 = a4;
    sub_25BDA6D70(a5);

    a5(v87, sub_25BDA8478, v69);

    return sub_25BDA8480(a5);
  }

  else
  {
    v73 = v84;
    v91(v84, v90, v10);
    v74 = a4;
    v75 = sub_25BDDF648();
    v76 = sub_25BDDFFE8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = a4;
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_25BD8D000, v75, v76, "Dismissing AMS UI due to done signal", v78, 2u);
      v79 = v78;
      a4 = v77;
      MEMORY[0x25F87C8F0](v79, -1, -1);
    }

    v32(v73, v10);
    if (a4)
    {
      [v74 dismissViewControllerAnimated:1 completion:0];
    }

    qword_27FBDDA40 = 0;
    swift_unknownObjectRelease();
    qword_27FBDDA48 = 0;

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_25BDA493C(void *a1, uint64_t a2)
{
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    v11 = sub_25BDB7ADC();
    (*(v5 + 16))(v9, v11, v4);
    v12 = a1;

    v13 = sub_25BDDF648();
    v14 = sub_25BDDFFC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v15 = 136315394;
      v17 = MEMORY[0x25F87BC80](a2, MEMORY[0x277D837D0]);
      v19 = sub_25BDA6444(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_25BD8D000, v13, v14, "Failed dismissing %s. Error:%@", v15, 0x16u);
      sub_25BDA8554(v16, &unk_27FBDD1D0, &unk_25BDE2410);
      MEMORY[0x25F87C8F0](v16, -1, -1);
      v22 = v23;
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x25F87C8F0](v22, -1, -1);
      MEMORY[0x25F87C8F0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void sub_25BDA4BA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_25BDA4C10(uint64_t (*a1)(uint64_t))
{
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BDB7ADC();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_25BDDF648();
  v9 = sub_25BDDFFE8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25BD8D000, v8, v9, "Dismissing AMS UI due to done signal", v10, 2u);
    MEMORY[0x25F87C8F0](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return a1(v11);
}

uint64_t sub_25BDA4D7C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

id sub_25BDA4DBC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D2D0C0]);

  return [v0 init];
}

id sub_25BDA4DF4()
{
  v0 = [objc_opt_self() makePropertiesProvider];

  return v0;
}

uint64_t sub_25BDA4E34(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  qword_27FBDDA40 = a6;
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  swift_unknownObjectRetain();

  sub_25BDD1DD0(a1, a5, a2, a3, a4, a6, sub_25BDA7074, v16);
}

uint64_t sub_25BDA4F14(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = a3;
  v9 = sub_25BDDFDC8();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25BDDFDE8();
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BDA7EE8();
  v17 = sub_25BDE0018();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = v25;
  *(v18 + 24) = a2;
  *(v18 + 32) = v19;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  aBlock[4] = sub_25BDA7F34;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA2E38;
  aBlock[3] = &block_descriptor_67;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  v22 = a5;

  sub_25BDDFDD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25BDA7F44(&qword_27FBDD178, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
  sub_25BDA7F8C();
  sub_25BDE00C8();
  MEMORY[0x25F87BDC0](0, v16, v12, v20);
  _Block_release(v20);

  (*(v27 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v26);
}

uint64_t sub_25BDA51F8(char a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_25BDDF668();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v14 = sub_25BDB7ADC();
    (*(v10 + 16))(v13, v14, v9);
    v15 = a2;
    v16 = sub_25BDDF648();
    v17 = sub_25BDDFFC8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = a5;
      v19 = v18;
      v28 = swift_slowAlloc();
      v30 = a2;
      v31 = v28;
      *v19 = 136315138;
      v20 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD190, &unk_25BDE23D0);
      v21 = sub_25BDDFE68();
      v23 = a3;
      v24 = sub_25BDA6444(v21, v22, &v31);

      *(v19 + 4) = v24;
      a3 = v23;
      _os_log_impl(&dword_25BD8D000, v16, v17, "ams container failed with error: %s", v19, 0xCu);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x25F87C8F0](v25, -1, -1);
      v26 = v19;
      a5 = v29;
      MEMORY[0x25F87C8F0](v26, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }

  return a3(a5);
}

void sub_25BDA5420(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_25BDA54AC(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = sub_25BDDF428();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_25BDA7298(v2, v7);
}

uint64_t sub_25BDA5568()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA5684;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_49;
  v0[14] = v2;
  [v1 getLocalDeviceListWithReply_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25BDA5684()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_25BDA5788(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_25BDDF428();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_25BDA582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  v11[4] = a1;
  v11[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25BDA54AC;
  v11[3] = a5;
  v9 = _Block_copy(v11);

  [v8 *a6];
  _Block_release(v9);
}

uint64_t sub_25BDA58FC()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA8698;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_43;
  v0[14] = v2;
  [v1 getRemoteDeviceListWithReply_];

  return MEMORY[0x282200938](v0 + 2);
}

void sub_25BDA5A18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *v3;
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_25BDDF418();
  }

  v7 = v6;
  [v5 removePromoSectionWithHashValue:a1 andAckData:?];
}

uint64_t sub_25BDA5A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_25BDDFE38();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25BDA54AC;
  v11[3] = &block_descriptor_40;
  v9 = _Block_copy(v11);

  [v7 getLocalDeviceWarrantyForSerialNumber:v8 withReply:v9];
  _Block_release(v9);
}

uint64_t sub_25BDA5B5C(uint64_t a1, uint64_t a2)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = *v2;
  return MEMORY[0x2822009F8](sub_25BDA5B84, 0, 0);
}

uint64_t sub_25BDA5B84()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_25BDDFE38();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA5CBC;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_37;
  v0[14] = v5;
  [v2 getLocalDeviceWarrantyForSerialNumber:v4 withReply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25BDA5CBC()
{
  v5 = *v0;
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 152);

  v3 = *(v5 + 8);

  return v3(v1, v2);
}

uint64_t sub_25BDA5DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = sub_25BDDFE38();
  v10 = sub_25BDDFDF8();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_25BDA54AC;
  v13[3] = &block_descriptor_34;
  v11 = _Block_copy(v13);

  [v8 getRemoteDeviceWarrantyForSerialNumber:v9 withAdditionalHeaders:v10 withReply:v11];
  _Block_release(v11);
}

uint64_t sub_25BDA5EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a1;
  v4[21] = a2;
  v5 = *v3;
  v4[22] = a3;
  v4[23] = v5;
  return MEMORY[0x2822009F8](sub_25BDA5F0C, 0, 0);
}

uint64_t sub_25BDA5F0C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = sub_25BDDFE38();
  v0[24] = v5;
  v6 = sub_25BDDFDF8();
  v0[25] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA606C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_31;
  v0[14] = v7;
  [v1 getRemoteDeviceWarrantyForSerialNumber:v5 withAdditionalHeaders:v6 withReply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25BDA606C()
{
  v1 = *(*v0 + 192);
  v6 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 152);

  v4 = *(v6 + 8);

  return v4(v2, v3);
}

uint64_t sub_25BDA61B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25BDA61E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_25BDA61EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

uint64_t sub_25BDA6270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25BDA633C()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_25BDA635C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25BDA6394(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_25BDA8148, v5);
}

void *sub_25BDA6428@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25BDA6444(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BDA6510(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_25BDA71F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25BDA6510(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25BDA661C(a5, a6);
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
    result = sub_25BDE0148();
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

uint64_t sub_25BDA661C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25BDA6668(a1, a2);
  sub_25BDA6798(&unk_286D6F6A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25BDA6668(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25BDA6884(v5, 0);
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

  result = sub_25BDE0148();
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
        v10 = sub_25BDDFEA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BDA6884(v10, 0);
        result = sub_25BDE0118();
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

uint64_t sub_25BDA6798(uint64_t result)
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

  result = sub_25BDA68F8(result, v12, 1, v3);
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

void *sub_25BDA6884(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD198, &unk_25BDE2730);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BDA68F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD198, &unk_25BDE2730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_25BDA69EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25BDE0238();
  sub_25BDDFE88();
  v6 = sub_25BDE0258();

  return sub_25BDA6AA8(a1, a2, v6);
}

unint64_t sub_25BDA6A64(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25BDE00E8();

  return sub_25BDA6B60(a1, v5);
}

unint64_t sub_25BDA6AA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25BDE01C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25BDA6B60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25BDA85B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F87BE90](v9, a1);
      sub_25BDA8490(v9);
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

unint64_t sub_25BDA6C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B0, "L\");
    v3 = sub_25BDE0198();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25BDA69EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_25BDA6D70(uint64_t result)
{
  if (result)
  {
  }

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

void sub_25BDA6DC8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {
    v4 = a1;
    sub_25BDA743C(v4, v2, v3);
  }

  else
  {
    (v2)();
  }
}

unint64_t sub_25BDA6E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD1A0, &qword_25BDE23E0);
    v3 = sub_25BDE0198();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BDA84EC(v4, &v13, &qword_27FBDD1A8, &qword_25BDE23E8);
      v5 = v13;
      v6 = v14;
      result = sub_25BDA69EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25BDA818C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25BDA6FBC(char a1)
{
  v3 = *(sub_25BDDF408() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25BDA2E7C(a1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDA7074(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {

    v7 = a1;
    sub_25BDA7C00(v7, v2, v3);

    v5 = v7;
  }

  else
  {
    type metadata accessor for NDOErrors();
    sub_25BDA7F44(&qword_27FBDD168, type metadata accessor for NDOErrors);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v2(0, v6);
    v5 = v6;
  }
}

void type metadata accessor for NDOAppleCareViewPresentationCompletionStatus()
{
  if (!qword_27FBDD158)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBDD158);
    }
  }
}

uint64_t sub_25BDA71F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25BDA7298(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BDA72AC(a1, a2);
  }

  return a1;
}

uint64_t sub_25BDA72AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_25BDA7300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD1C0, &qword_25BDE2400);
    v3 = sub_25BDE0198();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BDA84EC(v4, v13, &unk_27FBDD9C0, &qword_25BDE2408);
      result = sub_25BDA6A64(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25BDA818C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_25BDA743C(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 loadAMSUIView];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a1;
    aBlock[4] = sub_25BDA8660;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_90;
    v14 = _Block_copy(aBlock);
    v15 = v12;

    v16 = a1;

    [v15 addFinishBlock_];
    _Block_release(v14);
  }

  else
  {
    v17 = sub_25BDB7ADC();
    (*(v7 + 16))(v10, v17, v6);
    v18 = sub_25BDDF648();
    v19 = sub_25BDDFFC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25BD8D000, v18, v19, "Unable to get promise to preload ams container", v20, 2u);
      MEMORY[0x25F87C8F0](v20, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    a2(a1);
  }
}

void sub_25BDA76A4(void *a1, void (*a2)(void *, void), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  v12 = [a1 loadAMSUIView];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    v14[2] = sub_25BDA815C;
    v14[3] = v11;
    v14[4] = a1;
    aBlock[4] = sub_25BDA8660;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_100;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    v17 = a1;

    [v16 addFinishBlock_];
    _Block_release(v15);
  }

  else
  {
    v18 = sub_25BDB7ADC();
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_25BDDF648();
    v20 = sub_25BDDFFC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25BD8D000, v19, v20, "Unable to get promise to preload ams container", v21, 2u);
      MEMORY[0x25F87C8F0](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    a2(a1, 0);
  }
}

void sub_25BDA7954(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  v12 = [a1 loadAMSUIView];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    v14[2] = sub_25BDA83B4;
    v14[3] = v11;
    v14[4] = a1;
    aBlock[4] = sub_25BDA8660;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_123;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    v17 = a1;

    [v16 addFinishBlock_];
    _Block_release(v15);
  }

  else
  {
    v18 = sub_25BDB7ADC();
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_25BDDF648();
    v20 = sub_25BDDFFC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25BD8D000, v19, v20, "Unable to get promise to preload ams container", v21, 2u);
      MEMORY[0x25F87C8F0](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    a2(a1);
  }
}

void sub_25BDA7C00(void *a1, void (*a2)(void *, void), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  v12 = [a1 loadAMSUIView];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    v14[2] = sub_25BDA7EB0;
    v14[3] = v11;
    v14[4] = a1;
    aBlock[4] = sub_25BDA7EDC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_61;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    v17 = a1;

    [v16 addFinishBlock_];
    _Block_release(v15);
  }

  else
  {
    v18 = sub_25BDB7ADC();
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_25BDDF648();
    v20 = sub_25BDDFFC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25BD8D000, v19, v20, "Unable to get promise to preload ams container", v21, 2u);
      MEMORY[0x25F87C8F0](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    a2(a1, 0);
  }
}

uint64_t sub_25BDA7EB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

unint64_t sub_25BDA7EE8()
{
  result = qword_27FBDD170;
  if (!qword_27FBDD170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD170);
  }

  return result;
}

uint64_t sub_25BDA7F44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25BDA7F8C()
{
  result = qword_27FBDD188;
  if (!qword_27FBDD188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD180, "\\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD188);
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

void sub_25BDA8054(void *a1, void *a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1 || v5 == 6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  [a1 setModalInPresentation_];
  [a1 setModalPresentationStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [a2 presentViewController:v8 animated:1 completion:0];
}

uint64_t sub_25BDA815C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

_OWORD *sub_25BDA818C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BDA81EC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF408() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = qword_27FBDDA40;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_unknownObjectRetain();

  sub_25BDD1DD0(v8, v9, v2 + v6, v10, v11, v12, sub_25BDA8328, v13);

  return swift_unknownObjectRelease();
}

void sub_25BDA8328(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {

    v5 = a1;
    sub_25BDA7954(v5, v2, v3);
  }

  else
  {
    (v2)();
  }
}

uint64_t sub_25BDA83B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BDA841C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  qword_27FBDDA40 = 0;
  swift_unknownObjectRelease();
  qword_27FBDDA48 = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_25BDA8480(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BDA84EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BDA8554(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static NDOCoverageCentralViewController.pathKey.getter()
{
  swift_beginAccess();
  v0 = *aPath_0;

  return v0;
}

uint64_t static NDOCoverageCentralViewController.pathKey.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aPath_0 = a1;
  qword_27FBDD248 = a2;
}

Swift::Void __swiftcall NDOCoverageCentralViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v1.super_class = NDOCoverageCentralViewController;
  objc_msgSendSuper2(&v1, sel_viewDidAppear_, 1);
  sub_25BDA8954();
}

uint64_t sub_25BDA8954()
{
  v1 = v0;
  v2 = sub_25BDDF408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  sub_25BDDF3F8();
  sub_25BDA84EC(v13, v11, &unk_27FBDD9A0, &unk_25BDE2670);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_25BDA8554(v13, &unk_27FBDD9A0, &unk_25BDE2670);
    v13 = v11;
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    v14 = sub_25BDDFE38();
    v15 = sub_25BDABB00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_25BDE2430;
    *(v16 + 32) = sub_25BDABB00();
    sub_25BDABD64(0, &qword_27FBDD288, 0x277CCAEB8);
    v17 = sub_25BDDFEC8();

    v18 = sub_25BDDF3C8();
    [v1 pe:v14 emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v15 title:v17 localizedNavigationComponents:v18 deepLink:?];

    (*(v3 + 8))(v6, v2);
  }

  return sub_25BDA8554(v13, &unk_27FBDD9A0, &unk_25BDE2670);
}

Swift::Void __swiftcall NDOCoverageCentralViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_25BDDF668();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v2;
  v34.super_class = NDOCoverageCentralViewController;
  objc_msgSendSuper2(&v34, sel_viewWillAppear_, a1);
  if (([v2 firstLoadRequestStarted] & 1) == 0)
  {
    [v2 setFirstLoadRequestStarted_];
    if ([objc_opt_self() isSignedIntoAppleAccount])
    {
      v10 = [v2 specifier];
      if (v10)
      {
        v11 = v10;
        *&v31 = v10;
        swift_getKeyPath();
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = ObjectType;
        v14 = sub_25BDDF3A8();

        [v2 setPathObserver_];

        v15 = [v2 specifier];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 userInfo];

          if (v17)
          {
            sub_25BDE00B8();
            swift_unknownObjectRelease();
          }

          else
          {
            v29 = 0u;
            v30 = 0u;
          }

          v31 = v29;
          v32 = v30;
          if (*(&v30 + 1))
          {
            sub_25BDABD64(0, &qword_27FBDD250, 0x277CBEAC0);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_24:
              sub_25BDA9A08(0, 0, 0, 0);
              sub_25BDC07B4(0, 0);
              return;
            }

            v22 = v28;
            swift_beginAccess();
            v29 = xmmword_27FBDD240;

            v23 = [v22 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v23)
            {
              sub_25BDE00B8();
              swift_unknownObjectRelease();
            }

            else
            {
              v29 = 0u;
              v30 = 0u;
            }

            v31 = v29;
            v32 = v30;
            if (*(&v30 + 1))
            {
              if (swift_dynamicCast())
              {
                v24 = HIBYTE(v27) & 0xF;
                if ((v27 & 0x2000000000000000) == 0)
                {
                  v24 = v26 & 0xFFFFFFFFFFFFLL;
                }

                if (v24)
                {
                  sub_25BDA96E8(v26, v27);

                  sub_25BDC07B4(1, 0);

                  return;
                }
              }

              else
              {
              }

              goto LABEL_24;
            }
          }

          sub_25BDA8554(&v31, &qword_27FBDD1B0, &qword_25BDE23F0);
          goto LABEL_24;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v18 = sub_25BDB7ADC();
    (*(v6 + 16))(v9, v18, v5);
    v19 = sub_25BDDF648();
    v20 = sub_25BDDFFC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25BD8D000, v19, v20, "Not loading coverage central due to no signed in account", v21, 2u);
      MEMORY[0x25F87C8F0](v21, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    *(&v32 + 1) = sub_25BDDFB58();
    v33 = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(&v31);
    sub_25BDC42D8();
    sub_25BDE0008();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double sub_25BDA91E8@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  if ([*a1 userInfo])
  {
    sub_25BDE00B8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_25BDA9258(uint64_t a1, void **a2)
{
  sub_25BDA84EC(a1, v12, &qword_27FBDD1B0, &qword_25BDE23F0);
  v3 = *a2;
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = sub_25BDE01B8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setUserInfo_];
  return swift_unknownObjectRelease();
}

void sub_25BDA93A8(id *a1)
{
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*a1 userInfo])
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    goto LABEL_20;
  }

  sub_25BDABD64(0, &qword_27FBDD250, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v21;
  swift_beginAccess();
  v22 = xmmword_27FBDD240;

  v8 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {

LABEL_20:
    sub_25BDA8554(&v24, &qword_27FBDD1B0, &qword_25BDE23F0);
    return;
  }

  if (swift_dynamicCast())
  {
    v10 = v19;
    v9 = v20;
    v11 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v11 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = sub_25BDB7ADC();
      (*(v3 + 16))(v6, v12, v2);
      v13 = sub_25BDDF648();
      v14 = sub_25BDDFFE8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25BD8D000, v13, v14, "Handling deeplink while already loaded", v15, 2u);
        MEMORY[0x25F87C8F0](v15, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        sub_25BDA96E8(v10, v9);
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

id sub_25BDA96E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = sub_25BDDFB58();
  v25[4] = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_25BDDFB48();
  sub_25BDE0008();
  v11 = [v2 embeddedController];
  if (v11)
  {
    v12 = v11;
    [v11 willMoveToParentViewController_];
    result = [v12 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    [result removeFromSuperview];

    [v12 removeFromParentViewController];
    [v3 setEmbeddedController_];
  }

  v24 = a1;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = sub_25BDA865C();
  v17 = sub_25BDA8664();
  v18 = sub_25BDA31BC(v16, v17, v3, sub_25BDAB5B8, v15);

  swift_unknownObjectRelease();
  v19 = sub_25BDB7ADC();
  (*(v7 + 16))(v10, v19, v6);
  v20 = sub_25BDDF648();
  v21 = sub_25BDDFFE8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25BD8D000, v20, v21, "Invoking link handler link handler", v22, 2u);
    MEMORY[0x25F87C8F0](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18(v24, a2, sub_25BDAB734, v23);
}

uint64_t sub_25BDA9A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for NDOSignpost();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v38[3] = sub_25BDDFB58();
  v38[4] = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v38);
  sub_25BDDFB48();
  sub_25BDE0008();
  v17 = MEMORY[0x277D84F98];
  v38[0] = MEMORY[0x277D84F98];
  if (a2)
  {
    v18 = [v5 authTokenHeaderKey];
    v19 = sub_25BDDFE48();
    v36 = v5;
    v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = a3;
    v21 = a4;
    v22 = v11;
    v23 = v19;
    v24 = a1;
    v25 = v16;
    v27 = v26;

    v28 = v24;
    v29 = v23;
    v11 = v22;
    a4 = v21;
    a3 = v20;
    v5 = v36;
    v14 = v37;
    v30 = v27;
    v16 = v25;
    sub_25BDAAE80(v28, a2, v29, v30);
    v17 = v38[0];
  }

  sub_25BDA23D4(0, v16);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25BDAB79C(v16, v14);
  v32 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = a3;
  v33[4] = a4;
  sub_25BDAB800(v14, v33 + v32);

  sub_25BDA6D70(a3);
  sub_25BDA2488(v5, v17, sub_25BDAB864, v33);

  sub_25BDAB92C(v16);
}

Swift::Void __swiftcall NDOCoverageCentralViewController.viewDidLoad()()
{
  v4.super_class = NDOCoverageCentralViewController;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t NDOCoverageCentralViewController.handleURL(_:withCompletion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v4 = v3;
  v8 = sub_25BDDF668();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v53 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v59 = v53 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v53 - v19;
  v21 = [objc_opt_self() isSignedIntoAppleAccount];
  v22 = sub_25BDB7ADC();
  v23 = v9[2];
  if (v21)
  {
    v57 = v9 + 2;
    v58 = v16;
    v53[1] = a3;
    v54 = a2;
    v55 = v22;
    v56 = v23;
    (v23)(v20);

    v24 = sub_25BDDF648();
    v25 = sub_25BDDFFE8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      v63[0] = v53[0];
      *v26 = 136315138;
      v62[0] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD258, &qword_25BDE2488);
      v27 = sub_25BDDFE68();
      v29 = v4;
      v30 = v8;
      v31 = v9;
      v32 = sub_25BDA6444(v27, v28, v63);

      *(v26 + 4) = v32;
      v9 = v31;
      v8 = v30;
      v4 = v29;
      _os_log_impl(&dword_25BD8D000, v24, v25, "Handling URL dictionary: %s", v26, 0xCu);
      v33 = v53[0];
      __swift_destroy_boxed_opaque_existential_0(v53[0]);
      MEMORY[0x25F87C8F0](v33, -1, -1);
      MEMORY[0x25F87C8F0](v26, -1, -1);
    }

    v34 = v9[1];
    result = v34(v20, v8);
    v36 = v59;
    if (!a1)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v60 = 1752457584;
    v61 = 0xE400000000000000;
    sub_25BDE0108();
    if (*(a1 + 16) && (v37 = sub_25BDA6A64(v63), (v38 & 1) != 0))
    {
      sub_25BDA71F0(*(a1 + 56) + 32 * v37, v62);
      sub_25BDA8490(v63);
      result = swift_dynamicCast();
      if (result)
      {
        v40 = v60;
        v39 = v61;
        v56(v36, v55, v8);

        v41 = sub_25BDDF648();
        v42 = sub_25BDDFFE8();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v63[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_25BDA6444(v40, v39, v63);
          _os_log_impl(&dword_25BD8D000, v41, v42, "Found path: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x25F87C8F0](v44, -1, -1);
          MEMORY[0x25F87C8F0](v43, -1, -1);

          v45 = v59;
        }

        else
        {

          v45 = v36;
        }

        v34(v45, v8);
        v49 = v54;
        [v4 setFirstLoadRequestStarted_];
        sub_25BDA96E8(v40, v39);
        v56(v58, v55, v8);
        v50 = sub_25BDDF648();
        v51 = sub_25BDDFFE8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_25BD8D000, v50, v51, "Calling completion", v52, 2u);
          MEMORY[0x25F87C8F0](v52, -1, -1);
        }

        result = v34(v58, v8);
        if (v49)
        {
          v49(result);
        }

        goto LABEL_21;
      }
    }

    else
    {
      return sub_25BDA8490(v63);
    }
  }

  else
  {
    v23(v13, v22, v8);
    v46 = sub_25BDDF648();
    v47 = sub_25BDDFFC8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_25BD8D000, v46, v47, "Not handling universal link due to no signed in account", v48, 2u);
      MEMORY[0x25F87C8F0](v48, -1, -1);
    }

    (v9[1])(v13, v8);
    v63[3] = sub_25BDDFB58();
    v63[4] = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(v63);
    sub_25BDC42D8();
    return sub_25BDE0008();
  }

  return result;
}

void sub_25BDAA580(void *a1, char a2)
{
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ((a2 & 1) == 0)
    {
      if (a1)
      {
        v14 = a1;
        v15 = sub_25BDB7ADC();
        (*(v5 + 16))(v9, v15, v4);
        v16 = sub_25BDDF648();
        v17 = sub_25BDDFFE8();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25BD8D000, v16, v17, "Presenting universal link in context", v18, 2u);
          MEMORY[0x25F87C8F0](v18, -1, -1);
        }

        (*(v5 + 8))(v9, v4);
        v19 = v14;
        sub_25BDAA830(a1);

        v13 = v19;
      }

      else
      {
        v20 = sub_25BDB7ADC();
        (*(v5 + 16))(v11, v20, v4);
        v21 = sub_25BDDF648();
        v22 = sub_25BDDFFC8();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_25BD8D000, v21, v22, "Universal link presentation was not handled, but there was no provided view controller - falling back to coverage central", v23, 2u);
          MEMORY[0x25F87C8F0](v23, -1, -1);
        }

        (*(v5 + 8))(v11, v4);
        sub_25BDA9A08(0, 0, 0, 0);
      }
    }
  }
}

void sub_25BDAA830(void *a1)
{
  v2 = v1;
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v55 = a1;
    v9 = [v55 view];
    if (v9)
    {
      v10 = v9;
      [v9 setTranslatesAutoresizingMaskIntoConstraints_];

      [v2 addChildViewController_];
      v11 = [v2 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v55 view];
        if (v13)
        {
          v14 = v13;
          [v12 addSubview_];

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          sub_25BDE0008();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_25BDE2440;
          v16 = [v55 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 topAnchor];

            v19 = [v2 view];
            if (v19)
            {
              v20 = v19;
              v21 = [v19 topAnchor];

              v22 = [v18 constraintEqualToAnchor_];
              *(v15 + 32) = v22;
              v23 = [v55 view];
              if (v23)
              {
                v24 = v23;
                v25 = [v23 bottomAnchor];

                v26 = [v2 view];
                if (v26)
                {
                  v27 = v26;
                  v28 = [v26 bottomAnchor];

                  v29 = [v25 constraintEqualToAnchor_];
                  *(v15 + 40) = v29;
                  v30 = [v55 view];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = [v30 leadingAnchor];

                    v33 = [v2 view];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = [v33 safeAreaLayoutGuide];

                      v36 = [v35 leadingAnchor];
                      v37 = [v32 constraintEqualToAnchor_];

                      *(v15 + 48) = v37;
                      v38 = [v55 view];
                      if (v38)
                      {
                        v39 = v38;
                        v40 = [v38 trailingAnchor];

                        v41 = [v2 view];
                        if (v41)
                        {
                          v42 = v41;
                          v43 = objc_opt_self();
                          v44 = [v42 safeAreaLayoutGuide];

                          v45 = [v44 trailingAnchor];
                          v46 = [v40 constraintEqualToAnchor_];

                          *(v15 + 56) = v46;
                          sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
                          v47 = sub_25BDDFEC8();

                          [v43 activateConstraints_];

                          [v55 didMoveToParentViewController_];
                          [v2 setEmbeddedController_];
                          v48 = v55;

                          return;
                        }

LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v49 = sub_25BDB7ADC();
  (*(v5 + 16))(v8, v49, v4);
  v50 = sub_25BDDF648();
  v51 = sub_25BDDFFC8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_25BD8D000, v50, v51, "Unable to embed nil view controller, displaying error state", v52, 2u);
    MEMORY[0x25F87C8F0](v52, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(&v57 + 1) = sub_25BDDFB58();
  v58 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(&v56);

  sub_25BDC4414(sub_25BDAB73C, v53);

  sub_25BDE0008();
}

uint64_t sub_25BDAAE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_25BDAB430(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_25BDA69EC(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_25BDAB988();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_25BDAB280(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_25BDAAFC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B0, "L\");
  v40 = a2;
  result = sub_25BDE0188();
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
      sub_25BDE0238();
      sub_25BDDFE88();
      result = sub_25BDE0258();
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

uint64_t sub_25BDAB280(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BDE00D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25BDE0238();

      sub_25BDDFE88();
      v13 = sub_25BDE0258();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25BDAB430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25BDA69EC(a3, a4);
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
      sub_25BDAAFC0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25BDA69EC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25BDE01E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25BDAB988();
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

void *sub_25BDAB5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a1)
    {
      v8 = [result authTokenHeaderKey];
      v9 = sub_25BDDFE48();
      v11 = v10;

      *&v19 = v9;
      *(&v19 + 1) = v11;
      sub_25BDE0108();
      if (*(a1 + 16))
      {
        v12 = sub_25BDA6A64(v18);
        if (v13)
        {
          sub_25BDA71F0(*(a1 + 56) + 32 * v12, &v19);
          sub_25BDA8490(v18);
          if (*(&v20 + 1))
          {
            v14 = swift_dynamicCast();
            v15 = v14 == 0;
            if (v14)
            {
              v16 = v18[0];
            }

            else
            {
              v16 = 0;
            }

            if (v15)
            {
              v17 = 0;
            }

            else
            {
              v17 = v18[1];
            }

            goto LABEL_15;
          }

LABEL_14:
          sub_25BDA8554(&v19, &qword_27FBDD1B0, &qword_25BDE23F0);
          v16 = 0;
          v17 = 0;
LABEL_15:
          sub_25BDA9A08(v16, v17, a2, a3);
        }
      }

      sub_25BDA8490(v18);
    }

    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  return result;
}

void sub_25BDAB73C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDA9A08(0, 0, 0, 0);
  }
}

uint64_t sub_25BDAB79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSignpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDAB800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSignpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BDAB864(void *a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for NDOSignpost() - 8) + 80);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_25BDAA830(a1);
    if (v6)
    {
      v6();
    }

    sub_25BDB4990();
  }
}

uint64_t sub_25BDAB92C(uint64_t a1)
{
  v2 = type metadata accessor for NDOSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25BDAB988()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B0, "L\");
  v2 = *v0;
  v3 = sub_25BDE0178();
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

id sub_25BDABB00()
{
  v0 = sub_25BDDF408();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BDDF468();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentLocale];
  sub_25BDDF458();

  type metadata accessor for NDOCoverageCentralViewController(v11);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = [v13 bundleURL];

  sub_25BDDF3E8();
  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v16 = sub_25BDDFE38();
  v17 = sub_25BDDF448();
  v18 = sub_25BDDF3C8();
  v19 = [v15 initWithKey:v16 table:0 locale:v17 bundleURL:v18];

  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v19;
}

uint64_t sub_25BDABD64(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_25BDABDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, void), uint64_t a7)
{
  v26 = a7;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v10 = sub_25BDDF408();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v11 + 32))(v17 + v14, v13, v10);
  v18 = v25;
  *(v17 + v15) = v24;
  *(v17 + v16) = v18;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = objc_allocWithZone(NDOAMSUILoadingViewController);
  aBlock[4] = sub_25BDAC910;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA6394;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  swift_unknownObjectRetain();
  v22 = [v19 initWithCreateAMSViewController_];
  _Block_release(v20);

  [v22 setPresenter_];
  v23 = v22;
  v27(v22, 0);
}

void sub_25BDAC21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25BDDF398();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

NDOAMSUIComposition __swiftcall NDOAMSUIComposition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25BDAC334(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a8;
  v44 = a5;
  v41 = a4;
  v42 = a9;
  v48 = sub_25BDDFDC8();
  v51 = *(v48 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25BDDFDE8();
  v49 = *(v16 - 8);
  v50 = v16;
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v45 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25BDDF408();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  v24 = v23;
  v43 = v23;

  v39 = sub_25BDA25C8(a1, a3, sub_25BDAC7A0, v24);
  sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
  v40 = sub_25BDE0018();
  (*(v20 + 16))(v22, a2, v19);
  v25 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v26 = (v21 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  (*(v20 + 32))(v29 + v25, v22, v19);
  v30 = v42;
  *(v29 + v26) = v41;
  *(v29 + v27) = v44;
  *(v29 + v28) = v39;
  v31 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v46;
  v31[1] = v30;
  aBlock[4] = sub_25BDAC7E8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA2E38;
  aBlock[3] = &block_descriptor_0;
  v32 = _Block_copy(aBlock);
  v33 = a1;

  swift_unknownObjectRetain();

  v34 = v45;
  sub_25BDDFDD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25BDAC8B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
  sub_25BDA7F8C();
  v36 = v47;
  v35 = v48;
  sub_25BDE00C8();
  v37 = v40;
  MEMORY[0x25F87BDC0](0, v34, v36, v32);
  _Block_release(v32);

  swift_unknownObjectRelease();

  (*(v51 + 8))(v36, v35);
  return (*(v49 + 8))(v34, v50);
}

uint64_t sub_25BDAC7A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4();
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_25BDAC7E8()
{
  v1 = *(sub_25BDDF408() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_25BDABDB8(v6, v0 + v2, v7, v8, v9, v11, v12);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BDAC8B8()
{
  result = qword_27FBDD178;
  if (!qword_27FBDD178)
  {
    sub_25BDDFDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD178);
  }

  return result;
}

uint64_t sub_25BDAC910(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF408() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  v14 = sub_25BDA4DF4();
  sub_25BDA4E34(v9, v2 + v6, v10, v11, v14, v12, sub_25BDA83B4, v13);
  swift_unknownObjectRelease();
}

uint64_t sub_25BDACA58@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2B6D0];
  v3 = sub_25BDDF7D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BDACB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF7D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 208))(v7);
}

uint64_t sub_25BDACC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF7D8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25BDACCC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 640))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  swift_beginAccess();
  v4 = sub_25BDDF7D8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_25BDACD94(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  (*(*v1 + 648))();

  v3 = sub_25BDDF7D8();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_25BDACE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF7D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_25BDACFAC(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDACACC();
  return sub_25BDAD0FC;
}

uint64_t type metadata accessor for DeviceWarrantyViewModel()
{
  result = qword_27FBDDD20;
  if (!qword_27FBDDD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDAD210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_25BDA84EC(a1, &v9 - v6, &qword_27FBDD298, &unk_25BDE2B20);
  return (*(**a2 + 256))(v7);
}

uint64_t sub_25BDAD340(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v7, v6, &qword_27FBDD298, &unk_25BDE2B20);
  v8 = sub_25BDB3108(v6, a1);
  sub_25BDA8554(v6, &qword_27FBDD298, &unk_25BDE2B20);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 648))(v10, sub_25BDB3428);
  }

  else
  {
    sub_25BDA84EC(a1, v6, &qword_27FBDD298, &unk_25BDE2B20);
    swift_beginAccess();
    sub_25BDB388C(v6, v1 + v7, &qword_27FBDD298, &unk_25BDE2B20);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD298, &unk_25BDE2B20);
}

void (*sub_25BDAD528(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAD16C();
  return sub_25BDAD678;
}

uint64_t sub_25BDAD6E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

void (*sub_25BDAD7C8(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAD684();
  return sub_25BDAD918;
}

uint64_t sub_25BDAD984@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25BDADA48(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 640))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25BDADAF8(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v4;
    v12 = v6;
    (*(*v4 + 648))(v10, a4);
  }

  return result;
}

void (*sub_25BDADBF4(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAD924();
  return sub_25BDADD44;
}

uint64_t sub_25BDADD68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_25BDADE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_25BDA84EC(a1, &v9 - v6, &qword_27FBDD2A0, &qword_25BDE2548);
  return (*(**a2 + 400))(v7);
}

uint64_t sub_25BDADFB8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  (*(*v4 + 640))();

  v9 = *a1;
  swift_beginAccess();
  return sub_25BDA84EC(v4 + v9, a4, a2, a3);
}

uint64_t sub_25BDAE064(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v7, v6, &qword_27FBDD2A0, &qword_25BDE2548);
  v8 = sub_25BDB356C(v6, a1);
  sub_25BDA8554(v6, &qword_27FBDD2A0, &qword_25BDE2548);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 648))(v10, sub_25BDB38F4);
  }

  else
  {
    sub_25BDA84EC(a1, v6, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_beginAccess();
    sub_25BDB388C(v6, v1 + v7, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD2A0, &qword_25BDE2548);
}

uint64_t sub_25BDAE24C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  sub_25BDA84EC(a2, &v16 - v12, a3, a4);
  v14 = *a5;
  swift_beginAccess();
  sub_25BDB388C(v13, a1 + v14, a3, a4);
  return swift_endAccess();
}

void (*sub_25BDAE320(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDADDDC();
  return sub_25BDAE470;
}

uint64_t sub_25BDAE484@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 640))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v1 + v3, a1);
}

uint64_t sub_25BDAE520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 640))();

  v4 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v3 + v4, a2);
}

uint64_t sub_25BDAE5C0(uint64_t a1, uint64_t *a2)
{
  sub_25BDB39C4(a1, v7);
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v7;
  (*(*v3 + 648))(KeyPath, sub_25BDB42FC, v6, MEMORY[0x277D84F78] + 8);

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_25BDAE684@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25BDAE68C()
{
  swift_getKeyPath();
  (*(*v0 + 640))();

  v1 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v2 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8);

  return v1;
}

uint64_t sub_25BDAE70C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 640))();

  v4 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  a2[1] = v4;
}

uint64_t sub_25BDAE7A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_25BDAE7E0(v2, v3);
}

uint64_t sub_25BDAE7E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v6 = *(v2 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber) == a1 && *(v2 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8), (sub_25BDE01C8() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = a2;
    (*(*v2 + 648))(v10, sub_25BDB42B0);
  }
}

uint64_t sub_25BDAE934()
{
  swift_getKeyPath();
  (*(*v0 + 640))();

  v1 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);
}

uint64_t sub_25BDAE9B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 640))();

  *a2 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);
}

uint64_t sub_25BDAEA40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_25BDAEA6C(v4);
}

uint64_t sub_25BDAEA6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders;
  v4 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);

  v6 = sub_25BDB2F64(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v1;
    v12 = a1;
    (*(*v1 + 648))(v10, sub_25BDB426C);
  }
}

uint64_t sub_25BDAEC08()
{
  swift_getKeyPath();
  (*(*v0 + 640))();

  v1 = (v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25BDAECA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 584))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_25BDB4520;
  a2[1] = result;
  return result;
}

uint64_t sub_25BDAED30(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 592);

  return v6(sub_25BDB44E4, v5);
}

uint64_t sub_25BDAEDE0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 648))();
}

void (*sub_25BDAEE90(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAEBA8();
  return sub_25BDAEFE0;
}

void sub_25BDAEFEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_25BDDF498();

  free(v1);
}

uint64_t DeviceWarrantyViewModel.__allocating_init(serialNumber:additionalHeaders:dataProvider:openAMS:openPath:startWeb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a3;
  v46 = a5;
  v47 = a9;
  v48 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = *(v10 + 48);
  v21 = *(v10 + 52);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  v24 = *MEMORY[0x277D2B6D0];
  v25 = sub_25BDDF7D8();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  v26 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate;
  v27 = sub_25BDDF438();
  (*(*(v27 - 8) + 56))(v22 + v26, 1, 1, v27);
  *(v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLastUpdatedMessage) = 0;
  *(v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLoadingSpinner) = 0;
  v28 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath;
  v29 = sub_25BDDF5D8();
  (*(*(v29 - 8) + 56))(v22 + v28, 1, 1, v29);
  sub_25BDDF4B8();
  v30 = (v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  *v30 = a1;
  v30[1] = a2;
  *(v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders) = v45;
  sub_25BDB39C4(a4, v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider);
  v31 = (v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  *v31 = v46;
  v31[1] = a6;
  v32 = (v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler);
  v33 = v47;
  *v32 = v48;
  v32[1] = a8;
  v34 = (v22 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler);
  *v34 = v33;
  v34[1] = a10;
  v35 = objc_opt_self();

  if ([v35 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v36 = sub_25BDDFF88();
    (*(*(v36 - 8) + 56))(v19, 0, 1, v36);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v22;

    v38 = &unk_25BDE25C0;
    v39 = v19;
    v40 = v37;
  }

  else
  {
    v41 = sub_25BDDFF88();
    (*(*(v41 - 8) + 56))(v19, 1, 1, v41);
    sub_25BDDFF48();

    v42 = sub_25BDDFF38();
    v40 = swift_allocObject();
    v43 = MEMORY[0x277D85700];
    v40[2] = v42;
    v40[3] = v43;
    v40[4] = v22;
    v38 = &unk_25BDE25B0;
    v39 = v19;
  }

  sub_25BDAFA6C(0, 0, v39, v38, v40);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v22;
}

uint64_t DeviceWarrantyViewModel.init(serialNumber:additionalHeaders:dataProvider:openAMS:openPath:startWeb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v44 = a3;
  v45 = a5;
  v46 = a9;
  v47 = a7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  v22 = *MEMORY[0x277D2B6D0];
  v23 = sub_25BDDF7D8();
  (*(*(v23 - 8) + 104))(v11 + v21, v22, v23);
  v24 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate;
  v25 = sub_25BDDF438();
  (*(*(v25 - 8) + 56))(v11 + v24, 1, 1, v25);
  *(v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLastUpdatedMessage) = 0;
  *(v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLoadingSpinner) = 0;
  v26 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath;
  v27 = sub_25BDDF5D8();
  (*(*(v27 - 8) + 56))(v11 + v26, 1, 1, v27);
  sub_25BDDF4B8();
  v28 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  *v28 = a1;
  v28[1] = a2;
  v29 = a4;
  *(v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders) = v44;
  sub_25BDB39C4(a4, v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider);
  v30 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  *v30 = v45;
  v30[1] = a6;
  v31 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler);
  v32 = v46;
  *v31 = v47;
  v31[1] = a8;
  v33 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler);
  *v33 = v32;
  v33[1] = a10;
  v34 = objc_opt_self();

  if ([v34 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v35 = sub_25BDDFF88();
    (*(*(v35 - 8) + 56))(v20, 0, 1, v35);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v11;

    v37 = &unk_25BDE25D0;
    v38 = v20;
    v39 = v36;
  }

  else
  {
    v40 = sub_25BDDFF88();
    (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
    sub_25BDDFF48();

    v41 = sub_25BDDFF38();
    v39 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v39[2] = v41;
    v39[3] = v42;
    v39[4] = v11;
    v37 = &unk_25BDE25C8;
    v38 = v20;
  }

  sub_25BDAFA6C(0, 0, v38, v37, v39);

  __swift_destroy_boxed_opaque_existential_0(v29);
  return v11;
}

uint64_t sub_25BDAF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25BDDF7D8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_25BDDFF48();
  v4[6] = sub_25BDDFF38();
  v9 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDAF958, v9, v8);
}

uint64_t sub_25BDAF958()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = *MEMORY[0x277D2B758];
  v7 = sub_25BDDF9A8();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  (*(v4 + 104))(v2, *MEMORY[0x277D2B6C0], v3);
  (*(*v5 + 208))(v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25BDAFA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25BDA84EC(a3, v27 - v11, &qword_27FBDD2A8, &qword_25BDE25A0);
  v13 = sub_25BDDFF88();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25BDA8554(v12, &qword_27FBDD2A8, &qword_25BDE25A0);
  }

  else
  {
    sub_25BDDFF78();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25BDDFF28();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25BDDFE78() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_25BDA8554(a3, &qword_27FBDD2A8, &qword_25BDE25A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25BDA8554(a3, &qword_27FBDD2A8, &qword_25BDE25A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_25BDAFD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 616);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25BDAFE88;

  return v9();
}

uint64_t sub_25BDAFE88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25BDAFF7C()
{
  v1[10] = v0;
  v2 = sub_25BDDF668();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2B0, &qword_25BDE25E0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = sub_25BDDFA28();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = sub_25BDDF7D8();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_25BDDFF48();
  v1[22] = sub_25BDDFF38();
  v13 = sub_25BDDFF28();
  v1[23] = v13;
  v1[24] = v12;

  return MEMORY[0x2822009F8](sub_25BDB016C, v13, v12);
}

uint64_t sub_25BDB016C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  (*(**(v0 + 80) + 200))();
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *MEMORY[0x277D2B6C0];
  (*(v3 + 8))(v1, v2);
  if (v4 == v5)
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 80);
    (*(*(v0 + 152) + 104))(v6, *MEMORY[0x277D2B6D0], *(v0 + 144));
    (*(*v7 + 208))(v6);
  }

  v8 = *(v0 + 80);
  KeyPath = swift_getKeyPath();
  v10 = *(*v8 + 640);
  (v10)(KeyPath);

  v11 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v8 + v11, v0 + 16);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v12);
  swift_getKeyPath();
  v10();

  v14 = v8 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber;
  v15 = *(v8 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v16 = *(v14 + 8);
  *(v0 + 200) = v16;
  v17 = *(MEMORY[0x277D2B770] + 4);

  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *v18 = v0;
  v18[1] = sub_25BDB03D4;

  return MEMORY[0x28218AB90](v15, v16, v12, v13);
}

uint64_t sub_25BDB03D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(*v2 + 200);
  v10 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;

  v7 = *(v3 + 192);
  v8 = *(v3 + 184);

  return MEMORY[0x2822009F8](sub_25BDB0520, v8, v7);
}

uint64_t sub_25BDB0520()
{
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v3 = v0[27];
    v2 = v0[28];
    v5 = v0[14];
    v4 = v0[15];
    v6 = sub_25BDDF358();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_25BDB3C24(v3, v2);
    sub_25BDDF348();
    sub_25BDB4550(&qword_27FBDD2B8, MEMORY[0x277D2B780]);
    sub_25BDDF338();
    v10 = v0[27];
    v9 = v0[28];
    v28 = v0[16];
    v27 = v0[17];
    v30 = v0[14];
    v29 = v0[15];

    (*(v28 + 56))(v30, 0, 1, v29);
    (*(v28 + 32))(v27, v30, v29);
    v31 = *(sub_25BDDFA18() + 16);

    v32 = sub_25BDA7298(v10, v9);
    v33 = v0[17];
    if (v31)
    {
      v34 = v0[10];
      MEMORY[0x25F87BB50](v32, 0.5, 0.85, 0.0);
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = v33;
      sub_25BDDFB88();

      v38 = (*v34 + 624);
      v39 = (*v38 + **v38);
      v36 = (*v38)[1];
      v23 = swift_task_alloc();
      v0[29] = v23;
      *v23 = v0;
      v24 = sub_25BDB09E8;
      goto LABEL_6;
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  v14 = sub_25BDB7ADC();
  (*(v12 + 16))(v11, v14, v13);
  v15 = sub_25BDDF648();
  v16 = sub_25BDDFFC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25BD8D000, v15, v16, "Local device warranty failed", v17, 2u);
    MEMORY[0x25F87C8F0](v17, -1, -1);
  }

  v19 = v0[12];
  v18 = v0[13];
  v21 = v0[10];
  v20 = v0[11];

  (*(v19 + 8))(v18, v20);
  v37 = (*v21 + 624);
  v39 = (*v37 + **v37);
  v22 = (*v37)[1];
  v23 = swift_task_alloc();
  v0[30] = v23;
  *v23 = v0;
  v24 = sub_25BDB0BCC;
LABEL_6:
  v23[1] = v24;
  v25 = v0[10];

  return v39();
}

uint64_t sub_25BDB09E8()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDB0B08, v4, v3);
}

uint64_t sub_25BDB0B08()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  sub_25BDA7298(v0[27], v0[28]);

  (*(v3 + 8))(v2, v4);
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_25BDB0BCC()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDB0CEC, v4, v3);
}

uint64_t sub_25BDB0CEC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[22];

  sub_25BDA7298(v1, v2);
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25BDB0D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_25BDDF7D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_25BDDFA18();
  (*(v7 + 104))(v10, *MEMORY[0x277D2B6C8], v6);
  (*(*a1 + 208))(v10);
  sub_25BDDFA08();
  (*(*a1 + 256))(v5);
  (*(*a1 + 352))(1);
  return (*(*a1 + 304))(1);
}

uint64_t sub_25BDB0FB8()
{
  v1[11] = v0;
  v2 = sub_25BDDF7D8();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = sub_25BDDF668();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_25BDDFF48();
  v1[20] = sub_25BDDFF38();
  v9 = sub_25BDDFF28();
  v1[21] = v9;
  v1[22] = v8;

  return MEMORY[0x2822009F8](sub_25BDB1120, v9, v8);
}

uint64_t sub_25BDB1120()
{
  v1 = v0[11];
  swift_getKeyPath();
  v2 = (*v1 + 640);
  v3 = *v2;
  (*v2)();

  v4 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v1 + v4, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  swift_getKeyPath();
  v3();

  v7 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v8 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8);
  v0[23] = v8;
  KeyPath = swift_getKeyPath();

  (v3)(KeyPath);

  v10 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);
  v0[24] = v10;
  v11 = *(MEMORY[0x277D2B778] + 4);

  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_25BDB12F0;

  return MEMORY[0x28218AB98](v7, v8, v10, v5, v6);
}

uint64_t sub_25BDB12F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  v7 = *(*v2 + 184);
  v11 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;

  v8 = *(v3 + 176);
  v9 = *(v3 + 168);

  return MEMORY[0x2822009F8](sub_25BDB1458, v9, v8);
}

uint64_t sub_25BDB1458()
{
  v1 = v0[27];
  v2 = v0[20];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = sub_25BDDF358();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_25BDB3C24(v4, v3);
    sub_25BDDF348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2C0, &unk_25BDE3010);
    sub_25BDB3CA4();
    sub_25BDDF338();

    v45 = v0[10];
    v47 = v0[26];
    v46 = v0[27];
    if (*(v45 + 16))
    {
      v48 = v0[11];
      v49 = sub_25BDA7298(v0[26], v0[27]);
      MEMORY[0x25F87BB50](v49, 0.5, 0.85, 0.0);
      v50 = swift_task_alloc();
      *(v50 + 16) = v48;
      *(v50 + 24) = v45;
      sub_25BDDFB88();
      sub_25BDA7298(v47, v46);

      goto LABEL_10;
    }

    v51 = v0[10];

    sub_25BDA7298(v47, v46);
  }

  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v11 = sub_25BDB7ADC();
  v52 = *(v10 + 16);
  v53 = v11;
  v52(v8);
  v12 = sub_25BDDF648();
  v13 = sub_25BDDFFC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25BD8D000, v12, v13, "Remote device warranty failed", v14, 2u);
    MEMORY[0x25F87C8F0](v14, -1, -1);
  }

  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[15];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[11];

  v22 = *(v17 + 8);
  v23 = v22(v15, v16);
  (*(*v21 + 200))(v23);
  LODWORD(v21) = (*(v19 + 88))(v18, v20);
  LODWORD(v15) = *MEMORY[0x277D2B6D0];
  (*(v19 + 8))(v18, v20);
  if (v21 == v15)
  {
    (v52)(v0[18], v53, v0[16]);
    v24 = sub_25BDDF648();
    v25 = sub_25BDDFFC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_25BD8D000, v24, v25, "Displaying error state", v26, 2u);
      MEMORY[0x25F87C8F0](v26, -1, -1);
    }

    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];
    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[11];
    v33 = v0[12];

    v22(v27, v29);
    v34 = *MEMORY[0x277D2B750];
    v35 = sub_25BDDF9A8();
    (*(*(v35 - 8) + 104))(v30, v34, v35);
    (*(v31 + 104))(v30, *MEMORY[0x277D2B6C0], v33);
    (*(*v32 + 208))(v30);
  }

  v37 = v0[26];
  v36 = v0[27];
  v38 = v0[11];
  (*(*v38 + 352))(0);
  (*(*v38 + 304))(1);
  sub_25BDA7298(v37, v36);
LABEL_10:
  v40 = v0[18];
  v39 = v0[19];
  v42 = v0[14];
  v41 = v0[15];

  v43 = v0[1];

  return v43();
}

uint64_t sub_25BDB1960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_25BDDF7D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a2;
  (*(v12 + 104))(v11, *MEMORY[0x277D2B6C8]);
  v13 = *(*a1 + 208);

  v13(v11);
  v14 = sub_25BDDF438();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  (*(*a1 + 256))(v7);
  (*(*a1 + 352))(0);
  return (*(*a1 + 304))(0);
}

uint64_t sub_25BDB1BA4(uint64_t a1)
{
  v159 = a1;
  v1 = sub_25BDDF668();
  v160 = *(v1 - 8);
  v2 = *(v160 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v150 = &v139 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v144 = &v139 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v152 = &v139 - v11;
  MEMORY[0x28223BE20](v10);
  v147 = &v139 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v143 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v151 = &v139 - v18;
  MEMORY[0x28223BE20](v17);
  v146 = &v139 - v19;
  v20 = sub_25BDDF408();
  v154 = *(v20 - 8);
  v155 = v20;
  v21 = *(v154 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v141 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v145 = &v139 - v25;
  MEMORY[0x28223BE20](v24);
  v142 = &v139 - v26;
  v27 = sub_25BDDF818();
  v28 = *(v27 - 8);
  v157 = v27;
  v158 = v28;
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v148 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v153 = &v139 - v33;
  MEMORY[0x28223BE20](v32);
  v149 = &v139 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v139 - v37;
  v39 = sub_25BDDFA98();
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v139 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v139 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v139 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v139 - v50;
  v53 = v52;
  sub_25BDA84EC(v159, v38, &qword_27FBDD2D8, &qword_25BDE2990);
  if ((*(v53 + 48))(v38, 1, v39) == 1)
  {
    sub_25BDA8554(v38, &qword_27FBDD2D8, &qword_25BDE2990);
    v54 = sub_25BDB7ADC();
    v55 = v160;
    (*(v160 + 16))(v5, v54, v1);
    v56 = sub_25BDDF648();
    v57 = sub_25BDDFFC8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_25BD8D000, v56, v57, "Unable to handle nil action", v58, 2u);
      MEMORY[0x25F87C8F0](v58, -1, -1);
    }

    return (*(v55 + 8))(v5, v1);
  }

  v140 = v1;
  v60 = v160;
  (*(v53 + 32))(v51, v38, v39);
  v61 = *(v53 + 16);
  v61(v49, v51, v39);
  v62 = (*(v53 + 88))(v49, v39);
  v63 = v51;
  if (v62 == *MEMORY[0x277D2B7F0])
  {
    v159 = v51;
    v64 = v156;
    v65 = *(v53 + 96);
    v148 = v39;
    v65(v49, v39);
    v66 = v158;
    v67 = v153;
    v68 = v49;
    v69 = v157;
    (v158[4])(v153, v68, v157);
    sub_25BDDF808();
    if (v70)
    {
      v71 = v151;
      sub_25BDDF3F8();

      v73 = v154;
      v72 = v155;
      if ((*(v154 + 48))(v71, 1, v155) != 1)
      {
        v114 = v145;
        (*(v73 + 32))(v145, v71, v72);
        v115 = *(v64 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler + 8);
        (*(v64 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler))(v114);
        (*(v73 + 8))(v114, v72);
        goto LABEL_27;
      }

      sub_25BDA8554(v71, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v74 = sub_25BDB7ADC();
    v75 = v60;
    v76 = *(v60 + 16);
    v77 = v152;
    v78 = v140;
    v76(v152, v74, v140);
    v79 = sub_25BDDF648();
    v80 = sub_25BDDFFC8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v69;
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_25BD8D000, v79, v80, "Can't start web. No url", v82, 2u);
      MEMORY[0x25F87C8F0](v82, -1, -1);

      (*(v75 + 8))(v77, v78);
      (v66[1])(v67, v81);
      return (*(v53 + 8))(v159, v148);
    }

    (*(v75 + 8))(v77, v78);
LABEL_27:
    (v66[1])(v67, v69);
    return (*(v53 + 8))(v159, v148);
  }

  if (v62 == *MEMORY[0x277D2B7E8])
  {
    v159 = v51;
    v83 = v156;
    v84 = v53;
    v85 = *(v53 + 96);
    v148 = v39;
    v85(v49, v39);
    v86 = v149;
    (v158[4])(v149, v49, v157);
    sub_25BDDF808();
    v87 = v140;
    if (v88)
    {
      v89 = v146;
      sub_25BDDF3F8();

      v90 = v154;
      v91 = v155;
      if ((*(v154 + 48))(v89, 1, v155) != 1)
      {
        v132 = v142;
        v133 = (*(v90 + 32))(v142, v89, v91);
        v134 = (*(*v83 + 584))(v133);
        v135 = sub_25BDDF7F8();
        v136 = sub_25BDDF7E8();
        v134(v132, v135, v136);

        (*(v90 + 8))(v132, v91);
LABEL_32:
        (v158[1])(v86, v157);
        return (*(v84 + 8))(v159, v148);
      }

      sub_25BDA8554(v89, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v92 = sub_25BDB7ADC();
    v93 = v147;
    (*(v60 + 16))(v147, v92, v87);
    v94 = sub_25BDDF648();
    v95 = sub_25BDDFFC8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_25BD8D000, v94, v95, "Cannot open AMS. No url!", v96, 2u);
      MEMORY[0x25F87C8F0](v96, -1, -1);
    }

    (*(v60 + 8))(v93, v87);
    goto LABEL_32;
  }

  v97 = v60;
  v98 = v140;
  if (v62 == *MEMORY[0x277D2B7E0])
  {
    v99 = v63;
    v100 = v156;
    v101 = v53;
    v102 = v39;
    (*(v53 + 96))(v49, v39);
    v103 = v49;
    v104 = v157;
    (v158[4])(v148, v103, v157);
    sub_25BDDF808();
    if (v105)
    {
      v106 = v143;
      sub_25BDDF3F8();

      v108 = v154;
      v107 = v155;
      if ((*(v154 + 48))(v106, 1, v155) != 1)
      {
        v137 = v141;
        (*(v108 + 32))(v141, v106, v107);
        v138 = *(v100 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler + 8);
        (*(v100 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler))(v137);
        (*(v108 + 8))(v137, v107);
LABEL_36:
        (v158[1])(v148, v104);
        return (*(v101 + 8))(v99, v102);
      }

      sub_25BDA8554(v106, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v109 = sub_25BDB7ADC();
    v110 = v144;
    (*(v97 + 16))(v144, v109, v98);
    v111 = sub_25BDDF648();
    v112 = sub_25BDDFFC8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_25BD8D000, v111, v112, "Can't open path. No url", v113, 2u);
      MEMORY[0x25F87C8F0](v113, -1, -1);
    }

    (*(v97 + 8))(v110, v98);
    goto LABEL_36;
  }

  v116 = sub_25BDB7ADC();
  v117 = *(v97 + 16);
  v118 = v98;
  v117(v150, v116, v98);
  v61(v46, v63, v39);
  v148 = v39;
  v159 = v63;
  v119 = sub_25BDDF648();
  v120 = sub_25BDDFFE8();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v156 = v121;
    v158 = swift_slowAlloc();
    v161 = v158;
    *v121 = 136315138;
    LODWORD(v157) = v120;
    v122 = v148;
    v61(v43, v46, v148);
    v123 = sub_25BDDFE68();
    v124 = v160;
    v126 = v125;
    v127 = *(v53 + 8);
    v127(v46, v122);
    v128 = sub_25BDA6444(v123, v126, &v161);

    v129 = v156;
    *(v156 + 1) = v128;
    v130 = v129;
    _os_log_impl(&dword_25BD8D000, v119, v157, "Not handling action: %s", v129, 0xCu);
    v131 = v158;
    __swift_destroy_boxed_opaque_existential_0(v158);
    MEMORY[0x25F87C8F0](v131, -1, -1);
    MEMORY[0x25F87C8F0](v130, -1, -1);

    (*(v124 + 8))(v150, v140);
  }

  else
  {

    v127 = *(v53 + 8);
    v122 = v148;
    v127(v46, v148);
    (*(v160 + 8))(v150, v118);
  }

  v127(v159, v122);
  return (v127)(v49, v122);
}

uint64_t DeviceWarrantyViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  v2 = sub_25BDDF7D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath, &qword_27FBDD2A0, &qword_25BDE2548);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider));
  v3 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8);

  v4 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);

  v5 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler + 8);

  v6 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler + 8);

  v7 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler + 8);

  v8 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  v9 = sub_25BDDF4C8();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t DeviceWarrantyViewModel.__deallocating_deinit()
{
  DeviceWarrantyViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25BDB2D74(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25BDB2E6C;

  return v7(a1);
}

uint64_t sub_25BDB2E6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25BDB2F64(uint64_t result, uint64_t a2)
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

    v20 = sub_25BDA69EC(v15, v16);
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
      v25 = sub_25BDE01C8();

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

uint64_t sub_25BDB3108(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD300, &qword_25BDE2758);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_25BDA84EC(a1, &v24 - v16, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA84EC(a2, &v17[v18], &qword_27FBDD298, &unk_25BDE2B20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_25BDA84EC(v17, v12, &qword_27FBDD298, &unk_25BDE2B20);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_25BDB4550(&qword_27FBDD308, MEMORY[0x277CC9578]);
      v21 = sub_25BDDFE28();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_25BDA8554(v17, &qword_27FBDD298, &unk_25BDE2B20);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v17, &qword_27FBDD300, &qword_25BDE2758);
    v20 = 1;
    return v20 & 1;
  }

  sub_25BDA8554(v17, &qword_27FBDD298, &unk_25BDE2B20);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_25BDB34AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_25BDB3504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BDB356C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF5D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2F0, &qword_25BDE2750);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_25BDA84EC(a1, &v24 - v16, &qword_27FBDD2A0, &qword_25BDE2548);
  sub_25BDA84EC(a2, &v17[v18], &qword_27FBDD2A0, &qword_25BDE2548);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_25BDA84EC(v17, v12, &qword_27FBDD2A0, &qword_25BDE2548);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_25BDB4550(&qword_27FBDD2F8, MEMORY[0x277D402D0]);
      v21 = sub_25BDDFE28();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_25BDA8554(v17, &qword_27FBDD2A0, &qword_25BDE2548);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v17, &qword_27FBDD2F0, &qword_25BDE2750);
    v20 = 1;
    return v20 & 1;
  }

  sub_25BDA8554(v17, &qword_27FBDD2A0, &qword_25BDE2548);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_25BDB388C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BDB3938(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25BDB3950()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_25BDB39C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25BDB3A28()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDAF864(v3, v4, v5, v2);
}

uint64_t sub_25BDB3ABC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDAFD6C(v3, v4, v5, v2);
}

uint64_t sub_25BDB3B50()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDAFE88;

  return sub_25BDAF864(v3, v4, v5, v2);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BDB3C24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_25BDB3CA4()
{
  result = qword_27FBDD2C8;
  if (!qword_27FBDD2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD2C0, &unk_25BDE3010);
    sub_25BDB4550(&qword_27FBDD2D0, MEMORY[0x277D2B688]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD2C8);
  }

  return result;
}

void sub_25BDB3D8C()
{
  v0 = sub_25BDDF7D8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_25BDB4218(319, &qword_27FBDD2E0, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_25BDB4218(319, &qword_27FBDD2E8, MEMORY[0x277D402D0]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_25BDDF4C8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_25BDB4218(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25BDE00A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25BDB426C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);
  *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders) = *(v0 + 24);
}

uint64_t sub_25BDB42B0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_25BDB42FC()
{
  v1 = *(v0 + 16);
  sub_25BDB39C4(*(v0 + 24), v4);
  v2 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v2));
  sub_25BDB3938(v4, v1 + v2);
  return swift_endAccess();
}

uint64_t sub_25BDB4374(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25BDB45AC;

  return sub_25BDB2D74(a1, v5);
}

uint64_t sub_25BDB442C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25BDAFE88;

  return sub_25BDB2D74(a1, v5);
}

uint64_t sub_25BDB44E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = a3;
  v8 = a2;
  return v4(a1, &v8, &v7);
}

uint64_t sub_25BDB4520(uint64_t a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, *a2, *a3);
}

uint64_t sub_25BDB4550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BDB45B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25BDDF638();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for NDOSignpost()
{
  result = qword_27FBDDE50;
  if (!qword_27FBDDE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDB4690@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (qword_27FBDDD30 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDDD38;
  }

  else
  {
    if (qword_27FBDDD40 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDDD48;
  }

  v5 = *v4;
  sub_25BDDF628();
  result = type metadata accessor for NDOSignpost();
  *(a2 + *(result + 20)) = a1;
  return result;
}

id sub_25BDB4754(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (qword_27FBDDD30 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDDD38;
  }

  else
  {
    if (qword_27FBDDD40 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDDD48;
  }

  v2 = *v1;

  return v2;
}

const char *sub_25BDB47FC(char a1)
{
  if (!a1)
  {
    return "loadCoverageCentral";
  }

  if (a1 == 1)
  {
    return "loadCoverage";
  }

  return "getCachedCoverageDetails";
}

uint64_t sub_25BDB487C(unsigned __int8 a1)
{
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](a1);
  return sub_25BDE0258();
}

uint64_t sub_25BDB48D8()
{
  v1 = *v0;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v1);
  return sub_25BDE0258();
}

uint64_t sub_25BDB494C()
{
  v1 = *v0;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v1);
  return sub_25BDE0258();
}

void sub_25BDB4990()
{
  sub_25BDE0038();
  if (*(v0 + *(type metadata accessor for NDOSignpost() + 20)) >= 2u)
  {
    if (qword_27FBDDD30 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDDD38;
  }

  else
  {
    if (qword_27FBDDD40 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDDD48;
  }

  v2 = v1;
  sub_25BDDF618();
}

uint64_t sub_25BDB4AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25BDB4DC0();
  v5 = sub_25BDB7AD0();
  v6 = *v5;
  v7 = v5[1];

  result = sub_25BDE0098();
  *a4 = result;
  return result;
}

unint64_t sub_25BDB4B60()
{
  result = qword_27FBDD310;
  if (!qword_27FBDD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD310);
  }

  return result;
}

uint64_t sub_25BDB4BDC()
{
  result = sub_25BDDF638();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOSignpost.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDOSignpost.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BDB4DC0()
{
  result = qword_27FBDD318;
  if (!qword_27FBDD318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD318);
  }

  return result;
}

unint64_t NDOErrors.localizedDescription.getter()
{
  v1 = v0;
  v2 = sub_25BDDF408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NDOErrors();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BDB54C8(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x2065726F6D206F6ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25BDE0128();

      v17 = 0x800000025BDE5480;
      v18 = 0xD000000000000022;
      goto LABEL_19;
    case 2:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25BDE0128();

      strcpy(v24, "invalid data: ");
      HIBYTE(v24[1]) = -18;
      goto LABEL_20;
    case 3:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25BDE0128();

      v17 = 0x800000025BDE53C0;
      v18 = 0xD000000000000014;
      goto LABEL_19;
    case 4:
      v19 = *v10;
      v20 = v10[1];
      strcpy(v24, "parsing: ");
      WORD1(v24[1]) = 0;
      HIDWORD(v24[1]) = -385875968;
      v21 = v20;
      goto LABEL_24;
    case 5:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25BDE0128();

      v17 = 0x800000025BDE5350;
      v18 = 0xD000000000000015;
      goto LABEL_19;
    case 6:
      v15 = *v10;
      v16 = v10[1];
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25BDE0128();

      v17 = 0x800000025BDE5330;
      v18 = 0xD000000000000017;
LABEL_19:
      v24[0] = v18;
      v24[1] = v17;
LABEL_20:
      MEMORY[0x25F87BC30](v15, v16);
      goto LABEL_25;
    case 7:
      v22 = *v10;
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25BDE0128();

      v24[0] = 0xD00000000000001ALL;
      v24[1] = 0x800000025BDE5310;
      v23[1] = v22;
      v19 = sub_25BDE01A8();
LABEL_24:
      MEMORY[0x25F87BC30](v19, v21);
LABEL_25:

      result = v24[0];
      break;
    case 8:
    case 25:
      result = 0xD000000000000018;
      break;
    case 9:
      return result;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x69206769666E6F63;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 17:
    case 26:
      result = 0xD000000000000025;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD00000000000002DLL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 28:
      result = 0xD00000000000001ALL;
      break;
    case 29:
      result = 0x206E776F6E6B6E75;
      break;
    case 30:
      result = 0xD000000000000012;
      break;
    default:
      (*(v3 + 32))(v6, v10, v2);
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_25BDE0128();

      v24[0] = 0xD000000000000014;
      v24[1] = 0x800000025BDE54B0;
      v13 = sub_25BDDF3B8();
      MEMORY[0x25F87BC30](v13);

      v14 = v24[0];
      (*(v3 + 8))(v6, v2);
      result = v14;
      break;
  }

  return result;
}

uint64_t type metadata accessor for NDOErrors()
{
  result = qword_27FBDDF60;
  if (!qword_27FBDDF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDB54C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOErrors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19NewDeviceOutreachUI9NDOErrorsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_25BDDF408();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NDOErrors();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v55 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v55 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v55 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v55 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v55 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v55 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD320, &unk_25BDE2910);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v55 + *(v32 + 56) - v33;
  v35 = a1;
  v36 = &v55 - v33;
  sub_25BDB54C8(v35, &v55 - v33);
  v59 = v34;
  sub_25BDB54C8(v60, v34);
  v60 = v36;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_25BDB54C8(v60, v27);
      v45 = *v27;
      v44 = v27[1];
      v46 = v59;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      if (v45 == *v46 && v44 == v46[1])
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    case 2u:
      sub_25BDB54C8(v60, v24);
      v39 = *v24;
      v38 = v24[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 3u:
      sub_25BDB54C8(v60, v21);
      v39 = *v21;
      v38 = v21[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 4u:
      sub_25BDB54C8(v60, v18);
      v39 = *v18;
      v38 = v18[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 5u:
      sub_25BDB54C8(v60, v15);
      v39 = *v15;
      v38 = v15[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    case 6u:
      sub_25BDB54C8(v60, v12);
      v39 = *v12;
      v38 = v12[1];
      v40 = v59;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_53:

        goto LABEL_54;
      }

LABEL_41:
      if (v39 == *v40 && v38 == v40[1])
      {
LABEL_47:
      }

      else
      {
LABEL_45:
        v49 = sub_25BDE01C8();

        if ((v49 & 1) == 0)
        {
          sub_25BDB5DB8(v60);
          goto LABEL_55;
        }
      }

LABEL_75:
      sub_25BDB5DB8(v60);
      v43 = 1;
      break;
    case 7u:
      v41 = v56;
      sub_25BDB54C8(v60, v56);
      v42 = v59;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_54;
      }

      v43 = *v41 == *v42;
      goto LABEL_78;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    default:
      sub_25BDB54C8(v60, v29);
      v37 = v59;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v57 + 8))(v29, v58);
LABEL_54:
        sub_25BDB5D50(v60);
LABEL_55:
        v43 = 0;
      }

      else
      {
        v52 = v57;
        v51 = v58;
        v53 = v55;
        (*(v57 + 32))(v55, v37, v58);
        v43 = sub_25BDDF3D8();
        v54 = *(v52 + 8);
        v54(v53, v51);
        v54(v29, v51);
LABEL_78:
        sub_25BDB5DB8(v60);
      }

      break;
  }

  return v43 & 1;
}

uint64_t sub_25BDB5CD4()
{
  result = sub_25BDDF408();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BDB5D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD320, &unk_25BDE2910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BDB5DB8(uint64_t a1)
{
  v2 = type metadata accessor for NDOErrors();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BDB5E1C(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000011;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (a2 == 1)
    {
      v3 = "followupDisplayCount";
    }

    else
    {
      v3 = "com.apple.newdeviceoutreach.";
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    v3 = "coverage.viewload";
  }

  MEMORY[0x25F87BC30](v2, v3 | 0x8000000000000000);

  return 0xD00000000000001CLL;
}

unint64_t sub_25BDB5ECC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD328, &qword_25BDE2920);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_25BDE21F0;
      *(inited + 32) = 0x72656D75736E6F63;
      v4 = inited + 32;
      v5 = 0xE800000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD328, &qword_25BDE2920);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_25BDE21F0;
      *(inited + 32) = 7368801;
      v4 = inited + 32;
      v5 = 0xE300000000000000;
    }

    *(inited + 40) = v5;
    v6 = sub_25BDDFF98();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD328, &qword_25BDE2920);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_25BDE21F0;
    *(v3 + 32) = 0x6173726576696E75;
    v4 = v3 + 32;
    *(v3 + 40) = 0xED00006B6E694C6CLL;
    v6 = sub_25BDDFF18();
  }

  *(v3 + 48) = v6;
  v7 = sub_25BDB6014(v3);
  swift_setDeallocating();
  sub_25BDB6118(v4);
  return v7;
}

unint64_t sub_25BDB6014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD338, "@h");
    v3 = sub_25BDE0198();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25BDA69EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_25BDB6118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD330, qword_25BDE2928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NDOAnalytic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOAnalytic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t NDOAMSUILoadingViewController.presenter.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_25BDB64B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presenter];
  *a2 = result;
  return result;
}

uint64_t NDOAMSUILoadingViewController.supportedInterfaceOrientations.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

id NDOAMSUILoadingViewController.init(createAMSViewController:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25BDA6394;
  v8[3] = &block_descriptor_1;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithCreateAMSViewController_];
  _Block_release(v5);

  return v6;
}

{
  *&v2[OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR___NDOAMSUILoadingViewController_createAMSViewController];
  *v5 = a1;
  *(v5 + 1) = a2;
  v7.receiver = v2;
  v7.super_class = NDOAMSUILoadingViewController;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_25BDB67D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_25BDB688C;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

void sub_25BDB688C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id NDOAMSUILoadingViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void NDOAMSUILoadingViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController) = 0;
  swift_unknownObjectWeakInit();
  sub_25BDE0158();
  __break(1u);
}

Swift::Void __swiftcall NDOAMSUILoadingViewController.loadView()()
{
  v4.super_class = NDOAMSUILoadingViewController;
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 navigationItem];
  sub_25BDABD64(0, &qword_27FBDD358, 0x277D751E0);
  sub_25BDABD64(0, &qword_27FBDD360, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25BDE0058();
  v3 = sub_25BDDFFF8();
  [v1 setRightBarButtonItem_];
}

id sub_25BDB6B78()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BDB7ADC();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_25BDDF648();
  v9 = sub_25BDDFFE8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25BD8D000, v8, v9, "Cancel button tapped", v10, 2u);
    MEMORY[0x25F87C8F0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = [v1 amsViewController];
  if (!v11 || (v12 = v11, v13 = [v11 presenter], v12, !v13))
  {
    result = [v1 presenter];
    if (!result)
    {
      return result;
    }

    v13 = result;
  }

  [v13 amsUIViewFinishedWithCompletion_];
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NDOAMSUILoadingViewController.viewDidLoad()()
{
  v0.super_class = NDOAMSUILoadingViewController;
  objc_msgSendSuper2(&v0, sel_viewDidLoad);
  sub_25BDB6DD0();
}

uint64_t sub_25BDB6DD0()
{
  v7 = sub_25BDDFB58();
  v8 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_25BDDFB48();
  sub_25BDE0008();
  v1 = [v0 createAMSViewController];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_25BDB79F0;
  v9 = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_25BDB688C;
  v7 = &block_descriptor_14;
  v3 = _Block_copy(v6);
  v4 = v1[2];
  swift_retain_n();
  v4(v1, v3);
  _Block_release(v1);

  _Block_release(v3);
}

Swift::Void __swiftcall NDOAMSUILoadingViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    [v5 configureWithTransparentBackground];
    v6 = [v1 navigationItem];
    v7 = v5;
    [v6 setScrollEdgeAppearance_];

    v8 = [v1 navigationItem];
    [v8 setStandardAppearance_];

    v9 = [v1 navigationItem];
    [v9 setCompactAppearance_];
  }

  else
  {
    __break(1u);
  }
}

id NDOAMSUILoadingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void sub_25BDB72D8(void *a1)
{
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = a1;
      [v8 setAmsViewController_];
      v10 = [v9 view];
      if (v10)
      {
        v11 = v10;
        [v10 setTranslatesAutoresizingMaskIntoConstraints_];

        [v8 addChildViewController_];
        v12 = [v8 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v9 view];
          if (v14)
          {
            v15 = v14;
            [v13 addSubview_];

            v58 = 0;
            v56 = 0u;
            v57 = 0u;
            sub_25BDE0008();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_25BDE2440;
            v17 = [v9 view];
            if (v17)
            {
              v18 = v17;
              v19 = [v17 topAnchor];

              v20 = [v8 view];
              if (v20)
              {
                v21 = v20;
                v22 = [v20 topAnchor];

                v23 = [v19 constraintEqualToAnchor_];
                *(v16 + 32) = v23;
                v24 = [v9 view];
                if (v24)
                {
                  v25 = v24;
                  v26 = [v24 bottomAnchor];

                  v27 = [v8 view];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = [v27 bottomAnchor];

                    v30 = [v26 constraintEqualToAnchor_];
                    *(v16 + 40) = v30;
                    v31 = [v9 view];
                    if (v31)
                    {
                      v32 = v31;
                      v33 = [v31 leadingAnchor];

                      v34 = [v8 view];
                      if (v34)
                      {
                        v35 = v34;
                        v36 = [v34 safeAreaLayoutGuide];

                        v37 = [v36 leadingAnchor];
                        v38 = [v33 constraintEqualToAnchor_];

                        *(v16 + 48) = v38;
                        v39 = [v9 view];
                        if (v39)
                        {
                          v40 = v39;
                          v41 = [v39 trailingAnchor];

                          v42 = [v8 view];
                          if (v42)
                          {
                            v43 = v42;
                            v44 = objc_opt_self();
                            v45 = [v43 safeAreaLayoutGuide];

                            v46 = [v45 trailingAnchor];
                            v47 = [v41 constraintEqualToAnchor_];

                            *(v16 + 56) = v47;
                            sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
                            v48 = sub_25BDDFEC8();

                            [v44 activateConstraints_];

                            [v9 didMoveToParentViewController_];
                            return;
                          }

                          goto LABEL_29;
                        }

LABEL_28:
                        __break(1u);
LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_21;
    }

    v49 = sub_25BDB7ADC();
    (*(v3 + 16))(v6, v49, v2);
    v50 = sub_25BDDF648();
    v51 = sub_25BDDFFC8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_25BD8D000, v50, v51, "Unable to create ams view controller, displaying error state", v52, 2u);
      MEMORY[0x25F87C8F0](v52, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(&v57 + 1) = sub_25BDDFB58();
    v58 = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(&v56);
    v54 = v8;

    sub_25BDC4414(sub_25BDB79F8, v53);

    sub_25BDE0008();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDB7950()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDB6B78();
  }
}

void sub_25BDB79F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDB6DD0();
  }
}

uint64_t sub_25BDB7A60()
{
  v0 = sub_25BDDF668();
  __swift_allocate_value_buffer(v0, qword_27FBDE520);
  __swift_project_value_buffer(v0, qword_27FBDE520);
  return sub_25BDDF658();
}

uint64_t sub_25BDB7ADC()
{
  if (qword_27FBDDF78 != -1)
  {
    swift_once();
  }

  v0 = sub_25BDDF668();

  return __swift_project_value_buffer(v0, qword_27FBDE520);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25BDB7B78@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBDDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_25BDDF668();
  v3 = __swift_project_value_buffer(v2, qword_27FBDE520);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t sub_25BDB7CB0()
{
  type metadata accessor for CoverageCentralViewModel();
  sub_25BDBC0E4(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel);

  return sub_25BDDFD88();
}

uint64_t sub_25BDB7D3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  return v1;
}

void (*sub_25BDB7DB8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

void sub_25BDB7E44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25BDB7E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);

  return sub_25BDDFD78();
}

uint64_t sub_25BDB7ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoverageCentralSectionView() + 20);
  v4 = sub_25BDDF6E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CoverageCentralSectionView()
{
  result = qword_27FBDE000;
  if (!qword_27FBDE000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDB7FA0(uint64_t a1)
{
  v3 = *(type metadata accessor for CoverageCentralSectionView() + 20);
  v4 = sub_25BDDF6E8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25BDB8064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v225[1] = a2;
  v177 = sub_25BDDF668();
  v176 = *(v177 - 8);
  v3 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v175 = v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD448, &qword_25BDE2988);
  v5 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v180 = v168 - v6;
  v182 = sub_25BDDF7C8();
  v181 = *(v182 - 8);
  v7 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v179 = v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v174 = v168 - v11;
  v186 = sub_25BDDFA98();
  v185 = *(v186 - 8);
  v12 = *(v185 + 64);
  v13 = MEMORY[0x28223BE20](v186);
  v173 = v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v14;
  MEMORY[0x28223BE20](v13);
  v184 = v168 - v15;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD450, &qword_25BDE2998);
  v16 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v183 = v168 - v17;
  v193 = sub_25BDDF858();
  v192 = *(v193 - 8);
  v18 = *(v192 + 64);
  v19 = MEMORY[0x28223BE20](v193);
  v190 = v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = v168 - v21;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD458, &qword_25BDE29A0);
  v22 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v195 = v168 - v23;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD460, &qword_25BDE29A8);
  v24 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222);
  v197 = v168 - v25;
  v196 = sub_25BDDF8B8();
  v189 = *(v196 - 8);
  v26 = *(v189 + 64);
  MEMORY[0x28223BE20](v196);
  v188 = v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_25BDDF8F8();
  v203 = *(v204 - 8);
  v28 = *(v203 + 64);
  v29 = MEMORY[0x28223BE20](v204);
  v187 = v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v202 = v168 - v31;
  v211 = sub_25BDDF718();
  v201 = *(v211 - 8);
  v32 = *(v201 + 64);
  MEMORY[0x28223BE20](v211);
  v200 = v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_25BDDF7A8();
  v207 = *(v208 - 8);
  v34 = *(v207 + 64);
  v35 = MEMORY[0x28223BE20](v208);
  v199 = v168 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v206 = v168 - v37;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD468, &qword_25BDE29B0);
  v38 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v229 = v168 - v39;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD470, &qword_25BDE29B8);
  v40 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v220 = v168 - v41;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD478, &qword_25BDE29C0);
  v42 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v212 = v168 - v43;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD480, &qword_25BDE29C8);
  v44 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v213 = (v168 - v45);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD488, &qword_25BDE29D0);
  v46 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v226);
  v221 = v168 - v47;
  v48 = type metadata accessor for CoverageCentralSectionView();
  v215 = *(v48 - 8);
  v49 = *(v215 + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v170 = v168 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = v51;
  MEMORY[0x28223BE20](v50);
  v53 = v168 - v52;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD490, &qword_25BDE29D8);
  v54 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v205 = v168 - v55;
  v56 = sub_25BDDF898();
  v224 = *(v56 - 8);
  v225[0] = v56;
  v57 = *(v224 + 8);
  v58 = MEMORY[0x28223BE20](v56);
  v60 = v168 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v223 = v168 - v61;
  v62 = sub_25BDDFA88();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v65 = MEMORY[0x28223BE20](v62);
  v169 = v168 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v65);
  v68 = v168 - v67;
  MEMORY[0x28223BE20](v66);
  v70 = v168 - v69;
  v71 = *(v63 + 16);
  v228 = a1;
  v71(v168 - v69, a1, v62);
  v72 = (*(v63 + 88))(v70, v62);
  v73 = *MEMORY[0x277D2B7B0];
  v216 = v53;
  if (v72 == v73)
  {
    (*(v63 + 96))(v70, v62);
    v74 = v60;
    v168[1] = v60;
    v75 = v224;
    v76 = v223;
    v77 = v225[0];
    (*(v224 + 4))();
    (*(v75 + 2))(v74, v76, v77);
    v78 = v216;
    sub_25BDBB588(v217, v216);
    v71(v68, v228, v62);
    v79 = (*(v215 + 80) + 16) & ~*(v215 + 80);
    v80 = (v214 + *(v63 + 80) + v79) & ~*(v63 + 80);
    v81 = swift_allocObject();
    sub_25BDBB5EC(v78, v81 + v79);
    (*(v63 + 32))(v81 + v80, v68, v62);
    v82 = v205;
    sub_25BDDF828();
    v83 = [objc_opt_self() labelColor];
    *(v82 + *(v209 + 36)) = sub_25BDDFD08();
    sub_25BDA84EC(v82, v212, &qword_27FBDD490, &qword_25BDE29D8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9F60();
    sub_25BDBC0E4(&qword_27FBDD4C8, MEMORY[0x277D2B680]);
    v84 = v213;
    sub_25BDDFC18();
    sub_25BDA84EC(v84, v220, &qword_27FBDD480, &qword_25BDE29C8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v85 = v221;
    sub_25BDDFC18();
    sub_25BDA8554(v84, &qword_27FBDD480, &qword_25BDE29C8);
    sub_25BDA84EC(v85, v229, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v85, &qword_27FBDD488, &qword_25BDE29D0);
    sub_25BDA8554(v82, &qword_27FBDD490, &qword_25BDE29D8);
    return (*(v224 + 1))(v223, v225[0]);
  }

  v171 = v64;
  v224 = v68;
  v225[0] = v71;
  v87 = v63;
  v88 = v228;
  if (v72 == *MEMORY[0x277D2B7A0])
  {
    v89 = v62;
    (*(v63 + 96))(v70, v62);
    v90 = v207;
    v91 = v206;
    v92 = v70;
    v93 = v208;
    (*(v207 + 32))(v206, v92, v208);
    (*(v90 + 16))(v199, v91, v93);
    v94 = v216;
    sub_25BDBB588(v217, v216);
    v95 = v224;
    (v225[0])(v224, v88, v89);
    v96 = (*(v215 + 80) + 16) & ~*(v215 + 80);
    v97 = (v214 + *(v87 + 80) + v96) & ~*(v87 + 80);
    v98 = swift_allocObject();
    sub_25BDBB5EC(v94, v98 + v96);
    (*(v87 + 32))(v98 + v97, v95, v89);
    v99 = v200;
    sub_25BDDF708();
    v100 = v201;
    v101 = v211;
    (*(v201 + 16))(v212, v99, v211);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9F60();
    sub_25BDBC0E4(&qword_27FBDD4C8, MEMORY[0x277D2B680]);
    v102 = v213;
    sub_25BDDFC18();
    sub_25BDA84EC(v102, v220, &qword_27FBDD480, &qword_25BDE29C8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v103 = v221;
    sub_25BDDFC18();
    sub_25BDA8554(v102, &qword_27FBDD480, &qword_25BDE29C8);
    sub_25BDA84EC(v103, v229, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v103, &qword_27FBDD488, &qword_25BDE29D0);
    (*(v100 + 8))(v99, v101);
    v104 = *(v207 + 8);
    v105 = v206;
    v106 = &v232;
    return v104(v105, *(v106 - 32));
  }

  if (v72 == *MEMORY[0x277D2B7B8])
  {
    v107 = v228;
    (*(v63 + 96))(v70, v62);
    v108 = v203;
    (*(v203 + 32))(v202, v70, v204);
    (*(v108 + 16))();
    v109 = v216;
    sub_25BDBB588(v217, v216);
    v110 = v224;
    (v225[0])(v224, v107, v62);
    v111 = (*(v215 + 80) + 16) & ~*(v215 + 80);
    v112 = (v214 + *(v87 + 80) + v111) & ~*(v87 + 80);
    v113 = swift_allocObject();
    sub_25BDBB5EC(v109, v113 + v111);
    (*(v87 + 32))(v113 + v112, v110, v62);
    v114 = v188;
    sub_25BDDF8A8();
    v115 = v189;
    v116 = v196;
    (*(v189 + 16))(v195, v114, v196);
    swift_storeEnumTagMultiPayload();
    sub_25BDBC0E4(&qword_27FBDD4D8, MEMORY[0x277D2B710]);
    sub_25BDBA104();
    v117 = v197;
    sub_25BDDFC18();
    sub_25BDA84EC(v117, v220, &qword_27FBDD460, &qword_25BDE29A8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v118 = v221;
    sub_25BDDFC18();
    sub_25BDA8554(v117, &qword_27FBDD460, &qword_25BDE29A8);
    sub_25BDA84EC(v118, v229, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v118, &qword_27FBDD488, &qword_25BDE29D0);
    (*(v115 + 8))(v114, v116);
    v104 = *(v203 + 8);
    v105 = v202;
    v106 = &v231;
    return v104(v105, *(v106 - 32));
  }

  v119 = v72 == *MEMORY[0x277D2B7A8];
  v168[0] = v62;
  if (v119)
  {
    (*(v63 + 96))(v70, v168[0]);
    v120 = v192;
    v121 = v191;
    v122 = v193;
    (*(v192 + 32))();
    v123 = v174;
    sub_25BDDF838();
    v124 = v185;
    v125 = v186;
    if ((*(v185 + 48))(v123, 1, v186) == 1)
    {
      sub_25BDA8554(v123, &qword_27FBDD2D8, &qword_25BDE2990);
      (*(v120 + 16))(v190, v121, v122);
      v126 = v216;
      sub_25BDBB588(v217, v216);
      v127 = v224;
      v128 = v168[0];
      (v225[0])(v224, v88, v168[0]);
      v129 = (*(v215 + 80) + 16) & ~*(v215 + 80);
      v130 = (v214 + *(v87 + 80) + v129) & ~*(v87 + 80);
      v131 = swift_allocObject();
      sub_25BDBB5EC(v126, v131 + v129);
      (*(v87 + 32))(v131 + v130, v127, v128);
      v132 = v179;
      sub_25BDDF7B8();
      v133 = v181;
      v134 = v182;
      (*(v181 + 16))(v180, v132, v182);
      swift_storeEnumTagMultiPayload();
      sub_25BDBC0E4(&qword_27FBDD4E8, MEMORY[0x277D2B6B8]);
      v135 = v183;
      sub_25BDDFC18();
      (*(v133 + 8))(v132, v134);
    }

    else
    {
      v213 = *(v124 + 32);
      v223 = (v124 + 32);
      v213(v184, v123, v125);
      (*(v120 + 16))(v190, v121, v122);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
      v145 = v217;
      v146 = sub_25BDDFD58();
      LODWORD(v212) = (*(*v230 + 336))(v146);

      v147 = v216;
      sub_25BDBB588(v145, v216);
      v148 = v224;
      (v225[0])(v224, v88, v168[0]);
      v149 = *(v215 + 80);
      v150 = (v149 + 16) & ~v149;
      v211 = v150 + v214;
      v151 = *(v87 + 80);
      v152 = (v150 + v214 + v151) & ~v151;
      v214 = v149 | v151 | 7;
      v153 = swift_allocObject();
      v215 = v153;
      sub_25BDBB5EC(v147, v153 + v150);
      v216 = *(v87 + 32);
      v154 = v168[0];
      v216(v153 + v152, v148, v168[0]);
      v155 = v170;
      sub_25BDBB588(v145, v170);
      v156 = v185;
      v157 = v173;
      v158 = v186;
      (*(v185 + 16))(v173, v184, v186);
      v159 = v169;
      (v225[0])(v169, v228, v154);
      v160 = (v211 + *(v156 + 80)) & ~*(v156 + 80);
      v161 = (v172 + v151 + v160) & ~v151;
      v162 = swift_allocObject();
      sub_25BDBB5EC(v155, v162 + v150);
      v213((v162 + v160), v157, v158);
      v216(v162 + v161, v159, v168[0]);
      v163 = v179;
      sub_25BDDF7B8();
      v164 = v181;
      v165 = v182;
      (*(v181 + 16))(v180, v163, v182);
      swift_storeEnumTagMultiPayload();
      sub_25BDBC0E4(&qword_27FBDD4E8, MEMORY[0x277D2B6B8]);
      v135 = v183;
      sub_25BDDFC18();
      (*(v164 + 8))(v163, v165);
      (*(v156 + 8))(v184, v158);
    }

    v136 = v220;
    sub_25BDA84EC(v135, v195, &qword_27FBDD450, &qword_25BDE2998);
    swift_storeEnumTagMultiPayload();
    sub_25BDBC0E4(&qword_27FBDD4D8, MEMORY[0x277D2B710]);
    sub_25BDBA104();
    v166 = v197;
    sub_25BDDFC18();
    sub_25BDA84EC(v166, v136, &qword_27FBDD460, &qword_25BDE29A8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v167 = v221;
    sub_25BDDFC18();
    sub_25BDA8554(v166, &qword_27FBDD460, &qword_25BDE29A8);
    sub_25BDA84EC(v167, v229, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v167, &qword_27FBDD488, &qword_25BDE29D0);
    sub_25BDA8554(v135, &qword_27FBDD450, &qword_25BDE2998);
    v104 = *(v192 + 8);
    v105 = v191;
    v106 = v225;
    return v104(v105, *(v106 - 32));
  }

  v137 = sub_25BDB7ADC();
  v138 = v176;
  v139 = v175;
  v140 = v177;
  (*(v176 + 16))(v175, v137, v177);
  v141 = sub_25BDDF648();
  v142 = sub_25BDDFFC8();
  if (os_log_type_enabled(v141, v142))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&dword_25BD8D000, v141, v142, "Should not hit unknown default case", v144, 2u);
    MEMORY[0x25F87C8F0](v144, -1, -1);
  }

  (*(v138 + 8))(v139, v140);
  swift_storeEnumTagMultiPayload();
  sub_25BDB9E18();
  sub_25BDDFC18();
  return (*(v87 + 8))(v70, v168[0]);
}

unint64_t sub_25BDB9E18()
{
  result = qword_27FBDD498;
  if (!qword_27FBDD498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD488, &qword_25BDE29D0);
    sub_25BDB9EA4();
    sub_25BDBA048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD498);
  }

  return result;
}

unint64_t sub_25BDB9EA4()
{
  result = qword_27FBDD4A0;
  if (!qword_27FBDD4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD480, &qword_25BDE29C8);
    sub_25BDB9F60();
    sub_25BDBC0E4(&qword_27FBDD4C8, MEMORY[0x277D2B680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4A0);
  }

  return result;
}

unint64_t sub_25BDB9F60()
{
  result = qword_27FBDD4A8;
  if (!qword_27FBDD4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD490, &qword_25BDE29D8);
    sub_25BDBC0E4(&qword_27FBDD4B0, MEMORY[0x277D2B6F0]);
    sub_25BDBC1A0(&qword_27FBDD4B8, &qword_27FBDD4C0, &qword_25BDE29E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4A8);
  }

  return result;
}

unint64_t sub_25BDBA048()
{
  result = qword_27FBDD4D0;
  if (!qword_27FBDD4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD460, &qword_25BDE29A8);
    sub_25BDBC0E4(&qword_27FBDD4D8, MEMORY[0x277D2B710]);
    sub_25BDBA104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4D0);
  }

  return result;
}

unint64_t sub_25BDBA104()
{
  result = qword_27FBDD4E0;
  if (!qword_27FBDD4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD450, &qword_25BDE2998);
    sub_25BDBC0E4(&qword_27FBDD4E8, MEMORY[0x277D2B6B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4E0);
  }

  return result;
}

uint64_t sub_25BDBA1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDFA98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v9 = v12[1];
  sub_25BDDFA68();
  v10 = *(type metadata accessor for CoverageCentralSectionView() + 20);
  (*(*v9 + 528))(v8, a2, a1 + v10);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25BDBA318()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F0, &qword_25BDE29E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-v4];
  v15 = v0;
  v6 = v0 + *(type metadata accessor for CoverageCentralSectionView() + 20);
  v7 = sub_25BDDF6D8();
  if (v8)
  {
    v16 = v7;
    v17 = v8;
    sub_25BDBBE6C();
    v9 = sub_25BDDFC98();
    v12 = v11 & 1;
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v10 = 0;
  }

  v16 = v9;
  v17 = v8;
  v18 = v12;
  v19 = v10;
  sub_25BDBA67C(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD500, &qword_25BDE29F8);
  sub_25BDBBA68();
  sub_25BDBBAE4();
  sub_25BDBBBF4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDBA494(uint64_t a1)
{
  v2 = type metadata accessor for CoverageCentralSectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  v9[1] = sub_25BDDF6B8();
  swift_getKeyPath();
  sub_25BDBB588(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_25BDBB5EC(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5E8, qword_25BDE2B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD520, &qword_25BDE2A00);
  sub_25BDBC1A0(&qword_27FBDD5F0, &qword_27FBDD5E8, qword_25BDE2B68);
  sub_25BDBBB68();
  return sub_25BDDFD18();
}

uint64_t sub_25BDBA650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BDDFA78();
  *a1 = result;
  return result;
}

uint64_t sub_25BDBA67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD578, &qword_25BDE30D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5A0, &qword_25BDE2AC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - v10;
  v12 = *(type metadata accessor for CoverageCentralSectionView() + 20);
  v13 = sub_25BDDF6C8();
  if (v14)
  {
    *&v41 = v13;
    *(&v41 + 1) = v14;
    sub_25BDBBE6C();
    v15 = sub_25BDDFC98();
    v17 = v16;
    v19 = v18;
    v40 = a2;
    sub_25BDDFC68();
    v39[1] = v4;
    v20 = sub_25BDDFC88();
    v22 = v21;
    v39[0] = v8;
    v24 = v23;
    v26 = v25;

    sub_25BDBC080(v15, v17, v19 & 1);

    sub_25BDDFDA8();
    sub_25BDDFB98();
    v48 = v24 & 1;
    KeyPath = swift_getKeyPath();
    *v11 = v20;
    *(v11 + 1) = v22;
    v11[16] = v24 & 1;
    *(v11 + 3) = v26;
    v28 = v46;
    *(v11 + 6) = v45;
    *(v11 + 7) = v28;
    *(v11 + 8) = v47;
    v29 = v42;
    *(v11 + 2) = v41;
    *(v11 + 3) = v29;
    v30 = v44;
    *(v11 + 4) = v43;
    *(v11 + 5) = v30;
    *(v11 + 18) = KeyPath;
    v11[152] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0);
    v31 = v40;
    sub_25BDDFC18();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD538, &qword_25BDE2A08);
    return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  }

  else if (sub_25BDDF698() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980), v34 = sub_25BDDFD58(), v35 = (*(*v41 + 288))(v34), , (v35))
  {
    *v7 = sub_25BDDFBF8();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5A8, &qword_25BDE2AD0);
    sub_25BDBAB48(a1, &v7[*(v36 + 44)]);
    sub_25BDA84EC(v7, v11, &qword_27FBDD578, &qword_25BDE30D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0);
    sub_25BDDFC18();
    sub_25BDA8554(v7, &qword_27FBDD578, &qword_25BDE30D0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD538, &qword_25BDE2A08);
    return (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD538, &qword_25BDE2A08);
    return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
  }
}

uint64_t sub_25BDBAB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_25BDDFC38();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C0, &unk_25BDE3200);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v73 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v60 - v16;
  v67 = sub_25BDDF988();
  v17 = *(v67 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v67);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v60 - v23;
  v25 = sub_25BDDF438();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v60 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C8, &qword_25BDE3210);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v68 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v60 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v69 = a1;
  v39 = sub_25BDDFD58();
  (*(*v75 + 240))(v39);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_25BDA8554(v24, &qword_27FBDD298, &unk_25BDE2B20);
    v40 = 1;
    v41 = v67;
  }

  else
  {
    (*(v26 + 32))(v32, v24, v25);
    (*(v26 + 16))(v30, v32, v25);
    sub_25BDDF978();
    (*(v26 + 8))(v32, v25);
    v42 = v67;
    (*(v17 + 32))(v38, v20, v67);
    v40 = 0;
    v41 = v42;
  }

  (*(v17 + 56))(v38, v40, 1, v41);
  v43 = sub_25BDDFD58();
  v44 = (*(*v75 + 336))(v43);

  v45 = 1;
  v46 = v71;
  v47 = v72;
  v48 = v70;
  if (v44)
  {
    v49 = v61;
    sub_25BDDFB78();
    v50 = v64;
    sub_25BDDFC28();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00);
    sub_25BDBC0E4(&qword_27FBDD5E0, MEMORY[0x277CDE330]);
    v51 = v60;
    v52 = v63;
    v53 = v66;
    sub_25BDDFCD8();
    (*(v65 + 8))(v50, v53);
    (*(v62 + 8))(v49, v52);
    (*(v48 + 32))(v47, v51, v46);
    v45 = 0;
  }

  (*(v48 + 56))(v47, v45, 1, v46);
  v54 = v68;
  sub_25BDA84EC(v38, v68, &qword_27FBDD5C8, &qword_25BDE3210);
  v55 = v73;
  sub_25BDA84EC(v47, v73, &qword_27FBDD5C0, &unk_25BDE3200);
  v56 = v74;
  sub_25BDA84EC(v54, v74, &qword_27FBDD5C8, &qword_25BDE3210);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5D0, &qword_25BDE2B30);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_25BDA84EC(v55, v56 + *(v57 + 64), &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v47, &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v38, &qword_27FBDD5C8, &qword_25BDE3210);
  sub_25BDA8554(v55, &qword_27FBDD5C0, &unk_25BDE3200);
  return sub_25BDA8554(v54, &qword_27FBDD5C8, &qword_25BDE3210);
}