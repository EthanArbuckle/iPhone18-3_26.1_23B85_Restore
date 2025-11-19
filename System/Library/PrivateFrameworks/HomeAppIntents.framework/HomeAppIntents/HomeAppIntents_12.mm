uint64_t sub_25282E168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v3 = sub_2528BF400();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528BF9D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for DeviceEntity();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v27, v8);
  (*(v4 + 16))(v7, v28, v3);
  DeviceEntity.init(staticService:snapshot:)(v12, v7, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2527213D8(v16, &qword_27F4FD668, &qword_2528C8900);
  }

  else
  {
    sub_25283BBDC(v16, v21, type metadata accessor for DeviceEntity);
    v22 = *(v21 + 2);
    sub_2528BE6B0();
    v31[0] = v31[1];
    v30 = 3;
    if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v31, &v30) & 1) == 0)
    {
      v25 = v29;
      sub_25283BBDC(v21, v29, type metadata accessor for DeviceEntity);
      v24 = v25;
      v23 = 0;
      return (*(v18 + 56))(v24, v23, 1, v17);
    }

    sub_25283B92C(v21, type metadata accessor for DeviceEntity);
  }

  v23 = 1;
  v24 = v29;
  return (*(v18 + 56))(v24, v23, 1, v17);
}

uint64_t sub_25282E4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BFF90();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  (*(v7 + 16))(v10, a2, v6);
  return DeviceEntity.init(staticMediaProfile:snapshot:)(v14, v10, a3);
}

uint64_t sub_25282E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528C0130();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  (*(v7 + 16))(v10, a2, v6);
  DeviceEntity.init(staticCameraProfile:snapshot:)(v14, v10, a3);
  v16 = type metadata accessor for DeviceEntity();
  return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
}

uint64_t sub_25282E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2528BFEF0();
  v11[2] = a2;
  v11[3] = a1;
  v11[4] = a3;
  v9 = sub_2527A33EC(sub_25283B888, v11, v8);

  *a4 = v9;
  return result;
}

uint64_t sub_25282E880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v7 = sub_2528BF400();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528BFF00();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2528BFB20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2528BECF0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_2528BFB00(), v24 = sub_2528198B8(v23, a2), (*(v20 + 8))(v23, v19), (v24 & 1) == 0))
  {
    v27 = type metadata accessor for DeviceEntity();
    return (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  }

  else
  {
    (*(v15 + 16))(v18, a1, v14);
    (*(v28 + 16))(v13, v33, v29);
    v25 = v30;
    (*(v31 + 16))(v30, v34, v32);
    return DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)(v18, v13, v25, v35);
  }
}

uint64_t sub_25282EBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2528BFF00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528BFB20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1);
  (*(v9 + 16))(v12, a2, v8);
  return DeviceEntity.init(staticEndpoint:staticMatterDevice:home:)(v16, v12, a3, a4);
}

uint64_t sub_25282ED34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2528BF070();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BF330();
  if (*(v9 + 16) && (v10 = sub_252785C40(a1), (v11 & 1) != 0))
  {
    (*(v5 + 16))(v8, *(v9 + 56) + *(v5 + 72) * v10, v4);

    v12 = sub_2528BF060();
    result = (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *a2 = v12;
  return result;
}

uint64_t sub_25282EE84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

uint64_t sub_25282EEB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

char *sub_25282EEDC(char *a1, int64_t a2, char a3)
{
  result = sub_25282F324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25282EEFC(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FF680, &qword_2528D3C98, MEMORY[0x277D155B8]);
  *v3 = result;
  return result;
}

size_t sub_25282EF40(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FF678, &qword_2528D3C90, MEMORY[0x277D16AB0]);
  *v3 = result;
  return result;
}

char *sub_25282EF84(char *a1, int64_t a2, char a3)
{
  result = sub_25282F690(a1, a2, a3, *v3, &qword_27F4FF6A0, &unk_2528D3CD8);
  *v3 = result;
  return result;
}

