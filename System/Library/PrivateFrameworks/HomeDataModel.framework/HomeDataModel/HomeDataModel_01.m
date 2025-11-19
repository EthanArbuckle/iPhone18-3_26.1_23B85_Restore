uint64_t sub_1D1708E48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[16];

  return v18(v19, a2, v17);
}

uint64_t sub_1D170902C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[16];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D1709214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1709280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D17092F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D17093EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D17094F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D17095AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1D1709664()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D17096AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17096EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D17097B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D1709880()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17098B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D1709910()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1709960()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D17099B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17099F4()
{
  if (*v0)
  {
    return 0x6F7250616964656DLL;
  }

  else
  {
    return 0x6F7250746867696CLL;
  }
}

uint64_t sub_1D1709A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D1709AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D170A33C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[22];
      goto LABEL_5;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[30];
      goto LABEL_5;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[38];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_1D170A610(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[22];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[30];
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[38];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1D170AA90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D1DE6908(v4);
}

uint64_t sub_1D170AB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170AC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170ADAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D170ADE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D170AE1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D170AE60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D170AEB0()
{
  v1 = (type metadata accessor for StaticActionSet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = *(v0 + v3 + v1[7] + 8);

  v7(v0 + v3 + v1[9], v6);
  v9 = (v0 + v3 + v1[11]);
  v10 = v9[1];

  v11 = v9[4];

  v12 = v9[7];

  v13 = v9[10];

  v14 = *(v0 + v3 + v1[12]);

  v15 = *(v0 + v3 + v1[13]);

  v16 = *(v0 + v3 + v1[15]);

  v17 = v1[18];
  v18 = sub_1D1E669FC();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v0 + v3 + v17, v18);
  }

  v20 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + v20);

  return MEMORY[0x1EEE6BDD0](v0, v22 + 8, v2 | 7);
}

uint64_t sub_1D170B0C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D170B10C()
{
  v1 = (type metadata accessor for StaticActionSet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = *(v0 + v3 + v1[7] + 8);

  v7(v0 + v3 + v1[9], v6);
  v9 = (v0 + v3 + v1[11]);
  v10 = v9[1];

  v11 = v9[4];

  v12 = v9[7];

  v13 = v9[10];

  v14 = *(v0 + v3 + v1[12]);

  v15 = *(v0 + v3 + v1[13]);

  v16 = *(v0 + v3 + v1[15]);

  v17 = v1[18];
  v18 = sub_1D1E669FC();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v0 + v3 + v17, v18);
  }

  v20 = (v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;

  v23 = *(v0 + v22);

  return MEMORY[0x1EEE6BDD0](v0, v22 + 8, v2 | 7);
}

uint64_t sub_1D170B320()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D170B368()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D170B3A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D170B478(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[18];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[25];

  return v18(v19, a2, v17);
}

uint64_t sub_1D170B65C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[25];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D170B8D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[18];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D170BA64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D170BDF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[13];
LABEL_17:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_18;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[14];
    goto LABEL_17;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[29];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[34];
    goto LABEL_17;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v14 = *(v19 - 8);
    v15 = a3[39];
    goto LABEL_17;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[40];

  return v21(v22, a2, v20);
}

uint64_t sub_1D170C0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[13];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[14];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[29];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[34];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[39];
    goto LABEL_15;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[40];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1D170C3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
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
    v12 = *(a1 + *(a3 + 24));
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
}

uint64_t sub_1D170C48C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
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
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1D170CA68()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D170CAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170CBDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170CD10()
{
  v1 = type metadata accessor for StaticService(0);
  v55 = *(*(v1 - 1) + 80);
  v53 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v56 = v0;
  v54 = (v55 + 32) & ~v55;
  v3 = v0 + v54;
  v4 = sub_1D1E66A7C();
  v57 = *(v4 - 8);
  v5 = *(v57 + 8);
  v5(v0 + v54, v4);
  v6 = *(v0 + v54 + v1[5] + 8);

  v5(v0 + v54 + v1[11], v4);
  v7 = v0 + v54 + v1[13];
  v8 = type metadata accessor for StaticDeviceMetadata();
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v5(v7, v4);
    v9 = *(v7 + v8[5] + 8);

    v10 = *(v7 + v8[6] + 8);

    v11 = *(v7 + v8[7] + 8);

    v12 = *(v7 + v8[8] + 8);
  }

  v13 = v1[14];
  v14 = sub_1D1E669FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v3 + v13, v14);
  }

  v17 = v1[15];
  if (!v16(v3 + v17, 1, v14))
  {
    (*(v15 + 8))(v3 + v17, v14);
  }

  v52 = v15;
  v18 = *(v3 + v1[19]);

  v19 = *(v3 + v1[20] + 8);

  v20 = *(v3 + v1[25] + 8);

  v21 = v1[29];
  v22 = *(v57 + 48);
  if (!v22(v3 + v21, 1, v4))
  {
    v5(v3 + v21, v4);
  }

  v23 = v1[30];
  if (!v22(v3 + v23, 1, v4))
  {
    v5(v3 + v23, v4);
  }

  v58 = v5;
  v24 = *(v3 + v1[31]);

  v25 = *(v3 + v1[32]);

  v26 = (v3 + v1[33]);
  v27 = *v26;

  v28 = v26[1];

  v29 = v3 + v1[34];
  v30 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    v58(v29, v4);
    v31 = v29 + *(v30 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v33 = *(v31 + 8);

      updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
      v51 = updated[5];
      if (!v16(v31 + v51, 1, v14))
      {
        (*(v52 + 8))(v31 + v51, v14);
      }

      v35 = *(v31 + updated[6] + 8);

      v36 = *(v31 + updated[7] + 8);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_21;
      }

      v58(v31, v4);
      if (*(v31 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v37 = *(v3 + v1[36]);

  v38 = v1[37];
  if (!v22(v3 + v38, 1, v4))
  {
    v58(v3 + v38, v4);
  }

  v39 = v1[39];
  v40 = type metadata accessor for EndpointPath(0);
  if (!(*(*(v40 - 8) + 48))(v3 + v39, 1, v40))
  {
    v58(v3 + v39, v4);
  }

  v41 = v3 + v1[40];
  v42 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    if (*(v41 + 16) != 1)
    {
    }

    v43 = v41 + *(v42 + 20);
    v44 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    if (!(*(*(v44 - 8) + 48))(v43, 1, v44))
    {
      v45 = *(v43 + 8);

      v46 = *(v44 + 24);
      v47 = sub_1D1E66C5C();
      (*(*(v47 - 8) + 8))(v43 + v46, v47);
    }

    v48 = *(v41 + *(v42 + 24));
  }

  v49 = (v53 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v56, v49 + 8, v55 | 7);
}