char *sub_25282EFBC(char *a1, int64_t a2, char a3)
{
  result = sub_25282F450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25282EFDC(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_25282F020(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
  *v3 = result;
  return result;
}

char *sub_25282F064(char *a1, int64_t a2, char a3)
{
  result = sub_25282FEC8(a1, a2, a3, *v3, &qword_27F4FC780, &unk_2528D4C50);
  *v3 = result;
  return result;
}

char *sub_25282F094(char *a1, int64_t a2, char a3)
{
  result = sub_25282F690(a1, a2, a3, *v3, &qword_27F4FC758, &unk_2528C8020);
  *v3 = result;
  return result;
}

void *sub_25282F0CC(void *a1, int64_t a2, char a3)
{
  result = sub_25282F55C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25282F0EC(char *a1, int64_t a2, char a3)
{
  result = sub_25282FA00(a1, a2, a3, *v3, &qword_27F4FC730, &unk_2528D3CC0);
  *v3 = result;
  return result;
}

char *sub_25282F11C(char *a1, int64_t a2, char a3)
{
  result = sub_25282F690(a1, a2, a3, *v3, &qword_27F4FC760, &qword_2528C4830);
  *v3 = result;
  return result;
}

char *sub_25282F154(char *a1, int64_t a2, char a3)
{
  result = sub_25282F79C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25282F174(void *a1, int64_t a2, char a3)
{
  result = sub_25282F8B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25282F194(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC848, &unk_2528C4900, type metadata accessor for ZoneEntity);
  *v3 = result;
  return result;
}

size_t sub_25282F1D8(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC6A0, &qword_2528D3C80, MEMORY[0x277D16EC8]);
  *v3 = result;
  return result;
}

char *sub_25282F21C(char *a1, int64_t a2, char a3)
{
  result = sub_25282FA00(a1, a2, a3, *v3, &qword_27F4FF698, &unk_2528D3CB0);
  *v3 = result;
  return result;
}

size_t sub_25282F24C(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FAFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25282F26C(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC830, &qword_2528C48E0, type metadata accessor for DeviceEntity);
  *v3 = result;
  return result;
}

size_t sub_25282F2B0(size_t a1, int64_t a2, char a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC7F8, &qword_2528C48B0, type metadata accessor for RoomEntity);
  *v3 = result;
  return result;
}

char *sub_25282F2F4(char *a1, int64_t a2, char a3)
{
  result = sub_25282FEC8(a1, a2, a3, *v3, &qword_27F4FF6B8, &unk_2528D3D10);
  *v3 = result;
  return result;
}

char *sub_25282F324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF670, &qword_2528D3C88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25282F450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_25282F55C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6B0, &unk_2528D3D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25282F690(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_25282F79C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3A8, &qword_2528D3CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25282F8B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF930, &qword_2528D41F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25282FA00(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

size_t sub_25282FAFC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C8, &qword_2528D3D28);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8);
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

size_t sub_25282FCEC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_25282FEC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_25282FFB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_25283004C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2528BFDE0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
  result = sub_2528C0E50();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_25283C680(&qword_27F4FC798, MEMORY[0x277D16348]);
    result = sub_2528C0900();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252830374(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6F8, &unk_2528D3CA0);
  result = sub_2528C0E50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_2528C1130();
    sub_2528C0A40();

    result = sub_2528C1180();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2528306D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  result = sub_2528C0E50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2528C1130();

    sub_2528C0A40();
    result = sub_2528C1180();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2528308F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2528BECF0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
  result = sub_2528C0E50();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_25283C680(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
    result = sub_2528C0900();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_252830C1C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_252830C8C(a1, a2, sub_252830E68, sub_252830E68);
}

void *sub_252830C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  sub_2528BEA50();
  isStackAllocationSafe = sub_2528BEA50();
  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();
    sub_2528BEA50();
    v13 = sub_25282FFB4(v16, v10, a2, a1, a4);

    MEMORY[0x2530A8D80](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_252830E68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v28 = 0;
    v29 = a3 + 56;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v54 = v31 & *(a3 + 56);
    v56 = 0;
    v32 = (v30 + 63) >> 6;
    v58 = a4 + 56;
LABEL_68:
    if (v54)
    {
      v33 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      goto LABEL_75;
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_129;
      }

      if (v28 >= v32)
      {
        break;
      }

      v35 = *(v29 + 8 * v28);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v54 = (v35 - 1) & v35;
LABEL_75:
        v51 = v33 | (v28 << 6);
        v36 = *(*(v5 + 48) + v51);
        v37 = *(v4 + 40);
        sub_2528C1130();
        sub_2528C0A40();

        result = sub_2528C1180();
        v38 = -1 << *(v4 + 32);
        v39 = result & ~v38;
        if (((*(v58 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_68;
        }

        v40 = ~v38;
        v41 = v36;
        while (2)
        {
          v42 = 0xE600000000000000;
          v43 = 0x6D7575636176;
          switch(*(*(a4 + 48) + v39))
          {
            case 1:
              v42 = 0xE300000000000000;
              v43 = 7368557;
              break;
            case 2:
              v43 = 0x68546D7575636176;
              v42 = 0xED0000706F4D6E65;
              break;
            case 3:
              v43 = 0x61656C4370656564;
              v42 = 0xE90000000000006ELL;
              break;
            case 4:
              v42 = 0xE400000000000000;
              v43 = 1869903201;
              break;
            case 5:
              v42 = 0xE500000000000000;
              v43 = 0x7465697571;
              break;
            case 6:
              v42 = 0xE500000000000000;
              v43 = 0x6B63697571;
              break;
            case 7:
              v42 = 0xE800000000000000;
              v43 = 0x6573696F4E776F6CLL;
              break;
            case 8:
              v42 = 0xE900000000000079;
              v43 = 0x6772656E45776F6CLL;
              break;
            case 9:
              v42 = 0xE800000000000000;
              v43 = 0x6E6F697461636176;
              break;
            case 0xA:
              v42 = 0xE500000000000000;
              v43 = 0x746867696ELL;
              break;
            case 0xB:
              v42 = 0xE300000000000000;
              v43 = 7954788;
              break;
            case 0xC:
              v42 = 0xE300000000000000;
              v43 = 7235949;
              break;
            case 0xD:
              v42 = 0xE300000000000000;
              v43 = 7889261;
              break;
            default:
              break;
          }

          v44 = 0xE600000000000000;
          v45 = 0x6D7575636176;
          switch(v41)
          {
            case 1:
              v44 = 0xE300000000000000;
              if (v43 == 7368557)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            case 2:
              v44 = 0xED0000706F4D6E65;
              if (v43 != 0x68546D7575636176)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 3:
              v44 = 0xE90000000000006ELL;
              if (v43 != 0x61656C4370656564)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 4:
              v44 = 0xE400000000000000;
              if (v43 != 1869903201)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 5:
              v44 = 0xE500000000000000;
              if (v43 != 0x7465697571)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 6:
              v44 = 0xE500000000000000;
              if (v43 != 0x6B63697571)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 7:
              v44 = 0xE800000000000000;
              if (v43 != 0x6573696F4E776F6CLL)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 8:
              v44 = 0xE900000000000079;
              if (v43 != 0x6772656E45776F6CLL)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 9:
              v44 = 0xE800000000000000;
              if (v43 != 0x6E6F697461636176)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 10:
              v44 = 0xE500000000000000;
              v45 = 0x746867696ELL;
              goto LABEL_115;
            case 11:
              v44 = 0xE300000000000000;
              if (v43 != 7954788)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 12:
              v44 = 0xE300000000000000;
              if (v43 != 7235949)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 13:
              v44 = 0xE300000000000000;
              if (v43 != 7889261)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            default:
LABEL_115:
              if (v43 != v45)
              {
                goto LABEL_117;
              }

LABEL_116:
              if (v42 != v44)
              {
LABEL_117:
                v46 = sub_2528C1060();

                if (v46)
                {
                  goto LABEL_123;
                }

                v39 = (v39 + 1) & v40;
                if (((*(v58 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                {
                  v5 = a3;
                  v4 = a4;
                  goto LABEL_68;
                }

                continue;
              }

LABEL_123:
              *(v52 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
              v47 = __OFADD__(v56++, 1);
              v5 = a3;
              v4 = a4;
              if (!v47)
              {
                goto LABEL_68;
              }

              goto LABEL_131;
          }
        }
      }
    }

    v6 = v56;
LABEL_127:
    sub_2528BEA50();
    return sub_252830374(v52, a2, v6, v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v50 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v53 = v9 & *(a4 + 56);
    v48 = (v8 + 63) >> 6;
    v57 = a3 + 56;
LABEL_6:
    if (v53)
    {
      v10 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v11 = v10 | (v7 << 6);
      v12 = a4;
      goto LABEL_13;
    }

    v13 = v7;
    v12 = a4;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v48)
      {
        goto LABEL_127;
      }

      v14 = *(v50 + 8 * v7);
      ++v13;
      if (v14)
      {
        v53 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v7 << 6);
LABEL_13:
        v15 = *(*(v12 + 48) + v11);
        v16 = *(v5 + 40);
        sub_2528C1130();
        sub_2528C0A40();

        result = sub_2528C1180();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v57 + 8 * (v18 >> 6))) == 0)
        {
          goto LABEL_6;
        }

        v55 = v6;
        v21 = ~v17;
        v22 = v15;
        while (2)
        {
          v23 = 0xE600000000000000;
          v24 = 0x6D7575636176;
          switch(*(*(v5 + 48) + v18))
          {
            case 1:
              v23 = 0xE300000000000000;
              v24 = 7368557;
              break;
            case 2:
              v24 = 0x68546D7575636176;
              v23 = 0xED0000706F4D6E65;
              break;
            case 3:
              v24 = 0x61656C4370656564;
              v23 = 0xE90000000000006ELL;
              break;
            case 4:
              v23 = 0xE400000000000000;
              v24 = 1869903201;
              break;
            case 5:
              v23 = 0xE500000000000000;
              v24 = 0x7465697571;
              break;
            case 6:
              v23 = 0xE500000000000000;
              v24 = 0x6B63697571;
              break;
            case 7:
              v23 = 0xE800000000000000;
              v24 = 0x6573696F4E776F6CLL;
              break;
            case 8:
              v23 = 0xE900000000000079;
              v24 = 0x6772656E45776F6CLL;
              break;
            case 9:
              v23 = 0xE800000000000000;
              v24 = 0x6E6F697461636176;
              break;
            case 0xA:
              v23 = 0xE500000000000000;
              v24 = 0x746867696ELL;
              break;
            case 0xB:
              v23 = 0xE300000000000000;
              v24 = 7954788;
              break;
            case 0xC:
              v23 = 0xE300000000000000;
              v24 = 7235949;
              break;
            case 0xD:
              v23 = 0xE300000000000000;
              v24 = 7889261;
              break;
            default:
              break;
          }

          v25 = 0xE600000000000000;
          v26 = 0x6D7575636176;
          switch(v22)
          {
            case 1:
              v25 = 0xE300000000000000;
              if (v24 == 7368557)
              {
                goto LABEL_54;
              }

              goto LABEL_55;
            case 2:
              v25 = 0xED0000706F4D6E65;
              if (v24 != 0x68546D7575636176)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 3:
              v25 = 0xE90000000000006ELL;
              if (v24 != 0x61656C4370656564)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 4:
              v25 = 0xE400000000000000;
              if (v24 != 1869903201)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 5:
              v25 = 0xE500000000000000;
              if (v24 != 0x7465697571)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 6:
              v25 = 0xE500000000000000;
              if (v24 != 0x6B63697571)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 7:
              v25 = 0xE800000000000000;
              if (v24 != 0x6573696F4E776F6CLL)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 8:
              v25 = 0xE900000000000079;
              if (v24 != 0x6772656E45776F6CLL)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 9:
              v25 = 0xE800000000000000;
              if (v24 != 0x6E6F697461636176)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 10:
              v25 = 0xE500000000000000;
              v26 = 0x746867696ELL;
              goto LABEL_53;
            case 11:
              v25 = 0xE300000000000000;
              if (v24 != 7954788)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 12:
              v25 = 0xE300000000000000;
              if (v24 != 7235949)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 13:
              v25 = 0xE300000000000000;
              if (v24 != 7889261)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            default:
LABEL_53:
              if (v24 != v26)
              {
                goto LABEL_55;
              }

LABEL_54:
              if (v23 != v25)
              {
LABEL_55:
                v27 = sub_2528C1060();

                if (v27)
                {
                  goto LABEL_61;
                }

                v18 = (v18 + 1) & v21;
                v19 = v18 >> 6;
                v5 = a3;
                v20 = 1 << v18;
                if ((*(v57 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
                {
                  v6 = v55;
                  goto LABEL_6;
                }

                continue;
              }

LABEL_61:
              v52[v19] |= v20;
              v6 = v55 + 1;
              v5 = a3;
              if (!__OFADD__(v55, 1))
              {
                goto LABEL_6;
              }

              goto LABEL_130;
          }
        }
      }
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
  }

  return result;
}

uint64_t sub_252831B04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_2528C1130();

      sub_2528C0A40();
      v27 = sub_2528C1180();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_2528C1060() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:
          sub_2528BEA50();
          return sub_2528306D0(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_2528C1130();

      sub_2528C0A40();
      v41 = sub_2528C1180();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_2528C1060() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252831EE0(uint64_t a1)
{
  v2 = sub_2528BF9D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_252833D44(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2528320F4(uint64_t a1)
{
  v2 = sub_2528BFF90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_252833130(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252832308(uint64_t a1)
{
  v2 = sub_2528C0130();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_25283251C(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25283251C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C0130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25283C680(&qword_27F4FF660, MEMORY[0x277D16548]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2528327FC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2528327FC(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_2528C0130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_252832DD4(v13);
    }

    else
    {
      sub_252832AB8(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548]);
    v16 = sub_2528C0900();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25283C680(&qword_27F4FF660, MEMORY[0x277D16548]);
        v24 = sub_2528C0930();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2528342E0(MEMORY[0x277D16548], &qword_27F4FF668, &unk_2528D3C50);
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_252832AB8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528C0130();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF668, &unk_2528D3C50);
  v10 = sub_2528C0E40();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548]);
      result = sub_2528C0900();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_252832DD4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528C0130();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF668, &unk_2528D3C50);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_252833130(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BFF90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25283C680(&qword_27F4FF648, MEMORY[0x277D16448]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_252833410(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_252833410(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_2528BFF90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_2528339E8(v13);
    }

    else
    {
      sub_2528336CC(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448]);
    v16 = sub_2528C0900();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25283C680(&qword_27F4FF648, MEMORY[0x277D16448]);
        v24 = sub_2528C0930();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2528342E0(MEMORY[0x277D16448], &qword_27F4FF650, &qword_2528D3C48);
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_2528336CC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528BFF90();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF650, &qword_2528D3C48);
  v10 = sub_2528C0E40();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448]);
      result = sub_2528C0900();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2528339E8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528BFF90();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF650, &qword_2528D3C48);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_252833D44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BF9D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25283C680(&qword_27F4FD238, MEMORY[0x277D15AC0]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_252834024(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_252834024(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_2528BF9D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_252834834(v13);
    }

    else
    {
      sub_252834518(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0]);
    v16 = sub_2528C0900();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_25283C680(&qword_27F4FD238, MEMORY[0x277D15AC0]);
        v24 = sub_2528C0930();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2528342E0(MEMORY[0x277D15AC0], &qword_27F4FF638, &qword_2528D3C40);
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_2528342E0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_2528C0E30();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_252834518(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528BF9D0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF638, &qword_2528D3C40);
  v10 = sub_2528C0E40();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0]);
      result = sub_2528C0900();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_252834834(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528BF9D0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF638, &qword_2528D3C40);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_252834B90(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_2528C1180();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_2528C1130();

    sub_2528C0A40();
    v15 = sub_2528C1180();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2530A87A0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  sub_2528BE6B0();
  v5 = a2[1];
  sub_2528BE6B0();

  v6 = *a1;
  sub_2528BE6B0();
  v7 = *a2;
  sub_2528BE6B0();

  v8 = a1[2];
  sub_2528BE6B0();
  v24 = v25;
  v9 = a2[2];
  sub_2528BE6B0();
  v23[0] = v23[1];
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v24, v23) & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = a1[3];
  sub_2528BE6B0();
  v12 = v25;
  v11 = v26;
  v13 = a2[3];
  sub_2528BE6B0();
  if (v12 == v25 && v11 == v26)
  {
  }

  else
  {
    v14 = sub_2528C1060();

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v15 = a1[5];
  sub_2528BE6B0();
  v17 = v25;
  v16 = v26;
  v18 = a2[5];
  sub_2528BE6B0();
  if (v17 != v25 || v16 != v26)
  {
    v19 = sub_2528C1060();

    if (v19)
    {
      goto LABEL_10;
    }

LABEL_11:
    v21 = 0;
    return v21 & 1;
  }

LABEL_10:
  v20 = type metadata accessor for DeviceEntity();
  v21 = sub_25284E318(*(a1 + *(v20 + 52)), *(a2 + *(v20 + 52)));
  return v21 & 1;
}

uint64_t sub_252834F40(uint64_t a1, char *a2)
{
  v39 = a2;
  v38 = sub_2528BFF00();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_2528C00D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(a1, v9, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2527213D8(v9, &qword_27F4FCDB8, &unk_2528C5CC0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v31 = v11;
    v32 = v10;
    (*(v11 + 32))(v14, v9, v10);
    v30 = v14;
    v16 = sub_2528C0070();
    v40 = MEMORY[0x277D84F90];
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v36 = v16;

    v22 = 0;
    for (i = v3; v20; result = sub_252735F6C(v29))
    {
      v23 = v22;
LABEL_11:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = v37;
      v26 = v38;
      (*(v3 + 16))(v37, *(v36 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v38);
      v27 = sub_2528BFEF0();
      MEMORY[0x28223BE20](v27);
      v28 = v39;
      *(&v30 - 2) = v25;
      *(&v30 - 1) = v28;
      v29 = sub_2527A33EC(sub_25283B9AC, (&v30 - 4), v27);

      v3 = i;
      (*(i + 8))(v25, v26);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        (*(v31 + 8))(v30, v32);

        return v40;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2528352F8(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v4 = sub_2528C08B0();
  __swift_project_value_buffer(v4, qword_27F5025C8);

  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = type metadata accessor for DeviceEntity();
    v10 = MEMORY[0x2530A81A0](a2, v9);
    v12 = sub_2527389AC(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_252711000, v5, v6, "Query: Found deviceEntities: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v13 = sub_2528C0820();
  v14 = __swift_project_value_buffer(v13, qword_27F5025E0);

  sub_2528BA558(0, a1, v14, a2);
}

uint64_t sub_2528354DC(uint64_t a1)
{
  v1[3] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_2528C00D0();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = sub_2528BECF0();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6A8, &unk_2528D3CE8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1[16] = v11;
  v12 = *(v11 - 8);
  v1[17] = v12;
  v1[18] = *(v12 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252835740, 0, 0);
}

uint64_t sub_252835740()
{
  v30 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[3];
  v3 = sub_2528C08B0();
  __swift_project_value_buffer(v3, qword_27F5025C8);
  sub_25272006C(v2, v1, &qword_27F4FC488, &unk_2528C3F80);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_2527389AC(0x6E4572657474616DLL, 0xEE00736569746974, &v29);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, &v29);
    *(v9 + 22) = 2080;
    v11 = sub_2528C0DB0();
    v13 = v12;
    sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
    v14 = sub_2527389AC(v11, v13, &v29);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_252711000, v4, v5, "Query: Performing device query {%s} for %s with homeEntity: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v10, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  else
  {

    sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[17];
  v18 = v0[15];
  v19 = v0[3];
  v20 = sub_2528C0820();
  __swift_project_value_buffer(v20, qword_27F5025E0);
  sub_25272006C(v19, v15, &qword_27F4FC488, &unk_2528C3F80);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x7265766C6F736572;
  *(v23 + 24) = 0xE800000000000000;
  strcpy((v23 + 32), "matterEntities");
  *(v23 + 47) = -18;
  sub_25274AA0C(v15, v23 + v21, &qword_27F4FC488, &unk_2528C3F80);
  *(v23 + v22) = 0;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v0[21] = sub_2528B73C8(0, 0, sub_25283C6C8);

  v24 = sub_2528C00B0();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  v25 = swift_task_alloc();
  v0[22] = v25;
  *v25 = v0;
  v25[1] = sub_252835B84;
  v26 = v0[15];
  v27 = v0[3];

  return sub_2527817B8(v27, v26);
}

uint64_t sub_252835B84(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 184) = a1;

  sub_2527213D8(v3, &qword_27F4FC478, &unk_2528C3F70);

  return MEMORY[0x2822009F8](sub_252835CB4, 0, 0);
}

uint64_t sub_252835CB4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v1 + 32);
  *(v0 + 248) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v1 + 64);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  *(v0 + 192) = 0;
  v8 = v5 & v7;
  if (v8)
  {
    v9 = 0;
LABEL_8:
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v43 = *(v0 + 40);
    v46 = (v8 - 1) & v8;
    v16 = __clz(__rbit64(v8)) | (v9 << 6);
    (*(v2 + 16))(v12, *(v1 + 48) + *(v2 + 72) * v16, v14);
    (*(v3 + 16))(v15, *(v1 + 56) + *(v3 + 72) * v16, v43);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
    v18 = *(v17 + 48);
    (*(v2 + 32))(v13, v12, v14);
    (*(v3 + 32))(v13 + v18, v15, v43);
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    v19 = v46;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v6) >> 6) - 1;
    while (v11 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v1 + 72 + 8 * v10++);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v41 = *(v0 + 104);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    v19 = 0;
  }

  *(v0 + 200) = v19;
  *(v0 + 208) = v11;
  v20 = *(v0 + 112);
  sub_25274AA0C(*(v0 + 104), v20, &qword_27F4FF6A8, &unk_2528D3CE8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);
    v24 = *(v0 + 168);
    v25 = *(v0 + 152);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(v0 + 88);
    v44 = *(v0 + 64);
    v45 = *(v0 + 56);
    v47 = *(v0 + 32);

    v31 = *(v0 + 16);
    sub_2528352F8(v24, v31);

    v32 = *(v0 + 8);

    return v32(v31);
  }

  else
  {
    v34 = *(v0 + 112);
    v36 = *(v0 + 48);
    v35 = *(v0 + 56);
    v37 = *(v0 + 40);
    v38 = *(v21 + 48);
    (*(*(v0 + 80) + 32))(*(v0 + 88), v34, *(v0 + 72));
    (*(v36 + 32))(v35, v34 + v38, v37);
    sub_2528BEFC0();
    v39 = *(MEMORY[0x277D15430] + 4);
    v40 = swift_task_alloc();
    *(v0 + 216) = v40;
    *v40 = v0;
    v40[1] = sub_252836110;

    return MEMORY[0x28216EA40]();
  }
}

uint64_t sub_252836110(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_252836210, 0, 0);
}

uint64_t sub_252836210()
{
  sub_2528C0C20();
  *(v0 + 232) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_2528362A4, v2, v1);
}

uint64_t sub_2528362A4()
{
  v2 = v0[28];
  v1 = v0[29];

  v0[30] = [v2 sortedHomes];

  return MEMORY[0x2822009F8](sub_25283632C, 0, 0);
}

uint64_t sub_25283632C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  sub_25272BFF4(0, &qword_27F4FCE58, 0x277CD1A60);
  v4 = sub_2528C0B30();

  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = sub_2527AAE00(sub_25283B98C, v5, v4);

  if (v6)
  {
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    (*(v7 + 16))(v9, *(v0 + 56), v8);
    (*(v7 + 56))(v9, 0, 1, v8);
    v10 = sub_252834F40(v9, v6);
    sub_2527213D8(v9, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_252735F6C(v10);
  }

  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = *(v0 + 72);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  (*(v12 + 8))(v11, v13);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  *(v0 + 192) = v2;
  if (!v14)
  {
    v17 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v17 <= (v15 + 1))
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v52 = *(v0 + 104);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
        v30 = 0;
        goto LABEL_14;
      }

      v16 = *(v0 + 184);
      v14 = *(v16 + 8 * v20 + 64);
      ++v15;
      if (v14)
      {
        v15 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
    return MEMORY[0x28216EA40]();
  }

  v16 = *(v0 + 184);
LABEL_13:
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v23 = *(v0 + 72);
  v24 = *(v0 + 80);
  v25 = *(v0 + 64);
  v26 = *(v0 + 48);
  v54 = *(v0 + 40);
  v57 = (v14 - 1) & v14;
  v27 = __clz(__rbit64(v14)) | (v15 << 6);
  (*(v24 + 16))(v21, *(v16 + 48) + *(v24 + 72) * v27, v23);
  (*(v26 + 16))(v25, *(v16 + 56) + *(v26 + 72) * v27, v54);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  v29 = *(v28 + 48);
  (*(v24 + 32))(v22, v21, v23);
  (*(v26 + 32))(v22 + v29, v25, v54);
  (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
  v30 = v57;
  v19 = v15;
LABEL_14:
  *(v0 + 200) = v30;
  *(v0 + 208) = v19;
  v31 = *(v0 + 112);
  sub_25274AA0C(*(v0 + 104), v31, &qword_27F4FF6A8, &unk_2528D3CE8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
  {
    v45 = *(v0 + 112);
    v47 = *(v0 + 48);
    v46 = *(v0 + 56);
    v48 = *(v0 + 40);
    v49 = *(v32 + 48);
    (*(*(v0 + 80) + 32))(*(v0 + 88), v45, *(v0 + 72));
    (*(v47 + 32))(v46, v45 + v49, v48);
    sub_2528BEFC0();
    v50 = *(MEMORY[0x277D15430] + 4);
    v51 = swift_task_alloc();
    *(v0 + 216) = v51;
    *v51 = v0;
    v51[1] = sub_252836110;

    return MEMORY[0x28216EA40]();
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  v35 = *(v0 + 168);
  v36 = *(v0 + 152);
  v38 = *(v0 + 112);
  v37 = *(v0 + 120);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v41 = *(v0 + 88);
  v55 = *(v0 + 64);
  v56 = *(v0 + 56);
  v58 = *(v0 + 32);

  v42 = *(v0 + 16);
  sub_2528352F8(v35, v42);

  v43 = *(v0 + 8);

  return v43(v42);
}

uint64_t sub_2528368D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RoomEntity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2528BECF0();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v30);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    v17 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v28 = a3;
    v29 = a2;
    v33 = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v16, 0);
    v17 = v33;
    v18 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = *(v7 + 72);
    v31 = v11 + 32;
    v32 = v19;
    v20 = v30;
    do
    {
      sub_25283B8C4(v18, v10, type metadata accessor for RoomEntity);
      (*(v11 + 16))(v15, v10, v20);
      sub_25283B92C(v10, type metadata accessor for RoomEntity);
      v33 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25282EFDC(v21 > 1, v22 + 1, 1);
        v20 = v30;
        v17 = v33;
      }

      *(v17 + 16) = v22 + 1;
      v13 = (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v15, v20);
      v18 += v32;
      --v16;
    }

    while (v16);
    a3 = v28;
    a2 = v29;
  }

  if (a2)
  {
LABEL_12:
    MEMORY[0x28223BE20](v13);
    *(&v27 - 2) = a3;
    v24 = sub_252853E34(sub_25283B8A8, (&v27 - 4), a2);
    v23 = sub_252743D54(v24);

    goto LABEL_13;
  }

  v23 = MEMORY[0x277D84FA0];
LABEL_13:
  v33 = v17;
  sub_252737064(v23);
  v25 = sub_252743D54(v33);

  return v25;
}

uint64_t sub_252836BF8(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v28[1] = 0;
  v29 = sub_2528C00D0();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = sub_2528BF400();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14);
  v19 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v20 = sub_25272006C(a1 + *(v19 + 20), v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (v30)
  {
    MEMORY[0x28223BE20](v20);
    v28[-2] = v18;
    v28[0] = sub_252853B20(sub_25283B7F0, &v28[-4], v21);
  }

  else
  {
    v28[0] = sub_25282D6B8(v18);
  }

  sub_25272006C(v13, v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  v22 = v29;
  if ((*(v3 + 48))(v11, 1, v29) == 1)
  {
    sub_2527213D8(v11, &qword_27F4FCDB8, &unk_2528C5CC0);
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v3 + 32))(v6, v11, v22);
    v24 = sub_2528C0070();
    MEMORY[0x28223BE20](v24);
    v28[-2] = v30;
    v28[-1] = v18;
    v25 = sub_252853528(sub_25283B7D4, &v28[-4], v24);

    (*(v3 + 8))(v6, v22);
    v23 = v25;
  }

  v31 = v28[0];
  sub_252735F6C(v23);
  sub_2527213D8(v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  v26 = v31;
  (*(v15 + 8))(v18, v14);
  return v26;
}

uint64_t sub_252836FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DeviceEntity();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v4[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = sub_2528C05D0();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v4[20] = *(v16 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252837208, 0, 0);
}

uint64_t sub_252837208()
{
  v59 = v0;
  v1 = v0[2];
  strcpy(v56, "deviceTypes: ");
  HIWORD(v56[1]) = -4864;
  v2 = MEMORY[0x2530A81A0](v1, &type metadata for DeviceType);
  MEMORY[0x2530A80B0](v2);

  v4 = v56[0];
  v3 = v56[1];
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v5 = v0[22];
  v6 = v0[3];
  v7 = sub_2528C08B0();
  __swift_project_value_buffer(v7, qword_27F5025C8);
  sub_25272006C(v6, v5, &qword_27F4FC488, &unk_2528C3F80);

  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  v54 = v56[0];
  v55 = v56[1];
  if (v10)
  {
    v12 = v0[18];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v56[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_2527389AC(v4, v3, v56);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, v56);
    *(v13 + 22) = 2080;
    v15 = sub_2528C0DB0();
    v17 = v16;
    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
    v18 = sub_2527389AC(v15, v17, v56);

    *(v13 + 24) = v18;
    _os_log_impl(&dword_252711000, v8, v9, "Query: Performing device query {%s} for %s with homeEntity: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v14, -1, -1);
    MEMORY[0x2530A8D80](v13, -1, -1);
  }

  else
  {

    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v19 = v0[20];
  v20 = v0[21];
  v21 = v0[19];
  v22 = v0[4];
  v23 = v0[5];
  v24 = v0[3];
  v53 = v0[2];
  v25 = sub_2528C0820();
  __swift_project_value_buffer(v25, qword_27F5025E0);
  sub_25272006C(v24, v20, &qword_27F4FC488, &unk_2528C3F80);
  v26 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v27 = (v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v28[2] = 0x7265766C6F736572;
  v28[3] = 0xE800000000000000;
  v28[4] = v54;
  v28[5] = v55;
  sub_25274AA0C(v20, v28 + v26, &qword_27F4FC488, &unk_2528C3F80);
  *(v28 + v27) = v22;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  v0[23] = sub_2528B73C8(0, 0, sub_25283C6C8);

  v29 = MEMORY[0x277D84F90];
  v56[0] = MEMORY[0x277D84F90];
  v30 = *(v53 + 16);
  v0[24] = v30;
  if (v30)
  {
    v31 = (v0[2] + 32);
    do
    {
      v34 = *v31++;
      v33 = v34;
      if (v34 >> 14)
      {
        v35 = (v33 >> 8) & 0x3F;
        v57 = v33;
        v36 = sub_252802EDC();
        v58 = v35;
        v37 = sub_252802EDC();
        v32 = sub_25281A2B8(v37, v36);
      }

      else
      {
        v58 = v33;
        v32 = sub_252802EDC();
      }

      sub_2527368C0(v32);
      --v30;
    }

    while (v30);
    v29 = v56[0];
  }

  v38 = v0[16];
  v39 = v0[17];
  v40 = v0[14];
  v41 = v0[15];
  v42 = v0[12];
  v43 = v0[13];
  v44 = sub_2527443D4(v29);

  sub_2528C05B0();
  *v43 = v44;
  v45 = *MEMORY[0x277D16510];
  v46 = sub_2528C00B0();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v43, v45, v46);
  (*(v47 + 56))(v43, 0, 1, v46);
  sub_2528C05C0();
  sub_2527213D8(v43, &qword_27F4FC478, &unk_2528C3F70);
  v48 = *(v41 + 8);
  v0[25] = v48;
  v0[26] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v38, v40);
  (*(v41 + 16))(v42, v39, v40);
  (*(v41 + 56))(v42, 0, 1, v40);
  v49 = swift_task_alloc();
  v0[27] = v49;
  *v49 = v0;
  v49[1] = sub_252837814;
  v50 = v0[12];
  v51 = v0[3];

  return sub_25277ECE4(v51, 0, 0, v50);
}

uint64_t sub_252837814(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 224) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_252837944, 0, 0);
}

uint64_t sub_252837944()
{
  v70 = v0;
  v1 = v0[7];
  v2 = v0[28];
  v3 = *(v2 + 64);
  v55 = v2 + 64;
  v56 = v0[10];
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v54 = (63 - v5) >> 6;
  v7 = v0[2] + 32;
  v57 = v0[28];

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v65 = v1;
  while (v6)
  {
    v63 = v10;
LABEL_11:
    v12 = v0[11];
    v14 = v0[4];
    v13 = v0[5];
    v59 = v9;
    v61 = v6;
    v15 = __clz(__rbit64(v6)) | (v9 << 6);
    v16 = *(v57 + 48);
    v17 = sub_2528BECF0();
    (*(*(v17 - 8) + 16))(v12, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(v57 + 56);
    v19 = v18 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v15;
    v20 = *(v56 + 48);
    sub_25283B8C4(v19, v12 + v20, type metadata accessor for HomeEntity.SnapshotPair);
    v21 = sub_2528368D8(v13, v14, v12 + v20);
    v22 = sub_252836BF8(v12 + v20, v21);

    v67 = *(v22 + 16);
    if (v67)
    {
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      while (v23 < *(v22 + 16))
      {
        v25 = v0[24];
        v26 = (*(v1 + 80) + 32) & ~*(v1 + 80);
        v27 = *(v1 + 72);
        sub_25283B8C4(v22 + v26 + v27 * v23, v0[9], type metadata accessor for DeviceEntity);
        if (v25)
        {
          v28 = 0;
          while (1)
          {
            v29 = v0[9];
            v69[0] = *(v7 + 2 * v28);
            if (sub_25282CE4C(v69, v29))
            {
              break;
            }

            if (++v28 == v0[24])
            {
              goto LABEL_13;
            }
          }

          sub_25283BBDC(v0[9], v0[8], type metadata accessor for DeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25282F26C(0, *(v24 + 16) + 1, 1);
          }

          v31 = *(v24 + 16);
          v30 = *(v24 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_25282F26C(v30 > 1, v31 + 1, 1);
          }

          v32 = v0[8];
          *(v24 + 16) = v31 + 1;
          result = sub_25283BBDC(v32, v24 + v26 + v31 * v27, type metadata accessor for DeviceEntity);
          v1 = v65;
        }

        else
        {
LABEL_13:
          result = sub_25283B92C(v0[9], type metadata accessor for DeviceEntity);
        }

        if (++v23 == v67)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_27:
    v33 = v0[11];

    result = sub_2527213D8(v33, &qword_27F4FCDC0, &unk_2528C5CD0);
    v34 = *(v24 + 16);
    v10 = v63;
    v35 = v63[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v36 > v63[3] >> 1)
    {
      if (v35 <= v36)
      {
        v37 = v35 + v34;
      }

      else
      {
        v37 = v35;
      }

      result = sub_252738010(result, v37, 1, v63);
      v10 = result;
    }

    v6 = (v61 - 1) & v61;
    if (*(v24 + 16))
    {
      if ((v10[3] >> 1) - v10[2] < v34)
      {
        goto LABEL_46;
      }

      v38 = v0[6];
      v39 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v40 = *(v1 + 72);
      swift_arrayInitWithCopy();

      v9 = v59;
      if (v34)
      {
        v41 = v10[2];
        v42 = __OFADD__(v41, v34);
        v43 = v41 + v34;
        if (v42)
        {
          goto LABEL_47;
        }

        v10[2] = v43;
      }
    }

    else
    {

      v9 = v59;
      if (v34)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v54)
    {
      v44 = v0[28];
      v46 = v0[25];
      v45 = v0[26];
      v48 = v0[22];
      v47 = v0[23];
      v49 = v0[21];
      v50 = v0[17];
      v51 = v10;
      v52 = v0[14];
      v58 = v0[16];
      v60 = v0[13];
      v62 = v0[12];
      v64 = v0[11];
      v66 = v0[9];
      v68 = v0[8];

      sub_2528352F8(v47, v51);

      v46(v50, v52);

      v53 = v0[1];

      return v53(v51);
    }

    v6 = *(v55 + 8 * v11);
    ++v9;
    if (v6)
    {
      v63 = v10;
      v9 = v11;
      goto LABEL_11;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_252837E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for DeviceEntity();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v4[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v4[19] = *(v12 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252838018, 0, 0);
}

uint64_t sub_252838018()
{
  v34 = v0;
  v1 = v0[6];
  v33[0] = 0x203A736469;
  v33[1] = 0xE500000000000000;
  v2 = MEMORY[0x2530A81A0](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v2);

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = v0[7];
  v5 = sub_2528C08B0();
  __swift_project_value_buffer(v5, qword_27F5025C8);
  sub_25272006C(v4, v3, &qword_27F4FC488, &unk_2528C3F80);

  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_2527389AC(0x203A736469, 0xE500000000000000, v33);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, v33);
    *(v11 + 22) = 2080;
    v13 = sub_2528C0DB0();
    v15 = v14;
    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
    v16 = sub_2527389AC(v13, v15, v33);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_252711000, v6, v7, "Query: Performing device query {%s} for %s with homeEntity: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v12, -1, -1);
    MEMORY[0x2530A8D80](v11, -1, -1);
  }

  else
  {

    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[18];
  v32 = v0[16];
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[7];
  v23 = sub_2528C0820();
  __swift_project_value_buffer(v23, qword_27F5025E0);
  sub_25272006C(v22, v17, &qword_27F4FC488, &unk_2528C3F80);
  v24 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v25 = (v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v26[2] = 0x7265766C6F736572;
  v26[3] = 0xE800000000000000;
  v26[4] = 0x203A736469;
  v26[5] = 0xE500000000000000;
  sub_25274AA0C(v17, v26 + v24, &qword_27F4FC488, &unk_2528C3F80);
  *(v26 + v25) = v20;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v0[22] = sub_2528B73C8(0, 0, sub_25283C6C8);

  v27 = sub_2528C05D0();
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_2528384A0;
  v29 = v0[16];
  v30 = v0[7];

  return sub_25277ECE4(v30, 0, 0, v29);
}

uint64_t sub_2528384A0(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 192) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2528385D0, 0, 0);
}

uint64_t sub_2528385D0()
{
  v56 = v0[14];
  v57 = v0[24];
  v63 = v0[13];
  v61 = v0[11];
  v1 = -1;
  v2 = -1 << *(v57 + 32);
  if (-v2 < 64)
  {
    v1 = ~(-1 << -v2);
  }

  v3 = v1 & *(v57 + 64);
  v55 = (63 - v2) >> 6;

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v3)
  {
    v60 = v6;
LABEL_11:
    v8 = v0[15];
    v10 = v0[8];
    v9 = v0[9];
    v58 = v5;
    v59 = v3;
    v11 = __clz(__rbit64(v3)) | (v5 << 6);
    v12 = *(v57 + 48);
    v13 = sub_2528BECF0();
    (*(*(v13 - 8) + 16))(v8, v12 + *(*(v13 - 8) + 72) * v11, v13);
    v14 = *(v57 + 56);
    v15 = v14 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v11;
    v16 = *(v56 + 48);
    sub_25283B8C4(v15, v8 + v16, type metadata accessor for HomeEntity.SnapshotPair);
    v17 = sub_2528368D8(v9, v10, v8 + v16);
    v18 = sub_252836BF8(v8 + v16, v17);

    v62 = *(v18 + 16);
    if (v62)
    {
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      while (v19 < *(v18 + 16))
      {
        v21 = v0[6];
        v22 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v23 = *(v61 + 72);
        sub_25283B8C4(v18 + v22 + v23 * v19, v0[13], type metadata accessor for DeviceEntity);
        v24 = *(v63 + 8);
        sub_2528BE6B0();
        v25 = v0[3];
        v0[4] = v0[2];
        v0[5] = v25;
        v26 = swift_task_alloc();
        *(v26 + 16) = v0 + 4;
        LOBYTE(v21) = sub_25281A4D4(sub_2527B14B4, v26, v21);

        if ((v21 & 1) != 0 || (v27 = v0[6], v28 = , v29 = sub_252743FCC(v28), , v30 = *(sub_252830C8C(*(v63 + 56), v29, sub_252831B04, sub_252831B04) + 2), , v30))
        {
          sub_25283BBDC(v0[13], v0[12], type metadata accessor for DeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25282F26C(0, *(v20 + 16) + 1, 1);
          }

          v32 = *(v20 + 16);
          v31 = *(v20 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_25282F26C(v31 > 1, v32 + 1, 1);
          }

          v33 = v0[12];
          *(v20 + 16) = v32 + 1;
          result = sub_25283BBDC(v33, v20 + v22 + v32 * v23, type metadata accessor for DeviceEntity);
        }

        else
        {
          result = sub_25283B92C(v0[13], type metadata accessor for DeviceEntity);
        }

        if (v62 == ++v19)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_24:
    v34 = v0[15];

    result = sub_2527213D8(v34, &qword_27F4FCDC0, &unk_2528C5CD0);
    v35 = *(v20 + 16);
    v6 = v60;
    v36 = v60[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v37 > v60[3] >> 1)
    {
      if (v36 <= v37)
      {
        v38 = v36 + v35;
      }

      else
      {
        v38 = v36;
      }

      result = sub_252738010(result, v38, 1, v60);
      v6 = result;
    }

    v3 = (v59 - 1) & v59;
    if (*(v20 + 16))
    {
      if ((v6[3] >> 1) - v6[2] < v35)
      {
        goto LABEL_43;
      }

      v39 = v0[10];
      v40 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v41 = *(v61 + 72);
      swift_arrayInitWithCopy();

      v5 = v58;
      if (v35)
      {
        v42 = v6[2];
        v43 = __OFADD__(v42, v35);
        v44 = v42 + v35;
        if (v43)
        {
          goto LABEL_44;
        }

        v6[2] = v44;
      }
    }

    else
    {

      v5 = v58;
      if (v35)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v7 >= v55)
    {
      v45 = v0[24];
      v47 = v0[21];
      v46 = v0[22];
      v48 = v0[20];
      v50 = v0[15];
      v49 = v0[16];
      v51 = v6;
      v53 = v0[12];
      v52 = v0[13];

      sub_2528352F8(v46, v51);

      v54 = v0[1];

      return v54(v51);
    }

    v3 = *(v57 + 64 + 8 * v7);
    ++v5;
    if (v3)
    {
      v60 = v6;
      v5 = v7;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_252838B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for DeviceEntity();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v4[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v4[19] = *(v12 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252838CEC, 0, 0);
}

uint64_t sub_252838CEC()
{
  v34 = v0;
  v1 = v0[6];
  v33[0] = 0x203A73656D616ELL;
  v33[1] = 0xE700000000000000;
  v2 = MEMORY[0x2530A81A0](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v2);

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = v0[7];
  v5 = sub_2528C08B0();
  __swift_project_value_buffer(v5, qword_27F5025C8);
  sub_25272006C(v4, v3, &qword_27F4FC488, &unk_2528C3F80);

  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_2527389AC(0x203A73656D616ELL, 0xE700000000000000, v33);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, v33);
    *(v11 + 22) = 2080;
    v13 = sub_2528C0DB0();
    v15 = v14;
    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
    v16 = sub_2527389AC(v13, v15, v33);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_252711000, v6, v7, "Query: Performing device query {%s} for %s with homeEntity: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v12, -1, -1);
    MEMORY[0x2530A8D80](v11, -1, -1);
  }

  else
  {

    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[18];
  v32 = v0[16];
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[7];
  v23 = sub_2528C0820();
  __swift_project_value_buffer(v23, qword_27F5025E0);
  sub_25272006C(v22, v17, &qword_27F4FC488, &unk_2528C3F80);
  v24 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v25 = (v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v26[2] = 0x7265766C6F736572;
  v26[3] = 0xE800000000000000;
  v26[4] = 0x203A73656D616ELL;
  v26[5] = 0xE700000000000000;
  sub_25274AA0C(v17, v26 + v24, &qword_27F4FC488, &unk_2528C3F80);
  *(v26 + v25) = v20;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v0[22] = sub_2528B73C8(0, 0, sub_25283C6C8);

  v27 = sub_2528C05D0();
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_252839178;
  v29 = v0[16];
  v30 = v0[7];

  return sub_25277ECE4(v30, 0, 0, v29);
}

uint64_t sub_252839178(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 192) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2528392A8, 0, 0);
}

uint64_t sub_2528392A8()
{
  v1 = v0[24];
  v2 = *(v1 + 64);
  v60 = v1 + 64;
  v61 = v0[14];
  v67 = v0[11];
  v66 = v0[10];
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v2;
  v59 = (63 - v4) >> 6;
  v62 = v0[24];

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v5)
  {
    v65 = v8;
LABEL_11:
    v10 = v0[15];
    v12 = v0[8];
    v11 = v0[9];
    v63 = v7;
    v64 = v5;
    v13 = __clz(__rbit64(v5)) | (v7 << 6);
    v14 = *(v62 + 48);
    v15 = sub_2528BECF0();
    (*(*(v15 - 8) + 16))(v10, v14 + *(*(v15 - 8) + 72) * v13, v15);
    v16 = *(v62 + 56);
    v17 = v16 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v13;
    v18 = *(v61 + 48);
    sub_25283B8C4(v17, v10 + v18, type metadata accessor for HomeEntity.SnapshotPair);
    v19 = sub_2528368D8(v11, v12, v10 + v18);
    v20 = sub_252836BF8(v10 + v18, v19);

    v68 = *(v20 + 16);
    if (v68)
    {
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      while (v21 < *(v20 + 16))
      {
        v23 = v0[13];
        v24 = v0[6];
        v25 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v26 = *(v67 + 72);
        sub_25283B8C4(v20 + v25 + v26 * v21, v23, type metadata accessor for DeviceEntity);
        v27 = *v23;
        sub_2528BE6B0();
        v28 = v0[3];
        v0[4] = v0[2];
        v0[5] = v28;
        v29 = swift_task_alloc();
        *(v29 + 16) = v0 + 4;
        LOBYTE(v24) = sub_25281A4D4(sub_25283C6FC, v29, v24);

        if ((v24 & 1) != 0 || (v30 = v0[13], v31 = v0[6], v32 = , v33 = sub_252743FCC(v32), , v34 = *(sub_252830C8C(*(v30 + *(v66 + 52)), v33, sub_252831B04, sub_252831B04) + 2), , v34))
        {
          sub_25283BBDC(v0[13], v0[12], type metadata accessor for DeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25282F26C(0, *(v22 + 16) + 1, 1);
          }

          v36 = *(v22 + 16);
          v35 = *(v22 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_25282F26C(v35 > 1, v36 + 1, 1);
          }

          v37 = v0[12];
          *(v22 + 16) = v36 + 1;
          result = sub_25283BBDC(v37, v22 + v25 + v36 * v26, type metadata accessor for DeviceEntity);
        }

        else
        {
          result = sub_25283B92C(v0[13], type metadata accessor for DeviceEntity);
        }

        if (v68 == ++v21)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_24:
    v38 = v0[15];

    result = sub_2527213D8(v38, &qword_27F4FCDC0, &unk_2528C5CD0);
    v39 = *(v22 + 16);
    v8 = v65;
    v40 = v65[2];
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v41 > v65[3] >> 1)
    {
      if (v40 <= v41)
      {
        v42 = v40 + v39;
      }

      else
      {
        v42 = v40;
      }

      result = sub_252738010(result, v42, 1, v65);
      v8 = result;
    }

    v5 = (v64 - 1) & v64;
    if (*(v22 + 16))
    {
      if ((v8[3] >> 1) - v8[2] < v39)
      {
        goto LABEL_43;
      }

      v43 = v0[10];
      v44 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v45 = *(v67 + 72);
      swift_arrayInitWithCopy();

      v7 = v63;
      if (v39)
      {
        v46 = v8[2];
        v47 = __OFADD__(v46, v39);
        v48 = v46 + v39;
        if (v47)
        {
          goto LABEL_44;
        }

        v8[2] = v48;
      }
    }

    else
    {

      v7 = v63;
      if (v39)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v59)
    {
      v49 = v0[24];
      v51 = v0[21];
      v50 = v0[22];
      v52 = v0[20];
      v54 = v0[15];
      v53 = v0[16];
      v55 = v8;
      v57 = v0[12];
      v56 = v0[13];

      sub_2528352F8(v50, v55);

      v58 = v0[1];

      return v58(v55);
    }

    v5 = *(v60 + 8 * v9);
    ++v7;
    if (v5)
    {
      v65 = v8;
      v7 = v9;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_25283980C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = sub_2528C0030();
  *(v3 + 40) = v7;
  v8 = *(v7 - 8);
  *(v3 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 80) = *a2;
  v10 = swift_task_alloc();
  *(v3 + 64) = v10;
  *v10 = v3;
  v10[1] = sub_25283992C;

  return sub_25286A4D0(a1, a3);
}

uint64_t sub_25283992C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_252839A2C, 0, 0);
}

uint64_t sub_252839A2C()
{
  v27 = v0;
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = sub_252819AD0(*(v0 + 72), MEMORY[0x277CC95F0], MEMORY[0x277CC95D0]);

  *(v0 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEA98, qword_2528CEC40);
  sub_25272275C(&qword_27F4FF928, &qword_27F4FEA98, qword_2528CEC40);
  v6 = sub_2528C0920();
  v8 = v7;

  v23 = v6;
  v24 = v8;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x2530A80B0](47, 0xE100000000000000);
  (*(v3 + 104))(v2, *MEMORY[0x277D164E0], v4);
  sub_2528C0ED0();
  (*(v3 + 8))(v2, v4);
  MEMORY[0x2530A80B0](*(v0 + 16), *(v0 + 24));

  if (v1 != 2)
  {
    v9 = *(v0 + 80);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v10 = sub_2528C08B0();
    __swift_project_value_buffer(v10, qword_27F5025C8);
    v11 = sub_2528C0890();
    v12 = sub_2528C0D10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      v15 = (v9 & 1) == 0;
      if (v9)
      {
        v16 = 0xD000000000000010;
      }

      else
      {
        v16 = 6449010;
      }

      if (v15)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0x80000002528E51C0;
      }

      v18 = sub_2527389AC(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_252711000, v11, v12, "Found secondaryAccessoryControlDestination: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x2530A8D80](v14, -1, -1);
      MEMORY[0x2530A8D80](v13, -1, -1);
    }

    else
    {

      v19 = (v9 & 1) == 0;
      if (v9)
      {
        v16 = 0xD000000000000010;
      }

      else
      {
        v16 = 6449010;
      }

      if (v19)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0x80000002528E51C0;
      }
    }

    v25 = 47;
    v26 = 0xE100000000000000;
    MEMORY[0x2530A80B0](v16, v17);

    MEMORY[0x2530A80B0](v25, v26);
  }

  v20 = *(v0 + 56);

  v21 = *(v0 + 8);

  return v21(v23, v24);
}

uint64_t sub_252839DB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = sub_2528C0CC0();
  return (v4 == sub_2528BFED0()) & ~v5;
}

uint64_t sub_252839E14(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_25272BFF4(0, &qword_27F4FF560, 0x277CD1D88);
  return sub_2528C0D60() & 1;
}

uint64_t sub_252839E80(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 32) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v5 = sub_2528C00D0();
  *(v3 + 48) = v5;
  v6 = *(v5 - 8);
  *(v3 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v8 = sub_2528BF400();
  *(v3 + 72) = v8;
  v9 = *(v8 - 8);
  *(v3 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v3 + 96) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v3 + 120) = v14;
  v15 = *(v14 - 8);
  *(v3 + 128) = v15;
  *(v3 + 136) = *(v15 + 64);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v16 = v2[1];
  *(v3 + 168) = *v2;
  *(v3 + 184) = v16;
  *(v3 + 200) = v2[2];

  return MEMORY[0x2822009F8](sub_25283A0E8, 0, 0);
}

uint64_t sub_25283A0E8()
{
  v41 = v0;
  strcpy((v0 + 16), "comparators: ");
  v1 = *(v0 + 160);
  v2 = *(v0 + 32);
  *(v0 + 30) = -4864;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  v37 = *(v0 + 184);
  v38 = *(v0 + 168);
  v36 = *(v0 + 200);
  v4 = MEMORY[0x2530A81A0](v2, v3);
  MEMORY[0x2530A80B0](v4);

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_252829A08(v1);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = sub_2528C08B0();
  __swift_project_value_buffer(v9, qword_27F5025C8);
  sub_25272006C(v7, v8, &qword_27F4FC488, &unk_2528C3F80);

  v10 = sub_2528C0890();
  v11 = sub_2528C0D10();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 152);
  if (v12)
  {
    v14 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_2527389AC(v6, v5, &v40);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2527389AC(0x7972657571, 0xE500000000000000, &v40);
    *(v15 + 22) = 2080;
    v17 = sub_2528C0DB0();
    v19 = v18;
    sub_2527213D8(v13, &qword_27F4FC488, &unk_2528C3F80);
    v20 = sub_2527389AC(v17, v19, &v40);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_252711000, v10, v11, "Query: Performing device query {%s} for %s with homeEntity: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v16, -1, -1);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  else
  {

    sub_2527213D8(v13, &qword_27F4FC488, &unk_2528C3F80);
  }

  v21 = v6;
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 160);
  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  v25 = *(v0 + 128);
  v39 = *(v0 + 112);
  v26 = sub_2528C0820();
  __swift_project_value_buffer(v26, qword_27F5025E0);
  sub_25272006C(v22, v24, &qword_27F4FC488, &unk_2528C3F80);
  v27 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v28 = (v23 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v29[2] = 0x7972657571;
  v29[3] = 0xE500000000000000;
  v29[4] = v21;
  v29[5] = v5;
  sub_25274AA0C(v24, v29 + v27, &qword_27F4FC488, &unk_2528C3F80);
  *(v29 + v28) = 0;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;

  *(v0 + 216) = sub_2528B73C8(0, 0, sub_25283C6C8);

  sub_2527213D8(v22, &qword_27F4FC488, &unk_2528C3F80);
  v30 = type metadata accessor for HomeEntity(0);
  (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
  v31 = sub_2528C05D0();
  (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
  v32 = swift_task_alloc();
  *(v0 + 224) = v32;
  *v32 = v0;
  v32[1] = sub_25283A600;
  v33 = *(v0 + 144);
  v34 = *(v0 + 112);

  return sub_25277ECE4(v33, 0, 1, v34);
}

uint64_t sub_25283A600(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 232) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25283A75C, 0, 0);
}

uint64_t sub_25283A75C()
{
  v1 = *(v0 + 232);
  v56 = *(v0 + 96);
  v50 = v1 + 64;
  v2 = *(v0 + 80);
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  v5 = *(v0 + 56);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v6 = v3 & *(v1 + 64);
  v49 = (63 - v4) >> 6;
  v54 = (v5 + 48);
  v55 = (v2 + 16);
  v51 = (v5 + 8);
  v52 = (v5 + 32);
  v53 = (v2 + 8);
  v57 = *(v0 + 232);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v0 + 240) = v9;
    if (!v6)
    {
      break;
    }

    v59 = v9;
LABEL_11:
    v11 = *(v0 + 104);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    v14 = *(v0 + 40);
    v58 = *(v0 + 48);
    v15 = __clz(__rbit64(v6)) | (v8 << 6);
    v16 = *(v57 + 48);
    v17 = sub_2528BECF0();
    (*(*(v17 - 8) + 16))(v11, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(v57 + 56);
    v19 = (type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
    v20 = v11 + *(v56 + 48);
    sub_25283B8C4(v18 + *(*v19 + 72) * v15, v20, type metadata accessor for HomeEntity.SnapshotPair);
    (*v55)(v12, v20, v13);
    v21 = v19[7];
    v22 = sub_25282D6B8(v12);
    sub_25272006C(v20 + v21, v14, &qword_27F4FCDB8, &unk_2528C5CC0);
    if ((*v54)(v14, 1, v58) == 1)
    {
      sub_2527213D8(*(v0 + 40), &qword_27F4FCDB8, &unk_2528C5CC0);
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      v24 = *(v0 + 88);
      v25 = *(v0 + 64);
      v26 = *(v0 + 48);
      (*v52)(v25, *(v0 + 40), v26);
      v27 = sub_2528C0070();
      v28 = swift_task_alloc();
      *(v28 + 16) = 0;
      *(v28 + 24) = v24;
      v29 = sub_252853528(sub_25283C724, v28, v27);

      (*v51)(v25, v26);
      v23 = v29;
    }

    v9 = v59;
    v30 = *(v0 + 104);
    v31 = *(v0 + 88);
    v32 = *(v0 + 72);
    sub_252735F6C(v23);
    (*v53)(v31, v32);
    result = sub_2527213D8(v30, &qword_27F4FCDC0, &unk_2528C5CD0);
    v33 = *(v22 + 16);
    v34 = v59[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v35 > v59[3] >> 1)
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v9 = sub_252738010(isUniquelyReferenced_nonNull_native, v37, 1, v59);
    }

    v6 &= v6 - 1;
    if (*(v22 + 16))
    {
      v38 = (*(v9 + 24) >> 1) - *(v9 + 16);
      result = type metadata accessor for DeviceEntity();
      v39 = *(result - 8);
      if (v38 < v33)
      {
        goto LABEL_32;
      }

      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = *(v39 + 72);
      swift_arrayInitWithCopy();

      if (v33)
      {
        v42 = *(v9 + 16);
        v43 = __OFADD__(v42, v33);
        v44 = v42 + v33;
        if (v43)
        {
          goto LABEL_33;
        }

        *(v9 + 16) = v44;
      }
    }

    else
    {

      if (v33)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v49)
    {
      break;
    }

    v6 = *(v50 + 8 * v10);
    ++v8;
    if (v6)
    {
      v59 = v9;
      v8 = v10;
      goto LABEL_11;
    }
  }

  v45 = *(v0 + 232);
  v46 = *(v0 + 272);

  v47 = swift_task_alloc();
  *(v0 + 248) = v47;
  *v47 = v0;
  v47[1] = sub_25283AC40;
  v48 = *(v0 + 32);

  return sub_2528AE974(v48, v46 & 1, v9);
}

uint64_t sub_25283AC40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *(*v2 + 240);
  v7 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v8 = sub_25283AE7C;
  }

  else
  {
    *(v4 + 264) = a1;
    v8 = sub_25283AD8C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25283AD8C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[5];
  sub_2528352F8(v0[27], v0[33]);

  v9 = v0[1];
  v10 = v0[33];

  return v9(v10);
}

uint64_t sub_25283AE7C()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];
  v11 = v0[32];

  return v10();
}

unint64_t sub_25283B028()
{
  result = qword_27F4FF590;
  if (!qword_27F4FF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF590);
  }

  return result;
}

unint64_t sub_25283B1FC()
{
  result = qword_27F4FF5D0;
  if (!qword_27F4FF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5D0);
  }

  return result;
}

unint64_t sub_25283B254()
{
  result = qword_27F4FF5D8;
  if (!qword_27F4FF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5D8);
  }

  return result;
}

unint64_t sub_25283B2F4()
{
  result = qword_27F4FF5E0;
  if (!qword_27F4FF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5E0);
  }

  return result;
}

unint64_t sub_25283B34C()
{
  result = qword_27F4FF5E8;
  if (!qword_27F4FF5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD08, &unk_2528C5B90);
    sub_25283C680(&qword_27F4FCD28, type metadata accessor for DeviceEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5E8);
  }

  return result;
}

void sub_25283B428()
{
  sub_25283B55C(319, &qword_28151F358, sub_25274690C);
  if (v0 <= 0x3F)
  {
    sub_25283B55C(319, &qword_27F4FF600, sub_2527FE2E0);
    if (v1 <= 0x3F)
    {
      sub_25283B5BC();
      if (v2 <= 0x3F)
      {
        sub_25283B660();
        if (v3 <= 0x3F)
        {
          sub_25283B76C();
          if (v4 <= 0x3F)
          {
            sub_2528BECF0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25283B55C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_2528BE770();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25283B5BC()
{
  if (!qword_27F4FF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF610, &unk_2528D3BA0);
    sub_25283B704(&qword_27F4FF618, &qword_27F4FF610, &unk_2528D3BA0);
    v0 = sub_2528BE770();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FF608);
    }
  }
}

void sub_25283B660()
{
  if (!qword_27F4FF620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD5E8, &qword_2528C8700);
    sub_25283B704(&qword_27F4FF628, &qword_27F4FD5E8, &qword_2528C8700);
    v0 = sub_2528BE770();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FF620);
    }
  }
}