uint64_t sub_1D170D8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StateSnapshot(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170D9D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StateSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170DB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUserActionPrediction();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D170DB74(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for StaticUserActionPrediction();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D170DBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170DD20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
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
    v11 = sub_1D1E66A7C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170E00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
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
    v11 = sub_1D1E66A7C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170E208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 72);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D170E33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 72);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D170E538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D170E5F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D170E884(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for StaticHome();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D170E930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StaticHome();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D170E9E4()
{
  v1 = type metadata accessor for StaticMatterDevice();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = *(v0 + v3 + v1[6] + 8);

  v8 = *(v0 + v3 + v1[8]);

  v6(v0 + v3 + v1[9], v5);
  v6(v0 + v3 + v1[10], v5);
  v9 = *(v0 + v3 + v1[11] + 8);

  v6(v0 + v3 + v1[12], v5);
  v10 = v1[13];
  v11 = sub_1D1E669FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = *(v4 + v1[14]);

  v15 = (v4 + v1[15]);
  v16 = *(v15 + 1);

  v17 = *(v15 + 3);

  v18 = *(v15 + 5);

  v19 = *(type metadata accessor for MatterTileMetadata() + 44);
  if (!v13(&v15[v19], 1, v11))
  {
    (*(v12 + 8))(&v15[v19], v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v21, v2 | 7);
}

uint64_t sub_1D170EC44()
{
  v1 = type metadata accessor for StaticMediaSystem();
  v33 = *(*(v1 - 1) + 80);
  v31 = *(*(v1 - 1) + 64);
  v32 = (v33 + 16) & ~v33;
  v2 = v0 + v32;
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v32, v3);
  v5 = *(v0 + v32 + v1[5] + 8);

  v6 = v0 + v32 + v1[6];
  v7 = *(v6 + 8);
  if (v7 != 255)
  {
    sub_1D1771B5C(*v6, v7);
  }

  v8 = v1[7];
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v30 = v10;
  v12 = *(v2 + v1[8] + 8);

  v13 = *(v2 + v1[16] + 8);

  v14 = *(v2 + v1[17]);

  v15 = v2 + v1[18];
  v16 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v4(v15, v3);
    v17 = v15 + *(v16 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v19 = *(v17 + 8);

      updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
      v29 = updated[5];
      if (!v11(v17 + v29, 1, v9))
      {
        (*(v30 + 8))(v17 + v29, v9);
      }

      v21 = *(v17 + updated[6] + 8);

      v22 = *(v17 + updated[7] + 8);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_15;
      }

      v4(v17, v3);
      if (*(v17 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:
  v4(v2 + v1[20], v3);
  v23 = *(v2 + v1[21]);

  v24 = *(v2 + v1[22] + 8);

  v25 = *(v2 + v1[23]);

  v26 = *(v2 + v1[24]);

  v27 = *(v2 + v1[25]);

  return MEMORY[0x1EEE6BDD0](v0, v32 + v31, v33 | 7);
}

uint64_t sub_1D170EFCC()
{
  v1 = type metadata accessor for StaticServiceGroup();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5] + 8);

  v8 = v1[8];
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = *(v5 + v1[9]);

  v12 = *(v5 + v1[10] + 8);

  v13 = *(v5 + v1[14]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D170F168()
{
  v1 = type metadata accessor for StaticService(0);
  v53 = *(*(v1 - 1) + 80);
  v51 = *(*(v1 - 1) + 64);
  v52 = (v53 + 16) & ~v53;
  v54 = v0;
  v2 = v0 + v52;
  v3 = sub_1D1E66A7C();
  v55 = *(v3 - 8);
  v4 = *(v55 + 8);
  v4(v0 + v52, v3);
  v5 = *(v0 + v52 + v1[5] + 8);

  v4(v0 + v52 + v1[11], v3);
  v6 = v0 + v52 + v1[13];
  v7 = type metadata accessor for StaticDeviceMetadata();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v4(v6, v3);
    v8 = *(v6 + v7[5] + 8);

    v9 = *(v6 + v7[6] + 8);

    v10 = *(v6 + v7[7] + 8);

    v11 = *(v6 + v7[8] + 8);
  }

  v12 = v1[14];
  v13 = sub_1D1E669FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v2 + v12, 1, v13))
  {
    (*(v14 + 8))(v2 + v12, v13);
  }

  v16 = v1[15];
  if (!v15(v2 + v16, 1, v13))
  {
    (*(v14 + 8))(v2 + v16, v13);
  }

  v50 = v14;
  v17 = *(v2 + v1[19]);

  v18 = *(v2 + v1[20] + 8);

  v19 = *(v2 + v1[25] + 8);

  v20 = v1[29];
  v21 = *(v55 + 48);
  if (!v21(v2 + v20, 1, v3))
  {
    v4(v2 + v20, v3);
  }

  v22 = v1[30];
  if (!v21(v2 + v22, 1, v3))
  {
    v4(v2 + v22, v3);
  }

  v56 = v4;
  v23 = *(v2 + v1[31]);

  v24 = *(v2 + v1[32]);

  v25 = (v2 + v1[33]);
  v26 = *v25;

  v27 = v25[1];

  v28 = v2 + v1[34];
  v29 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    v56(v28, v3);
    v30 = v28 + *(v29 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v32 = *(v30 + 8);

      updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
      v49 = updated[5];
      if (!v15(v30 + v49, 1, v13))
      {
        (*(v50 + 8))(v30 + v49, v13);
      }

      v34 = *(v30 + updated[6] + 8);

      v35 = *(v30 + updated[7] + 8);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_21;
      }

      v56(v30, v3);
      if (*(v30 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v36 = *(v2 + v1[36]);

  v37 = v1[37];
  if (!v21(v2 + v37, 1, v3))
  {
    v56(v2 + v37, v3);
  }

  v38 = v1[39];
  v39 = type metadata accessor for EndpointPath(0);
  if (!(*(*(v39 - 8) + 48))(v2 + v38, 1, v39))
  {
    v56(v2 + v38, v3);
  }

  v40 = v2 + v1[40];
  v41 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
  {
    if (*(v40 + 16) != 1)
    {
    }

    v42 = v40 + *(v41 + 20);
    v43 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {
      v44 = *(v42 + 8);

      v45 = *(v43 + 24);
      v46 = sub_1D1E66C5C();
      (*(*(v46 - 8) + 8))(v42 + v45, v46);
    }

    v47 = *(v40 + *(v41 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v54, v52 + v51, v53 | 7);
}

uint64_t sub_1D170F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D1E669FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44) + 25);
  v15 = -2 - v14;
  if ((-2 - v14) < 0)
  {
    v15 = -1;
  }

  if (v14 > 0x80000000)
  {
    return (v15 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D170FAA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D1E669FC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 44));
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = ~a2 << 8;
      v15[4] = 0;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D170FBB8()
{
  v1 = *v0;
  v2 = 7889261;
  v3 = 0x756C615670657473;
  v4 = 1953066613;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7235949;
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

uint64_t sub_1D170FC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CDF740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D170FC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D170FD40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D170FE48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for StaticRoom(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_13;
  }

  v17 = type metadata accessor for StaticUser();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[22];

  return v19(v20, a2, v18);
}

uint64_t sub_1D1710068(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for StaticRoom(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = type metadata accessor for StaticUser();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[22];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D1710288(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for StaticMediaProfile();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D1710408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for StaticMediaProfile();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D1710590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D1710650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D171070C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v56 - v19;
  v21 = type metadata accessor for DashboardSortableData();
  v22 = *(v21 + 24);
  v65 = a1;
  v61 = v22;
  v23 = sub_1D18E4158(a1 + v22, a3);
  v25 = v24;
  v60 = *(v21 + 24);
  v26 = sub_1D18E4158(a2 + v60, a3);
  if (v25)
  {
    if ((v27 & 1) == 0)
    {
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    if (v27)
    {
      v28 = 1;
      return v28 & 1;
    }

    if (v23 != v26)
    {
      v28 = v23 < v26;
      return v28 & 1;
    }
  }

  v29 = *(v17 + 48);
  sub_1D1741C08(v65, v20, &qword_1EC642570, &qword_1D1E6C6A0);
  v30 = a2;
  sub_1D1741C08(a2, &v20[v29], &qword_1EC642570, &qword_1D1E6C6A0);
  v32 = v63;
  v31 = v64;
  v33 = *(v63 + 48);
  if (v33(v20, 1, v64) == 1)
  {
    if (v33(&v20[v29], 1, v31) != 1)
    {
      sub_1D1741A30(&v20[v29], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v20, v16, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v33(&v20[v29], 1, v31) == 1)
    {
      (*(v32 + 8))(v16, v31);
      sub_1D1741A30(&v20[v29], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      v28 = 1;
      return v28 & 1;
    }

    v57 = v30;
    sub_1D1741C08(&v20[v29], v62, &qword_1EC642570, &qword_1D1E6C6A0);
    v34 = *(v32 + 32);
    v35 = v59;
    v34(v59, v16, v31);
    v36 = v58;
    v34(v58, v62, v31);
    v37 = v36;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v28 = sub_1D1E6696C();
      v54 = *(v32 + 8);
      v54(v37, v31);
      v54(v35, v31);
      sub_1D1741A30(&v20[v29], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      return v28 & 1;
    }

    v38 = *(v32 + 8);
    v38(v36, v31);
    v38(v35, v31);
    v30 = v57;
  }

  sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
  v39 = *(v21 + 20);
  v40 = (v65 + v39);
  v41 = *(v65 + v39);
  v42 = *(v65 + v39 + 8);
  v43 = (v30 + v39);
  v44 = *v43;
  v45 = v43[1];
  if (*v40 == *v43 && v42 == v45 || (v46 = *v40, v47 = v40[1], v48 = *v43, v49 = v43[1], (sub_1D1E6904C() & 1) != 0))
  {
    v50 = sub_1D1E66A1C();
    v52 = v51;
    if (v50 == sub_1D1E66A1C() && v52 == v53)
    {

      v28 = 0;
    }

    else
    {
      v28 = sub_1D1E6904C();
    }
  }

  else
  {
    v68 = v41;
    v69 = v42;
    v66 = v44;
    v67 = v45;
    sub_1D17D8EF0();
    v28 = sub_1D1E685FC() == -1;
  }

  return v28 & 1;
}

uint64_t sub_1D1710ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1711008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D171113C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D17111A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1711238()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D171130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D17113FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D17114F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D17115C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1711670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D171173C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 + 1);
  }

  return result;
}

uint64_t sub_1D1711840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D1711900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D1711A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 5)
      {
        return v14 - 4;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D1711B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1711C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D1711CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D1711DA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 44)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D1711E64(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 44)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1711F44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1711FA4()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1711FDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1712030()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1712094()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17120CC()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1D17121D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_1D1D68428(&v4);
}

uint64_t sub_1D171221C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1712288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1712304()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17123F0()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17124DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D171251C()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17126A0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC64E5C8;
}

uint64_t sub_1D17126F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 24));
}

uint64_t sub_1D1712740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E662EC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D17127AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E662EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D171281C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
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
    v12 = *(a1 + a3[6]);
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
    v14 = sub_1D1E66C5C();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D1712950(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
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
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v13 = sub_1D1E66C5C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D1712A78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1D1E66C5C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D1712B30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1D1E66C5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1712BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
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

uint64_t sub_1D1712C94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D1712D50(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AsyncBatchedSequenceStorage.State();
  return sub_1D1E66E2C();
}

uint64_t sub_1D1712D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D1712E5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1712F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D1712FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D17130AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17130E4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D17131B4()
{
  v1 = (type metadata accessor for AsyncNotifySequence() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC88, &qword_1D1EAD6C8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1713318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC88, &qword_1D1EAD6C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D1713440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC88, &qword_1D1EAD6C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1713568()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D17135A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D17135E0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1713618()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1713658()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v2 = sub_1D1E67D7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1D1713A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D1713B68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D1713C3C()
{
  if (*(v0 + 16))
  {

    if (*(v0 + 32) != 255)
    {
      v1 = *(v0 + 24);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1713C8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1713CCC@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = off_1EEC21D70;
  v2 = qword_1EEC21D78;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1D1D973B4;
  a1[1] = v4;
}

uint64_t sub_1D1713D44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1713D84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1713DCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1713EB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  v8 = *(v0 + 10);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1713F90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  v7 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714140()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714220()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17142F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714384()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17143DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1D171442C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F4D85BB8;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1D1714454()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F530, qword_1D1EAF580);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1714484()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17144D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1D171451C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

ValueMetadata *sub_1D1714624()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for WidgetManager;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1D171464C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D17146C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1714754(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  return type metadata accessor for WidgetRefresh();
}

uint64_t sub_1D1714794(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  return type metadata accessor for WidgetDetailUpdate();
}

uint64_t sub_1D17147D4(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  return type metadata accessor for WidgetWriteRequests();
}

uint64_t sub_1D1714814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1714880(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D171499C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17149DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714A14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714A4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714AE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714B18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1714B50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1D1714CA0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D1DE7204(v2);
}

uint64_t sub_1D1714CD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714D10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1714D50()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1714D88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1714DD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1714E18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1714E6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D1DE9010(v4);
}

id sub_1D1714E9C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EE07AE00;
  *a1 = qword_1EE07AE00;

  return v2;
}

id sub_1D1714EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D1714F70@<X0>(void *a1@<X8>)
{
  if (qword_1EE07AE38 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EE07AE40;
  return result;
}

uint64_t *sub_1D1714FD4(uint64_t *result)
{
  v1 = *result;
  if (qword_1EE07AE38 != -1)
  {
    result = swift_once();
  }

  qword_1EE07AE40 = v1;
  return result;
}

uint64_t sub_1D1715034()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D171508C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17150C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  if (*(v0 + 64) != 255)
  {
    v3 = *(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1D1715128()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  if (*(v0 + 56) != 255)
  {
    v3 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1D17151CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1715328()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715360()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17153A8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1715400()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1715448()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1715498()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FFA8, &qword_1D1EB1AA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1715568()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17155A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D17155F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17156B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D17157F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D1DE60D8(v4);
}

uint64_t sub_1D1715820()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715858()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D17158B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1715904()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D17159EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1715AF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1715B68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1715BB0()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715C38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1715D34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1715DCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1715E24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1715E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21IntentLaunchDataModel_launchInitiationTimestamp;
  swift_beginAccess();
  return sub_1D174A548(v3 + v4, a2);
}

uint64_t sub_1D1715ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21IntentLaunchDataModel_serviceIDs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1715F3C()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v66 = *(*(v1 - 8) + 80);
  v64 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);

  v68 = v0;
  v65 = (v66 + 40) & ~v66;
  v4 = v0 + v65;
  v5 = *(v0 + v65);

  v67 = v1;
  v6 = v0 + v65 + *(v1 + 20);
  v7 = sub_1D1E66A7C();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = type metadata accessor for StaticHome();
  v10 = *(v6 + v9[5] + 8);

  v11 = v9[6];
  v12 = sub_1D1E669FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v15 = v6 + v9[7];
  v8(v15, v7);
  v63 = v8;
  v16 = type metadata accessor for StaticRoom(0);
  v17 = *(v15 + v16[5] + 8);

  v62 = v7;
  v18 = v16[6];
  if (!v14(v15 + v18, 1, v12))
  {
    (*(v13 + 8))(v15 + v18, v12);
  }

  v19 = *(v15 + v16[8]);

  v63(v15 + v16[9], v62);
  v20 = *(v15 + v16[10]);

  v21 = *(v15 + v16[11]);

  v22 = *(v15 + v16[12]);

  v23 = *(v15 + v16[13]);

  v24 = *(v15 + v16[14]);

  v25 = *(v15 + v16[15]);

  v26 = *(v15 + v16[16]);

  v27 = *(v15 + v16[17]);

  v28 = *(v15 + v16[18]);

  v29 = *(v15 + v16[19]);

  v30 = v6 + v9[8];
  v63(v30, v62);
  v31 = type metadata accessor for StaticUser();
  v32 = *(v30 + *(v31 + 20) + 8);

  v63(v30 + *(v31 + 24), v62);
  v33 = *(v6 + v9[12]);

  v34 = *(v6 + v9[13]);

  v35 = *(v6 + v9[14]);

  v36 = *(v6 + v9[15]);

  v37 = *(v6 + v9[16]);

  v38 = *(v6 + v9[17]);

  v39 = *(v6 + v9[18]);

  v40 = *(v6 + v9[20]);

  v41 = v6 + v9[22];
  v42 = type metadata accessor for StaticResident();
  if (!(*(*(v42 - 1) + 48))(v41, 1, v42))
  {
    v63(v41, v62);
    v43 = *(v41 + v42[5] + 8);

    v44 = *(v41 + v42[6] + 8);

    v45 = *(v41 + v42[7]);

    v46 = *(v41 + v42[8]);

    sub_1D1771B5C(*(v41 + v42[9]), *(v41 + v42[9] + 8));
    v63(v41 + v42[10], v62);
  }

  v47 = *(v4 + v67[6]);

  v48 = *(v4 + v67[7]);

  v49 = *(v4 + v67[8]);

  v50 = *(v4 + v67[9]);

  v51 = *(v4 + v67[10]);

  v52 = *(v4 + v67[11]);

  v53 = *(v4 + v67[12]);

  v54 = *(v4 + v67[13]);

  v55 = *(v4 + v67[14]);

  v56 = *(v4 + v67[15]);

  v57 = *(v4 + v67[16]);

  v58 = *(v4 + v67[17]);

  v59 = *(v4 + v67[18]);

  v60 = *(v4 + v67[19]);

  return MEMORY[0x1EEE6BDD0](v68, v65 + v64, v66 | 7);
}

uint64_t sub_1D1716454()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17164A0()
{
  v1 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 9)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v15 = sub_1D1E66A7C();
          (*(*(v15 - 8) + 8))(v0 + v3, v15);
          v16 = &unk_1EC64A768;
          v17 = &unk_1D1E9C690;
          break;
        case 7:
          v19 = sub_1D1E66A7C();
          (*(*(v19 - 8) + 8))(v0 + v3, v19);
          v16 = &unk_1EC64A9C8;
          v17 = &unk_1D1E98080;
          break;
        case 9:

          v7 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810) + 48);
          v9 = *(v7 + 8);

          v10 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0) + 24);
          v11 = sub_1D1E66C5C();
          goto LABEL_19;
        default:
          goto LABEL_30;
      }

      v20 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v16, v17) + 48));
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 10)
    {

      v18 = *(v7 + 8);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 11)
    {

      v23 = *(v7 + 24);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 12)
    {
      goto LABEL_30;
    }

    v13 = *v7;

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
    v11 = sub_1D1E66A7C();