uint64_t sub_25283B704(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_25274690C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25283B76C()
{
  if (!qword_27F4FF630)
  {
    v0 = sub_2528C0CA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FF630);
    }
  }
}

uint64_t sub_25283B7F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25282D2EC(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_25283B8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25283B92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = sub_2528BECF0();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
    v9 = *(v0 + v3 + *(v7 + 20));
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10);

  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_25283BB30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + v3);
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_25282D0F8(v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_25283BBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25283BC70()
{
  result = qword_27F4FF750;
  if (!qword_27F4FF750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF748, &qword_2528D3FC0);
    sub_25283BCFC();
    sub_25283BE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF750);
  }

  return result;
}

unint64_t sub_25283BCFC()
{
  result = qword_27F4FF758;
  if (!qword_27F4FF758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF720, &qword_2528D3F70);
    sub_25283BDA0(&qword_27F4FF760, &qword_27F4FF718, &qword_2528D3F68);
    sub_25274AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF758);
  }

  return result;
}

uint64_t sub_25283BDA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_25272275C(&qword_27F4FF768, &qword_27F4FF710, &qword_2528D3F60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25283BE38()
{
  result = qword_27F4FF770;
  if (!qword_27F4FF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF708, &unk_2528D3F50);
    sub_25283BDA0(&qword_27F4FF778, &qword_27F4FF700, &qword_2528D3F48);
    sub_25274AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF770);
  }

  return result;
}

unint64_t sub_25283BF10()
{
  result = qword_27F4FF7F0;
  if (!qword_27F4FF7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF7E8, &qword_2528D40C0);
    sub_25283C290(&qword_27F4FF7F8, &qword_27F4FF7C0, &qword_2528D4020, sub_25283BFF4);
    sub_25283C290(&qword_27F4FF838, &qword_27F4FF7B0, &qword_2528D4010, sub_25283C150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF7F0);
  }

  return result;
}

unint64_t sub_25283BFF4()
{
  result = qword_27F4FF800;
  if (!qword_27F4FF800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF7B8, &qword_2528D4018);
    sub_25283BDA0(&qword_27F4FF778, &qword_27F4FF700, &qword_2528D3F48);
    sub_25283C098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF800);
  }

  return result;
}

unint64_t sub_25283C098()
{
  result = qword_27F4FF808;
  if (!qword_27F4FF808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF7C8, &qword_2528D4050);
    sub_25283C150();
    sub_25272275C(&qword_27F4FF828, &qword_27F4FF830, &qword_2528D40C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF808);
  }

  return result;
}

unint64_t sub_25283C150()
{
  result = qword_27F4FF810;
  if (!qword_27F4FF810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF7A8, &qword_2528D4008);
    sub_25283C224(&qword_27F4FF818);
    sub_25283C224(&qword_27F4FF820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF810);
  }

  return result;
}

uint64_t sub_25283C224(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF610, &unk_2528D3BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25283C290(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25283C340()
{
  result = qword_27F4FF890;
  if (!qword_27F4FF890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF888, &qword_2528D4170);
    sub_25283C3CC();
    sub_25283C468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF890);
  }

  return result;
}

unint64_t sub_25283C3CC()
{
  result = qword_27F4FF898;
  if (!qword_27F4FF898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF878, &qword_2528D4118);
    sub_25283BDA0(&qword_27F4FF8A0, &qword_27F4FF870, &qword_2528D4110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF898);
  }

  return result;
}

unint64_t sub_25283C468()
{
  result = qword_27F4FF8A8;
  if (!qword_27F4FF8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF8B0, &qword_2528D4178);
    sub_25272275C(&qword_27F4FF8B8, &qword_27F4FF8C0, &qword_2528D4180);
    sub_25283C520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF8A8);
  }

  return result;
}

unint64_t sub_25283C520()
{
  result = qword_27F4FF8C8;
  if (!qword_27F4FF8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF8D0, &qword_2528D4188);
    sub_25283C5AC();
    sub_25283C600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF8C8);
  }

  return result;
}

unint64_t sub_25283C5AC()
{
  result = qword_27F4FF8D8;
  if (!qword_27F4FF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF8D8);
  }

  return result;
}

unint64_t sub_25283C600()
{
  result = qword_27F4FF8E0;
  if (!qword_27F4FF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF8E0);
  }

  return result;
}