LABEL_19:
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v21 = sub_1D1E66A7C();
        (*(*(v21 - 8) + 8))(v0 + v3, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      }

      else
      {
        v12 = sub_1D1E66A7C();
        (*(*(v12 - 8) + 8))(v0 + v3, v12);
      }

      goto LABEL_30;
    }

    goto LABEL_20;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:

      break;
    case 1:
      sub_1D1AC373C(*v7, *(v7 + 8), *(v7 + 16));
      break;
    case 2:
LABEL_20:
      v14 = *v7;
LABEL_29:

      break;
  }

LABEL_30:
  v24 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v0 + v24);

  v28 = *(v0 + v25);

  v29 = *(v0 + v26);

  return MEMORY[0x1EEE6BDD0](v0, v26 + 8, v2 | 7);
}

uint64_t sub_1D171685C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1716898(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D1E6305C(v4);
}

uint64_t sub_1D17168C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1716920(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D17169C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D17169D0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

double sub_1D17169F8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id sub_1D1716A30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1716AA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D174E7C4(a1, a2);
  }

  return a1;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionScore.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionScore.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionPlacement.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionPlacement.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionIndex.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1D1716B90@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D1716BA4(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  *(a2 + 32) = *result;
  *(a2 + 40) = v3;
  if (v2 < 8)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v2 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v5 = 3;
  }

  *(a2 + 41) = v5;
  return result;
}

unint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionIndex.setter(unint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  if (result < 8)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (result < 4)
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  *(v2 + 41) = v4;
  return result;
}

uint64_t sub_1D1716C34(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*result + 32);
    if (v2 < 8)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >= 4)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (*(*result + 40))
    {
      v4 = 3;
    }

    *(*result + 41) = v4;
  }

  return result;
}

unint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.PlacementCategory.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.init(predictionScore:predictionPlacement:predictionRelevanceLevel:predictionIndex:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 25) = v8;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7 & 1;
  *(a8 + 41) = 3;
  return result;
}

BOOL static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 < *a2;
}

unint64_t sub_1D1716DFC()
{
  v1 = 0x6974636964657270;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  if (v2 == 3)
  {
    v3 = 0x6974636964657270;
  }

  if (v2 == 2)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1716EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D173F8CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1716EE0(uint64_t a1)
{
  v2 = sub_1D173F6DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1716F1C(uint64_t a1)
{
  v2 = sub_1D173F6DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642538, &qword_1D1E6C690);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v23 = v1[2];
  v10 = *(v1 + 24);
  v21 = *(v1 + 25);
  v22 = v10;
  v20 = v1[4];
  v11 = *(v1 + 40);
  v18 = *(v1 + 41);
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173F6DC();
  sub_1D1E6930C();
  v31 = 0;
  v13 = v24;
  sub_1D1E68E2C();
  if (!v13)
  {
    v15 = v21;
    v16 = v18;
    v30 = 1;
    sub_1D1E68E2C();
    v29 = v15;
    v28 = 2;
    sub_1D173F730();
    sub_1D1E68E5C();
    v27 = 3;
    sub_1D1E68E4C();
    v26 = v16;
    v25 = 4;
    sub_1D173F784();
    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  if (*(v0 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_1D1E6922C();
    if (v3 != 4)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v9 = *v0;
  sub_1D1E6922C();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1D3892890](v10);
  if (v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  sub_1D1E6922C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1D3892890](v7);
  if (v3 != 4)
  {
LABEL_7:
    sub_1D1E6922C();
    MEMORY[0x1D3892850](1 - v3);
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_16:
    sub_1D1E6922C();
    if (v6 != 3)
    {
      goto LABEL_9;
    }

    return sub_1D1E6922C();
  }

LABEL_15:
  sub_1D1E6922C();
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_8:
  sub_1D1E6922C();
  MEMORY[0x1D3892850](v4);
  if (v6 != 3)
  {
LABEL_9:
    sub_1D1E6922C();
    return MEMORY[0x1D3892850](v6);
  }

  return sub_1D1E6922C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_1D1E6922C();
    if (v5 != 4)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_1D1E6922C();
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  sub_1D1E6922C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v1;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1D3892890](v10);
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1D1E6922C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1D3892890](v9);
  if (v5 == 4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1D1E6922C();
  MEMORY[0x1D3892850](1 - v5);
  if (!v7)
  {
LABEL_8:
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v6);
    goto LABEL_16;
  }

LABEL_15:
  sub_1D1E6922C();
LABEL_16:
  sub_1D1E6922C();
  if (v8 != 3)
  {
    MEMORY[0x1D3892850](v8);
  }

  return sub_1D1E6926C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642558, &qword_1D1E6C698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173F6DC();
  sub_1D1E692FC();
  if (!v2)
  {
    v35 = 0;
    v11 = sub_1D1E68C8C();
    v28 = v12 & 1;
    v34 = 1;
    v25 = sub_1D1E68C8C();
    v27 = v14 & 1;
    v32 = 2;
    sub_1D173F824();
    sub_1D1E68CBC();
    v15 = v33;
    v31 = 3;
    v16 = sub_1D1E68CAC();
    v23 = v15;
    v24 = v16;
    v26 = v17 & 1;
    v29 = 4;
    sub_1D173F878();
    sub_1D1E68CBC();
    (*(v6 + 8))(v9, v5);
    v18 = v30;
    v19 = v28;
    v20 = v27;
    v21 = v26;
    *a2 = v11;
    *(a2 + 8) = v19;
    *(a2 + 16) = v25;
    *(a2 + 24) = v20;
    *(a2 + 25) = v23;
    *(a2 + 32) = v24;
    *(a2 + 40) = v21;
    *(a2 + 41) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1717744()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_1D1E6922C();
    if (v5 != 4)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_1D1E6922C();
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  sub_1D1E6922C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v1;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1D3892890](v10);
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1D1E6922C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1D3892890](v9);
  if (v5 == 4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1D1E6922C();
  MEMORY[0x1D3892850](1 - v5);
  if (!v7)
  {
LABEL_8:
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v6);
    goto LABEL_16;
  }

LABEL_15:
  sub_1D1E6922C();
LABEL_16:
  sub_1D1E6922C();
  if (v8 != 3)
  {
    MEMORY[0x1D3892850](v8);
  }

  return sub_1D1E6926C();
}

BOOL sub_1D17178D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 < *a2;
}

BOOL sub_1D171790C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  return *a2 >= *a1;
}

BOOL sub_1D1717940(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    return 1;
  }

  return *a1 >= *a2;
}