uint64_t sub_25283C680(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_25283C73C(double *a1)
{
  v2 = sub_2528BFDE0();
  v3 = *(v2 - 8);
  v126 = v2;
  v127 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v119 - v9;
  MEMORY[0x28223BE20](v8);
  v125 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B0, &qword_2528CDF88);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v119 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v119 - v20;
  v22 = sub_2528C07B0();
  v128 = *(v22 - 8);
  v129 = v22;
  v23 = *(v128 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v119 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](&v119 - v31);
  v34 = &v119 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v41 = &v119 - v40;
  v43 = *a1;
  v42 = a1[1];
  v44 = *(a1 + 32) >> 1;
  if (v44 == 64)
  {
    v123 = v37;
    v124 = v10;
    v122 = v7;
    v52 = a1[2];
    v125 = v38;
    v53 = v36;
    v54 = LOBYTE(v43);
    v55 = v28;
    v56 = v42;
    if (LOBYTE(v43) < 4u || LOBYTE(v43) == 4)
    {
      v66 = sub_2528C1060();

      if ((v66 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v133 = v54;
    v68 = v130;
    sub_25283DA4C(&v133, v16);
    if (v68)
    {
      return v19;
    }

    v70 = v128;
    v69 = v129;
    if ((*(v128 + 48))(v16, 1, v129) != 1)
    {
      v130 = 0;
      v86 = v56;
      v120 = *(v70 + 32);
      v121 = v70 + 32;
      v120(v53, v16, v69);
      (*(v70 + 16))(v55, v53, v69);
      v19 = sub_25273836C(0, 1, 1, MEMORY[0x277D84F90]);
      v88 = *(v19 + 2);
      v87 = *(v19 + 3);
      if (v88 >= v87 >> 1)
      {
        v19 = sub_25273836C(v87 > 1, v88 + 1, 1, v19);
      }

      v89 = v124;
      v90 = v128 + 8;
      v91 = v53;
      v92 = v129;
      (*(v128 + 8))(v91, v129);
      *(v19 + 2) = v88 + 1;
      v128 = (*(v90 + 72) + 32) & ~*(v90 + 72);
      v93 = *(v90 + 64);
      v94 = v55;
      v95 = v120;
      v120(&v19[v128 + v93 * v88], v94, v92);
      v96 = v126;
      v97 = v127;
      v98 = *(v127 + 104);
      v98(v89, *MEMORY[0x277D16180], v126);
      v99 = v130;
      sub_25283DDFC(v89, v125, v86);
      if (v99)
      {
        (*(v97 + 8))(v89, v96);
      }

      else
      {
        v130 = v93;
        v104 = *(v97 + 8);
        v127 = v97 + 8;
        v124 = v104;
        v104(v89, v96);
        v106 = *(v19 + 2);
        v105 = *(v19 + 3);
        if (v106 >= v105 >> 1)
        {
          v19 = sub_25273836C(v105 > 1, v106 + 1, 1, v19);
        }

        v107 = v125;
        v109 = v128;
        v108 = v129;
        v110 = v130;
        *(v19 + 2) = v106 + 1;
        v95(&v19[v109 + v106 * v110], v107, v108);
        v111 = v122;
        v112 = v126;
        v98(v122, *MEMORY[0x277D16170], v126);
        sub_25283DDFC(v111, v123, v52);
        v124(v111, v112);
        v114 = *(v19 + 2);
        v113 = *(v19 + 3);
        if (v114 >= v113 >> 1)
        {
          v19 = sub_25273836C(v113 > 1, v114 + 1, 1, v19);
        }

        v116 = v128;
        v115 = v129;
        v117 = v123;
        v118 = v130;
        *(v19 + 2) = v114 + 1;
        v95(&v19[v116 + v114 * v118], v117, v115);
      }

      return v19;
    }

    v65 = v16;
    goto LABEL_31;
  }

  if (v44 == 63)
  {
    v48 = *a1;
    v124 = v39;
    v49 = LOBYTE(v43);
    v50 = v35;
    v51 = v42;
    if (LOBYTE(v43) <= 2u || v48 == 3 || v48 == 4)
    {
      v61 = sub_2528C1060();

      if ((v61 & 1) != 0 && !sub_25283DB4C())
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (!sub_25283DB4C())
      {
        goto LABEL_26;
      }
    }

    v132 = v49;
    v62 = v130;
    sub_25283DA4C(&v132, v19);
    if (v62)
    {
      return v19;
    }

    v64 = v128;
    v63 = v129;
    if ((*(v128 + 48))(v19, 1, v129) != 1)
    {
      v130 = 0;
      v72 = v51;
      v122 = *(v64 + 32);
      v123 = v64 + 32;
      v122(v34, v19, v63);
      (*(v64 + 16))(v50, v34, v63);
      v19 = sub_25273836C(0, 1, 1, MEMORY[0x277D84F90]);
      v74 = *(v19 + 2);
      v73 = *(v19 + 3);
      if (v74 >= v73 >> 1)
      {
        v19 = sub_25273836C(v73 > 1, v74 + 1, 1, v19);
      }

      v75 = v128 + 8;
      v76 = v34;
      v77 = v129;
      (*(v128 + 8))(v76, v129);
      *(v19 + 2) = v74 + 1;
      v128 = (*(v75 + 72) + 32) & ~*(v75 + 72);
      v78 = *(v75 + 64);
      v79 = v50;
      v80 = v122;
      v122(&v19[v128 + v78 * v74], v79, v77);
      v81 = v126;
      v82 = v127;
      v83 = v125;
      (*(v127 + 104))(v125, *MEMORY[0x277D161B0], v126);
      v84 = v124;
      v85 = v130;
      sub_25283DDFC(v83, v124, v72);
      v130 = v85;
      if (v85)
      {
        (*(v82 + 8))(v83, v81);
      }

      else
      {
        v121 = v78;
        v100 = v128;
        (*(v82 + 8))(v83, v81);
        v102 = *(v19 + 2);
        v101 = *(v19 + 3);
        if (v102 >= v101 >> 1)
        {
          v19 = sub_25273836C(v101 > 1, v102 + 1, 1, v19);
        }

        v103 = v121;
        *(v19 + 2) = v102 + 1;
        v80(&v19[v100 + v102 * v103], v84, v77);
      }

      return v19;
    }

    v65 = v19;
LABEL_31:
    sub_2527213D8(v65, &qword_27F4FE8B0, &qword_2528CDF88);
    type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    goto LABEL_32;
  }

  if (v44 != 62)
  {
    sub_25283D328();
    swift_allocError();
LABEL_33:
    swift_willThrow();
    return v19;
  }

  v131 = *a1;
  v45 = v130;
  sub_25283DA4C(&v131, v21);
  if (!v45)
  {
    v46 = v128;
    v47 = v129;
    if ((*(v128 + 48))(v21, 1, v129) == 1)
    {
      sub_2527213D8(v21, &qword_27F4FE8B0, &qword_2528CDF88);
LABEL_26:
      type metadata accessor for HomeAppIntentError();
      sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      *v67 = 58;
LABEL_32:
      swift_storeEnumTagMultiPayload();
      goto LABEL_33;
    }

    v58 = v46 + 32;
    v57 = *(v46 + 32);
    v57(v41, v21, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6A0, &qword_2528D3C80);
    v59 = *(v58 + 40);
    v60 = (*(v58 + 48) + 32) & ~*(v58 + 48);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_2528C3910;
    v57(&v19[v60], v41, v47);
  }

  return v19;
}

unint64_t sub_25283D328()
{
  result = qword_27F4FF960;
  if (!qword_27F4FF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF960);
  }

  return result;
}

size_t sub_25283D37C(double *a1)
{
  v2 = v1;
  v4 = sub_2528BFDE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v58 - v10;
  v12 = sub_2528C07B0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v22 = &v58 - v21;
  v23 = *a1;
  v24 = a1[1];
  v25 = *(a1 + 32) >> 1;
  switch(v25)
  {
    case '@':
      v63 = v19;
      v64 = v20;
      v65 = v18;
      v33 = a1[2];
      if ((LOBYTE(v23) | 2) == 2)
      {
        LOBYTE(v23) = 5;
      }

      v68 = MEMORY[0x277D84F90];
      v67 = LOBYTE(v23);
      v34 = sub_25283F580(&v67);
      if (v1)
      {
        return v2;
      }

      if (v34)
      {
        v62 = 0;
        sub_252736848(v34);
        v2 = *(v5 + 104);
        (v2)(v11, *MEMORY[0x277D16180], v4);
        v35 = v62;
        sub_25283DDFC(v11, v17, v24);
        v62 = v35;
        if (v35)
        {
          (*(v5 + 8))(v11, v4);
        }

        else
        {
          v39 = v2;
          v59 = *(v5 + 8);
          v60 = v5 + 104;
          v59(v11, v4);
          v2 = v68;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v5 + 8;
          v58 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = sub_25273836C(0, *(v2 + 16) + 1, 1, v2);
          }

          v41 = v63;
          v43 = *(v2 + 16);
          v42 = *(v2 + 24);
          if (v43 >= v42 >> 1)
          {
            v57 = sub_25273836C(v42 > 1, v43 + 1, 1, v2);
            v41 = v63;
            v2 = v57;
          }

          *(v2 + 16) = v43 + 1;
          v46 = *(v41 + 32);
          v44 = v41 + 32;
          v45 = v46;
          v47 = (*(v44 + 48) + 32) & ~*(v44 + 48);
          v48 = *(v44 + 40);
          v46(v2 + v47 + v48 * v43, v17, v65);
          v58(v9, *MEMORY[0x277D16170], v4);
          v49 = v62;
          sub_25283DDFC(v9, v64, v33);
          if (v49)
          {
            v59(v9, v4);
          }

          else
          {
            v66 = v48;
            v59(v9, v4);
            v52 = *(v2 + 16);
            v51 = *(v2 + 24);
            if (v52 >= v51 >> 1)
            {
              v2 = sub_25273836C(v51 > 1, v52 + 1, 1, v2);
            }

            v53 = v64;
            v54 = v65;
            v55 = v66;
            *(v2 + 16) = v52 + 1;
            v45(v2 + v47 + v52 * v55, v53, v54);
          }
        }

        return v2;
      }

LABEL_24:
      type metadata accessor for HomeAppIntentError();
      sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      goto LABEL_25;
    case '?':
      v29 = v19;
      v30 = v18;
      v31 = *a1;
      if (v31 == 2)
      {
        sub_25283F2E8(&v68);
        if (v68 == 6)
        {
          v31 = 2;
        }

        else
        {
          v31 = v68;
        }
      }

      v68 = MEMORY[0x277D84F90];
      v67 = v31;
      v32 = sub_25283F580(&v67);
      if (v1)
      {
        return v2;
      }

      if (v32)
      {
        sub_252736848(v32);
        v67 = v31;
        sub_25283F994(&v67, v22, v24);
        v2 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_25273836C(0, *(v2 + 16) + 1, 1, v2);
        }

        v36 = v29;
        v38 = *(v2 + 16);
        v37 = *(v2 + 24);
        if (v38 >= v37 >> 1)
        {
          v56 = sub_25273836C(v37 > 1, v38 + 1, 1, v2);
          v36 = v29;
          v2 = v56;
        }

        *(v2 + 16) = v38 + 1;
        (*(v36 + 32))(v2 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v38, v22, v30);
        return v2;
      }

      goto LABEL_24;
    case '>':
      v26 = *a1;
      if (v26 == 2)
      {
        sub_25283F2E8(&v68);
        LOBYTE(v26) = v68;
        if (v68 == 6)
        {
          LOBYTE(v26) = 2;
        }
      }

      LOBYTE(v68) = v26;
      v27 = sub_25283F580(&v68);
      if (!v1)
      {
        v2 = v27;
        if (!v27)
        {
          type metadata accessor for HomeAppIntentError();
          sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
          swift_allocError();
          *v28 = 58;
LABEL_25:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    default:
      sub_25283D328();
      swift_allocError();
      swift_willThrow();
      break;
  }

  return v2;
}

uint64_t sub_25283DA4C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (v5 <= 2)
  {
    if (!*a1)
    {
      v8 = sub_2528C07B0();
      return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
    }

    if (v5 == 1)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v6 = a2;
    v7 = 3;
    goto LABEL_11;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      v6 = a2;
      v7 = 2;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v6 = a2;
  v7 = 1;
LABEL_11:
  result = sub_25283EF7C(v7, v2, v6);
  if (!v3)
  {
    v10 = sub_2528C07B0();
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }

  return result;
}

BOOL sub_25283DB4C()
{
  v0 = sub_2528BFDE0();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = sub_25283E564();
  v13 = sub_2528197EC(3, v12);

  if (!v13)
  {
    return 0;
  }

  v14 = *MEMORY[0x277D16180];
  v21 = v1[13];
  v21(v4, v14, v0);
  sub_2528BF760();
  v20 = v1[1];
  v20(v4, v0);
  v15 = sub_2528C01F0();
  v19 = *(*(v15 - 8) + 48);
  v16 = v19(v11, 1, v15);
  sub_2527213D8(v11, &qword_27F4FE8A8, &qword_2528CDF80);
  if (v16 != 1)
  {
    return 0;
  }

  v21(v4, *MEMORY[0x277D16170], v0);
  sub_2528BF760();
  v20(v4, v0);
  v17 = v19(v9, 1, v15) == 1;
  sub_2527213D8(v9, &qword_27F4FE8A8, &qword_2528CDF80);
  return v17;
}

uint64_t sub_25283DDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v66 = a2;
  v4 = v3;
  v63 = sub_2528BFDE0();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BF9D0();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE898, &qword_2528CDF70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = &v52 - v18;
  v68 = sub_2528BFDD0();
  v19 = *(v68 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v68);
  v23 = (&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v57 = &v52 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v52 - v27;
  v29 = sub_2528C01F0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  v65 = a1;
  sub_2528BF760();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_2527213D8(v28, &qword_27F4FE8A8, &qword_2528CDF80);
    type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v34 = 58;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v30 + 32))(v33, v28, v29);
  v56 = v33;
  sub_2528C01E0();
  v36 = sub_2528C0720();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v15, 1, v36) == 1)
  {
    sub_2527213D8(v15, &qword_27F4FE8A0, &qword_2528CDF78);
    v38 = v67;
    (*(v19 + 56))(v67, 1, 1, v68);
LABEL_6:
    sub_2527213D8(v38, &qword_27F4FE898, &qword_2528CDF70);
    type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v47 = 58;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v30 + 8))(v56, v29);
  }

  *v23 = a3;
  v39 = *MEMORY[0x277D16310];
  v40 = *(v19 + 104);
  v55 = v29;
  v41 = v19;
  v42 = v68;
  v40(v23, v39, v68);
  v43 = v67;
  sub_2528C0710();
  v44 = *(v41 + 8);
  v53 = v23;
  v54 = v44;
  v44(v23, v42);
  v45 = v36;
  v38 = v43;
  (*(v37 + 8))(v15, v45);
  v46 = v41;
  v29 = v55;
  if ((*(v46 + 48))(v43, 1, v42) == 1)
  {
    goto LABEL_6;
  }

  v48 = v57;
  (*(v46 + 32))(v57, v38, v42);
  (*(v58 + 16))(v60, v64, v59);
  (*(v61 + 16))(v62, v65, v63);
  (*(v46 + 16))(v53, v48, v42);
  v49 = v66;
  sub_2528C07A0();
  v54(v48, v42);
  (*(v30 + 8))(v56, v29);
  v50 = *MEMORY[0x277D16EC0];
  v51 = sub_2528C07B0();
  return (*(*(v51 - 8) + 104))(v49, v50, v51);
}

uint64_t sub_25283E564()
{
  v1 = sub_2528BF9D0();
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = v73[8];
  MEMORY[0x28223BE20](v1);
  v72 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v67 - v6;
  v8 = sub_2528C06D0();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v68 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BFDE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v67 - v18;
  v20 = sub_2528C01F0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v71 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  (*(v12 + 104))(v15, *MEMORY[0x277D16298], v11);
  sub_2528BF760();
  (*(v12 + 8))(v15, v11);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_2527213D8(v19, &qword_27F4FE8A8, &qword_2528CDF80);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v27 = sub_2528C08B0();
    v28 = __swift_project_value_buffer(v27, qword_27F5025C8);
    v30 = v72;
    v29 = v73;
    v31 = v74;
    (v73[2])(v72, v0, v74);
    v32 = v28;
    v33 = sub_2528C0890();
    v34 = sub_2528C0CF0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v75 = v36;
      *v35 = 136315138;
      sub_25284078C(&qword_27F4FF518, MEMORY[0x277D15AC0]);
      v37 = sub_2528C1040();
      v39 = v38;
      (v29[1])(v30, v31);
      v32 = sub_2527389AC(v37, v39, &v75);

      *(v35 + 4) = v32;
      _os_log_impl(&dword_252711000, v33, v34, "Thermostat service doesn't have targetHeatingCoolingMode: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x2530A8D80](v36, -1, -1);
      MEMORY[0x2530A8D80](v35, -1, -1);
    }

    else
    {

      (v29[1])(v30, v31);
    }

    type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v42 = 58;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v32;
  }

  (*(v21 + 32))(v26, v19, v20);
  sub_2528C01E0();
  v40 = sub_2528C0720();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v7, 1, v40) == 1)
  {
    sub_2527213D8(v7, &qword_27F4FE8A0, &qword_2528CDF78);
LABEL_20:
    v51 = v71;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v52 = sub_2528C08B0();
    __swift_project_value_buffer(v52, qword_27F5025C8);
    v53 = *(v21 + 16);
    v74 = v26;
    v53(v51, v26, v20);
    v54 = sub_2528C0890();
    v55 = sub_2528C0CF0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = v73;
      *v56 = 136315138;
      sub_25284078C(&qword_27F4FF968, MEMORY[0x277D165D0]);
      v57 = sub_2528C1040();
      v58 = v51;
      v59 = v20;
      v61 = v60;
      v62 = *(v21 + 8);
      v62(v58, v59);
      v63 = sub_2527389AC(v57, v61, &v75);
      v20 = v59;

      *(v56 + 4) = v63;
      _os_log_impl(&dword_252711000, v54, v55, "TargetHeatingCoolingMode metadata isn't int: %s", v56, 0xCu);
      v64 = v73;
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x2530A8D80](v64, -1, -1);
      MEMORY[0x2530A8D80](v56, -1, -1);
    }

    else
    {

      v62 = *(v21 + 8);
      v62(v51, v20);
    }

    v32 = type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v65 = 58;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v62(v74, v20);
    return v32;
  }

  if ((*(v41 + 88))(v7, v40) != *MEMORY[0x277D16CC8])
  {
    (*(v41 + 8))(v7, v40);
    goto LABEL_20;
  }

  v74 = v20;
  (*(v41 + 96))(v7, v40);
  (*(v69 + 32))(v68, v7, v70);
  v43 = sub_2528C06C0();
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = (v43 + 32);
    v46 = MEMORY[0x277D84F90];
    do
    {
      v48 = *v45++;
      v47 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_252738394(0, *(v46 + 2) + 1, 1, v46);
      }

      v50 = *(v46 + 2);
      v49 = *(v46 + 3);
      if (v50 >= v49 >> 1)
      {
        v46 = sub_252738394((v49 > 1), v50 + 1, 1, v46);
      }

      *(v46 + 2) = v50 + 1;
      *&v46[8 * v50 + 32] = v47;
      --v44;
    }

    while (v44);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v32 = sub_252744200(v46);

  (*(v69 + 8))(v68, v70);
  (*(v21 + 8))(v26, v74);
  return v32;
}

uint64_t sub_25283EF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v31 = a3;
  v5 = sub_2528BFDD0();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2528BFDE0();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528BF9D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25283E564();
  if (!v3)
  {
    v28 = v5;
    v29 = v9;
    v19 = v32;
    v27 = 0;
    v20 = sub_2528197EC(v33, result);

    if (v20)
    {
      (*(v14 + 16))(v17, a2, v13);
      result = (*(v19 + 104))(v12, *MEMORY[0x277D16298], v29);
      if (v33 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v21 = v30;
        v22 = v31;
        v23 = v28;
        if (v33 <= 0x7FFFFFFF)
        {
          *v8 = v33;
          (*(v21 + 104))(v8, *MEMORY[0x277D162F0], v23);
          sub_2528C07A0();
          v24 = *MEMORY[0x277D16EC0];
          v25 = sub_2528C07B0();
          return (*(*(v25 - 8) + 104))(v22, v24, v25);
        }
      }

      __break(1u);
    }

    else
    {
      type metadata accessor for HomeAppIntentError();
      sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      *v26 = 58;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_25283F2E8@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v1 = sub_2528BFDE0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *MEMORY[0x277D16180];
  v21 = v2[13];
  v21(v5, v13, v1);
  sub_2528BF760();
  v19 = v2[1];
  v19(v5, v1);
  v14 = sub_2528C01F0();
  v15 = *(*(v14 - 8) + 48);
  v20 = v15(v12, 1, v14);
  sub_2527213D8(v12, &qword_27F4FE8A8, &qword_2528CDF80);
  v21(v5, *MEMORY[0x277D16170], v1);
  sub_2528BF760();
  v19(v5, v1);
  v16 = v15(v10, 1, v14);
  result = sub_2527213D8(v10, &qword_27F4FE8A8, &qword_2528CDF80);
  if (v16 != 1)
  {
    if (v20 == 1)
    {
      v18 = 4;
      goto LABEL_7;
    }

LABEL_6:
    v18 = 6;
    goto LABEL_7;
  }

  if (v20 == 1)
  {
    goto LABEL_6;
  }

  v18 = 3;
LABEL_7:
  *v22 = v18;
  return result;
}

uint64_t sub_25283F580(_BYTE *a1)
{
  v2 = *a1;
  if (*a1 > 2u)
  {
    if (v2 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6A0, &qword_2528D3C80);
      v12 = *(sub_2528C07B0() - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2528C17E0;
      v15 = v2 + v14;
      sub_25283FC3C(1, v15);
      if (!v1)
      {
        sub_252840040(1, v15 + v13);
        return v2;
      }
    }

    else if (v2 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6A0, &qword_2528D3C80);
      v8 = *(sub_2528C07B0() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2528C17E0;
      v11 = v2 + v10;
      sub_25283FC3C(1, v11);
      if (!v1)
      {
        sub_252840040(2, v11 + v9);
        return v2;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6A0, &qword_2528D3C80);
      v16 = *(sub_2528C07B0() - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2528C17E0;
      v19 = v2 + v18;
      sub_25283FC3C(1, v19);
      if (!v1)
      {
        sub_252840040(0, v19 + v17);
        return v2;
      }
    }

LABEL_15:
    *(v2 + 16) = 0;

    return v2;
  }

  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6A0, &qword_2528D3C80);
    v3 = *(sub_2528C07B0() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    if (v2 == 1)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2528C3910;
      v6 = v2 + v5;
      v7 = 0;
    }

    else
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_2528C3910;
      v6 = v2 + v5;
      v7 = 1;
    }

    sub_25283FC3C(v7, v6);
    if (v1)
    {
      goto LABEL_15;
    }
  }

  return v2;
}

uint64_t sub_25283F994@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = sub_2528BFDE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v15 = *a1;
  if (v15 <= 2)
  {
    if (v15 != 1)
    {
      type metadata accessor for HomeAppIntentError();
      sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

LABEL_7:
    type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v16 = 58;
    goto LABEL_8;
  }

  if (v15 == 3)
  {
    (*(v8 + 104))(v18 - v13, *MEMORY[0x277D16180], v7);
    sub_25283DDFC(v14, a2, a3);
    if (v3)
    {
      return (*(v8 + 8))(v14, v7);
    }

    v12 = v14;
  }

  else
  {
    if (v15 != 4)
    {
      goto LABEL_7;
    }

    (*(v8 + 104))(v12, *MEMORY[0x277D16170], v7);
    sub_25283DDFC(v12, a2, a3);
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_25283FC3C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v32 = sub_2528BFDD0();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528BF9D0();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BFDE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = *MEMORY[0x277D16330];
  v19 = *(v10 + 104);
  v19(v13, v18, v9);
  sub_2528BF760();
  (*(v10 + 8))(v13, v9);
  v20 = sub_2528C01F0();
  LODWORD(v10) = (*(*(v20 - 8) + 48))(v17, 1, v20);
  sub_2527213D8(v17, &qword_27F4FE8A8, &qword_2528CDF80);
  if (v10 == 1)
  {
    type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v21 = 58;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    (*(v27 + 16))(v29, v2, v28);
    v19(v13, v18, v9);
    *v5 = v31 & 1;
    (*(v30 + 104))(v5, *MEMORY[0x277D162F8], v32);
    v23 = v33;
    sub_2528C07A0();
    v24 = *MEMORY[0x277D16EC0];
    v25 = sub_2528C07B0();
    return (*(*(v25 - 8) + 104))(v23, v24, v25);
  }
}

uint64_t sub_252840040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v62 = a1;
  v3 = sub_2528BFDD0();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2528BF9D0();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v48 - v11;
  v61 = sub_2528C06D0();
  v63 = *(v61 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2528BFDE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - v21;
  v23 = sub_2528C01F0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v15 + 104);
  v56 = *MEMORY[0x277D16288];
  v55 = v28;
  v28(v18);
  v59 = v2;
  sub_2528BF760();
  v29 = v24;
  (*(v15 + 8))(v18, v14);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_2527213D8(v22, &qword_27F4FE8A8, &qword_2528CDF80);
LABEL_14:
    type metadata accessor for HomeAppIntentError();
    sub_25284078C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    *v47 = 58;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v24 + 32))(v27, v22, v23);
  v30 = v65;
  v31 = v29;
  sub_2528C01E0();
  v32 = sub_2528C0720();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    (*(v31 + 8))(v27, v23);
    sub_2527213D8(v30, &qword_27F4FE8A0, &qword_2528CDF78);
    goto LABEL_14;
  }

  v50 = v31;
  if ((*(v33 + 88))(v30, v32) != *MEMORY[0x277D16CC8])
  {
    (*(v50 + 8))(v27, v23);
    (*(v33 + 8))(v30, v32);
    goto LABEL_14;
  }

  v48 = v23;
  v49 = v27;
  (*(v33 + 96))(v30, v32);
  v34 = v63;
  v35 = v61;
  (*(v63 + 32))(v64, v30, v61);
  v36 = sub_2528C06C0();
  v37 = *(v36 + 16);
  v38 = 32;
  v39 = v62;
  do
  {
    if (!v37)
    {

      (*(v34 + 8))(v64, v35);
      (*(v50 + 8))(v49, v48);
      goto LABEL_14;
    }

    v40 = *(v36 + v38);
    v38 += 8;
    --v37;
  }

  while (v40 != v62);

  (*(v57 + 16))(v60, v59, v58);
  result = v55(v18, v56, v14);
  if (v39 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v39 <= 0x7FFFFFFF)
  {
    v43 = v51;
    v42 = v52;
    *v51 = v39;
    (*(v42 + 104))(v43, *MEMORY[0x277D162F0], v53);
    v44 = v54;
    sub_2528C07A0();
    (*(v63 + 8))(v64, v35);
    (*(v50 + 8))(v49, v48);
    v45 = *MEMORY[0x277D16EC0];
    v46 = sub_2528C07B0();
    return (*(*(v46 - 8) + 104))(v44, v45, v46);
  }

  __break(1u);
  return result;
}

uint64_t sub_25284078C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2528407D4(uint64_t a1)
{
  v46 = sub_2528BF290();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2528BFB20();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v35[1] = v1;
  v50 = MEMORY[0x277D84F90];
  sub_25282F0EC(0, v9, 0);
  v10 = v50;
  v11 = -1 << *(a1 + 32);
  v49 = a1 + 64;
  result = sub_2528C0E00();
  v13 = result;
  v14 = 0;
  v40 = (v3 + 8);
  v41 = v6 + 16;
  v42 = v6;
  v38 = a1;
  v39 = v6 + 8;
  v36 = a1 + 72;
  v37 = v9;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v49 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(a1 + 36);
    v47 = v14;
    v48 = v17;
    v18 = *(a1 + 48);
    v19 = v42;
    v20 = v10;
    v22 = v43;
    v21 = v44;
    (*(v42 + 16))(v43, v18 + *(v42 + 72) * v13, v44);
    v23 = v45;
    sub_2528BFAB0();
    v24 = sub_2528BF0E0();
    (*v40)(v23, v46);
    v25 = v22;
    v10 = v20;
    result = (*(v19 + 8))(v25, v21);
    v50 = v20;
    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    a1 = v38;
    if (v27 >= v26 >> 1)
    {
      result = sub_25282F0EC((v26 > 1), v27 + 1, 1);
      v10 = v50;
    }

    *(v10 + 16) = v27 + 1;
    *(v10 + 8 * v27 + 32) = v24;
    v15 = 1 << *(a1 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v28 = *(v49 + 8 * v16);
    if ((v28 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v13 & 0x3F));
    if (v29)
    {
      v15 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v16 << 6;
      v31 = v16 + 1;
      v32 = (v36 + 8 * v16);
      while (v31 < (v15 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_25271A63C(v13, v48, 0);
          v15 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_25271A63C(v13, v48, 0);
    }

LABEL_4:
    v14 = v47 + 1;
    v13 = v15;
    if (v47 + 1 == v37)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_252840B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_25278BA60(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_2528BF9D0();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_252785D14(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_2527E1078();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_2528BF9D0();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_2528461D8(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_2528BF9D0();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_252840D4C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4A8, &unk_2528C8040);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2527213D8(a1, &qword_27F4FD4A8, &unk_2528C8040);
    sub_252845E74(a2, v8);
    v14 = sub_2528BFB20();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2527213D8(v8, &qword_27F4FD4A8, &unk_2528C8040);
  }

  else
  {
    sub_25274AA0C(a1, v12, &qword_27F4FD1F8, &unk_2528CDFF0);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25278BF90(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2528BFB20();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_252840F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9C0, &qword_2528D4338);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_2528C0260();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2527213D8(a1, &qword_27F4FF9C0, &qword_2528D4338);
    v15 = *v3;
    v16 = sub_252791C7C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2527E2718();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_252846848(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2527213D8(v9, &qword_27F4FF9C0, &qword_2528D4338);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_25278C350(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_2528411C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 48) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v7 = sub_2528C0060();
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v10 = sub_2528BF290();
  *(v4 + 96) = v10;
  v11 = *(v10 - 8);
  *(v4 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v13 = sub_2528BFB20();
  *(v4 + 120) = v13;
  v14 = *(v13 - 8);
  *(v4 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2528413B0, 0, 0);
}

uint64_t sub_2528413B0()
{
  v79 = v0;
  v1 = v0;
  v2 = v0[4];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[4] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v74 = (v0[13] + 8);
  v75 = v0[4];
  v76 = v0[16];

  v10 = 0;
  v77 = MEMORY[0x277D84F90];
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      do
      {
LABEL_8:
        v12 = *(v1 + 17);
        v14 = *(v1 + 14);
        v13 = *(v1 + 15);
        v15 = *(v1 + 12);
        (*(v76 + 16))(v12, *(v75 + 48) + *(v76 + 72) * (__clz(__rbit64(v8)) | (v10 << 6)), v13);
        sub_2528BFAB0();
        v16 = sub_2528BF0E0();
        (*v74)(v14, v15);
        (*(v76 + 8))(v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_252737ABC(0, *(v77 + 2) + 1, 1, v77);
        }

        v1 = v0;
        v18 = *(v77 + 2);
        v17 = *(v77 + 3);
        if (v18 >= v17 >> 1)
        {
          v77 = sub_252737ABC((v17 > 1), v18 + 1, 1, v77);
        }

        v8 &= v8 - 1;
        *(v77 + 2) = v18 + 1;
        *&v77[8 * v18 + 32] = v16;
      }

      while (v8);
    }
  }

  v19 = *(v1 + 4);

  v20 = sub_252743EF0(v77);

  v21 = sub_252847064(v19);
  *(v1 + 18) = v21;
  v9 = v21;

  v23 = sub_25272EB04(v22);
  v24 = sub_25284E4D0(v20, v23);

  if (v24)
  {
    v25 = v1;
    swift_getKeyPath();
    v1 = (v9 + 64);
    v26 = -1;
    v27 = -1 << *(v9 + 32);
    if (-v27 < 64)
    {
      v26 = ~(-1 << -v27);
    }

    v28 = v26 & *(v9 + 64);
    v29 = (63 - v27) >> 6;
    swift_bridgeObjectRetain_n();
    v30 = 0;
    while (v28)
    {
      v31 = v30;
LABEL_24:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v25[2] = *(*(v9 + 56) + ((v31 << 9) | (8 * v32)));

      swift_getAtKeyPath();

      if ((v25[28] & 1) == 0)
      {

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v33 = sub_2528C08B0();
        __swift_project_value_buffer(v33, qword_27F5025C8);

        v34 = sub_2528C0890();
        v35 = sub_2528C0CF0();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v78[0] = v37;
          *v36 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF970, &qword_2528D4238);
          v38 = sub_2528C08E0();
          v40 = sub_2527389AC(v38, v39, v78);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_252711000, v34, v35, "Skipping execution of all commands due to validation errors: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x2530A8D80](v37, -1, -1);
          MEMORY[0x2530A8D80](v36, -1, -1);
        }

        v41 = *(v25 + 3);
        v42 = sub_2528C00D0();
        (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
        v43 = *(v25 + 17);
        v44 = *(v25 + 14);
        v45 = *(v25 + 11);
        v47 = *(v25 + 7);
        v46 = *(v25 + 8);

        v48 = *(v25 + 1);

        return v48(v9);
      }
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {

        v1 = v25;
        goto LABEL_33;
      }

      v28 = *&v1[v31];
      ++v30;
      if (v28)
      {
        v30 = v31;
        goto LABEL_24;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_35;
  }

LABEL_33:
  v10 = 0x27F4FB000uLL;
  if (!*(v9 + 16))
  {
    goto LABEL_38;
  }

  if (qword_27F4FBB40 != -1)
  {
    goto LABEL_49;
  }

LABEL_35:
  v50 = sub_2528C08B0();
  __swift_project_value_buffer(v50, qword_27F5025C8);

  v51 = sub_2528C0890();
  v52 = sub_2528C0CF0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v78[0] = v54;
    *v53 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF970, &qword_2528D4238);
    v55 = sub_2528C08E0();
    v57 = v1;
    v58 = sub_2527389AC(v55, v56, v78);

    *(v53 + 4) = v58;
    v1 = v57;
    _os_log_impl(&dword_252711000, v51, v52, "Skipping partial execution of commands due to validation errors: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x2530A8D80](v54, -1, -1);
    MEMORY[0x2530A8D80](v53, -1, -1);
  }

LABEL_38:
  v59 = *(v1 + 4);

  v60 = sub_2528476AC(v59, v9);
  *(v1 + 19) = v60;
  v1[20] = 0.0;

  if ((sub_2528458A8(v59, v60) & 1) == 0)
  {
    if (*(v10 + 2880) != -1)
    {
      swift_once();
    }

    v61 = sub_2528C08B0();
    __swift_project_value_buffer(v61, qword_27F5025C8);
    sub_2528BEA50();
    v62 = sub_2528C0890();
    v63 = sub_2528C0D10();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v1 + 15);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v78[0] = v66;
      *v65 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE90, &qword_2528C6720);
      v67 = v1;
      sub_25284C230(&qword_27F4FD1E8, MEMORY[0x277D15C30]);
      v68 = sub_2528C08E0();
      v70 = sub_2527389AC(v68, v69, v78);

      *(v65 + 4) = v70;
      v1 = v67;
      _os_log_impl(&dword_252711000, v62, v63, "Executing partial set of commands: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x2530A8D80](v66, -1, -1);
      MEMORY[0x2530A8D80](v65, -1, -1);
    }
  }

  v71 = swift_task_alloc();
  *(v1 + 21) = v71;
  *v71 = v1;
  v71[1] = sub_252841D20;
  v72 = v1[6];
  v73 = *(v1 + 5);

  return sub_252847A64(v60, v73, v72);
}

uint64_t sub_252841D20(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_252841E20, 0, 0);
}

uint64_t sub_252841E20()
{
  *(v0 + 184) = sub_2528BEFC0();
  sub_2528C0C20();
  *(v0 + 192) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252841EC0, v2, v1);
}

uint64_t sub_252841EC0()
{
  v2 = v0[23];
  v1 = v0[24];

  v0[25] = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_252841F30, 0, 0);
}