BOOL sub_1D1717974(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return 1;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  return *a2 < *a1;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.timeSinceLastSuggestionsFetch.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.init(userIsAtHome:homeSizeToModuleSizeRatio:timeSinceLastSuggestionsFetch:hasOpenedRecommendationUIWithin2Minutes:hasOpenedRecommendationUIWithinAWeek:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t static HomeAnalyticsUtilities.PredictionAnalyticsContext.gather<A>(for:lastSuggestionsFetchDate:lastRecommendationUIOpenedDate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a2;
  v34 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  v35 = (*(*(a4 + 16) + 160))(a3);
  sub_1D1741C08(v34, v14, &qword_1EC642570, &qword_1D1E6C6A0);
  v23 = *(v16 + 48);
  LODWORD(v34) = v23(v14, 1, v15);
  if (v34 == 1)
  {
    sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
    v24 = 0.0;
  }

  else
  {
    (*(v16 + 32))(v22, v14, v15);
    sub_1D1E6697C();
    v24 = fabs(v25);
    (*(v16 + 8))(v22, v15);
  }

  sub_1D1741C08(v36, v12, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v23(v12, 1, v15) == 1)
  {
    result = sub_1D1741A30(v12, &qword_1EC642570, &qword_1D1E6C6A0);
    v27 = 2;
    v28 = 2;
  }

  else
  {
    (*(v16 + 32))(v20, v12, v15);
    sub_1D1E6697C();
    v28 = fabs(v29) < 120.0;
    sub_1D1E6697C();
    v31 = fabs(v30);
    result = (*(v16 + 8))(v20, v15);
    v27 = v31 < 604800.0;
  }

  v32 = v34 == 1;
  *a5 = v35 == 1;
  *(a5 + 8) = v24;
  *(a5 + 16) = v32;
  *(a5 + 17) = v28;
  *(a5 + 18) = v27;
  return result;
}

uint64_t _s13HomeDataModel16SignificantEventV15ConfidenceLevelO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1717D70()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

unint64_t sub_1D1717DB4()
{
  v1 = 0x7441734972657375;
  v2 = 0xD000000000000024;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000027;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
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

uint64_t sub_1D1717E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D173FD04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1717E6C(uint64_t a1)
{
  v2 = sub_1D173FB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1717EA8(uint64_t a1)
{
  v2 = sub_1D173FB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642578, &qword_1D1E6C6A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v14 = *(v1 + 1);
  v15 = v1[16];
  v10 = v1[17];
  v13[0] = v1[18];
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173FB30();
  sub_1D1E6930C();
  v19 = 0;
  sub_1D1E68EDC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = 1;
  sub_1D1E68E2C();
  v17 = 2;
  sub_1D1E68E1C();
  v16 = 3;
  sub_1D1E68E1C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  sub_1D1E6922C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D1E6922C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1D3892890](v6);
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
LABEL_8:
  sub_1D1E6922C();
  if (v5 != 2)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D1E6922C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1D3892890](v6);
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
LABEL_8:
  sub_1D1E6922C();
  if (v5 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642588, &unk_1D1E6C6B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173FB30();
  sub_1D1E692FC();
  if (!v2)
  {
    v24 = 0;
    v11 = sub_1D1E68D3C();
    v23 = 1;
    v12 = sub_1D1E68C8C();
    v20 = v13;
    v14 = v12;
    v22 = 2;
    v19 = sub_1D1E68C7C();
    v21 = 3;
    v18 = sub_1D1E68C7C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    *(a2 + 8) = v14;
    *(a2 + 16) = v20 & 1;
    v16 = v18;
    *(a2 + 17) = v19;
    *(a2 + 18) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1718484()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D1E6922C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1D3892890](v6);
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
LABEL_8:
  sub_1D1E6922C();
  if (v5 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.scores<A>(for:in:filterIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = HomeProtocol.analyticsTileCountValue.getter(a4, a5);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = *(a5 + 16);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    static PredictionsRelevanceLevel.analyze<A>(predictions:totalPredictableCount:)(v9, &v13);
    return static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.scores<A>(for:relevance:filterIDs:)(a1, &v13, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.scores<A>(for:relevance:filterIDs:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v136 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v115 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v113 - v13;
  v14 = sub_1D1E66A7C();
  v121 = *(v14 - 8);
  v15 = v121[8];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v117 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v114 = &v113 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v120 = &v113 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = &v113 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v133 = &v113 - v27;
  v118 = *a2;
  v146 = a1;
  v137 = a4;
  v138 = a5;
  v28 = sub_1D1E67D1C();
  WitnessTable = swift_getWitnessTable();
  v30 = sub_1D1E67ABC();
  v131 = a4;
  v31 = sub_1D1E67CBC();
  v146 = v30;
  MEMORY[0x1D3891090](&v143, v28, WitnessTable);

  v145 = v143;
  sub_1D1E68B6C();
  sub_1D1E68B3C();
  v122 = sub_1D1E68B5C();
  sub_1D1E68B4C();
  if (v144)
  {
    v32 = v144;
    v126 = a5 + 3;
    v125 = (v121 + 6);
    v119 = (v121 + 4);
    v33 = v136;
    v134 = (v121 + 2);
    v135 = v136 + 56;
    v34 = (v121 + 1);
    v124 = a5 + 2;
    v113 = a5 + 5;
    v35 = 20;
    if (v31 > 20)
    {
      v35 = v31;
    }

    v36 = v143;
    v37 = v35;
    v128 = MEMORY[0x1E69E7CC8];
    v38 = v123;
    v127 = a5;
    while (1)
    {
      v116 = v36;
      while (v33)
      {
        a5[3](v131, a5);
        v39 = *v125;
        v40 = (*v125)(v38, 1, v14);
        v130 = v32;
        v129 = v36;
        if (v40 == 1)
        {
          sub_1D1E66A6C();
          if (v39(v38, 1, v14) != 1)
          {
            sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          (*v119)(v133, v38, v14);
        }

        v33 = v136;
        if (*(v136 + 16))
        {
          v41 = *(v136 + 40);
          sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
          v33 = v136;
          v42 = sub_1D1E676DC();
          v43 = -1 << *(v33 + 32);
          v44 = v42 & ~v43;
          if ((*(v135 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            v46 = v121[9];
            v47 = v121[2];
            while (1)
            {
              v47(v26, *(v33 + 48) + v46 * v44, v14);
              sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8]);
              v48 = sub_1D1E6775C();
              v49 = *v34;
              (*v34)(v26, v14);
              if (v48)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              v33 = v136;
              if (((*(v135 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v49(v133, v14);
            goto LABEL_27;
          }
        }

LABEL_19:
        v50 = *v34;
        (*v34)(v133, v14);
        a5[2](v131, a5);
        if (*(v33 + 16))
        {
          v51 = *(v136 + 40);
          sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
          v33 = v136;
          v52 = sub_1D1E676DC();
          v53 = -1 << *(v33 + 32);
          v54 = v52 & ~v53;
          if ((*(v135 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
          {
            v55 = ~v53;
            v56 = v121[9];
            v57 = v121[2];
            while (1)
            {
              v57(v26, *(v33 + 48) + v56 * v54, v14);
              sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8]);
              v58 = sub_1D1E6775C();
              v50(v26, v14);
              if (v58)
              {
                break;
              }

              v54 = (v54 + 1) & v55;
              v33 = v136;
              if (((*(v135 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v50(v132, v14);
            a5 = v127;
LABEL_27:
            v38 = v123;
            v59 = &v148;
            goto LABEL_28;
          }
        }

LABEL_8:
        v50(v132, v14);
        swift_unknownObjectRelease();
        sub_1D1E68B4C();
        v36 = v143;
        v32 = v144;
        a5 = v127;
        v38 = v123;
        if (!v144)
        {
          goto LABEL_53;
        }
      }

      v59 = &v147;
LABEL_28:
      v60 = *(v59 - 32);
      a5[5](v131, a5);
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v60 < 0)
      {
        goto LABEL_55;
      }

      v63 = v61;
      v129 = v60;
      LOBYTE(v143) = 0;
      v140 = 0;
      v139 = 0;
      v64 = v120;
      (v127[2])(v131);
      v65 = v128;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v65;
      v68 = sub_1D171D44C(v64);
      v69 = *(v65 + 16);
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_56;
      }

      v72 = v67;
      if (*(v65 + 24) >= v71)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D1733D98();
        }
      }

      else
      {
        sub_1D17208D8(v71, isUniquelyReferenced_nonNull_native);
        v73 = sub_1D171D44C(v120);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_60;
        }

        v68 = v73;
      }

      v75 = v129;
      v76 = 1.0 - v62 / v37;
      v77 = v143;
      v128 = v143;
      if (v72)
      {
        v78 = *(v143 + 56) + 48 * v68;
        *v78 = v63;
        *(v78 + 8) = 0;
        *(v78 + 9) = v145;
        *(v78 + 12) = *(&v145 + 3);
        *(v78 + 16) = v76;
        *(v78 + 24) = 0;
        *(v78 + 25) = v118;
        *(v78 + 26) = v141;
        *(v78 + 30) = v142;
        *(v78 + 32) = v75;
        *(v78 + 40) = 768;
        v79 = *v34;
        (*v34)(v120, v14);
        a5 = v127;
      }

      else
      {
        *(v143 + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v80 = v121;
        v81 = v120;
        (v121[2])(*(v77 + 48) + v121[9] * v68, v120, v14);
        v82 = *(v128 + 56) + 48 * v68;
        *v82 = v63;
        *(v82 + 8) = 0;
        *(v82 + 12) = *(&v145 + 3);
        *(v82 + 9) = v145;
        *(v82 + 16) = v76;
        *(v82 + 24) = 0;
        *(v82 + 25) = v118;
        *(v82 + 30) = v142;
        *(v82 + 26) = v141;
        *(v82 + 32) = v75;
        *(v82 + 40) = 768;
        v79 = v80[1];
        v83 = v128;
        v79(v81, v14);
        v84 = *(v83 + 16);
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        a5 = v127;
        if (v85)
        {
          goto LABEL_57;
        }

        *(v83 + 16) = v86;
      }

      v87 = v115;
      a5[3](v131, a5);
      if ((*v125)(v87, 1, v14) == 1)
      {
        swift_unknownObjectRelease();
        sub_1D1741A30(v87, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v116 = v79;
        v88 = v114;
        (*v119)(v114, v87, v14);
        v89 = *v134;
        v90 = v117;
        (*v134)(v117, v88, v14);
        v91 = v128;
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v143 = v91;
        v93 = sub_1D171D44C(v90);
        v95 = *(v91 + 16);
        v96 = (v94 & 1) == 0;
        v85 = __OFADD__(v95, v96);
        v97 = v95 + v96;
        if (v85)
        {
          goto LABEL_58;
        }

        v98 = v94;
        if (*(v91 + 24) >= v97)
        {
          if ((v92 & 1) == 0)
          {
            v111 = v93;
            sub_1D1733D98();
            v93 = v111;
          }
        }

        else
        {
          sub_1D17208D8(v97, v92);
          v93 = sub_1D171D44C(v117);
          if ((v98 & 1) != (v99 & 1))
          {
            goto LABEL_60;
          }
        }

        v100 = v143;
        v128 = v143;
        if (v98)
        {
          v101 = *(v143 + 56) + 48 * v93;
          *v101 = v63;
          *(v101 + 8) = 0;
          *(v101 + 9) = v145;
          *(v101 + 12) = *(&v145 + 3);
          *(v101 + 16) = v76;
          *(v101 + 24) = 0;
          *(v101 + 25) = v118;
          *(v101 + 26) = v141;
          *(v101 + 30) = v142;
          *(v101 + 32) = v129;
          *(v101 + 40) = 768;
          swift_unknownObjectRelease();
          v102 = v116;
          v116(v117, v14);
          v102(v114, v14);
        }

        else
        {
          *(v143 + 8 * (v93 >> 6) + 64) |= 1 << v93;
          v103 = v93;
          v104 = v117;
          v89(*(v100 + 48) + v121[9] * v93, v117, v14);
          v105 = *(v128 + 56) + 48 * v103;
          *v105 = v63;
          *(v105 + 8) = 0;
          *(v105 + 12) = *(&v145 + 3);
          *(v105 + 9) = v145;
          *(v105 + 16) = v76;
          *(v105 + 24) = 0;
          *(v105 + 25) = v118;
          *(v105 + 30) = v142;
          *(v105 + 26) = v141;
          *(v105 + 32) = v129;
          *(v105 + 40) = 768;
          swift_unknownObjectRelease();
          v106 = v104;
          v107 = v128;
          v108 = v116;
          v116(v106, v14);
          v108(v114, v14);
          v109 = *(v107 + 16);
          v85 = __OFADD__(v109, 1);
          v110 = v109 + 1;
          if (v85)
          {
            goto LABEL_59;
          }

          *(v107 + 16) = v110;
        }
      }

      v33 = v136;
      sub_1D1E68B4C();
      v36 = v143;
      v32 = v144;
      if (!v144)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_55:
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
    result = sub_1D1E690FC();
    __break(1u);
  }

  else
  {
    v128 = MEMORY[0x1E69E7CC8];
LABEL_53:

    return v128;
  }

  return result;
}

uint64_t sub_1D1719534(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]), v9 = sub_1D1E676DC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v17 = sub_1D1E6775C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1D1719764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v5 = *(a2 + 40);
  v6 = sub_1D1E6920C();
  (a3)(v6);
  sub_1D1E678EC();

  v7 = sub_1D1E6926C();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v18 = *(*(a2 + 48) + v9);
      v11 = a3();
      v13 = v12;
      if (v11 == a3() && v13 == v14)
      {
        break;
      }

      v16 = sub_1D1E6904C();

      if ((v16 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v16 & 1;
    }

    v16 = 1;
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_1D17198DC(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1D1E6920C();
  v5 = dword_1D1E6EF7C[a1];
  sub_1D1E6924C();
  v6 = sub_1D1E6926C();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = dword_1D1E6EF7C[*(*(a2 + 48) + v8)];
    result = v10 == v5;
    if (v10 == v5)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

BOOL sub_1D17199BC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_1D1E691FC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_1D1719A64(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1D1E6920C();
  v5 = dword_1D1E6EF0C[a1];
  sub_1D1E6924C();
  v6 = sub_1D1E6926C();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = dword_1D1E6EF0C[*(*(a2 + 48) + v8)];
    result = v10 == v5;
    if (v10 == v5)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_1D1719B44(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v3 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v43 - v4;
  v50 = _s7MergeIdVMa();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v58 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v59 = a2;
  if (*(a2 + 16))
  {
    v20 = *(v59 + 40);
    sub_1D1E6920C();
    sub_1D1741C08(v60, v19, &qword_1EC642590, qword_1D1E71260);
    v57 = *(v10 + 48);
    v21 = v57(v19, 1, v9);
    v45 = v10 + 48;
    if (v21 == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v22 = v17;
      v23 = v46;
      (*(v10 + 32))(v46, v19, v9);
      sub_1D1E6922C();
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v24 = v23;
      v17 = v22;
      (*(v10 + 8))(v24, v9);
    }

    v25 = (v60 + *(v50 + 20));
    v26 = *v25;
    v51 = v25[1];
    v52 = v26;
    sub_1D1E678EC();
    v27 = sub_1D1E6926C();
    v28 = -1 << *(v59 + 32);
    v29 = v27 & ~v28;
    v56 = v59 + 56;
    if ((*(v59 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v53 = ~v28;
      v54 = v9;
      v44 = (v10 + 32);
      v55 = *(v6 + 72);
      v49 = (v10 + 8);
      v30 = v47;
      v31 = v58;
      do
      {
        sub_1D1741C80(*(v59 + 48) + v55 * v29, v31, _s7MergeIdVMa);
        v32 = *(v30 + 48);
        sub_1D1741C08(v31, v5, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741C08(v60, &v5[v32], &qword_1EC642590, qword_1D1E71260);
        v33 = v54;
        v34 = v57;
        if (v57(v5, 1, v54) == 1)
        {
          v35 = v34(&v5[v32], 1, v33);
          v31 = v58;
          if (v35 != 1)
          {
            goto LABEL_8;
          }

          sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          sub_1D1741C08(v5, v17, &qword_1EC642590, qword_1D1E71260);
          if (v34(&v5[v32], 1, v33) == 1)
          {
            (*v49)(v17, v33);
            v31 = v58;
LABEL_8:
            sub_1D1741A30(v5, &qword_1EC642980, &unk_1D1E6E6E0);
            goto LABEL_9;
          }

          v36 = v17;
          v37 = v46;
          (*v44)(v46, &v5[v32], v33);
          sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v48 = sub_1D1E6775C();
          v38 = *v49;
          v39 = v37;
          v17 = v36;
          (*v49)(v39, v33);
          v38(v36, v33);
          v30 = v47;
          sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
          v31 = v58;
          if ((v48 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v40 = (v31 + *(v50 + 20));
        v41 = *v40 == v52 && v40[1] == v51;
        if (v41 || (sub_1D1E6904C() & 1) != 0)
        {
          sub_1D1741D50(v31, _s7MergeIdVMa);
          return 1;
        }

LABEL_9:
        sub_1D1741D50(v31, _s7MergeIdVMa);
        v29 = (v29 + 1) & v53;
      }

      while (((*(v56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1D171A1C8(uint64_t a1, uint64_t a2)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  v4 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v43 - v5;
  v49 = sub_1D1E66A7C();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v43 - v21;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v51 = v20;
  v23 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1741C80(a1, v22, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v22, 3, v24);
  v53 = a1;
  if (v26 > 1)
  {
    v28 = v7;
    if (v26 == 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }
  }

  else
  {
    if (!v26)
    {
      v27 = *(v7 + 32);
      v28 = v7;
      v29 = v49;
      v27(v12, v22, v49);
      MEMORY[0x1D3892850](1);
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*(v28 + 8))(v12, v29);
      goto LABEL_10;
    }

    v28 = v7;
    v30 = 0;
  }

  MEMORY[0x1D3892850](v30);
LABEL_10:
  v31 = sub_1D1E6926C();
  v32 = -1 << *(a2 + 32);
  v33 = v31 & ~v32;
  v52 = a2 + 56;
  if (((*(a2 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
    return 0;
  }

  v50 = ~v32;
  v51 = *(v51 + 72);
  v47 = (v28 + 8);
  v43 = (v28 + 32);
  v44 = v25;
  v34 = v48;
  while (1)
  {
    v35 = a2;
    sub_1D1741C80(*(a2 + 48) + v51 * v33, v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v36 = *(v54 + 48);
    sub_1D1741C80(v19, v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    sub_1D1741C80(v53, &v6[v36], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v37 = v25(v6, 3, v24);
    if (v37 > 1)
    {
      if (v37 == 2)
      {
        sub_1D1741D50(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v25(&v6[v36], 3, v24) == 2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D1741D50(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v25(&v6[v36], 3, v24) == 3)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v37)
    {
      sub_1D1741D50(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      if (v25(&v6[v36], 3, v24) == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    sub_1D1741C80(v6, v34, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v25(&v6[v36], 3, v24))
    {
      break;
    }

    sub_1D1741D50(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    (*v47)(v34, v49);
LABEL_22:
    sub_1D1741A30(v6, &qword_1EC642AD8, &unk_1D1E6E820);
LABEL_23:
    v33 = (v33 + 1) & v50;
    a2 = v35;
    if (((*(v52 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v46;
  v39 = v49;
  (*v43)(v46, &v6[v36], v49);
  v45 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v40 = *v47;
  v41 = v38;
  v34 = v48;
  (*v47)(v41, v39);
  sub_1D1741D50(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v40(v34, v39);
  v25 = v44;
  if ((v45 & 1) == 0)
  {
    sub_1D1741D50(v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    goto LABEL_23;
  }

LABEL_28:
  sub_1D1741D50(v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  return 1;
}

uint64_t sub_1D171A84C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (a1 != 28)
  {
    v6 = dword_1D1E6EF0C[a1];
    sub_1D1E6924C();
  }

  v7 = sub_1D1E6926C();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + v9);
      if (v11 == 28)
      {
        if (a1 == 28)
        {
          return 1;
        }
      }

      else if (a1 != 28 && dword_1D1E6EF0C[v11] == dword_1D1E6EF0C[a1])
      {
        return 1;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1D171A97C(uint64_t a1, uint64_t a2)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v6 = &v52 - v5;
  v58 = sub_1D1E66A7C();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v58);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - v11;
  v13 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v52 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v26 = (&v52 - v25);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v61 = v24;
  v27 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1741C80(a1, v26, type metadata accessor for StaticAccessory.DeviceIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = a2;
  v62 = a1;
  v56 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(v7 + 32);
    v30 = v7;
    v31 = v58;
    v29(v12, v26, v58);
    MEMORY[0x1D3892850](1);
    sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v30 + 8))(v12, v31);
  }

  else
  {
    v32 = *v26;
    v33 = v26[1];
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
    a2 = v59;
  }

  v34 = sub_1D1E6926C();
  v35 = -1 << *(a2 + 32);
  v36 = v34 & ~v35;
  v55 = a2 + 56;
  if (((*(a2 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
  {
    return 0;
  }

  v60 = ~v35;
  v61 = *(v61 + 72);
  v37 = v55;
  v57 = (v56 + 8);
  v53 = (v56 + 32);
  while (1)
  {
    sub_1D1741C80(*(a2 + 48) + v61 * v36, v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v38 = &v6[*(v63 + 48)];
    sub_1D1741C80(v23, v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1741C80(v62, v38, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1D1741C80(v6, v17, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v20;
      v40 = v17;
      v41 = v54;
      v42 = v58;
      (*v53)(v54, v38, v58);
      LODWORD(v56) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v43 = *v57;
      v44 = v41;
      v17 = v40;
      v20 = v39;
      v37 = v55;
      (*v57)(v44, v42);
      sub_1D1741D50(v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v43(v17, v42);
      if (v56)
      {
        goto LABEL_25;
      }

LABEL_20:
      sub_1D1741D50(v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
      a2 = v59;
      goto LABEL_9;
    }

    sub_1D1741D50(v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
    (*v57)(v17, v58);
LABEL_8:
    sub_1D1741A30(v6, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_9:
    v36 = (v36 + 1) & v60;
    if (((*(v37 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D1741C80(v6, v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v46 = *v20;
  v45 = v20[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D1741D50(v23, type metadata accessor for StaticAccessory.DeviceIdentifier);

    a2 = v59;
    goto LABEL_8;
  }

  v47 = *v38;
  v48 = *(v38 + 1);
  if (v46 != v47 || v45 != v48)
  {
    v50 = sub_1D1E6904C();

    sub_1D1741D50(v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (v50)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  sub_1D1741D50(v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_25:
  sub_1D1741D50(v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return 1;
}

uint64_t sub_1D171B004(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), v5 = sub_1D1CDA80C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v20 = ~v6;
    while (1)
    {
      v8 = *(*(a2 + 48) + v7);
      if (v8 > 3)
      {
        if (*(*(a2 + 48) + v7) > 5u)
        {
          if (v8 == 6)
          {
            v11 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v11 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v8 == 4)
        {
          v11 = "60-AD68-D91053B75F44";
        }

        else
        {
          v11 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v8 == 2)
        {
          v9 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v9 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(a2 + 48) + v7))
        {
          v10 = "13-AA62-01754F256DD5";
        }

        else
        {
          v10 = "00-8000-0026BB765291";
        }

        if (*(*(a2 + 48) + v7) <= 1u)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }
      }

      v12 = v11 | 0x8000000000000000;
      v13 = "17-A590-755E1AAC02AE";
      if (a1 != 6)
      {
        v13 = "73-8FBD-0E8978A33403";
      }

      v14 = "60-AD68-D91053B75F44";
      if (a1 != 4)
      {
        v14 = "7E-BE63-1D00B1500545";
      }

      if (a1 <= 5u)
      {
        v13 = v14;
      }

      if (a1 == 2)
      {
        v15 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v15 = "CE-986D-63B28F62C9E3";
      }

      if (a1)
      {
        v16 = "13-AA62-01754F256DD5";
      }

      else
      {
        v16 = "00-8000-0026BB765291";
      }

      if (a1 <= 1u)
      {
        v15 = v16;
      }

      v17 = a1 <= 3u ? v15 : v13;
      if (v12 == (v17 | 0x8000000000000000))
      {
        break;
      }

      v18 = sub_1D1E6904C();

      if ((v18 & 1) == 0)
      {
        v7 = (v7 + 1) & v20;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v18 & 1;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D171B238(uint64_t a1, uint64_t a2)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A00, &qword_1D1E97330);
  v4 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v43 - v5;
  v49 = sub_1D1E66A7C();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = type metadata accessor for DataModel.StateSubscription.Reason();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v43 - v21;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v51 = v20;
  v23 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1741C80(a1, v22, type metadata accessor for DataModel.StateSubscription.Reason);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v22, 3, v24);
  v53 = a1;
  if (v26 > 1)
  {
    v28 = v7;
    if (v26 == 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }
  }

  else
  {
    if (!v26)
    {
      v27 = *(v7 + 32);
      v28 = v7;
      v29 = v49;
      v27(v12, v22, v49);
      MEMORY[0x1D3892850](1);
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*(v28 + 8))(v12, v29);
      goto LABEL_10;
    }

    v28 = v7;
    v30 = 0;
  }

  MEMORY[0x1D3892850](v30);
LABEL_10:
  v31 = sub_1D1E6926C();
  v32 = -1 << *(a2 + 32);
  v33 = v31 & ~v32;
  v52 = a2 + 56;
  if (((*(a2 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
    return 0;
  }

  v50 = ~v32;
  v51 = *(v51 + 72);
  v47 = (v28 + 8);
  v43 = (v28 + 32);
  v44 = v25;
  v34 = v48;
  while (1)
  {
    v35 = a2;
    sub_1D1741C80(*(a2 + 48) + v51 * v33, v19, type metadata accessor for DataModel.StateSubscription.Reason);
    v36 = *(v54 + 48);
    sub_1D1741C80(v19, v6, type metadata accessor for DataModel.StateSubscription.Reason);
    sub_1D1741C80(v53, &v6[v36], type metadata accessor for DataModel.StateSubscription.Reason);
    v37 = v25(v6, 3, v24);
    if (v37 > 1)
    {
      if (v37 == 2)
      {
        sub_1D1741D50(v19, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v25(&v6[v36], 3, v24) == 2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D1741D50(v19, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v25(&v6[v36], 3, v24) == 3)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v37)
    {
      sub_1D1741D50(v19, type metadata accessor for DataModel.StateSubscription.Reason);
      if (v25(&v6[v36], 3, v24) == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    sub_1D1741C80(v6, v34, type metadata accessor for DataModel.StateSubscription.Reason);
    if (!v25(&v6[v36], 3, v24))
    {
      break;
    }

    sub_1D1741D50(v19, type metadata accessor for DataModel.StateSubscription.Reason);
    (*v47)(v34, v49);
LABEL_22:
    sub_1D1741A30(v6, &qword_1EC642A00, &qword_1D1E97330);
LABEL_23:
    v33 = (v33 + 1) & v50;
    a2 = v35;
    if (((*(v52 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v46;
  v39 = v49;
  (*v43)(v46, &v6[v36], v49);
  v45 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v40 = *v47;
  v41 = v38;
  v34 = v48;
  (*v47)(v41, v39);
  sub_1D1741D50(v19, type metadata accessor for DataModel.StateSubscription.Reason);
  v40(v34, v39);
  v25 = v44;
  if ((v45 & 1) == 0)
  {
    sub_1D1741D50(v6, type metadata accessor for DataModel.StateSubscription.Reason);
    goto LABEL_23;
  }

LABEL_28:
  sub_1D1741D50(v6, type metadata accessor for DataModel.StateSubscription.Reason);
  return 1;
}

double static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.normalizedScore<A>(index:predictionsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a2;
  v5 = *(a4 + 24);
  v6 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  swift_getAssociatedConformanceWitness();
  sub_1D1E690AC();
  sub_1D1E6902C();
  v17 = *(v5 + 8);
  sub_1D1E68B1C();
  v18 = *(v10 + 8);
  v18(v14, a3);
  if (sub_1D1E6863C() < 65)
  {
    v20 = sub_1D1E6864C();
    v21 = sub_1D1E6862C();
    v18(v16, a3);
    if (v20)
    {
      v19 = v21;
    }

    else
    {
      v19 = v21;
    }
  }

  else
  {
    sub_1D173FC5C();
    sub_1D173FCB0();
    sub_1D1E675CC();
    v18(v16, a3);
    v19 = v26;
  }

  v22 = 20;
  if (v25 > 20)
  {
    v22 = v25;
  }

  return 1.0 - v19 / v22;
}

uint64_t sub_1D171BBB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D171BC08@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D171BC60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id default argument 0 of HomeState._Client.createHomeManagerIfNecessary(configuration:)()
{
  v0 = [objc_opt_self() defaultPrivateConfiguration];

  return v0;
}

uint64_t default argument 1 of Task.timeout(_:throwingIfExpired:)()
{
  return 1;
}

{
  return 1;
}

uint64_t default argument 1 of AsyncNotifySequence.init(name:queue:)()
{
  v0 = sub_1D1E6750C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC642608, 0x1E69E9610);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E7F98], v0);
  v5 = sub_1D1E683CC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1D171BF24(uint64_t a1, id *a2)
{
  result = sub_1D1E677FC();
  *a2 = 0;
  return result;
}

uint64_t sub_1D171BF9C(uint64_t a1, id *a2)
{
  v3 = sub_1D1E6780C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D171C01C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D1E6781C();
  v2 = sub_1D1E677EC();

  *a1 = v2;
  return result;
}

uint64_t sub_1D171C060(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D1E6781C();
  v6 = v5;
  if (v4 == sub_1D1E6781C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();
  }

  return v9 & 1;
}

uint64_t sub_1D171C0E8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D171C130()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D171C174()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D171C1BC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

BOOL sub_1D171C230(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1D171C260@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1D171C28C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_DWORD *sub_1D171C354@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1D171C380@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1D171C404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D171C480(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428B0, type metadata accessor for MTRError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D171C4EC(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428B0, type metadata accessor for MTRError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D171C558(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D171C5C4(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642868, type metadata accessor for HMError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D171C630(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642868, type metadata accessor for HMError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D171C69C(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D171C708()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D171C750()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D171C794(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for CFString(0);
  sub_1D173FC14(&qword_1EC642D00, type metadata accessor for CFString);
  return sub_1D1E66DEC() & 1;
}

uint64_t sub_1D171C81C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D1E677EC();

  *a2 = v5;
  return result;
}

uint64_t sub_1D171C864@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D1E6781C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D171C8A0(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D171C90C(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D171C978(void *a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D171CA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D171CA84()
{
  v2 = *v0;
  sub_1D1E6920C();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D171CAF4(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D171CB60(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D171CBCC(void *a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D171CC5C@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = sub_1D173FEB0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D171CC9C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1D173FEE8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D171CCDC()
{
  sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError);

  return sub_1D1E6650C();
}

id sub_1D171CD60@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1D171CD6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D1E66DEC();
}

uint64_t sub_1D171CDD8(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642D08, type metadata accessor for HMSignificantEvent);
  v3 = sub_1D173FC14(&qword_1EC642D10, type metadata accessor for HMSignificantEvent);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D171CE94()
{
  sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError);

  return sub_1D1E6650C();
}

uint64_t sub_1D171CF18()
{
  v1 = *v0;
  v2 = sub_1D1E6781C();
  v3 = MEMORY[0x1D3891000](v2);

  return v3;
}

uint64_t sub_1D171CF54()
{
  v1 = *v0;
  sub_1D1E6781C();
  sub_1D1E678EC();
}

uint64_t sub_1D171CFA8()
{
  v1 = *v0;
  sub_1D1E6781C();
  sub_1D1E6920C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();

  return v2;
}

uint64_t sub_1D171D01C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D1E66E0C();
}

uint64_t sub_1D171D068()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D1E66DFC();
}

uint64_t sub_1D171D0C0()
{
  sub_1D1E6920C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D1E66DFC();
  return sub_1D1E6926C();
}

unint64_t sub_1D171D15C(unsigned __int16 a1)
{
  v3 = MEMORY[0x1D3892820](*(v1 + 40), a1, 2);

  return sub_1D171E368(a1, v3);
}

unint64_t sub_1D171D1A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6924C();
  v4 = dword_1D1E6EF7C[a1 << 24 >> 56];
  sub_1D1E6924C();
  v5 = sub_1D1E6926C();

  return sub_1D171E2D4(a1 & 0xFFFFFFFFFFLL, v5);
}

unint64_t sub_1D171D228(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D1E684EC();
  return sub_1D171E510(a1, v5, &qword_1EC6445D0, 0x1E696AD98);
}

unint64_t sub_1D171D278(char a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  v4 = dword_1D1E6EF7C[a1];
  sub_1D1E6924C();
  v5 = sub_1D1E6926C();

  return sub_1D171E3D8(a1, v5);
}

unint64_t sub_1D171D2F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D1E6920C();
  sub_1D1E678EC();
  v6 = sub_1D1E6926C();

  return sub_1D171E458(a1, a2, v6);
}

unint64_t sub_1D171D368(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D1E684EC();
  return sub_1D171E510(a1, v5, &qword_1EE079CD0, 0x1E696CB38);
}

unint64_t sub_1D171D3B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D1E684EC();
  return sub_1D171E510(a1, v5, &qword_1EE07B680, 0x1E696CAF0);
}

unint64_t sub_1D171D408(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D1CDA80C();

  return sub_1D171E5DC(a1, v4);
}

unint64_t sub_1D171D44C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v5 = sub_1D1E676DC();
  return sub_1D171E7F4(a1, v5);
}

unint64_t sub_1D171D4E0(int a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E6924C();
  v4 = sub_1D1E6926C();

  return sub_1D171E9B4(a1, v4);
}

unint64_t sub_1D171D54C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = *(a1 + *(type metadata accessor for BatchRequestError.ID() + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v4 = sub_1D1E6926C();

  return sub_1D171EA20(a1, v4);
}

unint64_t sub_1D171D63C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1B33174();
  v4 = sub_1D1E6926C();

  return sub_1D171EC58(a1, v4);
}

unint64_t sub_1D171D6A8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  v4 = sub_1D1E6926C();
  return sub_1D171F19C(a1, v4);
}

unint64_t sub_1D171D710(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v5 = a1 + *(v4 + 20);
  sub_1D1E676EC();
  v6 = a1 + *(v4 + 24);
  StaticCharacteristic.hash(into:)(v9);
  v7 = sub_1D1E6926C();

  return sub_1D171EFE4(a1, v7);
}

unint64_t sub_1D171D804(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D1E687BC();

  return sub_1D171F20C(a1, v5);
}

unint64_t sub_1D171D848(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_1D1E6920C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1770648(v10, a1);
      goto LABEL_7;
    }

    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1D3892850](v6);
  sub_1D1E6924C();
  sub_1D1E6923C();
  v7 = dword_1D1E6EF7C[a1 << 8 >> 56];
  sub_1D1E6924C();
LABEL_7:
  v8 = sub_1D1E6926C();

  return sub_1D171F2D4(a1, a2, v8);
}

unint64_t sub_1D171D934(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = *(v2 + 40);
  sub_1D1E6920C();
  sub_1D1741C08(a1, v12, &qword_1EC642590, qword_1D1E71260);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  v14 = (a1 + *(_s7MergeIdVMa() + 20));
  v15 = *v14;
  v16 = v14[1];
  sub_1D1E678EC();
  v17 = sub_1D1E6926C();
  return sub_1D171F57C(a1, v17);
}

unint64_t sub_1D171DB60(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1D1E6920C();
  v4 = a1 >> 5;
  if (v4 <= 1)
  {
    if (!(a1 >> 5))
    {
      MEMORY[0x1D3892850](0);
      v6 = a1;
      goto LABEL_11;
    }

    v5 = 1;
  }

  else
  {
    if (v4 == 2)
    {
      v6 = a1 & 0x1F;
      MEMORY[0x1D3892850](2);
      goto LABEL_11;
    }

    if (v4 == 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  MEMORY[0x1D3892850](v5);
  v6 = a1 & 1;
LABEL_11:
  MEMORY[0x1D3892850](v6);
  v7 = sub_1D1E6926C();

  return sub_1D171FA6C(a1, v7);
}

unint64_t sub_1D171DC34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D1E684EC();
  return sub_1D171E510(a1, v5, &qword_1EC650120, 0x1E696F570);
}

unint64_t sub_1D171DC84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = *(v2 + 40);
  sub_1D1E6920C();
  sub_1D1741C08(a1, v12, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D173FC14(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  v14 = type metadata accessor for DashboardSortableData();
  v15 = (a1 + *(v14 + 20));
  v16 = *v15;
  v17 = v15[1];
  sub_1D1E678EC();
  v18 = *(v14 + 24);
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v19 = sub_1D1E6926C();
  return sub_1D171FB50(a1, v19);
}

unint64_t sub_1D171DF0C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = *(v2 + 40);
  sub_1D1E6920C();
  v14 = *a1;
  v15 = a1[1];
  sub_1D1E678EC();
  v16 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D1741C08(a1 + *(v16 + 20), v12, &qword_1EC642590, qword_1D1E71260);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  v17 = sub_1D1E6926C();
  return sub_1D1720040(a1, v17);
}

uint64_t sub_1D171E134(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 40);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  v5 = sub_1D1E6926C();

  return a2(a1, v5);
}

unint64_t sub_1D171E1C8(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v7 = *(v3 + 40);
  v8 = sub_1D1E6920C();
  a2(v8);
  sub_1D1E678EC();

  v9 = sub_1D1E6926C();
  return sub_1D1720518(a1, v9, a3);
}

unint64_t sub_1D171E268(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D171E2D4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*v7 == a1 && dword_1D1E6EF7C[*(v7 + 4)] == dword_1D1E6EF7C[a1 << 24 >> 56])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171E368(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171E3D8(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (dword_1D1E6EF7C[*(*(v2 + 48) + result)] == dword_1D1E6EF7C[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171E458(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D1E6904C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D171E510(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D1741B10(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D1E684FC();

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

unint64_t sub_1D171E5DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v19 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v9 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v9 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v6 == 4)
        {
          v9 = "60-AD68-D91053B75F44";
        }

        else
        {
          v9 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v7 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(v19 + 48) + v4))
        {
          v8 = "13-AA62-01754F256DD5";
        }

        else
        {
          v8 = "00-8000-0026BB765291";
        }

        if (*(*(v19 + 48) + v4) <= 1u)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }
      }

      v10 = v9 | 0x8000000000000000;
      v11 = "17-A590-755E1AAC02AE";
      if (v5 != 6)
      {
        v11 = "73-8FBD-0E8978A33403";
      }

      v12 = "60-AD68-D91053B75F44";
      if (v5 != 4)
      {
        v12 = "7E-BE63-1D00B1500545";
      }

      if (v5 <= 5)
      {
        v11 = v12;
      }

      if (v5 == 2)
      {
        v13 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v13 = "CE-986D-63B28F62C9E3";
      }

      if (v5)
      {
        v14 = "13-AA62-01754F256DD5";
      }

      else
      {
        v14 = "00-8000-0026BB765291";
      }

      if (v5 <= 1)
      {
        v13 = v14;
      }

      if (v5 <= 3)
      {
        v11 = v13;
      }

      if (v10 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v15 = sub_1D1E6904C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D171E7F4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v16 = sub_1D1E6775C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D171E9B4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171EA20(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for BatchRequestError.ID();
  v5 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1D1741C80(*(v2 + 48) + v12 * v10, v8, type metadata accessor for BatchRequestError.ID);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v13 = *(v21 + 20);
        v14 = v8[v13];
        LOBYTE(v13) = *(a1 + v13);
        v23 = v14;
        v22 = v13;
        v15 = CharacteristicKind.rawValue.getter();
        v17 = v16;
        if (v15 == CharacteristicKind.rawValue.getter() && v17 == v18)
        {

          sub_1D1741D50(v8, type metadata accessor for BatchRequestError.ID);
          return v10;
        }

        v19 = sub_1D1E6904C();

        sub_1D1741D50(v8, type metadata accessor for BatchRequestError.ID);
        if (v19)
        {
          return v10;
        }
      }

      else
      {
        sub_1D1741D50(v8, type metadata accessor for BatchRequestError.ID);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D171EC58(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0x4E79616C70736944;
    v27 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v6 > 4)
      {
        if (*(*(v28 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0xD000000000000017;
            v12 = 0x80000001D1EB8390;
          }

          else
          {
            v12 = 0xE800000000000000;
            v11 = 0x657A6953656C6954;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0x746169636F737341;
          v12 = 0xEE00657079546465;
        }

        else if (v6 == 8)
        {
          v11 = 0x496564756C636E49;
          v12 = 0xEF7375746174536ELL;
        }

        else
        {
          v11 = 0x6564644165746144;
          v12 = 0xE900000000000064;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x657469726F766146;
        }

        else
        {
          v7 = 0x61446E4F776F6853;
        }

        if (v6 == 3)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xEF6472616F626873;
        }

        if (v6 == 2)
        {
          v7 = 0x6E6564496E6F6349;
          v8 = 0xEE00726569666974;
        }

        v9 = *(*(v28 + 48) + v4) ? 0x44496D6F6F52 : v5;
        v10 = v6 ? 0xE600000000000000 : 0xEB00000000656D61;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x6564644165746144;
      if (v27 == 8)
      {
        v13 = 0x496564756C636E49;
      }

      v14 = 0xEF7375746174536ELL;
      if (v27 != 8)
      {
        v14 = 0xE900000000000064;
      }

      if (v27 == 7)
      {
        v13 = 0x746169636F737341;
        v14 = 0xEE00657079546465;
      }

      v15 = 0xD000000000000017;
      if (v27 != 5)
      {
        v15 = 0x657A6953656C6954;
      }

      v16 = 0x80000001D1EB8390;
      if (v27 != 5)
      {
        v16 = 0xE800000000000000;
      }

      if (v27 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v27 == 3)
      {
        v17 = 0x657469726F766146;
      }

      else
      {
        v17 = 0x61446E4F776F6853;
      }

      if (v27 == 3)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xEF6472616F626873;
      }

      if (v27 == 2)
      {
        v17 = 0x6E6564496E6F6349;
        v18 = 0xEE00726569666974;
      }

      if (v27)
      {
        v19 = 0x44496D6F6F52;
      }

      else
      {
        v19 = v5;
      }

      if (v27)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xEB00000000656D61;
      }

      if (v27 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v27 <= 4 ? v17 : v13;
      v22 = v27 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = v5;
      v24 = sub_1D1E6904C();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_1D171EFE4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1D1741C80(*(v2 + 48) + v13 * v11, v9, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v14 = *(v5 + 20), (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0()))
      {
        v15 = _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(&v9[*(v5 + 24)], a1 + *(v5 + 24));
        sub_1D1741D50(v9, type metadata accessor for StaticServiceCharacteristicDoublet);
        if (v15)
        {
          return v11;
        }
      }

      else
      {
        sub_1D1741D50(v9, type metadata accessor for StaticServiceCharacteristicDoublet);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1D171F19C(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1D171F20C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D1741B58(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3891E00](v9, a1);
      sub_1D1741BB4(v9);
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

unint64_t sub_1D171F2D4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  v24 = a1 << 8 >> 56;
  v25 = a1 & 0xFFFFFFFFFFFFLL;
  while (1)
  {
    v12 = *(v3 + 48) + 16 * v5;
    v13 = *v12;
    v14 = *(v12 + 8);
    if (!*(v12 + 8))
    {
      if (a2)
      {
        goto LABEL_4;
      }

      sub_1D174181C(*v12, 0);
      v17 = a1;
      v18 = 0;
      goto LABEL_36;
    }

    if (v14 == 1)
    {
      break;
    }

    if (a2 != 2)
    {
LABEL_4:
      v9 = a1;
      v10 = a2;
      goto LABEL_5;
    }

    sub_1D174181C(v13, 2);
    v17 = a1;
    v18 = 2;
LABEL_36:
    sub_1D174181C(v17, v18);
    if ((v13 & 0xFFFFFFFFFFFFLL) == v25 && dword_1D1E6EF7C[v13 << 8 >> 56] == dword_1D1E6EF7C[v24])
    {
      return v5;
    }

LABEL_7:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if (a2 != 1)
  {
    sub_1D1741808(a1, a2);
    v9 = v13;
    v10 = 1;
LABEL_5:
    sub_1D1741808(v9, v10);
    v11 = a2;
LABEL_6:
    sub_1D174181C(v13, v14);
    sub_1D174181C(a1, v11);
    goto LABEL_7;
  }

  v15 = *(v13 + 16);
  if (v15 != *(a1 + 16))
  {
LABEL_33:
    v11 = 1;
    sub_1D1741808(a1, 1);
    sub_1D1741808(v13, 1);
    goto LABEL_6;
  }

  if (v15)
  {
    if (v13 != a1)
    {
      v16 = 0;
      while (1)
      {
        v19 = *(v13 + v16 + 35);
        v20 = *(a1 + v16 + 34);
        v21 = *(a1 + v16 + 35);
        v22 = *(a1 + v16 + 40);
        if (*(v13 + v16 + 34))
        {
          if (!*(a1 + v16 + 34))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (*(v13 + v16 + 32) != *(a1 + v16 + 32))
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_33;
          }
        }

        if (v19 == 30)
        {
          if (v21 != 30)
          {
            goto LABEL_33;
          }
        }

        else if (v21 == 30 || dword_1D1E6EF7C[v19] != dword_1D1E6EF7C[v21])
        {
          goto LABEL_33;
        }

        if (*(v13 + v16 + 40))
        {
          if ((*(a1 + v16 + 40) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if ((*(a1 + v16 + 40) & 1) != 0 || *(v13 + v16 + 36) != *(a1 + v16 + 36))
        {
          goto LABEL_33;
        }

        v16 += 12;
        if (!--v15)
        {
          goto LABEL_41;
        }
      }
    }

    v13 = a1;
  }

LABEL_41:
  sub_1D1741808(a1, 1);
  sub_1D1741808(v13, 1);
  sub_1D174181C(v13, 1);
  sub_1D174181C(a1, 1);
  return v5;
}

unint64_t sub_1D171F57C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v37 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v12 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v37 - v13;
  v39 = _s7MergeIdVMa();
  v15 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v44 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = (v6 + 48);
    v22 = *(v16 + 72);
    v42 = ~v19;
    v43 = v22;
    v37 = (v6 + 32);
    v41 = (v6 + 8);
    v23 = &qword_1EC642980;
    do
    {
      sub_1D1741C80(*(v46 + 48) + v43 * v20, v18, _s7MergeIdVMa);
      v24 = *(v45 + 48);
      sub_1D1741C08(v18, v14, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v48, &v14[v24], &qword_1EC642590, qword_1D1E71260);
      v25 = *v21;
      if ((*v21)(v14, 1, v5) == 1)
      {
        if (v25(&v14[v24], 1, v5) != 1)
        {
          goto LABEL_4;
        }

        sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        sub_1D1741C08(v14, v47, &qword_1EC642590, qword_1D1E71260);
        if (v25(&v14[v24], 1, v5) == 1)
        {
          (*v41)(v47, v5);
LABEL_4:
          sub_1D1741A30(v14, v23, &unk_1D1E6E6E0);
          goto LABEL_5;
        }

        v26 = v38;
        (*v37)(v38, &v14[v24], v5);
        sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v40 = sub_1D1E6775C();
        v27 = v23;
        v28 = v18;
        v29 = v21;
        v30 = *v41;
        (*v41)(v26, v5);
        v30(v47, v5);
        v21 = v29;
        v18 = v28;
        v23 = v27;
        sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
        if ((v40 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = *(v39 + 20);
      v32 = *&v18[v31];
      v33 = *&v18[v31 + 8];
      v34 = (v48 + v31);
      v35 = v32 == *v34 && v33 == v34[1];
      if (v35 || (sub_1D1E6904C() & 1) != 0)
      {
        sub_1D1741D50(v18, _s7MergeIdVMa);
        return v20;
      }

LABEL_5:
      sub_1D1741D50(v18, _s7MergeIdVMa);
      v20 = (v20 + 1) & v42;
    }

    while (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  return v20;
}

unint64_t sub_1D171FA6C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xE0;
    do
    {
      v8 = *(*(v2 + 48) + result);
      v9 = v8 >> 5;
      if (v8 >> 5 <= 1)
      {
        if (v9)
        {
          if (v7 == 32)
          {
LABEL_4:
            if (((v8 ^ a1) & 1) == 0)
            {
              return result;
            }
          }
        }

        else if (a1 <= 0x1Fu && v8 == a1)
        {
          return result;
        }
      }

      else if (v9 == 2)
      {
        if (v7 == 64 && ((v8 ^ a1) & 0x1F) == 0)
        {
          return result;
        }
      }

      else if (v9 == 3)
      {
        if (v7 == 96)
        {
          goto LABEL_4;
        }
      }

      else if (v7 == 128)
      {
        goto LABEL_4;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171FB50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a1;
  v5 = sub_1D1E669FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v36 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v36 - v13;
  v41 = type metadata accessor for DashboardSortableData();
  v15 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v44 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = (v6 + 48);
    v22 = *(v16 + 72);
    v42 = ~v19;
    v43 = v22;
    v36 = (v6 + 32);
    v39 = (v6 + 8);
    v23 = v40;
    do
    {
      sub_1D1741C80(*(v46 + 48) + v43 * v20, v18, type metadata accessor for DashboardSortableData);
      v25 = *(v45 + 48);
      sub_1D1741C08(v18, v14, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v47, &v14[v25], &qword_1EC642570, &qword_1D1E6C6A0);
      v26 = *v21;
      if ((*v21)(v14, 1, v5) == 1)
      {
        if (v26(&v14[v25], 1, v5) != 1)
        {
          goto LABEL_10;
        }

        sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      }

      else
      {
        sub_1D1741C08(v14, v23, &qword_1EC642570, &qword_1D1E6C6A0);
        if (v26(&v14[v25], 1, v5) == 1)
        {
          (*v39)(v23, v5);
LABEL_10:
          sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
          goto LABEL_4;
        }

        v27 = v37;
        (*v36)(v37, &v14[v25], v5);
        sub_1D173FC14(&qword_1EC642AC8, MEMORY[0x1E6969530]);
        v38 = sub_1D1E6775C();
        v28 = *v39;
        v29 = v27;
        v23 = v40;
        (*v39)(v29, v5);
        v28(v23, v5);
        sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
        if ((v38 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v30 = *(v41 + 20);
      v31 = *&v18[v30];
      v32 = *&v18[v30 + 8];
      v33 = (v47 + v30);
      v34 = v31 == *v33 && v32 == v33[1];
      if (v34 || (sub_1D1E6904C() & 1) != 0)
      {
        v24 = *(v41 + 24);
        if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
        {
          sub_1D1741D50(v18, type metadata accessor for DashboardSortableData);
          return v20;
        }
      }

LABEL_4:
      sub_1D1741D50(v18, type metadata accessor for DashboardSortableData);
      v20 = (v20 + 1) & v42;
    }

    while (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  return v20;
}

unint64_t sub_1D1720040(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v33 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v13 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v15 = &v33 - v14;
  v39 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v16 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v3 + 64;
  v44 = v3;
  v20 = -1 << *(v3 + 32);
  v21 = a2 & ~v20;
  if (((*(v3 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return v21;
  }

  v41 = ~v20;
  v22 = *a1;
  v45 = a1[1];
  v46 = v22;
  v23 = (v7 + 48);
  v33 = (v7 + 32);
  v37 = (v7 + 8);
  v38 = a1;
  v42 = *(v17 + 72);
  v24 = v35;
  while (1)
  {
    sub_1D1741C80(*(v44 + 48) + v42 * v21, v19, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v25 = *v19 == v46 && v19[1] == v45;
    if (!v25 && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v26 = *(v39 + 20);
    v27 = *(v24 + 48);
    sub_1D1741C08(v19 + v26, v15, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741C08(v38 + v26, &v15[v27], &qword_1EC642590, qword_1D1E71260);
    v28 = *v23;
    if ((*v23)(v15, 1, v6) == 1)
    {
      break;
    }

    sub_1D1741C08(v15, v40, &qword_1EC642590, qword_1D1E71260);
    if (v28(&v15[v27], 1, v6) == 1)
    {
      (*v37)(v40, v6);
      goto LABEL_4;
    }

    v29 = v34;
    (*v33)(v34, &v15[v27], v6);
    sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8]);
    v36 = sub_1D1E6775C();
    v30 = *v37;
    v31 = v29;
    v24 = v35;
    (*v37)(v31, v6);
    v30(v40, v6);
    sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
    if (v36)
    {
      goto LABEL_18;
    }

LABEL_5:
    sub_1D1741D50(v19, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v21 = (v21 + 1) & v41;
    if (((*(v43 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return v21;
    }
  }

  if (v28(&v15[v27], 1, v6) != 1)
  {
LABEL_4:
    sub_1D1741A30(v15, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_5;
  }

  sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
LABEL_18:
  sub_1D1741D50(v19, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  return v21;
}

unint64_t sub_1D1720518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = v3;
    v9 = ~v5;
    while (1)
    {
      v17 = *(*(v8 + 48) + v6);
      v10 = a3();
      v12 = v11;
      if (v10 == a3() && v12 == v13)
      {
        break;
      }

      v15 = sub_1D1E6904C();

      if ((v15 & 1) == 0)
      {
        v6 = (v6 + 1) & v9;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

uint64_t sub_1D1720648(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BD8, &unk_1D1E7E900);
  v37 = a2;
  result = sub_1D1E68BBC();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
        v26 = v22;
        sub_1D1741AF8(v24, v25);
      }

      v27 = *(v8 + 40);
      result = sub_1D1E684EC();
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
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1D17208D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C90, &qword_1D1E6E9E8);
  v47 = a2;
  result = sub_1D1E68BBC();
  v14 = result;
  if (*(v11 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v6;
    v20 = v18 & *(v11 + 64);
    v21 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v7;
    v48 = (v7 + 32);
    v22 = result + 64;
    v50 = v19;
    v51 = v10;
    while (v20)
    {
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v30 = v27 | (v15 << 6);
      v31 = *(v11 + 48);
      v49 = *(v7 + 72);
      v32 = v31 + v49 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v50);
      }

      else
      {
        (*v45)(v51, v32, v50);
      }

      v33 = (*(v11 + 56) + 48 * v30);
      v34 = v33[1];
      v52 = *v33;
      *v53 = v34;
      *&v53[10] = *(v33 + 26);
      v35 = *(v14 + 40);
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      result = sub_1D1E676DC();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v7 = v46;
        v24 = v51;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v7 = v46;
      v24 = v51;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v48)(*(v14 + 48) + v49 * v23, v24, v50);
      v25 = (*(v14 + 56) + 48 * v23);
      *(v25 + 26) = *&v53[10];
      v26 = *v53;
      *v25 = v52;
      v25[1] = v26;
      ++*(v14 + 16);
    }

    v28 = v15;
    while (1)
    {
      v15 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v21)
      {
        break;
      }

      v29 = v16[v15];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v20 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}