uint64_t sub_252841F30()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = sub_2528BEA50();
  v9 = sub_2528407D4(v8);
  v0[26] = v2;

  v10 = sub_252743EF0(v9);

  *v3 = v10;
  v3[1] = v7;
  (*(v4 + 104))(v3, *MEMORY[0x277D16508], v5);
  v11 = sub_2528C00B0();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = *(MEMORY[0x277D16AE8] + 4);
  v13 = v7;
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_2528420A8;
  v15 = v0[25];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[5];
  v19 = v0[3];

  return MEMORY[0x282170970](v19, v16, v18, v17);
}

uint64_t sub_2528420A8()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v8 = *v0;

  sub_2527213D8(v6, &qword_27F4FC478, &unk_2528C3F70);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252842250, 0, 0);
}

uint64_t sub_252842250()
{
  v22 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[7];
  v6 = v0[3];
  v7 = sub_2528C00D0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, v6, v7);
  v9 = *(v8 + 56);
  v9(v5, 0, 1, v7);
  v10 = sub_252848058(v2, v3, v5);

  sub_2527213D8(v5, &qword_27F4FCDB8, &unk_2528C5CC0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v4;
  sub_25284A5C4(v10, sub_252846E30, 0, isUniquelyReferenced_nonNull_native, &v21);

  if (v1)
  {
  }

  else
  {
    v13 = v0[3];

    v14 = v21;
    v9(v13, 0, 1, v7);
    v15 = v0[17];
    v16 = v0[14];
    v17 = v0[11];
    v19 = v0[7];
    v18 = v0[8];

    v20 = v0[1];

    return v20(v14);
  }
}

uint64_t sub_252842460(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x54646E616D6D6F63;
  }

  if (v3)
  {
    v5 = 0xEB000000006B7361;
  }

  else
  {
    v5 = 0x80000002528E51A0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x54646E616D6D6F63;
  }

  if (*a2)
  {
    v7 = 0x80000002528E51A0;
  }

  else
  {
    v7 = 0xEB000000006B7361;
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

uint64_t sub_252842514()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528425A4()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_252842620()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2528426AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_25284270C(unint64_t *a1@<X8>)
{
  v2 = 0x80000002528E51A0;
  v3 = 0x54646E616D6D6F63;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xEB000000006B7361;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_252842758()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x54646E616D6D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_2528427A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 80) = a7;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF9A8, &unk_2528D42C0);
  *(v7 + 88) = v8;
  v9 = *(v8 - 8);
  *(v7 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v11 = sub_2528BECF0();
  *(v7 + 112) = v11;
  v12 = *(v11 - 8);
  *(v7 + 120) = v12;
  *(v7 + 128) = *(v12 + 64);
  *(v7 + 136) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252842914, 0, 0);
}

uint64_t sub_252842914()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v18 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v22 = v0[9];
  v23 = v0[13];
  v7 = v0[6];
  v6 = v0[7];
  v20 = v0[5];
  v21 = v0[8];
  v8 = sub_2528C0C40();
  v19 = *(*(v8 - 8) + 56);
  v19(v1, 1, 1, v8);
  (*(v3 + 16))(v2, v6, v4);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v7;
  (*(v3 + 32))(&v10[v9], v2, v4);

  sub_252843410(v1, &unk_2528D42D8, v10);
  sub_2527213D8(v1, &qword_27F4FCDA0, &unk_2528C6AC0);
  v19(v1, 1, 1, v8);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v21;
  v11[5] = v22;
  v11[6] = v5;

  v12 = v22;
  sub_252843410(v1, &unk_2528D42E8, v11);
  sub_2527213D8(v1, &qword_27F4FCDA0, &unk_2528C6AC0);
  v0[19] = *v20;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF998, &qword_2528D42A0);
  sub_2528C0BE0();
  v13 = *(MEMORY[0x277D856B0] + 4);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_252842BBC;
  v15 = v0[13];
  v16 = v0[11];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v16);
}

uint64_t sub_252842BBC()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252842CB8, 0, 0);
}

uint64_t sub_252842CB8()
{
  v37 = v0;
  v1 = v0[2];
  v2 = v0[3];
  if (v2 == 1)
  {
LABEL_21:
    v2 = 0;
LABEL_22:
    v27 = v0[17];
    v28 = v0[18];
    v29 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    *v29 = v2;

    v30 = v0[1];

    return v30();
  }

  if (v2)
  {
    v3 = v2;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v4 = sub_2528C08B0();
    __swift_project_value_buffer(v4, qword_27F5025C8);
    v5 = v2;
    v6 = sub_2528C0890();
    v7 = sub_2528C0D10();
    sub_25284AAEC(v1, v2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = 0x80000002528E51A0;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v9 = 136315394;
      if (v1)
      {
        v12 = 0xD000000000000017;
      }

      else
      {
        v12 = 0x54646E616D6D6F63;
      }

      if ((v1 & 1) == 0)
      {
        v8 = 0xEB000000006B7361;
      }

      v13 = sub_2527389AC(v12, v8, &v36);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2112;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_252711000, v6, v7, "AppIntentCommandDispatcher.executeAndWait(attributes:staticEndpoints:in:timeout:) - Exiting execution task group because task %s threw error %@", v9, 0x16u);
      sub_2527213D8(v10, &qword_27F4FC230, &qword_2528C3928);
      MEMORY[0x2530A8D80](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x2530A8D80](v11, -1, -1);
      MEMORY[0x2530A8D80](v9, -1, -1);
    }

    v16 = v0[19];
    v17 = v0[20];
    sub_2528C0C00();
    sub_25284AAEC(v1, v2);
    goto LABEL_22;
  }

  if (v1)
  {

LABEL_16:
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v19 = sub_2528C08B0();
    __swift_project_value_buffer(v19, qword_27F5025C8);
    v20 = 0;
    v21 = sub_2528C0890();
    v22 = sub_2528C0D10();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = 0;
      *v24 = 0;
      _os_log_impl(&dword_252711000, v21, v22, "AppIntentCommandDispatcher.executeAndWait(attributes:staticEndpoints:in:timeout:) - Exiting execution task group because value waiter ended with error %@", v23, 0xCu);
      sub_2527213D8(v24, &qword_27F4FC230, &qword_2528C3928);
      MEMORY[0x2530A8D80](v24, -1, -1);
      MEMORY[0x2530A8D80](v23, -1, -1);
    }

    v26 = v0[19];
    v25 = v0[20];

    sub_2528C0C00();
    goto LABEL_21;
  }

  v18 = sub_2528C1060();

  if (v18)
  {
    goto LABEL_16;
  }

  sub_25284AAEC(v1, 0);
  v32 = *(MEMORY[0x277D856B0] + 4);
  v33 = swift_task_alloc();
  v0[21] = v33;
  *v33 = v0;
  v33[1] = sub_252842BBC;
  v34 = v0[13];
  v35 = v0[11];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v35);
}

uint64_t sub_252843168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25284318C, 0, 0);
}

uint64_t sub_25284318C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A48] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_252843264;

  return MEMORY[0x2822008A8]();
}

uint64_t sub_252843264()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2528433A0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_252843380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252843380()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_2528433A0()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[2];
  *v3 = 0;
  *(v3 + 8) = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_252843410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_25272006C(a1, v22 - v10, &qword_27F4FCDA0, &unk_2528C6AC0);
  v12 = sub_2528C0C40();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2527213D8(v11, &qword_27F4FCDA0, &unk_2528C6AC0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2528C0BD0();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2528C0C30();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF998, &qword_2528D42A0);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_252843638(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = *(MEMORY[0x277D163E0] + 4);
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_2528436EC;
  v12.n128_f64[0] = a2;

  return MEMORY[0x2821700E0](a5, a6, v12);
}

uint64_t sub_2528436EC()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_252843824;
  }

  else
  {
    v3 = sub_252843800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252843800()
{
  v1 = *(v0 + 16);
  *v1 = 1;
  *(v1 + 8) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_252843824()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = 1;
  *(v2 + 8) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_25284384C(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v3 = sub_2528BF290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  sub_25272006C(a1, v20 - v14, &qword_27F4FD6A0, &qword_2528D4290);
  v16 = *&v15[*(v12 + 56)];

  sub_2528BFAB0();
  v17 = sub_2528BFB20();
  (*(*(v17 - 8) + 8))(v15, v17);
  sub_2528BFAB0();
  LOBYTE(a1) = sub_2528BF260();
  v18 = *(v4 + 8);
  v18(v8, v3);
  v18(v10, v3);
  return a1 & 1;
}

uint64_t sub_252843A3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v84 = a1;
  v4 = sub_2528BF290();
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v4);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v77 - v10;
  v12 = sub_2528BFB20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(v91, v11, &qword_27F4FD6A0, &qword_2528D4290);
  v17 = *&v11[*(v8 + 56)];
  v86 = v13;
  v87 = v12;
  v18 = *(v13 + 32);
  v90 = v16;
  v18(v16, v11, v12);
  v19 = *(v17 + 16);
  if (!v19)
  {
    v21 = 0;
    goto LABEL_34;
  }

  v20 = 0;
  v21 = 0;
  v81 = (v88 + 8);
  v82 = v4;
  v22 = v17 + 64;
  v88 = v19;
  v89 = v17;
  v79 = v19 - 1;
  v80 = v17 + 64;
  while (2)
  {
    v85 = v21;
    v23 = (v22 + 40 * v20);
    v24 = v20;
    while (1)
    {
      if (v24 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v26 = *(v23 - 4);
      v25 = *(v23 - 3);
      v28 = *(v23 - 2);
      v27 = *(v23 - 1);
      v29 = *v23;
      v93 = v26;
      v94 = v25;
      v95 = v28;
      v96 = v27;
      v97 = v29;
      sub_252760C18(v26, v25, v28, v27, v29);
      sub_252723798(&v93, &v92);
      if (v3)
      {
        (*(v86 + 8))(v90, v87);

        sub_25272C15C(v26, v25, v28, v27, v29);
        v75 = v85;
        return sub_25284A81C(v75);
      }

      v91 = 0;
      v30 = v92;
      if (v92 != 20)
      {
        break;
      }

      ++v24;
      sub_25272C15C(v26, v25, v28, v27, v29);
      v23 += 40;
      v17 = v89;
      v3 = v91;
      if (v88 == v24)
      {
        v21 = v85;
        goto LABEL_34;
      }
    }

    v31 = v83;
    sub_2528BFAB0();
    v78 = sub_2528BF0E0();
    (*v81)(v31, v82);
    v93 = v26;
    v94 = v25;
    v95 = v28;
    v96 = v27;
    v97 = v29;
    sub_252870158(&v98);
    v32 = v28;
    v33 = v78;
    sub_25272C15C(v26, v25, v32, v27, v29);
    v34 = v98;
    sub_25284A81C(v85);
    v35 = v84;
    v36 = *v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *v35;
    v38 = v92;
    v40 = sub_252791C7C(v33);
    v41 = v38[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v44 = v39;
    if (v38[3] < v43)
    {
      sub_2527DD750(v43, isUniquelyReferenced_nonNull_native);
      v38 = v92;
      v45 = sub_252791C7C(v33);
      if ((v44 & 1) == (v46 & 1))
      {
        v40 = v45;
        *v35 = v38;
        if (v44)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

LABEL_42:
      result = sub_2528C10A0();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      *v35 = v38;
      if (v39)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    sub_2527E0D98();
    v38 = v92;
    *v35 = v92;
    if ((v44 & 1) == 0)
    {
LABEL_16:
      v47 = sub_25278D824(MEMORY[0x277D84F90]);
      v38[(v40 >> 6) + 8] |= 1 << v40;
      *(v38[6] + 8 * v40) = v33;
      *(v38[7] + 8 * v40) = v47;
      v48 = v38[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (!v49)
      {
        v38[2] = v50;
        goto LABEL_18;
      }

      goto LABEL_39;
    }

LABEL_18:
    v51 = v38[7];
    v52 = *(v51 + 8 * v40);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(v51 + 8 * v40);
    v54 = v92;
    *(v51 + 8 * v40) = 0x8000000000000000;
    v55 = sub_252785BA8(v34);
    v57 = v54[2];
    v58 = (v56 & 1) == 0;
    v49 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (v49)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v60 = v56;
    if (v54[3] < v59)
    {
      sub_2527DD9C0(v59, v53);
      v55 = sub_252785BA8(v34);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_41;
      }

LABEL_23:
      v62 = v92;
      if (v60)
      {
        goto LABEL_24;
      }

LABEL_28:
      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + v55) = v34;
      v71 = v62[7] + 40 * v55;
      *v71 = v30;
      *(v71 + 8) = 0;
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      *(v71 + 32) = 512;
      v72 = v62[2];
      v49 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (!v49)
      {
        v62[2] = v73;
        goto LABEL_30;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      sub_2528C10A0();
      __break(1u);
      goto LABEL_42;
    }

    if (v53)
    {
      goto LABEL_23;
    }

    v70 = v55;
    sub_2527E0EF4();
    v55 = v70;
    v62 = v92;
    if ((v60 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    v63 = v62[7] + 40 * v55;
    v64 = *v63;
    v65 = *(v63 + 8);
    v66 = *(v63 + 16);
    v67 = *(v63 + 24);
    *v63 = v30;
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    v68 = *(v63 + 32);
    *(v63 + 32) = 0;
    v69 = *(v63 + 33);
    *(v63 + 33) = 2;
    sub_25276925C(v64, v65, v66, v67, v68, v69);
LABEL_30:
    v3 = v91;
    v17 = v89;
    v20 = v24 + 1;
    v74 = *(v51 + 8 * v40);
    *(v51 + 8 * v40) = v62;

    v21 = sub_25284C2E0;
    v22 = v80;
    if (v79 != v24)
    {
      continue;
    }

    break;
  }

LABEL_34:
  (*(v86 + 8))(v90, v87);

  v75 = v21;
  return sub_25284A81C(v75);
}