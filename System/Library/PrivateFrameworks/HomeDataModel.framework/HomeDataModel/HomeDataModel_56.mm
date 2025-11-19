uint64_t StaticProfileBag.isNaturalLightSupported.getter()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v1 = *(*(v30 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v28 - v4;
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v9 = (v6 + 63) >> 6;
  v31 = *v0;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = v31;
    v16 = *(v31 + 48);
    v17 = sub_1D1E66A7C();
    v18 = *(v17 - 8);
    v19 = v28;
    (*(v18 + 16))(v28, v16 + *(v18 + 72) * v14, v17);
    v20 = *(v15 + 56);
    v21 = (type metadata accessor for StaticLightProfile() - 8);
    v22 = v20 + *(*v21 + 72) * v14;
    v23 = v30;
    sub_1D1BA2FA0(v22, &v19[*(v30 + 48)], type metadata accessor for StaticLightProfile);
    v24 = v19;
    v25 = v29;
    sub_1D1741A90(v24, v29, &qword_1EC645578, &qword_1D1E79B20);
    v26 = v25 + *(v23 + 48);
    LODWORD(v21) = *(v26 + v21[7]);
    sub_1D1BA3008(v26, type metadata accessor for StaticLightProfile);
    result = (*(v18 + 8))(v25, v17);
    if (v21 == 1)
    {
      v27 = 1;
LABEL_13:

      return v27;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v27 = 0;
      goto LABEL_13;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticProfileBag.isNaturalLightEnabled.getter()
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v1 = *(*(v34 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v32 - v4;
  v5 = *v0 + 64;
  v6 = 1 << *(*v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*v0 + 64);
  v9 = (v6 + 63) >> 6;
  v35 = *v0;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = v35;
    v16 = *(v35 + 48);
    v17 = sub_1D1E66A7C();
    v18 = *(v17 - 8);
    v19 = v32;
    (*(v18 + 16))(v32, v16 + *(v18 + 72) * v14, v17);
    v20 = *(v15 + 56);
    v21 = (type metadata accessor for StaticLightProfile() - 8);
    v22 = v20 + *(*v21 + 72) * v14;
    v23 = v34;
    sub_1D1BA2FA0(v22, &v19[*(v34 + 48)], type metadata accessor for StaticLightProfile);
    v24 = v19;
    v25 = v33;
    sub_1D1741A90(v24, v33, &qword_1EC645578, &qword_1D1E79B20);
    v26 = v25 + *(v23 + 48);
    v27 = (v26 + v21[8]);
    v28 = *v27;
    v29 = v27[1];
    if (v29 == 2)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    sub_1D1BA3008(v26, type metadata accessor for StaticLightProfile);
    result = (*(v18 + 8))(v25, v17);
    if (v30)
    {
      v31 = 1;
LABEL_16:

      return v31;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v31 = 0;
      goto LABEL_16;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticProfileBag.setNaturalLight(_:)(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  v4 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA041C, 0, 0);
}

uint64_t sub_1D1BA041C()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDF0, &qword_1D1E9CBF0);
  *(v0 + 48) = sub_1D1BA22AC();
  *(v0 + 16) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1D1BA0508;
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);

  return static StaticLightProfile.setNaturalLight(_:lightProfiles:waitForWriteRequestCompletion:timeout:)(v4, v3, v0 + 16, 0, 0, 1);
}

uint64_t sub_1D1BA0508()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1BA0644, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1D1BA0644()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t StaticProfileBag.mediaSourceDisplayOrder.getter()
{
  v1 = type metadata accessor for StaticTelevisionProfile();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE00, &qword_1D1E9CBF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = *(v0 + 8);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = *(v0 + 8);
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  if (v16)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      sub_1D1BA2FA0(*(v13 + 56) + *(v2 + 72) * (__clz(__rbit64(v16)) | (v21 << 6)), v8, type metadata accessor for StaticTelevisionProfile);
      sub_1D1BA2EB4(v8, v6, type metadata accessor for StaticTelevisionProfile);
      if (*(*&v6[*(v1 + 20)] + 16))
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_1D1BA3008(v6, type metadata accessor for StaticTelevisionProfile);
      v20 = v21;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    sub_1D1BA2EB4(v6, v12, type metadata accessor for StaticTelevisionProfile);
    (*(v2 + 56))(v12, 0, 1, v1);
LABEL_12:

    if ((*(v2 + 48))(v12, 1, v1) == 1)
    {
      sub_1D1741A30(v12, &qword_1EC64BE00, &qword_1D1E9CBF8);
      return 0;
    }

    else
    {
      v22 = *&v12[*(v1 + 20)];

      sub_1D1BA3008(v12, type metadata accessor for StaticTelevisionProfile);
    }

    return v22;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v17)
      {

        (*(v2 + 56))(v12, 1, 1, v1);
        goto LABEL_12;
      }

      v16 = *(v13 + 64 + 8 * v21);
      ++v20;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static StaticProfileBag.ValueUpdate.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1D1BA09E0(uint64_t a1)
{
  v2 = sub_1D1BA2310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA0A1C(uint64_t a1)
{
  v2 = sub_1D1BA2310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA0A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D1EC5EF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D1E6904C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D1BA0B08(uint64_t a1)
{
  v2 = sub_1D1BA23B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA0B44(uint64_t a1)
{
  v2 = sub_1D1BA23B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA0BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x457265776F507369 && a2 == 0xEE0064656C62616ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1BA0C34(uint64_t a1)
{
  v2 = sub_1D1BA2364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA0C70(uint64_t a1)
{
  v2 = sub_1D1BA2364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticProfileBag.ValueUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE08, &qword_1D1E9CC00);
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE10, &qword_1D1E9CC08);
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE18, &qword_1D1E9CC10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA2310();
  sub_1D1E6930C();
  if (v15 < 0)
  {
    v26 = 1;
    sub_1D1BA2364();
    v9 = v20;
    sub_1D1E68DFC();
    v17 = v22;
    sub_1D1E68EDC();
    v18 = v21;
  }

  else
  {
    v25 = 0;
    sub_1D1BA23B8();
    sub_1D1E68DFC();
    v17 = v24;
    sub_1D1E68EDC();
    v18 = v23;
  }

  (*(v18 + 8))(v9, v17);
  return (*(v11 + 8))(v14, v10);
}

uint64_t StaticProfileBag.ValueUpdate.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1 >> 7);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticProfileBag.ValueUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE38, &qword_1D1E9CC18);
  v35 = *(v33 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE40, &qword_1D1E9CC20);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE48, &unk_1D1E9CC28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D1BA2310();
  v17 = v37;
  sub_1D1E692FC();
  if (!v17)
  {
    v37 = v11;
    v18 = sub_1D1E68DDC();
    v19 = (2 * *(v18 + 16)) | 1;
    v39 = v18;
    v40 = v18 + 32;
    v41 = 0;
    v42 = v19;
    v20 = sub_1D18085D0();
    if (v20 == 2 || v41 != v42 >> 1)
    {
      v25 = sub_1D1E688EC();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v27 = &type metadata for StaticProfileBag.ValueUpdate;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v37 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else if (v20)
    {
      v43 = 1;
      sub_1D1BA2364();
      sub_1D1E68C4C();
      v22 = v36;
      v21 = v37;
      v23 = v33;
      v24 = sub_1D1E68D3C();
      (*(v35 + 8))(v5, v23);
      (*(v21 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v22 = v24 & 1 | 0x80;
    }

    else
    {
      v43 = 0;
      sub_1D1BA23B8();
      sub_1D1E68C4C();
      v31 = v36;
      v30 = v37;
      v32 = sub_1D1E68D3C();
      (*(v34 + 8))(v9, v6);
      (*(v30 + 8))(v14, v10);
      swift_unknownObjectRelease();
      *v31 = v32 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D1BA151C(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1D1BA158C()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1 >> 7);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA160C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F7250746867696CLL && a2 == 0xEC000000656C6966;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F7250616964656DLL && a2 == 0xEC000000656C6966)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1BA16EC(uint64_t a1)
{
  v2 = sub_1D1BA240C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA1728(uint64_t a1)
{
  v2 = sub_1D1BA240C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA1764(uint64_t a1)
{
  v2 = sub_1D1BA24B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA17A0(uint64_t a1)
{
  v2 = sub_1D1BA24B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA17DC(uint64_t a1)
{
  v2 = sub_1D1BA2460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA1818(uint64_t a1)
{
  v2 = sub_1D1BA2460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticProfileBag.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE50, &qword_1D1E9CC38);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE58, &qword_1D1E9CC40);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE60, &qword_1D1E9CC48);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA240C();
  sub_1D1E6930C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D1BA2460();
    v18 = v22;
    sub_1D1E68DFC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D1BA24B4();
    sub_1D1E68DFC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t StaticProfileBag.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticProfileBag.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE80, &qword_1D1E9CC50);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE88, &qword_1D1E9CC58);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE90, &qword_1D1E9CC60);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA240C();
  v16 = v36;
  sub_1D1E692FC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D1E68DDC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D18085D0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D1E688EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v26 = &type metadata for StaticProfileBag.Kind;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D1BA2460();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D1BA24B4();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1D1BA208C()
{
  result = qword_1EC64BDD0;
  if (!qword_1EC64BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
    sub_1D1BA2264(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1BA2264(&qword_1EC64BDD8, type metadata accessor for StaticLightProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDD0);
  }

  return result;
}

unint64_t sub_1D1BA2178()
{
  result = qword_1EC64BDE0;
  if (!qword_1EC64BDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
    sub_1D1BA2264(&qword_1EC644B20, MEMORY[0x1E69695A8]);
    sub_1D1BA2264(&qword_1EC64BDE8, type metadata accessor for StaticTelevisionProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDE0);
  }

  return result;
}

uint64_t sub_1D1BA2264(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1BA22AC()
{
  result = qword_1EC64BDF8;
  if (!qword_1EC64BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BDF0, &qword_1D1E9CBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDF8);
  }

  return result;
}

unint64_t sub_1D1BA2310()
{
  result = qword_1EC64BE20;
  if (!qword_1EC64BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE20);
  }

  return result;
}

unint64_t sub_1D1BA2364()
{
  result = qword_1EC64BE28;
  if (!qword_1EC64BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE28);
  }

  return result;
}

unint64_t sub_1D1BA23B8()
{
  result = qword_1EC64BE30;
  if (!qword_1EC64BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE30);
  }

  return result;
}

unint64_t sub_1D1BA240C()
{
  result = qword_1EC64BE68;
  if (!qword_1EC64BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE68);
  }

  return result;
}

unint64_t sub_1D1BA2460()
{
  result = qword_1EC64BE70;
  if (!qword_1EC64BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE70);
  }

  return result;
}

unint64_t sub_1D1BA24B4()
{
  result = qword_1EC64BE78;
  if (!qword_1EC64BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE78);
  }

  return result;
}

unint64_t sub_1D1BA250C()
{
  result = qword_1EC64BE98;
  if (!qword_1EC64BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE98);
  }

  return result;
}

unint64_t sub_1D1BA2564()
{
  result = qword_1EC64BEA0;
  if (!qword_1EC64BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEA0);
  }

  return result;
}

unint64_t sub_1D1BA25BC()
{
  result = qword_1EC64BEA8;
  if (!qword_1EC64BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticProfileBag.ValueUpdate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for StaticProfileBag.ValueUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1BA2830()
{
  result = qword_1EC64BEB0;
  if (!qword_1EC64BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEB0);
  }

  return result;
}

unint64_t sub_1D1BA2888()
{
  result = qword_1EC64BEB8;
  if (!qword_1EC64BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEB8);
  }

  return result;
}

unint64_t sub_1D1BA28E0()
{
  result = qword_1EC64BEC0;
  if (!qword_1EC64BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEC0);
  }

  return result;
}

unint64_t sub_1D1BA2938()
{
  result = qword_1EC64BEC8;
  if (!qword_1EC64BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEC8);
  }

  return result;
}

unint64_t sub_1D1BA2990()
{
  result = qword_1EC64BED0;
  if (!qword_1EC64BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BED0);
  }

  return result;
}

unint64_t sub_1D1BA29E8()
{
  result = qword_1EC64BED8;
  if (!qword_1EC64BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BED8);
  }

  return result;
}

unint64_t sub_1D1BA2A40()
{
  result = qword_1EC64BEE0;
  if (!qword_1EC64BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEE0);
  }

  return result;
}

unint64_t sub_1D1BA2A98()
{
  result = qword_1EC64BEE8;
  if (!qword_1EC64BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEE8);
  }

  return result;
}

unint64_t sub_1D1BA2AF0()
{
  result = qword_1EC64BEF0;
  if (!qword_1EC64BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEF0);
  }

  return result;
}

unint64_t sub_1D1BA2B48()
{
  result = qword_1EC64BEF8;
  if (!qword_1EC64BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEF8);
  }

  return result;
}

unint64_t sub_1D1BA2BA0()
{
  result = qword_1EC64BF00;
  if (!qword_1EC64BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF00);
  }

  return result;
}

unint64_t sub_1D1BA2BF8()
{
  result = qword_1EC64BF08;
  if (!qword_1EC64BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF08);
  }

  return result;
}

unint64_t sub_1D1BA2C50()
{
  result = qword_1EC64BF10;
  if (!qword_1EC64BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF10);
  }

  return result;
}

unint64_t sub_1D1BA2CA8()
{
  result = qword_1EC64BF18;
  if (!qword_1EC64BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF18);
  }

  return result;
}

unint64_t sub_1D1BA2D00()
{
  result = qword_1EC64BF20;
  if (!qword_1EC64BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF20);
  }

  return result;
}

unint64_t sub_1D1BA2D58()
{
  result = qword_1EC64BF28;
  if (!qword_1EC64BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF28);
  }

  return result;
}

unint64_t sub_1D1BA2DB0()
{
  result = qword_1EC64BF30;
  if (!qword_1EC64BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF30);
  }

  return result;
}

unint64_t sub_1D1BA2E08()
{
  result = qword_1EC64BF38;
  if (!qword_1EC64BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF38);
  }

  return result;
}

unint64_t sub_1D1BA2E60()
{
  result = qword_1EC64BF40;
  if (!qword_1EC64BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF40);
  }

  return result;
}

uint64_t sub_1D1BA2EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BA2F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticLightProfile();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1BA2FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BA3008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticTelevisionProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticTelevisionProfile.mediaSourceDisplayOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticTelevisionProfile() + 20));
}

uint64_t type metadata accessor for StaticTelevisionProfile()
{
  result = qword_1EE07A4C0;
  if (!qword_1EE07A4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticTelevisionProfile.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTelevisionProfile() + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static StaticTelevisionProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticTelevisionProfile();
  if ((sub_1D177A0E4(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1BA3258()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x726F737365636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D1BA32B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1BA41F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1BA32DC(uint64_t a1)
{
  v2 = sub_1D1BA35A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA3318(uint64_t a1)
{
  v2 = sub_1D1BA35A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticTelevisionProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF48, &unk_1D1E9D630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA35A0();
  sub_1D1E6930C();
  v17 = 0;
  sub_1D1E66A7C();
  sub_1D1BA3F20(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticTelevisionProfile();
    v14[1] = *(v3 + *(v11 + 20));
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    sub_1D1BA3DAC(&qword_1EC64BF60);
    sub_1D1E68F1C();
    v12 = *(v11 + 24);
    v15 = 2;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D1BA35A0()
{
  result = qword_1EC64BF50;
  if (!qword_1EC64BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF50);
  }

  return result;
}

uint64_t StaticTelevisionProfile.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1BA3F20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticTelevisionProfile();
  v2 = *(v0 + *(v1 + 20));
  MEMORY[0x1D3892850](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  v6 = v0 + *(v1 + 24);
  return sub_1D1E676EC();
}

uint64_t StaticTelevisionProfile.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1BA3F20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticTelevisionProfile();
  v2 = *(v0 + *(v1 + 20));
  MEMORY[0x1D3892850](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  v6 = v0 + *(v1 + 24);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t StaticTelevisionProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1D1E66A7C();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF68, &qword_1D1E9D640);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  v13 = type metadata accessor for StaticTelevisionProfile();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA35A0();
  v35 = v12;
  v18 = v36;
  sub_1D1E692FC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v7;
  v29 = v13;
  v36 = a1;
  v19 = v16;
  v20 = v31;
  v40 = 0;
  v21 = sub_1D1BA3F20(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v22 = v32;
  sub_1D1E68D7C();
  v27[1] = v21;
  v23 = *(v20 + 32);
  v23(v16, v22, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
  v39 = 1;
  sub_1D1BA3DAC(&qword_1EC64BF70);
  sub_1D1E68D7C();
  v32 = v23;
  *&v16[*(v29 + 20)] = v37;
  v38 = 2;
  v24 = v28;
  sub_1D1E68D7C();
  v25 = v36;
  (*(v33 + 8))(v35, v34);
  (v32)(v19 + *(v29 + 24), v24, v3);
  sub_1D1BA3E18(v19, v30);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D1BA3E7C(v19);
}

uint64_t sub_1D1BA3C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D177A0E4(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1BA3CB8(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1BA3F20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = *(v2 + *(a2 + 20));
  MEMORY[0x1D3892850](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1D3892850](v7);
      --v5;
    }

    while (v5);
  }

  v8 = v2 + *(a2 + 24);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA3DAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1BA3E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTelevisionProfile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1BA3E7C(uint64_t a1)
{
  v2 = type metadata accessor for StaticTelevisionProfile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1BA3F20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1BA4008()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1BA4090();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1BA4090()
{
  if (!qword_1EC64BF80)
  {
    v0 = sub_1D1E67D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64BF80);
    }
  }
}

unint64_t sub_1D1BA40F4()
{
  result = qword_1EC64BF88;
  if (!qword_1EC64BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF88);
  }

  return result;
}

unint64_t sub_1D1BA414C()
{
  result = qword_1EC64BF90;
  if (!qword_1EC64BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF90);
  }

  return result;
}

unint64_t sub_1D1BA41A4()
{
  result = qword_1EC64BF98;
  if (!qword_1EC64BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF98);
  }

  return result;
}

uint64_t sub_1D1BA41F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC5F10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1BA4314(uint64_t a1)
{
  v37 = sub_1D1E66A7C();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1D1E6869C();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_1D1E66A1C();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D178CD24((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1D18A2E20(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1D18A2E20(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _s13HomeDataModel17AnyTileInfoBearerV11StorageBaseCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D1BA4680(void *a1, int a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1D0, &qword_1D1E9DD50);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1D8, &qword_1D1E9DD58);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1E0, &qword_1D1E9DD60);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1E8, &qword_1D1E9DD68);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1F0, &qword_1D1E9DD70);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1F8, &qword_1D1E9DD78);
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C200, &qword_1D1E9DD80);
  v42 = *(v43 - 8);
  v22 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C208, &qword_1D1E9DD88);
  v41 = *(v25 - 8);
  v26 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C210, &qword_1D1E9DD90);
  v29 = *(v62 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v32 = &v41 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BAC4C4();
  sub_1D1E6930C();
  v34 = (v29 + 8);
  if (v61 > 3u)
  {
    if (v61 > 5u)
    {
      if (v61 == 6)
      {
        v69 = 6;
        sub_1D1BAC56C();
        v37 = v55;
        v38 = v62;
        sub_1D1E68DFC();
        v40 = v56;
        v39 = v57;
      }

      else
      {
        v70 = 7;
        sub_1D1BAC518();
        v37 = v58;
        v38 = v62;
        sub_1D1E68DFC();
        v40 = v59;
        v39 = v60;
      }
    }

    else if (v61 == 4)
    {
      v67 = 4;
      sub_1D1BAC614();
      v37 = v49;
      v38 = v62;
      sub_1D1E68DFC();
      v40 = v50;
      v39 = v51;
    }

    else
    {
      v68 = 5;
      sub_1D1BAC5C0();
      v37 = v52;
      v38 = v62;
      sub_1D1E68DFC();
      v40 = v53;
      v39 = v54;
    }

    goto LABEL_16;
  }

  if (v61 > 1u)
  {
    if (v61 == 2)
    {
      v65 = 2;
      sub_1D1BAC6BC();
      v38 = v62;
      sub_1D1E68DFC();
      (*(v44 + 8))(v21, v45);
      return (*v34)(v32, v38);
    }

    v66 = 3;
    sub_1D1BAC668();
    v37 = v46;
    v38 = v62;
    sub_1D1E68DFC();
    v40 = v47;
    v39 = v48;
LABEL_16:
    (*(v40 + 8))(v37, v39);
    return (*v34)(v32, v38);
  }

  if (!v61)
  {
    v63 = 0;
    sub_1D1BAC764();
    v35 = v62;
    sub_1D1E68DFC();
    (*(v41 + 8))(v28, v25);
    return (*v34)(v32, v35);
  }

  v64 = 1;
  sub_1D1BAC710();
  v38 = v62;
  sub_1D1E68DFC();
  (*(v42 + 8))(v24, v43);
  return (*v34)(v32, v38);
}

uint64_t sub_1D1BA4E1C(uint64_t a1)
{
  v2 = sub_1D1BAC764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA4E58(uint64_t a1)
{
  v2 = sub_1D1BAC764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA4E94(uint64_t a1)
{
  v2 = sub_1D1BAC614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA4ED0(uint64_t a1)
{
  v2 = sub_1D1BAC614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA4F0C(uint64_t a1)
{
  v2 = sub_1D1BAC668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA4F48(uint64_t a1)
{
  v2 = sub_1D1BAC668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA4F84()
{
  v1 = *v0;
  v2 = 0x726F737365636361;
  v3 = 0x6F7250616964656DLL;
  if (v1 != 6)
  {
    v3 = 0x634172657474616DLL;
  }

  v4 = 0x65536E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x737953616964656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4765636976726573;
  if (v1 != 2)
  {
    v5 = 0x72506172656D6163;
  }

  if (*v0)
  {
    v2 = 0x65636976726573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1BA50B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1BAB80C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1BA50DC(uint64_t a1)
{
  v2 = sub_1D1BAC4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5118(uint64_t a1)
{
  v2 = sub_1D1BAC4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA5154(uint64_t a1)
{
  v2 = sub_1D1BAC518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5190(uint64_t a1)
{
  v2 = sub_1D1BAC518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA51CC(uint64_t a1)
{
  v2 = sub_1D1BAC56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5208(uint64_t a1)
{
  v2 = sub_1D1BAC56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA5244(uint64_t a1)
{
  v2 = sub_1D1BAC5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5280(uint64_t a1)
{
  v2 = sub_1D1BAC5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA52BC(uint64_t a1)
{
  v2 = sub_1D1BAC710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA52F8(uint64_t a1)
{
  v2 = sub_1D1BAC710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA5334(uint64_t a1)
{
  v2 = sub_1D1BAC6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5370(uint64_t a1)
{
  v2 = sub_1D1BAC6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA53AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D1BABACC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D1BA5424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6F666E49656C6974 && a2 == 0xE800000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F666E49656C6974 && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1BA54FC(uint64_t a1)
{
  v2 = sub_1D1BAB044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5538(uint64_t a1)
{
  v2 = sub_1D1BAB044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double AnyTileInfoBearer.init<A>(erasing:)@<D0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, _OWORD *a3@<X8>)
{
  Description = a2[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (Description[2])(v9, a1, a2);
  AnyTileInfoBearer.init<A>(_:)(v9, a2, &v11);
  (Description[1])(a1, a2);
  result = *&v11;
  *a3 = v11;
  return result;
}

uint64_t AnyTileInfoBearer.init<A>(_:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t **a3@<X8>)
{
  Description = a2[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](a1);
  (Description[2])(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if (swift_dynamicCast())
  {
    v9 = v12;
    v10 = &type metadata for AnyTileInfoBearer;
  }

  else
  {
    type metadata accessor for AnyTileInfoBearer.TileStorage();
    swift_allocObject();
    v9 = sub_1D1BAAF38(a1);
    v10 = a2;
  }

  result = (Description[1])(a1, a2);
  *a3 = v9;
  a3[1] = &v10->Kind;
  return result;
}

uint64_t AnyTileInfoBearer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v100 = a2;
  v98 = type metadata accessor for StaticMatterDevice();
  v3 = *(*(v98 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v98);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v81 - v6;
  v99 = type metadata accessor for StaticMediaProfile();
  v7 = *(*(v99 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v99);
  v88 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v81 - v10;
  v96 = type metadata accessor for StaticMediaSystem();
  v11 = *(*(v96 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v96);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v81 - v14;
  v97 = type metadata accessor for StaticActionSet();
  v15 = *(*(v97 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v97);
  v86 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v81 - v18;
  v95 = type metadata accessor for StaticCameraProfile();
  v19 = *(*(v95 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v95);
  v85 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v81 - v22;
  v93 = type metadata accessor for StaticServiceGroup();
  v23 = *(*(v93 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v93);
  v84 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v81 - v26;
  v91 = type metadata accessor for StaticService(0);
  v27 = *(*(v91 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v91);
  v83 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v81 - v30;
  v32 = type metadata accessor for StaticAccessory(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v81 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFA0, &qword_1D1E9D890);
  v103 = *(v39 - 8);
  v40 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v81 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D1BAB044();
  v45 = v105;
  sub_1D1E692FC();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v82 = v36;
  v46 = v38;
  v47 = v31;
  v105 = v32;
  v49 = v101;
  v48 = v102;
  v50 = v104;
  v115 = 1;
  sub_1D1BAB098();
  sub_1D1E68D7C();
  if (v116 > 3u)
  {
    if (v116 > 5u)
    {
      if (v116 != 6)
      {
        v114 = 0;
        sub_1D1BAB568(&qword_1EC649240, type metadata accessor for StaticMatterDevice);
        v73 = v98;
        sub_1D1E68D7C();
        v81 = v42;
        v79 = v89;
        sub_1D1BAB0EC(v50, v89, type metadata accessor for StaticMatterDevice);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFB8, &qword_1D1E9D898);
        v55 = swift_allocObject();
        v55[5] = v73;
        v55[6] = sub_1D1BAB568(&qword_1EC649258, type metadata accessor for StaticMatterDevice);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
        sub_1D1BAB154(v79, boxed_opaque_existential_1, type metadata accessor for StaticMatterDevice);
        sub_1D1BAB278(v50, type metadata accessor for StaticMatterDevice);
        v53 = v73;
LABEL_22:
        v60 = v100;
        v59 = v103;
        goto LABEL_23;
      }

      v113 = 0;
      sub_1D1BAB568(&qword_1EC64BFC0, type metadata accessor for StaticMediaProfile);
      v66 = v48;
      v53 = v99;
      sub_1D1E68D7C();
      v81 = v42;
      v67 = v48;
      v68 = v88;
      sub_1D1BAB0EC(v67, v88, type metadata accessor for StaticMediaProfile);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFC8, &qword_1D1E9D8A0);
      v55 = swift_allocObject();
      v55[5] = v53;
      v55[6] = sub_1D1BAB568(&qword_1EC64BFD0, type metadata accessor for StaticMediaProfile);
      v69 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
      sub_1D1BAB154(v68, v69, type metadata accessor for StaticMediaProfile);
      v70 = type metadata accessor for StaticMediaProfile;
      goto LABEL_19;
    }

    v59 = v103;
    if (v116 == 4)
    {
      v111 = 0;
      sub_1D1BAB568(&qword_1EC64BFF0, type metadata accessor for StaticActionSet);
      v53 = v97;
      sub_1D1E68D7C();
      v60 = v100;
      v81 = v42;
      v61 = v86;
      sub_1D1BAB0EC(v49, v86, type metadata accessor for StaticActionSet);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFF8, &qword_1D1E9D8B0);
      v55 = swift_allocObject();
      v55[5] = v53;
      v55[6] = sub_1D1BAB568(&qword_1EC64C000, type metadata accessor for StaticActionSet);
      v62 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
      sub_1D1BAB154(v61, v62, type metadata accessor for StaticActionSet);
      v63 = type metadata accessor for StaticActionSet;
    }

    else
    {
      v112 = 0;
      sub_1D1BAB568(&qword_1EC64BFD8, type metadata accessor for StaticMediaSystem);
      v49 = v90;
      v53 = v96;
      sub_1D1E68D7C();
      v60 = v100;
      v81 = v42;
      v71 = v87;
      sub_1D1BAB0EC(v49, v87, type metadata accessor for StaticMediaSystem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFE0, &qword_1D1E9D8A8);
      v55 = swift_allocObject();
      v55[5] = v53;
      v55[6] = sub_1D1BAB568(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem);
      v72 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
      sub_1D1BAB154(v71, v72, type metadata accessor for StaticMediaSystem);
      v63 = type metadata accessor for StaticMediaSystem;
    }
  }

  else
  {
    if (v116 <= 1u)
    {
      v81 = v42;
      if (!v116)
      {
        v107 = 0;
        sub_1D1BAB568(&qword_1EC644758, type metadata accessor for StaticAccessory);
        v52 = v46;
        v53 = v105;
        sub_1D1E68D7C();
        v54 = v82;
        sub_1D1BAB0EC(v52, v82, type metadata accessor for StaticAccessory);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C028, &qword_1D1E9D8D0);
        v55 = swift_allocObject();
        v55[5] = v53;
        v55[6] = sub_1D1BAB568(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
        v56 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
        sub_1D1BAB154(v54, v56, type metadata accessor for StaticAccessory);
        v57 = type metadata accessor for StaticAccessory;
        v58 = v52;
LABEL_20:
        sub_1D1BAB278(v58, v57);
        goto LABEL_22;
      }

      v108 = 0;
      sub_1D1BAB568(&qword_1EC644750, type metadata accessor for StaticService);
      v66 = v47;
      v53 = v91;
      sub_1D1E68D7C();
      v74 = v47;
      v75 = v83;
      sub_1D1BAB0EC(v74, v83, type metadata accessor for StaticService);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C020, &qword_1D1E9D8C8);
      v55 = swift_allocObject();
      v55[5] = v53;
      v55[6] = sub_1D1BAB568(&qword_1EC646AF0, type metadata accessor for StaticService);
      v76 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
      sub_1D1BAB154(v75, v76, type metadata accessor for StaticService);
      v70 = type metadata accessor for StaticService;
LABEL_19:
      v57 = v70;
      v58 = v66;
      goto LABEL_20;
    }

    if (v116 == 2)
    {
      v109 = 0;
      sub_1D1BAB568(&qword_1EC644748, type metadata accessor for StaticServiceGroup);
      v49 = v92;
      v53 = v93;
      sub_1D1E68D7C();
      v60 = v100;
      v59 = v103;
      v81 = v42;
      v64 = v84;
      sub_1D1BAB0EC(v49, v84, type metadata accessor for StaticServiceGroup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C018, &qword_1D1E9D8C0);
      v55 = swift_allocObject();
      v55[5] = v53;
      v55[6] = sub_1D1BAB568(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup);
      v65 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
      sub_1D1BAB154(v64, v65, type metadata accessor for StaticServiceGroup);
      v63 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v110 = 0;
      sub_1D1BAB568(&qword_1EC64B9C0, type metadata accessor for StaticCameraProfile);
      v49 = v94;
      v53 = v95;
      sub_1D1E68D7C();
      v60 = v100;
      v59 = v103;
      v81 = v42;
      v77 = v85;
      sub_1D1BAB0EC(v49, v85, type metadata accessor for StaticCameraProfile);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C008, &qword_1D1E9D8B8);
      v55 = swift_allocObject();
      v55[5] = v53;
      v55[6] = sub_1D1BAB568(&qword_1EC64C010, type metadata accessor for StaticCameraProfile);
      v78 = __swift_allocate_boxed_opaque_existential_1(v55 + 2);
      sub_1D1BAB154(v77, v78, type metadata accessor for StaticCameraProfile);
      v63 = type metadata accessor for StaticCameraProfile;
    }
  }

  sub_1D1BAB278(v49, v63);
LABEL_23:
  (*(v59 + 8))(v81, v39);
  *v60 = v55;
  v60[1] = v53;
  return __swift_destroy_boxed_opaque_existential_1(v106);
}

uint64_t AnyTileInfoBearer.encode(to:)(void *a1)
{
  v2 = v1;
  v85 = type metadata accessor for StaticMatterDevice();
  v4 = *(*(v85 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v85);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v81 - v7;
  v88 = type metadata accessor for StaticMediaProfile();
  v8 = *(*(v88 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v88);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v81 - v11;
  v91 = type metadata accessor for StaticMediaSystem();
  v12 = *(*(v91 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v91);
  v87 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v81 - v15;
  v94 = type metadata accessor for StaticActionSet();
  v16 = *(*(v94 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v94);
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v81 - v19;
  v97 = type metadata accessor for StaticCameraProfile();
  v20 = *(*(v97 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v97);
  v93 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v81 - v23;
  v100 = type metadata accessor for StaticServiceGroup();
  v24 = *(*(v100 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v100);
  v96 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v81 - v27;
  v28 = type metadata accessor for StaticService(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v99 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v81 - v32;
  v33 = type metadata accessor for StaticAccessory(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v102 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v81 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C030, &unk_1D1E9D8D8);
  v104 = *(v39 - 8);
  v40 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v81 - v41;
  v43 = *v2;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v81 = sub_1D1BAB044();
  sub_1D1E6930C();
  v45 = v43;
  sub_1D17419CC((v43 + 2), v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (!swift_dynamicCast())
  {
    v48 = v103;
    v102 = v42;
    v49 = v39;
    v50 = v101;
    if (swift_dynamicCast())
    {
      v51 = v50;
      v52 = v99;
      sub_1D1BAB154(v51, v99, type metadata accessor for StaticService);
      LOBYTE(v105) = 1;
      v108 = 1;
      sub_1D1BAB1BC();
      v53 = v102;
      sub_1D1E68F1C();
      if (!v48)
      {
        LOBYTE(v105) = 0;
        sub_1D1BAB568(&qword_1EC6446F8, type metadata accessor for StaticService);
        sub_1D1E68F1C();
      }

      v54 = type metadata accessor for StaticService;
    }

    else
    {
      v55 = v98;
      if (swift_dynamicCast())
      {
        v56 = v55;
        v52 = v96;
        sub_1D1BAB154(v56, v96, type metadata accessor for StaticServiceGroup);
        LOBYTE(v105) = 2;
        v108 = 1;
        sub_1D1BAB1BC();
        v53 = v102;
        sub_1D1E68F1C();
        if (!v48)
        {
          LOBYTE(v105) = 0;
          sub_1D1BAB568(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup);
          sub_1D1E68F1C();
        }

        v54 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v57 = v95;
        if (swift_dynamicCast())
        {
          v58 = v57;
          v52 = v93;
          sub_1D1BAB154(v58, v93, type metadata accessor for StaticCameraProfile);
          LOBYTE(v105) = 3;
          v108 = 1;
          sub_1D1BAB1BC();
          v53 = v102;
          sub_1D1E68F1C();
          if (!v48)
          {
            LOBYTE(v105) = 0;
            sub_1D1BAB568(&qword_1EC64B9C8, type metadata accessor for StaticCameraProfile);
            sub_1D1E68F1C();
          }

          v54 = type metadata accessor for StaticCameraProfile;
        }

        else
        {
          v59 = v92;
          if (swift_dynamicCast())
          {
            v60 = v59;
            v52 = v90;
            sub_1D1BAB154(v60, v90, type metadata accessor for StaticActionSet);
            LOBYTE(v105) = 4;
            v108 = 1;
            sub_1D1BAB1BC();
            v53 = v102;
            sub_1D1E68F1C();
            if (!v48)
            {
              LOBYTE(v105) = 0;
              sub_1D1BAB568(&qword_1EC64C060, type metadata accessor for StaticActionSet);
              sub_1D1E68F1C();
            }

            v54 = type metadata accessor for StaticActionSet;
          }

          else
          {
            v61 = v89;
            if (swift_dynamicCast())
            {
              v62 = v61;
              v52 = v87;
              sub_1D1BAB154(v62, v87, type metadata accessor for StaticMediaSystem);
              LOBYTE(v105) = 5;
              v108 = 1;
              sub_1D1BAB1BC();
              v53 = v102;
              sub_1D1E68F1C();
              if (!v48)
              {
                LOBYTE(v105) = 0;
                sub_1D1BAB568(&qword_1EC64C058, type metadata accessor for StaticMediaSystem);
                sub_1D1E68F1C();
              }

              v54 = type metadata accessor for StaticMediaSystem;
            }

            else
            {
              v63 = v86;
              if (swift_dynamicCast())
              {
                v64 = v63;
                v52 = v84;
                sub_1D1BAB154(v64, v84, type metadata accessor for StaticMediaProfile);
                LOBYTE(v105) = 6;
                v108 = 1;
                sub_1D1BAB1BC();
                v53 = v102;
                sub_1D1E68F1C();
                if (!v48)
                {
                  LOBYTE(v105) = 0;
                  sub_1D1BAB568(&qword_1EC64C050, type metadata accessor for StaticMediaProfile);
                  sub_1D1E68F1C();
                }

                v54 = type metadata accessor for StaticMediaProfile;
              }

              else
              {
                v65 = v83;
                if (!swift_dynamicCast())
                {
                  v70 = sub_1D1E6890C();
                  swift_allocError();
                  v72 = v71;
                  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C038, &qword_1D1E9D8E8) + 48);
                  v74 = v45[5];
                  v75 = __swift_project_boxed_opaque_existential_1(v45 + 2, v74);
                  v72[3] = v74;
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
                  (*(*(v74 - 8) + 16))(boxed_opaque_existential_1, v75, v74);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C040, &qword_1D1E9D8F0);
                  v77 = swift_allocObject();
                  *(v77 + 16) = xmmword_1D1E739C0;
                  v78 = v81;
                  *(v77 + 56) = &type metadata for AnyTileInfoBearer.TileKeys;
                  *(v77 + 64) = v78;
                  *(v77 + 32) = 0;
                  v105 = 0;
                  v106 = 0xE000000000000000;
                  sub_1D1E6884C();
                  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC5F30);
                  v79 = v45[6];
                  __swift_project_boxed_opaque_existential_1(v45 + 2, v45[5]);
                  v80 = *(v79 + 16);
                  sub_1D1E6901C();
                  sub_1D1E688DC();
                  (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6B30], v70);
                  swift_willThrow();
                  v67 = *(v104 + 8);
                  v68 = v102;
                  goto LABEL_34;
                }

                v66 = v65;
                v52 = v82;
                sub_1D1BAB154(v66, v82, type metadata accessor for StaticMatterDevice);
                LOBYTE(v105) = 7;
                v108 = 1;
                sub_1D1BAB1BC();
                v53 = v102;
                sub_1D1E68F1C();
                if (!v48)
                {
                  LOBYTE(v105) = 0;
                  sub_1D1BAB568(&qword_1EC649210, type metadata accessor for StaticMatterDevice);
                  sub_1D1E68F1C();
                }

                v54 = type metadata accessor for StaticMatterDevice;
              }
            }
          }
        }
      }
    }

    sub_1D1BAB278(v52, v54);
    v67 = *(v104 + 8);
    v68 = v53;
LABEL_34:
    v67(v68, v49);
    return __swift_destroy_boxed_opaque_existential_1(v107);
  }

  v46 = v102;
  sub_1D1BAB154(v38, v102, type metadata accessor for StaticAccessory);
  LOBYTE(v105) = 0;
  v108 = 1;
  sub_1D1BAB1BC();
  v47 = v103;
  sub_1D1E68F1C();
  if (!v47)
  {
    LOBYTE(v105) = 0;
    sub_1D1BAB568(&qword_1EC644708, type metadata accessor for StaticAccessory);
    sub_1D1E68F1C();
  }

  sub_1D1BAB278(v46, type metadata accessor for StaticAccessory);
  (*(v104 + 8))(v42, v39);
  return __swift_destroy_boxed_opaque_existential_1(v107);
}

uint64_t AnyTileInfoBearer.unwrap<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D17419CC(*v2 + 16, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t AnyTileInfoBearer.id.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = *(v1 + 48);
  sub_1D1E6886C();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.name.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.dateAdded.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.tileIcon.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 72))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.foregroundColor.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.isDoubleHigh.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.primaryServiceKind.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.displayAsServiceKind.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.isFavorite.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 120))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.shouldShowInDashboard.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.roomIds.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 136))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.roomName.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 144))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.isActivated.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 152))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.isTransitioning.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 160))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.canBeToggled.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 168))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.isReachable.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 176))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.toggle()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA7EBC, 0, 0);
}

uint64_t sub_1D1BA7EBC()
{
  sub_1D17419CC(v0[8] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 200);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D1BA7FF8;
  v6 = v0[7];

  return v8(v6, v1, v2);
}

uint64_t sub_1D1BA7FF8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BA80F4, 0, 0);
}

uint64_t sub_1D1BA80F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnyTileInfoBearer.set(showInDashboard:)(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA817C, 0, 0);
}

uint64_t sub_1D1BA817C()
{
  sub_1D17419CC(*(v0 + 56) + 16, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v2 + 208);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1D1BA82B8;
  v6 = *(v0 + 80);

  return v8(v6, v1, v2);
}

uint64_t sub_1D1BA82B8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D1BACED0;
  }

  else
  {
    v3 = sub_1D1BACEE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t AnyTileInfoBearer.set(includeInStatus:)(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA83F4, 0, 0);
}

uint64_t sub_1D1BA83F4()
{
  sub_1D17419CC(*(v0 + 56) + 16, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v2 + 216);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1D1BA8530;
  v6 = *(v0 + 80);

  return v8(v6, v1, v2);
}

uint64_t sub_1D1BA8530()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D1BA86A8;
  }

  else
  {
    v3 = sub_1D1BA8644;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BA8644()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BA86A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t AnyTileInfoBearer.analyticsElementType.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_1D17419CC(*v1 + 16, v5);
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  TileInfoBearer.analyticsElementType.getter(v3, a1);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t AnyTileInfoBearer.statusString(with:)(uint64_t a1)
{
  sub_1D17419CC(*v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 184))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t AnyTileInfoBearer.statusString(with:associatedMatterDevice:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5 - 8];
  v7 = *v1;
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v8);
  sub_1D17419CC(v7 + 16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v10 = type metadata accessor for StaticMatterDevice();
  v11 = swift_dynamicCast();
  (*(*(v10 - 8) + 56))(v6, v11 ^ 1u, 1, v10);
  v12 = (*(v9 + 192))(a1, v6, v8, v9);
  sub_1D1BAB210(v6);
  return v12;
}

uint64_t AnyTileInfoBearer.hash(into:)()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = *(v1 + 40);
  sub_1D1E676EC();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA89F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17[-1] - v13;
  sub_1D17419CC(*v1 + 16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    sub_1D1BAB154(v14, v12, type metadata accessor for StaticAccessory);
    StaticAccessory.primaryStaticService.getter(a1);
    sub_1D1BAB278(v12, type metadata accessor for StaticAccessory);
  }

  else if (swift_dynamicCast())
  {
    sub_1D1BAB154(v7, a1, type metadata accessor for StaticService);
    (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(a1, 1, 1, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t AnyTileInfoBearer.itemClassName.getter()
{
  sub_1D17419CC(*v0 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return sub_1D1E6940C();
}

uint64_t AnyTileInfoBearer.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D17419CC(v1 + 16, v5);
  v2 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = *(v2 + 40);
  sub_1D1E676EC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA8D04()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA8D88()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA8E04()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 72))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA8E80()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA8EFC()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA8F78()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA8FF4()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA9070()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 120))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA90EC()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA9168()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 136))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA91E4()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 144))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA9268()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 152))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA92E4()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 160))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA9360()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 168))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA93DC()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 176))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA9458(uint64_t a1)
{
  sub_1D17419CC(*v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 184))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_1D1BA94E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5 - 8];
  v7 = *v1;
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v8);
  sub_1D17419CC(v7 + 16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v10 = type metadata accessor for StaticMatterDevice();
  v11 = swift_dynamicCast();
  (*(*(v10 - 8) + 56))(v6, v11 ^ 1u, 1, v10);
  v12 = (*(v9 + 192))(a1, v6, v8, v9);
  sub_1D1BAB210(v6);
  return v12;
}

uint64_t sub_1D1BA9644(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA9668, 0, 0);
}

uint64_t sub_1D1BA9668()
{
  sub_1D17419CC(v0[8] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 200);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D1BA97A4;
  v6 = v0[7];

  return v8(v6, v1, v2);
}

uint64_t sub_1D1BA97A4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BACEE8, 0, 0);
}

uint64_t sub_1D1BA98A0(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA817C, 0, 0);
}

uint64_t sub_1D1BA98C8(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA98F0, 0, 0);
}

uint64_t sub_1D1BA98F0()
{
  sub_1D17419CC(*(v0 + 56) + 16, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v2 + 216);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1D1BA82B8;
  v6 = *(v0 + 80);

  return v8(v6, v1, v2);
}

uint64_t sub_1D1BA9A2C()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = *(v1 + 48);
  sub_1D1E6886C();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA9A9C()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D17419CC(v1 + 16, v5);
  v2 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = *(v2 + 40);
  sub_1D1E676EC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA9B18()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = *(v1 + 40);
  sub_1D1E676EC();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA9B84()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D17419CC(v1 + 16, v5);
  v2 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = *(v2 + 40);
  sub_1D1E676EC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return sub_1D1E6926C();
}

unint64_t AnyTileInfoBearer.description.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1D1E6884C();

  v27 = 0xD000000000000018;
  v28 = 0x80000001D1EC5F50;
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v8 = *(v7 + 48);
  sub_1D1E6886C();
  sub_1D1BAB568(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v9 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v9);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  sub_1D17419CC((v6 + 2), v24);
  v10 = v25;
  v11 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v11 + 56))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v12 = sub_1D17C966C(16);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x1D3890F10](v12, v14, v16, v18);
  v21 = v20;

  MEMORY[0x1D3890F70](v19, v21);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return v27;
}

uint64_t AnyTileInfoBearer.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v101 = &v98 - v3;
  v4 = type metadata accessor for StatusStrings.Options();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v117 = v112;
  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC5F70);
  v98 = "AnyTileInfoBearer: room: ";
  v99 = ",\n    statusString: ";
  v100 = *v0;
  v14 = v100;
  sub_1D17419CC(v100 + 16, &v112);
  v15 = *(&v113 + 1);
  v16 = v114;
  __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
  v17 = (*(v16 + 144))(v15, v16);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1(&v112);
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0x6E776F6E6B6E75;
  }

  if (!v19)
  {
    v19 = 0xE700000000000000;
  }

  MEMORY[0x1D3890F70](v20, v19);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  v21 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  v22 = *(v21 + 48);
  sub_1D1E6886C();
  sub_1D1BAB568(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v23 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v23);

  (*(v10 + 8))(v13, v9);
  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  sub_1D17419CC((v14 + 2), &v112);
  v24 = *(&v113 + 1);
  v25 = v114;
  __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
  v26 = (*(v25 + 56))(v24, v25);
  v28 = v27;
  __swift_destroy_boxed_opaque_existential_1(&v112);
  MEMORY[0x1D3890F70](v26, v28);

  MEMORY[0x1D3890F70](0xD000000000000014, v98 | 0x8000000000000000);
  v29 = v5[13];
  v30 = sub_1D1E669FC();
  (*(*(v30 - 8) + 56))(&v8[v29], 1, 1, v30);
  *v8 = 65793;
  *(v8 + 2) = 1;
  v8[6] = 0;
  v8[v5[14]] = 2;
  v31 = &v8[v5[15]];
  v31[4] = 0;
  *v31 = 2;
  v32 = v14[5];
  v33 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v32);
  sub_1D17419CC((v14 + 2), &v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v34 = type metadata accessor for StaticMatterDevice();
  v35 = v101;
  v36 = swift_dynamicCast();
  (*(*(v34 - 8) + 56))(v35, v36 ^ 1u, 1, v34);
  v37 = (*(v33 + 192))(v8, v35, v32, v33);
  v39 = v38;
  sub_1D1BAB278(v8, type metadata accessor for StatusStrings.Options);
  sub_1D1BAB210(v35);
  if (v39)
  {
    v40 = v37;
  }

  else
  {
    v40 = 7104878;
  }

  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v40, v41);

  MEMORY[0x1D3890F70](0xD000000000000016, v99 | 0x8000000000000000);
  v112 = v100;
  v42 = AnyTileInfoBearer.description.getter();
  MEMORY[0x1D3890F70](v42);

  v101 = 0xD000000000000010;
  MEMORY[0x1D3890F70]();
  sub_1D17419CC((v14 + 2), &v112);
  v43 = *(&v113 + 1);
  v44 = v114;
  __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
  (*(v44 + 72))(&v107, v43, v44);
  __swift_destroy_boxed_opaque_existential_1(&v112);
  v114 = v109;
  v115 = v110;
  v116[0] = v111[0];
  *(v116 + 9) = *(v111 + 9);
  v112 = v107;
  v113 = v108;
  v104 = v109;
  v105 = v110;
  v106[0] = v111[0];
  *(v106 + 9) = *(v111 + 9);
  v102 = v107;
  v103 = v108;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v112);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  sub_1D17419CC((v14 + 2), &v107);
  v45 = *(&v108 + 1);
  v46 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v47 = (*(v46 + 88))(v45, v46);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  if (v47)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v48, v49);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  sub_1D17419CC((v14 + 2), &v107);
  v50 = *(&v108 + 1);
  v51 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v52 = (*(v51 + 176))(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  if (v52)
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (v52)
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v53, v54);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  sub_1D17419CC((v14 + 2), &v107);
  v55 = *(&v108 + 1);
  v56 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v57 = (*(v56 + 96))(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v58 = *(v57 + 16);
  if (v58)
  {
    *&v107 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v58, 0);
    v59 = 32;
    v60 = v107;
    do
    {
      LOBYTE(v102) = *(v57 + v59);
      v61 = ServiceKind.localizedDescription.getter();
      *&v107 = v60;
      v64 = *(v60 + 16);
      v63 = *(v60 + 24);
      if (v64 >= v63 >> 1)
      {
        *&v100 = v61;
        v66 = v62;
        sub_1D178CD24((v63 > 1), v64 + 1, 1);
        v62 = v66;
        v61 = v100;
        v60 = v107;
      }

      *(v60 + 16) = v64 + 1;
      v65 = v60 + 16 * v64;
      *(v65 + 32) = v61;
      *(v65 + 40) = v62;
      ++v59;
      --v58;
    }

    while (v58);
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
  }

  *&v107 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v67 = sub_1D1E6770C();
  v69 = v68;

  MEMORY[0x1D3890F70](v67, v69);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  sub_1D17419CC((v14 + 2), &v107);
  v70 = *(&v108 + 1);
  v71 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v72 = (*(v71 + 136))(v70, v71);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v73 = sub_1D1BA4314(v72);

  *&v107 = v73;
  v74 = sub_1D1E6770C();
  v76 = v75;

  MEMORY[0x1D3890F70](v74, v76);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  sub_1D17419CC((v14 + 2), &v107);
  v77 = *(&v108 + 1);
  v78 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v79 = (*(v78 + 120))(v77, v78);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  if (v79)
  {
    v80 = 1702195828;
  }

  else
  {
    v80 = 0x65736C6166;
  }

  if (v79)
  {
    v81 = 0xE400000000000000;
  }

  else
  {
    v81 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v80, v81);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  sub_1D17419CC((v14 + 2), &v107);
  v82 = *(&v108 + 1);
  v83 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v84 = (*(v83 + 128))(v82, v83);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  if (v84)
  {
    v85 = 1702195828;
  }

  else
  {
    v85 = 0x65736C6166;
  }

  if (v84)
  {
    v86 = 0xE400000000000000;
  }

  else
  {
    v86 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v85, v86);

  MEMORY[0x1D3890F70](v101, 0x80000001D1EC6070);
  sub_1D17419CC((v14 + 2), &v107);
  v87 = *(&v108 + 1);
  v88 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v89 = (*(v88 + 168))(v87, v88);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  if (v89)
  {
    v90 = 1702195828;
  }

  else
  {
    v90 = 0x65736C6166;
  }

  if (v89)
  {
    v91 = 0xE400000000000000;
  }

  else
  {
    v91 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v90, v91);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  sub_1D17419CC((v14 + 2), &v107);
  v92 = *(&v108 + 1);
  v93 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v94 = (*(v93 + 152))(v92, v93);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  if (v94)
  {
    v95 = 1702195828;
  }

  else
  {
    v95 = 0x65736C6166;
  }

  if (v94)
  {
    v96 = 0xE400000000000000;
  }

  else
  {
    v96 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v95, v96);

  return v117;
}

uint64_t sub_1D1BAAAD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1D17419CC(*v2 + 16, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v5 = a1(0);
  v6 = swift_dynamicCast();
  return (*(*(v5 - 8) + 56))(a2, v6 ^ 1u, 1, v5);
}

uint64_t AnyTileInfoBearer.deepLinkURL(with:isForWidget:requiresHomeMembership:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v10 = *(*v1 + 40);
  v9 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((v8 + 16), v10);
  v11 = *(v9 + 48);
  sub_1D1E6886C();
  v12 = sub_1D1E66A1C();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  v22 = 0;
  v23 = 0xE000000000000000;
  MEMORY[0x1D3890F70](47, 0xE100000000000000);
  v26 = 1;
  sub_1D1E68ABC();
  v15 = v22;
  v16 = v23;
  v22 = v12;
  v23 = v14;

  MEMORY[0x1D3890F70](v15, v16);

  v17 = v22;
  v18 = v23;
  v22 = 0x726F737365636361;
  v23 = 0xE900000000000079;
  v24 = v17;
  v25 = v18;
  DeepLinkURLGenerator.generateDeepLink()(a1);

  v19 = sub_1D1E6680C();
  return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
}

uint64_t _s13HomeDataModel17AnyTileInfoBearerV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  if (a1[1] == a2[1])
  {
    v13 = *a2;
    v14 = *a1;
    v16 = *(*a1 + 40);
    v15 = *(*a1 + 48);
    __swift_project_boxed_opaque_existential_1((v14 + 16), v16);
    v17 = *(v15 + 48);
    sub_1D1E6886C();
    v18 = v13[6];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
    v19 = *(v18 + 48);
    sub_1D1E6886C();
    v12 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v20 = *(v5 + 8);
    v20(v9, v4);
    v20(v11, v4);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t *sub_1D1BAAF38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  (*(v4 + 16))(&v11 - v6);
  v8 = *(v2 + 104);
  v1[5] = v3;
  v1[6] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v4 + 32))(boxed_opaque_existential_1, v7, v3);
  return v1;
}

unint64_t sub_1D1BAB044()
{
  result = qword_1EC64BFA8;
  if (!qword_1EC64BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BFA8);
  }

  return result;
}

unint64_t sub_1D1BAB098()
{
  result = qword_1EC64BFB0;
  if (!qword_1EC64BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BFB0);
  }

  return result;
}

uint64_t sub_1D1BAB0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BAB154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1BAB1BC()
{
  result = qword_1EC64C048;
  if (!qword_1EC64C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C048);
  }

  return result;
}

uint64_t sub_1D1BAB210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1BAB278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1BAB2D8(void *a1)
{
  a1[1] = sub_1D1BAB328();
  a1[2] = sub_1D1BAB37C();
  a1[3] = sub_1D1BAB3D0();
  a1[4] = sub_1D1BAB424();
  a1[5] = sub_1D1BAB478();
  result = sub_1D1BAB4CC();
  a1[6] = result;
  return result;
}

unint64_t sub_1D1BAB328()
{
  result = qword_1EC64C068;
  if (!qword_1EC64C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C068);
  }

  return result;
}

unint64_t sub_1D1BAB37C()
{
  result = qword_1EC64C070;
  if (!qword_1EC64C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C070);
  }

  return result;
}

unint64_t sub_1D1BAB3D0()
{
  result = qword_1EC64C078;
  if (!qword_1EC64C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C078);
  }

  return result;
}

unint64_t sub_1D1BAB424()
{
  result = qword_1EC64C080;
  if (!qword_1EC64C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C080);
  }

  return result;
}

unint64_t sub_1D1BAB478()
{
  result = qword_1EC64C088;
  if (!qword_1EC64C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C088);
  }

  return result;
}

unint64_t sub_1D1BAB4CC()
{
  result = qword_1EC64C090;
  if (!qword_1EC64C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C090);
  }

  return result;
}

uint64_t sub_1D1BAB568(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1BAB5B4()
{
  result = qword_1EC64C098[0];
  if (!qword_1EC64C098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64C098);
  }

  return result;
}

unint64_t sub_1D1BAB6B0()
{
  result = qword_1EC64C120;
  if (!qword_1EC64C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C120);
  }

  return result;
}

unint64_t sub_1D1BAB708()
{
  result = qword_1EC64C128;
  if (!qword_1EC64C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C128);
  }

  return result;
}

unint64_t sub_1D1BAB760()
{
  result = qword_1EC64C130;
  if (!qword_1EC64C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C130);
  }

  return result;
}

unint64_t sub_1D1BAB7B8()
{
  result = qword_1EC64C138;
  if (!qword_1EC64C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C138);
  }

  return result;
}

uint64_t sub_1D1BAB80C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4765636976726573 && a2 == 0xEC00000070756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72506172656D6163 && a2 == 0xED0000656C69666FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xE900000000000074 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737953616964656DLL && a2 == 0xEB000000006D6574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F7250616964656DLL && a2 == 0xEC000000656C6966 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x634172657474616DLL && a2 == 0xEF79726F73736563)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D1BABACC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C140, &qword_1D1E9DD00);
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v76 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C148, &qword_1D1E9DD08);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C150, &qword_1D1E9DD10);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v79 = v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C158, &qword_1D1E9DD18);
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v78 = v57 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C160, &qword_1D1E9DD20);
  v65 = *(v66 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v77 = v57 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C168, &qword_1D1E9DD28);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v75 = v57 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C170, &qword_1D1E9DD30);
  v61 = *(v62 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v21 = v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C178, &qword_1D1E9DD38);
  v60 = *(v22 - 8);
  v23 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C180, &unk_1D1E9DD40);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v57 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D1BAC4C4();
  v33 = v81;
  sub_1D1E692FC();
  if (!v33)
  {
    v58 = v25;
    v57[1] = v22;
    v59 = v21;
    v35 = v77;
    v34 = v78;
    v36 = v79;
    v37 = v80;
    v81 = v27;
    v38 = sub_1D1E68DDC();
    v39 = (2 * *(v38 + 16)) | 1;
    v83 = v38;
    v84 = v38 + 32;
    v85 = 0;
    v86 = v39;
    v40 = sub_1D18085D4();
    v41 = v30;
    if (v40 != 8 && v85 == v86 >> 1)
    {
      v27 = v40;
      if (v40 > 3u)
      {
        if (v40 > 5u)
        {
          v53 = v81;
          if (v40 == 6)
          {
            v88 = 6;
            sub_1D1BAC56C();
            sub_1D1E68C4C();
            (*(v71 + 8))(v37, v72);
          }

          else
          {
            v88 = 7;
            sub_1D1BAC518();
            v56 = v76;
            sub_1D1E68C4C();
            (*(v73 + 8))(v56, v74);
          }

          (*(v53 + 8))(v41, v26);
          goto LABEL_27;
        }

        v42 = v81;
        if (v40 == 4)
        {
          v88 = 4;
          sub_1D1BAC614();
          sub_1D1E68C4C();
          (*(v68 + 8))(v34, v67);
LABEL_25:
          (*(v42 + 8))(v41, v26);
LABEL_27:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v82);
          return v27;
        }

        v88 = 5;
        sub_1D1BAC5C0();
        sub_1D1E68C4C();
        v55 = v70;
        v44 = *(v69 + 8);
        v45 = v36;
      }

      else
      {
        if (v40 > 1u)
        {
          if (v40 == 2)
          {
            v88 = 2;
            sub_1D1BAC6BC();
            v52 = v75;
            sub_1D1E68C4C();
            (*(v63 + 8))(v52, v64);
          }

          else
          {
            v88 = 3;
            sub_1D1BAC668();
            sub_1D1E68C4C();
            (*(v65 + 8))(v35, v66);
          }

          v42 = v81;
          goto LABEL_25;
        }

        v42 = v81;
        if (v40)
        {
          v88 = 1;
          sub_1D1BAC710();
          v54 = v59;
          sub_1D1E68C4C();
          v44 = *(v61 + 8);
          v45 = v54;
          v46 = &v89;
        }

        else
        {
          v88 = 0;
          sub_1D1BAC764();
          v43 = v58;
          sub_1D1E68C4C();
          v44 = *(v60 + 8);
          v45 = v43;
          v46 = &v87;
        }

        v55 = *(v46 - 32);
      }

      v44(v45, v55);
      goto LABEL_25;
    }

    v47 = v26;
    v48 = sub_1D1E688EC();
    swift_allocError();
    v50 = v49;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v50 = &type metadata for AnyTileInfoBearer.TileInfoTypes;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    (*(v81 + 8))(v41, v47);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v82);
  return v27;
}

unint64_t sub_1D1BAC4C4()
{
  result = qword_1EC64C188;
  if (!qword_1EC64C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C188);
  }

  return result;
}

unint64_t sub_1D1BAC518()
{
  result = qword_1EC64C190;
  if (!qword_1EC64C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C190);
  }

  return result;
}

unint64_t sub_1D1BAC56C()
{
  result = qword_1EC64C198;
  if (!qword_1EC64C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C198);
  }

  return result;
}

unint64_t sub_1D1BAC5C0()
{
  result = qword_1EC64C1A0;
  if (!qword_1EC64C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1A0);
  }

  return result;
}

unint64_t sub_1D1BAC614()
{
  result = qword_1EC64C1A8;
  if (!qword_1EC64C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1A8);
  }

  return result;
}

unint64_t sub_1D1BAC668()
{
  result = qword_1EC64C1B0;
  if (!qword_1EC64C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1B0);
  }

  return result;
}

unint64_t sub_1D1BAC6BC()
{
  result = qword_1EC64C1B8;
  if (!qword_1EC64C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1B8);
  }

  return result;
}

unint64_t sub_1D1BAC710()
{
  result = qword_1EC64C1C0;
  if (!qword_1EC64C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1C0);
  }

  return result;
}

unint64_t sub_1D1BAC764()
{
  result = qword_1EC64C1C8;
  if (!qword_1EC64C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1C8);
  }

  return result;
}

unint64_t sub_1D1BAC84C()
{
  result = qword_1EC64C218;
  if (!qword_1EC64C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C218);
  }

  return result;
}

unint64_t sub_1D1BAC8A4()
{
  result = qword_1EC64C220;
  if (!qword_1EC64C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C220);
  }

  return result;
}

unint64_t sub_1D1BAC8FC()
{
  result = qword_1EC64C228;
  if (!qword_1EC64C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C228);
  }

  return result;
}

unint64_t sub_1D1BAC954()
{
  result = qword_1EC64C230;
  if (!qword_1EC64C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C230);
  }

  return result;
}

unint64_t sub_1D1BAC9AC()
{
  result = qword_1EC64C238;
  if (!qword_1EC64C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C238);
  }

  return result;
}

unint64_t sub_1D1BACA04()
{
  result = qword_1EC64C240;
  if (!qword_1EC64C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C240);
  }

  return result;
}

unint64_t sub_1D1BACA5C()
{
  result = qword_1EC64C248;
  if (!qword_1EC64C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C248);
  }

  return result;
}

unint64_t sub_1D1BACAB4()
{
  result = qword_1EC64C250;
  if (!qword_1EC64C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C250);
  }

  return result;
}

unint64_t sub_1D1BACB0C()
{
  result = qword_1EC64C258;
  if (!qword_1EC64C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C258);
  }

  return result;
}

unint64_t sub_1D1BACB64()
{
  result = qword_1EC64C260;
  if (!qword_1EC64C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C260);
  }

  return result;
}

unint64_t sub_1D1BACBBC()
{
  result = qword_1EC64C268;
  if (!qword_1EC64C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C268);
  }

  return result;
}

unint64_t sub_1D1BACC14()
{
  result = qword_1EC64C270;
  if (!qword_1EC64C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C270);
  }

  return result;
}

unint64_t sub_1D1BACC6C()
{
  result = qword_1EC64C278;
  if (!qword_1EC64C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C278);
  }

  return result;
}

unint64_t sub_1D1BACCC4()
{
  result = qword_1EC64C280;
  if (!qword_1EC64C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C280);
  }

  return result;
}

unint64_t sub_1D1BACD1C()
{
  result = qword_1EC64C288;
  if (!qword_1EC64C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C288);
  }

  return result;
}

unint64_t sub_1D1BACD74()
{
  result = qword_1EC64C290;
  if (!qword_1EC64C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C290);
  }

  return result;
}

unint64_t sub_1D1BACDCC()
{
  result = qword_1EC64C298;
  if (!qword_1EC64C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C298);
  }

  return result;
}

unint64_t sub_1D1BACE24()
{
  result = qword_1EC64C2A0;
  if (!qword_1EC64C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C2A0);
  }

  return result;
}

unint64_t sub_1D1BACE7C()
{
  result = qword_1EC64C2A8;
  if (!qword_1EC64C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C2A8);
  }

  return result;
}

void sub_1D1BACEEC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78);
    sub_1D1BCBD88();
    sub_1D1E681BC();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D1E6877C() || (sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78), swift_dynamicCast(), v13 = v23, v4 = v9, v5 = v10, !v23))
      {
LABEL_24:
        sub_1D1716918();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    SymptomError.init(from:)([v13 type], &v23);

    v14 = v23;
    v9 = v4;
    v10 = v5;
    if (v23 != 24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D177F964(0, *(v17 + 2) + 1, 1, v17);
      }

      v16 = *(v17 + 2);
      v15 = *(v17 + 3);
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1D177F964((v15 > 1), v16 + 1, 1, v17);
      }

      *(v17 + 2) = v16 + 1;
      v17[v16 + 32] = v14;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t StaticAccessory.accessory.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9A43C, 0, 0);
}

uint64_t StaticAccessory.primaryStaticService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v12 + 88), v6, &qword_1EC642590, qword_1D1E71260);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v13 = *(v1 + *(v12 + 80));
    if (*(v13 + 16))
    {

      v14 = sub_1D1742188(v11);
      if (v15)
      {
        v16 = v14;
        v17 = *(v13 + 56);
        v18 = type metadata accessor for StaticService(0);
        v19 = *(v18 - 8);
        sub_1D1BC8E68(v17 + *(v19 + 72) * v16, a1, type metadata accessor for StaticService);
        (*(v8 + 8))(v11, v7);

        return (*(v19 + 56))(a1, 0, 1, v18);
      }
    }

    (*(v8 + 8))(v11, v7);
  }

  v21 = type metadata accessor for StaticService(0);
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

uint64_t StaticAccessory.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_1D1BAD5AC;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAD5AC(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAD6AC, 0, 0);
}

uint64_t sub_1D1BAD6AC()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[19];
    v4 = sub_1D1E677EC();
    v0[22] = v4;
    v0[2] = v0;
    v0[3] = sub_1D1BAD83C;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_48;
    v0[14] = v5;
    [v1 updateName:v4 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1BAD83C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1D1BADB48;
  }

  else
  {
    v3 = sub_1D1BAD94C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BAD94C()
{
  sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BAD9E8, v2, v1);
}

uint64_t sub_1D1BAD9E8()
{
  v1 = v0[24];
  v2 = v0[21];

  sub_1D18B4A8C(v2);
  v0[25] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BADA80, 0, 0);
}

uint64_t sub_1D1BADA80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BADAE4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BADB48()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

uint64_t StaticAccessory.set(staticRoom:)()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BADC64;

  return StaticRoom.room.getter();
}

uint64_t sub_1D1BADC64(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BADD64, 0, 0);
}

uint64_t sub_1D1BADD64()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1D1BADE64;
    v3 = v0[2];

    return StaticAccessory.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1BADE64()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1D1BADFDC;
  }

  else
  {
    v3 = sub_1D1BADF78;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BADF78()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BADFDC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t StaticAccessory.set(room:)(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BAE0D0;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAE0D0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE1D0, 0, 0);
}

uint64_t sub_1D1BAE1D0()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) home];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 144);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1BAE38C;
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_10_0;
      *(v0 + 112) = v5;
      [v3 assignAccessory:v1 toRoom:v4 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }
  }

  sub_1D1820D0C();
  swift_allocError();
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1BAE38C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1D1BAE6A0;
  }

  else
  {
    v3 = sub_1D1BAE49C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BAE49C()
{
  sub_1D1E67E1C();
  *(v0 + 184) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE530, v2, v1);
}

uint64_t sub_1D1BAE530()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];

  sub_1D18B4DB8(v2, v3);
  v0[24] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE5D0, 0, 0);
}

uint64_t sub_1D1BAE5D0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BAE638()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 192);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1BAE6A0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[22];
  v5 = v0[1];

  return v5();
}

uint64_t StaticAccessory.set(showInDashboard:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BAE7A8;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAE7A8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE8A8, 0, 0);
}

uint64_t sub_1D1BAE8A8()
{
  if (*(v0 + 24))
  {
    HMAccessory.shouldShowInDashboard.setter(*(v0 + 48));
    sub_1D1E67E1C();
    *(v0 + 32) = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BAE9B0, v2, v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1BAE9B0()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_1D18B50F8(v2);
  v0[5] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BCBE60, 0, 0);
}

uint64_t StaticAccessory.set(favorite:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BAEAD4;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAEAD4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAEBD4, 0, 0);
}

uint64_t sub_1D1BAEBD4()
{
  if (*(v0 + 24))
  {
    HMAccessory.isFavorite.setter(*(v0 + 48));
    sub_1D1E67E1C();
    *(v0 + 32) = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BAE9B0, v2, v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

void *StaticAccessory.staticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 84));
  v4 = v0;
  return sub_1D17868B8(sub_1D1820ECC, &v3, v1);
}

uint64_t StaticAccessory.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BAEE68, 0, 0);
}

uint64_t sub_1D1BAEE68()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v4 + *(v5 + 88), v3, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[9];
    sub_1D1741A30(v0[5], &qword_1EC642590, qword_1D1E71260);
    v7 = type metadata accessor for StaticService(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[9];
LABEL_10:
    sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[5];

    v24 = v0[1];

    return v24();
  }

  v9 = v0[4];
  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v10 = *(v9 + *(v5 + 80));
  if (*(v10 + 16))
  {
    v11 = v0[8];

    v12 = sub_1D1742188(v11);
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    if (v17)
    {
      v18 = v12;
      v28 = *(v10 + 56);
      v19 = type metadata accessor for StaticService(0);
      v20 = *(v19 - 8);
      sub_1D1BC8E68(v28 + *(v20 + 72) * v18, v13, type metadata accessor for StaticService);
      (*(v16 + 8))(v14, v15);

      (*(v20 + 56))(v13, 0, 1, v19);
      goto LABEL_9;
    }

    (*(v16 + 8))(v14, v15);
  }

  else
  {
    v13 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);
  }

  v19 = type metadata accessor for StaticService(0);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
LABEL_9:
  v8 = v0[9];
  type metadata accessor for StaticService(0);
  if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
  {
    goto LABEL_10;
  }

  v26 = swift_task_alloc();
  v0[10] = v26;
  *v26 = v0;
  v26[1] = sub_1D1BAF224;
  v27 = v0[9];

  return StaticService.service.getter();
}

uint64_t sub_1D1BAF224(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAF324, 0, 0);
}

uint64_t sub_1D1BAF324()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];

    v4 = v1;
    HMService.customIconSFSymbol.setter(v2, v3);
  }

  sub_1D1BC9194(v0[9], type metadata accessor for StaticService);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t StaticAccessory.SpecialMediaCategory.isAppleTVOrHomePod.getter()
{
  v1 = *(v0 + 8);
  v3 = v1 == 3 && *v0 == 1;
  if (v1 == 2)
  {
    v3 = (*v0 >> 8) & 1;
  }

  return v1 == 1 || v3;
}

uint64_t StaticAccessory.SpecialMediaCategory.includeInSpeakersAndTelevisions.getter()
{
  if (!*(v0 + 8))
  {
    return 0;
  }

  if (*(v0 + 8) == 2)
  {
    return *(v0 + 1) & 1;
  }

  return 1;
}

uint64_t StaticAccessory.primaryServiceKind.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v16 + 88), v6, &qword_1EC642590, qword_1D1E71260);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    v17 = type metadata accessor for StaticService(0);
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    goto LABEL_9;
  }

  (*(v8 + 32))(v11, v6, v7);
  v18 = *(v1 + *(v16 + 80));
  if (*(v18 + 16))
  {
    v19 = *(v1 + *(v16 + 80));

    v20 = sub_1D1742188(v11);
    if (v21)
    {
      v22 = v20;
      v23 = *(v18 + 56);
      v24 = type metadata accessor for StaticService(0);
      v25 = *(v24 - 8);
      v30 = a1;
      v26 = v25;
      sub_1D1BC8E68(v23 + *(v25 + 72) * v22, v15, type metadata accessor for StaticService);
      (*(v8 + 8))(v11, v7);

      (*(v26 + 56))(v15, 0, 1, v24);
      a1 = v30;
      goto LABEL_8;
    }
  }

  (*(v8 + 8))(v11, v7);
  v24 = type metadata accessor for StaticService(0);
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
LABEL_8:
  type metadata accessor for StaticService(0);
  if ((*(*(v24 - 8) + 48))(v15, 1, v24) != 1)
  {
    v28 = v15[*(v24 + 104)];
    result = sub_1D1BC9194(v15, type metadata accessor for StaticService);
    goto LABEL_11;
  }

LABEL_9:
  result = sub_1D1741A30(v15, &qword_1EC6436F0, &qword_1D1E99BC0);
  v28 = 0;
LABEL_11:
  *a1 = v28;
  return result;
}

uint64_t StaticAccessory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticAccessory.lastSeenBatteryStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticAccessory(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t StaticAccessory.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticAccessory.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticAccessory(0) + 48);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticAccessory.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 52));
}

uint64_t StaticAccessory.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticAccessory.staticServicesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 80));
}

uint64_t StaticAccessory.staticServiceIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 84));
}

uint64_t StaticAccessory.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticAccessory(0) + 92);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D18EB144(v4, v5);
}

uint64_t StaticAccessory.accessoryCategory.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 96));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticAccessory.bridgedAccessoryIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 100));
}

uint64_t StaticAccessory.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticAccessory(0);
  *a1 = *(v1 + *(result + 128));
  return result;
}

uint64_t StaticAccessory.symptoms.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 132));
}

uint64_t StaticAccessory.matterNodeID.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 144));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StaticAccessory.matterDevice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StaticAccessory(0) + 152);

  return sub_1D1BC8EF0(a1, v3);
}

unint64_t sub_1D1BB0070(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6565537473616CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
    case 17:
    case 18:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x654D656369766564;
      break;
    case 6:
      result = 0x6564644165746164;
      break;
    case 7:
      result = 0x656C62756F447369;
      break;
    case 8:
      result = 0x6449656D6F68;
      break;
    case 9:
      result = 0x7364496D6F6F72;
      break;
    case 10:
      result = 0x656D614E6D6F6F72;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x69726F7661467369;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
    case 33:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 19:
    case 31:
      result = 0xD000000000000014;
      break;
    case 20:
    case 23:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0x72427341776F6873;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0x537265776F507369;
      break;
    case 26:
      result = 0x6572617774666F73;
      break;
    case 27:
      result = 0x6168636165527369;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    case 29:
      result = 0x736D6F74706D7973;
      break;
    case 30:
      result = 0x7374726F70707573;
      break;
    case 32:
      result = 0x6F4E72657474616DLL;
      break;
    case 34:
      result = 0x654472657474616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1BB041C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1BCAFC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1BB0450(uint64_t a1)
{
  v2 = sub_1D1BC8F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB048C(uint64_t a1)
{
  v2 = sub_1D1BC8F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAccessory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C310, &unk_1D1E9E540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BC8F60();
  sub_1D1E6930C();
  LOBYTE(v52) = 0;
  sub_1D1E66A7C();
  sub_1D1BC8FB4(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v51 = v6;
  v49 = type metadata accessor for StaticAccessory(0);
  v12 = v49[5];
  LOBYTE(v52) = 1;
  sub_1D1E669FC();
  sub_1D1BC8FB4(&qword_1EC642EC8, MEMORY[0x1E6969530]);
  v50 = v3;
  sub_1D1E68E5C();
  v13 = v49;
  LOBYTE(v52) = *(v50 + v49[6]);
  v54 = 2;
  sub_1D1BC8FFC();
  sub_1D1E68E5C();
  v14 = (v50 + v13[7]);
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v52) = 3;
  sub_1D1E68ECC();
  v48 = v13[8];
  LOBYTE(v52) = 4;
  type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  sub_1D1BC8FB4(&qword_1EC64C328, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1E68F1C();
  v48 = v13[9];
  LOBYTE(v52) = 5;
  type metadata accessor for StaticDeviceMetadata();
  sub_1D1BC8FB4(&qword_1EC644648, type metadata accessor for StaticDeviceMetadata);
  sub_1D1E68E5C();
  v17 = v13[10];
  LOBYTE(v52) = 6;
  sub_1D1E68E5C();
  v18 = v50;
  v19 = *(v50 + v13[11]);
  LOBYTE(v52) = 7;
  sub_1D1E68EDC();
  v20 = v13[12];
  LOBYTE(v52) = 8;
  sub_1D1E68F1C();
  v52 = *(v18 + v13[13]);
  v54 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1BC92B0(&qword_1EC646B10, &qword_1EE07B258);
  sub_1D1E68F1C();
  v21 = (v18 + v13[14]);
  v22 = *v21;
  v23 = v21[1];
  LOBYTE(v52) = 10;
  sub_1D1E68E0C();
  v24 = *(v50 + v49[15]);
  LOBYTE(v52) = 11;
  sub_1D1E68EDC();
  v25 = *(v50 + v49[16]);
  LOBYTE(v52) = 12;
  sub_1D1E68EDC();
  v26 = *(v50 + v49[17]);
  LOBYTE(v52) = 13;
  sub_1D1E68EDC();
  v27 = *(v50 + v49[18]);
  LOBYTE(v52) = 14;
  sub_1D1E68EDC();
  v28 = *(v50 + v49[19]);
  LOBYTE(v52) = 15;
  sub_1D1E68EDC();
  v52 = *(v50 + v49[20]);
  v54 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  sub_1D1B43D98();
  sub_1D1E68F1C();
  v52 = *(v50 + v49[21]);
  v54 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  sub_1D1BC9050(&qword_1EC644D58, &qword_1EE07B258);
  sub_1D1E68F1C();
  v29 = v49[22];
  LOBYTE(v52) = 18;
  sub_1D1E68E5C();
  v30 = v50 + v49[23];
  v31 = *(v30 + 8);
  v52 = *v30;
  v53 = v31;
  v54 = 19;
  sub_1D18EB144(v52, v31);
  sub_1D18F1630();
  sub_1D1E68E5C();
  sub_1D18EB2D8(v52, v53);
  v32 = (v50 + v49[24]);
  v33 = *v32;
  v34 = v32[1];
  LOBYTE(v52) = 20;
  sub_1D1E68E0C();
  v52 = *(v50 + v49[25]);
  v54 = 21;
  sub_1D1E68E5C();
  v35 = *(v50 + v49[26]);
  LOBYTE(v52) = 22;
  sub_1D1E68EDC();
  v36 = *(v50 + v49[27]);
  LOBYTE(v52) = 23;
  sub_1D1E68EDC();
  v37 = *(v50 + v49[28]);
  LOBYTE(v52) = 24;
  sub_1D1E68EDC();
  v38 = *(v50 + v49[29]);
  LOBYTE(v52) = 25;
  sub_1D1E68EDC();
  v39 = v49[30];
  LOBYTE(v52) = 26;
  type metadata accessor for StaticSoftwareUpdate(0);
  sub_1D1BC8FB4(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate);
  sub_1D1E68E5C();
  v40 = *(v50 + v49[31]);
  LOBYTE(v52) = 27;
  sub_1D1E68EDC();
  LOBYTE(v52) = *(v50 + v49[32]);
  v54 = 28;
  sub_1D1BC90EC();
  sub_1D1E68F1C();
  v52 = *(v50 + v49[33]);
  v54 = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
  sub_1D1BC93A0(&qword_1EC64C348, sub_1D1BC9140);
  sub_1D1E68E5C();
  v41 = *(v50 + v49[34]);
  LOBYTE(v52) = 30;
  sub_1D1E68EDC();
  v42 = *(v50 + v49[35]);
  LOBYTE(v52) = 31;
  sub_1D1E68EDC();
  v43 = (v50 + v49[36]);
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v52) = 32;
  sub_1D1E68EBC();
  v46 = *(v50 + v49[37]);
  LOBYTE(v52) = 33;
  sub_1D1E68EDC();
  v47 = v49[38];
  LOBYTE(v52) = 34;
  type metadata accessor for StaticMatterDevice();
  sub_1D1BC8FB4(&qword_1EC649210, type metadata accessor for StaticMatterDevice);
  sub_1D1E68E5C();
  return (*(v51 + 8))(v9, v5);
}

uint64_t StaticAccessory.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMatterDevice();
  v142 = *(v4 - 8);
  v143 = v4;
  v5 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v141 = &v123 - v9;
  v10 = type metadata accessor for StaticSoftwareUpdate(0);
  v139 = *(v10 - 8);
  v140 = v10;
  v11 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v138 = &v123 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v137 = &v123 - v18;
  v19 = type metadata accessor for StaticDeviceMetadata();
  v134 = *(v19 - 8);
  v135 = v19;
  v20 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v132 = &v123 - v24;
  v25 = sub_1D1E66A7C();
  v146 = *(v25 - 8);
  v26 = *(v146 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v149 = &v123 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v144 = &v123 - v32;
  v128 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v33 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v35 = (&v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1D1E669FC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v131 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v123 - v45;
  v147 = sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v148 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + v148[5], v46, &qword_1EC642570, &qword_1D1E6C6A0);
  v47 = *(v37 + 48);
  v130 = v37 + 48;
  v129 = v47;
  v48 = v47(v46, 1, v36);
  v127 = v29;
  v136 = v36;
  v133 = v40;
  if (v48 == 1)
  {
    v49 = v37;
    sub_1D1E6922C();
  }

  else
  {
    (*(v37 + 32))(v40, v46, v36);
    sub_1D1E6922C();
    sub_1D1BC8FB4(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    v49 = v37;
    (*(v37 + 8))(v40, v36);
  }

  v50 = v148;
  v51 = v144;
  if (*(v1 + v148[6]) == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  v52 = v49;
  v53 = (v1 + v50[7]);
  v54 = *v53;
  v55 = v53[1];
  sub_1D1E678EC();
  sub_1D1BC8E68(v1 + v50[8], v35, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = v146;
    (*(v146 + 32))(v51, v35, v25);
    MEMORY[0x1D3892850](1);
    sub_1D1E676EC();
    (*(v56 + 8))(v51, v25);
  }

  else
  {
    v58 = *v35;
    v57 = v35[1];
    MEMORY[0x1D3892850](0);
    v50 = v148;
    sub_1D1E678EC();
  }

  v60 = v134;
  v59 = v135;
  v62 = v132;
  v61 = v133;
  sub_1D1741C08(v2 + v50[9], v132, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v60 + 48))(v62, 1, v59) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v63 = v124;
    sub_1D1BC91F4(v62, v124, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)();
    sub_1D1BC9194(v63, type metadata accessor for StaticDeviceMetadata);
  }

  v64 = v136;
  v65 = v131;
  sub_1D1741C08(v2 + v50[10], v131, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v129(v65, 1, v64) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v52 + 32))(v61, v65, v64);
    sub_1D1E6922C();
    sub_1D1BC8FB4(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v52 + 8))(v61, v64);
  }

  v66 = *(v2 + v50[11]);
  sub_1D1E6922C();
  v67 = v2 + v50[12];
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v2 + v50[13]));
  v68 = (v2 + v50[14]);
  if (v68[1])
  {
    v69 = *v68;
    sub_1D1E6922C();
    v50 = v148;
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v70 = *(v2 + v50[15]);
  sub_1D1E6922C();
  v71 = *(v2 + v50[16]);
  sub_1D1E6922C();
  v72 = *(v2 + v50[17]);
  sub_1D1E6922C();
  v73 = *(v2 + v50[18]);
  sub_1D1E6922C();
  v74 = *(v2 + v50[19]);
  sub_1D1E6922C();
  sub_1D18599F4(a1, *(v2 + v50[20]));
  v75 = v50[21];
  v145 = v2;
  v76 = *(v2 + v75);
  MEMORY[0x1D3892850](*(v76 + 16));
  v77 = *(v76 + 16);
  v78 = v149;
  if (v77)
  {
    v79 = *(v146 + 16);
    v80 = v76 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
    v81 = *(v146 + 72);
    v82 = (v146 + 8);
    do
    {
      v79(v78, v80, v25);
      sub_1D1E676EC();
      v78 = v149;
      (*v82)(v149, v25);
      v80 += v81;
      --v77;
    }

    while (v77);
  }

  v83 = v148;
  v84 = v145;
  v85 = v137;
  sub_1D1741C08(v145 + v148[22], v137, &qword_1EC642590, qword_1D1E71260);
  v86 = v146;
  if ((*(v146 + 48))(v85, 1, v25) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v87 = v144;
    (*(v86 + 32))(v144, v85, v25);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v86 + 8))(v87, v25);
  }

  v88 = v84 + v83[23];
  v89 = *(v88 + 8);
  if (v89 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    v150 = *v88;
    v90 = v150;
    v151 = v89;
    sub_1D1E6922C();
    sub_1D1771B4C(v90, v89);
    StaticAccessory.SpecialMediaCategory.hash(into:)(a1);
    v83 = v148;
    sub_1D1771B5C(v90, v89);
  }

  v91 = (v84 + v83[24]);
  if (v91[1])
  {
    v92 = *v91;
    sub_1D1E6922C();
    v83 = v148;
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v93 = *(v84 + v83[25]);
  if (v93)
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*(v93 + 16));
    v94 = *(v93 + 16);
    v95 = v127;
    v96 = a1;
    if (v94)
    {
      v97 = *(v146 + 16);
      v98 = v93 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
      v99 = *(v146 + 72);
      v100 = (v146 + 8);
      do
      {
        v97(v95, v98, v25);
        sub_1D1E676EC();
        (*v100)(v95, v25);
        v98 += v99;
        --v94;
      }

      while (v94);
    }
  }

  else
  {
    sub_1D1E6922C();
    v96 = a1;
  }

  v101 = v148;
  v102 = v145;
  v103 = *(v145 + v148[26]);
  sub_1D1E6922C();
  v104 = *(v102 + v101[27]);
  sub_1D1E6922C();
  v105 = *(v102 + v101[28]);
  sub_1D1E6922C();
  v106 = *(v102 + v101[29]);
  sub_1D1E6922C();
  v107 = v138;
  sub_1D1741C08(v102 + v101[30], v138, &qword_1EC644760, &unk_1D1E9E530);
  v108 = v140;
  if ((*(v139 + 48))(v107, 1, v140) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v109 = v125;
    sub_1D1BC91F4(v107, v125, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    sub_1D1E676EC();
    v110 = v109 + *(v108 + 20);
    StaticSoftwareUpdate.Kind.hash(into:)();
    sub_1D1BC9194(v109, type metadata accessor for StaticSoftwareUpdate);
  }

  v112 = v141;
  v111 = v142;
  v113 = *(v102 + v101[31]);
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v102 + v101[32]));
  v114 = *(v102 + v101[33]);
  sub_1D1E6922C();
  if (v114)
  {
    sub_1D1771CBC(v96, v114);
  }

  v115 = *(v102 + v101[34]);
  sub_1D1E6922C();
  v116 = *(v102 + v101[35]);
  sub_1D1E6922C();
  v117 = (v102 + v101[36]);
  if (*(v117 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v118 = *v117;
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v118);
  }

  v119 = v143;
  v120 = *(v102 + v101[37]);
  sub_1D1E6922C();
  sub_1D1741C08(v102 + v101[38], v112, &qword_1EC643650, &qword_1D1E71D40);
  if ((*(v111 + 48))(v112, 1, v119) == 1)
  {
    return sub_1D1E6922C();
  }

  v122 = v126;
  sub_1D1BC91F4(v112, v126, type metadata accessor for StaticMatterDevice);
  sub_1D1E6922C();
  StaticMatterDevice.hash(into:)(v96);
  return sub_1D1BC9194(v122, type metadata accessor for StaticMatterDevice);
}

uint64_t StaticAccessory.hashValue.getter()
{
  sub_1D1E6920C();
  StaticAccessory.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticAccessory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v131 = v123 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v130 = v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = v123 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = v123 - v14;
  v136 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v15 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v135 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v133 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v138 = v123 - v21;
  v22 = sub_1D1E66A7C();
  v137 = *(v22 - 8);
  v23 = v137[8];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v139 = v123 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C358, &qword_1D1E9E558);
  v140 = *(v28 - 8);
  v141 = v28;
  v29 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v123 - v30;
  v32 = type metadata accessor for StaticAccessory(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v34 + 152);
  v38 = type metadata accessor for StaticMatterDevice();
  v39 = *(*(v38 - 8) + 56);
  v145 = v37;
  v146 = v36;
  v39(&v36[v37], 1, 1, v38);
  v41 = a1[3];
  v40 = a1[4];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1D1BC8F60();
  v142 = v31;
  v42 = v143;
  sub_1D1E692FC();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v144);
    v46 = v146;
    return sub_1D1741A30(&v46[v145], &qword_1EC643650, &qword_1D1E71D40);
  }

  v43 = v138;
  v128 = v26;
  v127 = v38;
  v143 = v32;
  LOBYTE(v147) = 0;
  v44 = sub_1D1BC8FB4(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v45 = v139;
  sub_1D1E68D7C();
  v126 = v44;
  v48 = v137 + 4;
  v49 = v137[4];
  v49(v146, v45, v22);
  sub_1D1E669FC();
  LOBYTE(v147) = 1;
  v50 = sub_1D1BC8FB4(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  v139 = v22;
  v125 = v50;
  v123[1] = v48;
  v124 = v49;
  v51 = v143;
  v52 = v146;
  sub_1D1741A90(v43, &v146[v143[5]], &qword_1EC642570, &qword_1D1E6C6A0);
  v149 = 2;
  sub_1D1BC925C();
  sub_1D1E68CBC();
  v123[0] = 0;
  v52[v51[6]] = v147;
  LOBYTE(v147) = 3;
  v53 = sub_1D1E68D2C();
  v54 = &v52[v51[7]];
  *v54 = v53;
  v54[1] = v55;
  LOBYTE(v147) = 4;
  sub_1D1BC8FB4(&qword_1EC64C368, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v56 = v135;
  sub_1D1E68D7C();
  sub_1D1BC91F4(v56, &v52[v51[8]], type metadata accessor for StaticAccessory.DeviceIdentifier);
  type metadata accessor for StaticDeviceMetadata();
  LOBYTE(v147) = 5;
  sub_1D1BC8FB4(&qword_1EC644670, type metadata accessor for StaticDeviceMetadata);
  v57 = v134;
  sub_1D1E68CBC();
  sub_1D1741A90(v57, &v52[v51[9]], &qword_1EC644620, &unk_1D1E75A00);
  LOBYTE(v147) = 6;
  v58 = v133;
  sub_1D1E68CBC();
  sub_1D1741A90(v58, &v52[v51[10]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v147) = 7;
  v146[v143[11]] = sub_1D1E68D3C() & 1;
  LOBYTE(v147) = 8;
  v59 = v128;
  sub_1D1E68D7C();
  v138 = 0;
  v124(&v146[v143[12]], v59, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v149 = 9;
  sub_1D1BC92B0(&qword_1EC646B78, &qword_1EC644B20);
  v72 = v138;
  sub_1D1E68D7C();
  v138 = v72;
  if (v72)
  {
    (*(v140 + 8))(v142, v141);
    LODWORD(v130) = 0;
    LODWORD(v129) = 0;
    LODWORD(v140) = 0;
    LODWORD(v136) = 0;
    LODWORD(v132) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    goto LABEL_5;
  }

  *&v146[v143[13]] = v147;
  LOBYTE(v147) = 10;
  v73 = v138;
  v74 = sub_1D1E68C6C();
  v138 = v73;
  if (v73)
  {
    (*(v140 + 8))(v142, v141);
    LODWORD(v129) = 0;
    LODWORD(v140) = 0;
    LODWORD(v136) = 0;
    LODWORD(v132) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    goto LABEL_5;
  }

  v76 = &v146[v143[14]];
  *v76 = v74;
  v76[1] = v75;
  LOBYTE(v147) = 11;
  v77 = v138;
  v78 = sub_1D1E68D3C();
  v138 = v77;
  if (v77)
  {
    goto LABEL_41;
  }

  v146[v143[15]] = v78 & 1;
  LOBYTE(v147) = 12;
  v79 = v138;
  v80 = sub_1D1E68D3C();
  v138 = v79;
  if (v79)
  {
    goto LABEL_41;
  }

  v146[v143[16]] = v80 & 1;
  LOBYTE(v147) = 13;
  v81 = v138;
  v82 = sub_1D1E68D3C();
  v138 = v81;
  if (v81)
  {
    goto LABEL_41;
  }

  v146[v143[17]] = v82 & 1;
  LOBYTE(v147) = 14;
  v83 = v138;
  v84 = sub_1D1E68D3C();
  v138 = v83;
  if (v83)
  {
    goto LABEL_41;
  }

  v146[v143[18]] = v84 & 1;
  LOBYTE(v147) = 15;
  v85 = v138;
  v86 = sub_1D1E68D3C();
  v138 = v85;
  if (v85 || (v146[v143[19]] = v86 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0), v149 = 16, sub_1D1B43CAC(), v87 = v138, sub_1D1E68D7C(), (v138 = v87) != 0))
  {
LABEL_41:
    (*(v140 + 8))(v142, v141);
    LODWORD(v140) = 0;
    LODWORD(v136) = 0;
    LODWORD(v132) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    goto LABEL_5;
  }

  *&v146[v143[20]] = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  v149 = 17;
  sub_1D1BC9050(&qword_1EC644DA0, &qword_1EC644B20);
  v88 = v138;
  sub_1D1E68D7C();
  v138 = v88;
  if (v88)
  {
    (*(v140 + 8))(v142, v141);
    LODWORD(v136) = 0;
    LODWORD(v132) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    goto LABEL_5;
  }

  *&v146[v143[21]] = v147;
  LOBYTE(v147) = 18;
  v89 = v138;
  sub_1D1E68CBC();
  v138 = v89;
  if (v89)
  {
    (*(v140 + 8))(v142, v141);
    LODWORD(v132) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    LODWORD(v136) = 1;
    goto LABEL_5;
  }

  sub_1D1741A90(v129, &v146[v143[22]], &qword_1EC642590, qword_1D1E71260);
  v149 = 19;
  sub_1D18F18D0();
  v90 = v138;
  sub_1D1E68CBC();
  v138 = v90;
  if (v90)
  {
    (*(v140 + 8))(v142, v141);
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    LODWORD(v136) = 1;
    LODWORD(v132) = 1;
    goto LABEL_5;
  }

  v91 = v148;
  v92 = &v146[v143[23]];
  *v92 = v147;
  v92[8] = v91;
  LOBYTE(v147) = 20;
  v93 = v138;
  v94 = sub_1D1E68C6C();
  v138 = v93;
  if (v93)
  {
    (*(v140 + 8))(v142, v141);
    LODWORD(v135) = 0;
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    LODWORD(v136) = 1;
    LODWORD(v132) = 1;
    LODWORD(v134) = 1;
    goto LABEL_5;
  }

  v96 = &v146[v143[24]];
  *v96 = v94;
  v96[1] = v95;
  v149 = 21;
  v97 = v138;
  sub_1D1E68CBC();
  v138 = v97;
  if (v97)
  {
    (*(v140 + 8))(v142, v141);
    LODWORD(v133) = 0;
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    LODWORD(v136) = 1;
    LODWORD(v132) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    goto LABEL_5;
  }

  *&v146[v143[25]] = v147;
  LOBYTE(v147) = 22;
  v98 = v138;
  v99 = sub_1D1E68D3C();
  v138 = v98;
  if (v98)
  {
    goto LABEL_57;
  }

  v146[v143[26]] = v99 & 1;
  LOBYTE(v147) = 23;
  v100 = v138;
  v101 = sub_1D1E68D3C();
  v138 = v100;
  if (v100)
  {
    goto LABEL_57;
  }

  v146[v143[27]] = v101 & 1;
  LOBYTE(v147) = 24;
  v102 = v138;
  v103 = sub_1D1E68D3C();
  v138 = v102;
  if (v102)
  {
    goto LABEL_57;
  }

  v146[v143[28]] = v103 & 1;
  LOBYTE(v147) = 25;
  v104 = v138;
  v105 = sub_1D1E68D3C();
  v138 = v104;
  if (v104 || (v146[v143[29]] = v105 & 1, type metadata accessor for StaticSoftwareUpdate(0), LOBYTE(v147) = 26, sub_1D1BC8FB4(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate), v106 = v138, sub_1D1E68CBC(), (v138 = v106) != 0))
  {
LABEL_57:
    (*(v140 + 8))(v142, v141);
    LODWORD(v141) = 0;
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    LODWORD(v136) = 1;
    LODWORD(v132) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v133) = 1;
    goto LABEL_5;
  }

  sub_1D1741A90(v130, &v146[v143[30]], &qword_1EC644760, &unk_1D1E9E530);
  LOBYTE(v147) = 27;
  v107 = v138;
  v108 = sub_1D1E68D3C();
  v138 = v107;
  if (v107)
  {
    goto LABEL_61;
  }

  v146[v143[31]] = v108 & 1;
  v149 = 28;
  sub_1D1BC934C();
  v109 = v138;
  sub_1D1E68D7C();
  v138 = v109;
  if (v109 || (v146[v143[32]] = v147, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550), v149 = 29, sub_1D1BC93A0(&qword_1EC64C380, sub_1D1BC9418), v110 = v138, sub_1D1E68CBC(), (v138 = v110) != 0))
  {
LABEL_61:
    (*(v140 + 8))(v142, v141);
    LODWORD(v142) = 0;
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    LODWORD(v136) = 1;
    LODWORD(v132) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v133) = 1;
    LODWORD(v141) = 1;
    goto LABEL_5;
  }

  *&v146[v143[33]] = v147;
  LOBYTE(v147) = 30;
  v111 = v138;
  v112 = sub_1D1E68D3C();
  v138 = v111;
  if (v111)
  {
    goto LABEL_67;
  }

  v146[v143[34]] = v112 & 1;
  LOBYTE(v147) = 31;
  v113 = v138;
  v114 = sub_1D1E68D3C();
  v138 = v113;
  if (v113)
  {
    goto LABEL_67;
  }

  v146[v143[35]] = v114 & 1;
  LOBYTE(v147) = 32;
  v115 = v138;
  v116 = sub_1D1E68D1C();
  v138 = v115;
  if (v115)
  {
    goto LABEL_67;
  }

  v118 = &v146[v143[36]];
  *v118 = v116;
  v118[8] = v117 & 1;
  LOBYTE(v147) = 33;
  v119 = v138;
  v120 = sub_1D1E68D3C();
  v138 = v119;
  if (v119 || (v146[v143[37]] = v120 & 1, LOBYTE(v147) = 34, sub_1D1BC8FB4(&qword_1EC649240, type metadata accessor for StaticMatterDevice), v121 = v138, sub_1D1E68CBC(), (v138 = v121) != 0))
  {
LABEL_67:
    (*(v140 + 8))(v142, v141);
    LODWORD(v131) = 1;
    LODWORD(v130) = 1;
    LODWORD(v129) = 1;
    LODWORD(v140) = 1;
    LODWORD(v136) = 1;
    LODWORD(v132) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v133) = 1;
    LODWORD(v141) = 1;
    LODWORD(v142) = 1;
LABEL_5:
    v60 = v123[0];
    __swift_destroy_boxed_opaque_existential_1(v144);
    v61 = v137[1];
    v62 = v146;
    v61(v146, v139);
    if (!v60)
    {
      sub_1D1741A30(&v62[v143[5]], &qword_1EC642570, &qword_1D1E6C6A0);
    }

    v63 = v143;
    v46 = v146;
    v64 = *&v146[v143[7] + 8];

    sub_1D1BC9194(&v46[v63[8]], type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1741A30(&v46[v63[9]], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1741A30(&v46[v63[10]], &qword_1EC642570, &qword_1D1E6C6A0);
    if (v131)
    {
      v61(&v46[v63[12]], v139);
      if (v130)
      {
        goto LABEL_21;
      }
    }

    else if (v130)
    {
LABEL_21:
      v68 = *&v46[v63[13]];

      if ((v129 & 1) == 0)
      {
LABEL_22:
        if (v140)
        {
LABEL_23:
          v69 = *&v46[v63[20]];

          if ((v136 & 1) == 0)
          {
LABEL_24:
            if (v132)
            {
LABEL_25:
              sub_1D1741A30(&v46[v63[22]], &qword_1EC642590, qword_1D1E71260);
              if ((v134 & 1) == 0)
              {
LABEL_26:
                if (v135)
                {
LABEL_27:
                  v70 = *&v46[v63[24] + 8];

                  if ((v133 & 1) == 0)
                  {
LABEL_28:
                    if (v141)
                    {
LABEL_29:
                      sub_1D1741A30(&v46[v63[30]], &qword_1EC644760, &unk_1D1E9E530);
                      if (v142)
                      {
LABEL_30:
                        v71 = *&v46[v63[33]];
                      }

                      return sub_1D1741A30(&v46[v145], &qword_1EC643650, &qword_1D1E71D40);
                    }

LABEL_17:
                    if (v142)
                    {
                      goto LABEL_30;
                    }

                    return sub_1D1741A30(&v46[v145], &qword_1EC643650, &qword_1D1E71D40);
                  }

LABEL_16:
                  v67 = *&v46[v63[25]];

                  if (v141)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_17;
                }

LABEL_15:
                if (!v133)
                {
                  goto LABEL_28;
                }

                goto LABEL_16;
              }

LABEL_14:
              sub_1D18EB2D8(*&v46[v63[23]], v46[v63[23] + 8]);
              if (v135)
              {
                goto LABEL_27;
              }

              goto LABEL_15;
            }

LABEL_13:
            if (!v134)
            {
              goto LABEL_26;
            }

            goto LABEL_14;
          }

LABEL_12:
          v66 = *&v46[v63[21]];

          if (v132)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }

LABEL_11:
        if (!v136)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }

LABEL_10:
      v65 = *&v46[v63[14] + 8];

      if (v140)
      {
        goto LABEL_23;
      }

      goto LABEL_11;
    }

    if (!v129)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  (*(v140 + 8))(v142, v141);
  v122 = v146;
  sub_1D1BC8EF0(v131, &v146[v145]);
  sub_1D1BC8E68(v122, v132, type metadata accessor for StaticAccessory);
  __swift_destroy_boxed_opaque_existential_1(v144);
  return sub_1D1BC9194(v122, type metadata accessor for StaticAccessory);
}

uint64_t sub_1D1BB39B8()
{
  sub_1D1E6920C();
  StaticAccessory.hash(into:)(v1);
  return sub_1D1E6926C();
}

double StaticAccessory.tileIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  sub_1D1BB3C88(&v28);
  v6 = v29;
  if (v29)
  {
    *a1 = v28;
    *(a1 + 8) = v6;
    v7 = v33[0];
    *(a1 + 48) = v32;
    *(a1 + 64) = v7;
    *(a1 + 73) = *(v33 + 9);
    v8 = v31;
    *(a1 + 16) = v30;
    *(a1 + 32) = v8;
  }

  else
  {
    StaticAccessory.primaryStaticService.getter(v5);
    v9 = type metadata accessor for StaticService(0);
    if ((*(*(v9 - 1) + 48))(v5, 1, v9) == 1)
    {
      sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v10 = *&qword_1EC646788;
      v26[2] = *&qword_1EC646788;
      v26[3] = xmmword_1EC646798;
      v11 = xmmword_1EC6467A8;
      v27[0] = xmmword_1EC6467A8;
      v12 = *(&xmmword_1EC6467A8 + 9);
      *(v27 + 9) = *(&xmmword_1EC6467A8 + 9);
      v13 = xmmword_1EC646768;
      v14 = xmmword_1EC646778;
      v26[0] = xmmword_1EC646768;
      v26[1] = xmmword_1EC646778;
      *(a1 + 48) = xmmword_1EC646798;
      *(a1 + 64) = v11;
      *(a1 + 16) = v14;
      *(a1 + 32) = v10;
      *(a1 + 73) = v12;
      *a1 = v13;
      sub_1D18A9844(v26, v25);
    }

    else
    {
      v15 = &v5[v9[25]];
      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        v18 = v15[1];

        v19._countAndFlagsBits = v17;
        v19._object = v16;
        Icon.init(customIconName:)(&v24, v19);
      }

      else
      {
        v20 = v5[v9[28]];
        if (v20 == 53)
        {
          LOBYTE(v20) = v5[v9[26]];
        }

        LOBYTE(v26[0]) = v20;
        v25[0] = v5[v9[27]];
        Icon.init(serviceKind:serviceSubKind:)(&v24, v26, v25);
      }

      sub_1D1BC9194(v5, type metadata accessor for StaticService);
      name = v24.accessoryControlOnStateIconInfo.name;
      *(a1 + 32) = *&v24.tileOffStateIconInfo.name._object;
      *(a1 + 48) = name;
      *(a1 + 64) = *&v24.accessoryControlOnStateIconInfo.renderingMode;
      *(a1 + 73) = *(&v24.accessoryControlOffStateIconInfo.name + 1);
      *&v8 = v24.tileOnStateIconInfo.name._countAndFlagsBits;
      v22 = *&v24.tileOnStateIconInfo.renderingMode;
      *a1 = v24.tileOnStateIconInfo.name;
      *(a1 + 16) = v22;
    }
  }

  return *&v8;
}

double sub_1D1BB3C88@<D0>(uint64_t a1@<X8>)
{
  if (!StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    goto LABEL_10;
  }

  v3 = type metadata accessor for StaticAccessory(0);
  if (*(v1 + *(v3 + 112)) != 1)
  {
    if (*(v1 + *(v3 + 116)) == 1)
    {
      StaticAccessory.isActivated.getter();
      v4 = 0x80000001D1EB6020;
      v7 = (StaticAccessory.isActivated.getter() & 1) == 0;
      v6 = 0xD000000000000016;
      *a1 = 0xD000000000000016;
      *(a1 + 8) = 0x80000001D1EB6020;
      goto LABEL_6;
    }

LABEL_10:
    result = 0.0;
    *(a1 + 73) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  StaticAccessory.isActivated.getter();
  v4 = 0x80000001D1EB5BB0;
  v5 = StaticAccessory.isActivated.getter();
  v6 = 0xD00000000000001ALL;
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001D1EB5BB0;
  v7 = (v5 & 1) == 0;
LABEL_6:
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v4;
  *(a1 + 64) = v8;
  *(a1 + 72) = v6;
  *(a1 + 80) = v4;
  *(a1 + 88) = v8;
  swift_bridgeObjectRetain_n();
  return result;
}

uint64_t StaticAccessory.isActivated.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30[-v12];
  StaticAccessory.primaryStaticService.getter(&v30[-v12]);
  v14 = *(v3 + 48);
  if (v14(v13, 1, v2) == 1)
  {
    sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
    v15 = 0;
  }

  else
  {
    v15 = v13[*(v2 + 104)];
    sub_1D1BC9194(v13, type metadata accessor for StaticService);
  }

  v30[15] = v15;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB31F0 == v16)
  {
  }

  else
  {
    v17 = sub_1D1E6904C();

    if ((v17 & 1) == 0)
    {
LABEL_16:
      StaticAccessory.primaryStaticService.getter(v11);
      if (v14(v11, 1, v2) != 1)
      {
        v24 = StaticService.isActivated.getter();
        sub_1D1BC9194(v11, type metadata accessor for StaticService);
        return v24 & 1;
      }

      sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_20:
      v24 = 0;
      return v24 & 1;
    }
  }

  if (!StaticAccessory.allServicesAreTheSameKind.getter())
  {
    goto LABEL_16;
  }

  v18 = type metadata accessor for StaticAccessory(0);
  v19 = *(v1 + *(v18 + 84));
  MEMORY[0x1EEE9AC00](v18);
  *&v30[-16] = v1;
  v21 = sub_1D17868B8(sub_1D1823318, &v30[-32], v20);
  v22 = v21;
  v23 = v21[2];
  if (!v23)
  {

    goto LABEL_20;
  }

  v24 = 0;
  v25 = 0;
  v26 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v27 = *(v3 + 72);
  v28 = v23 - 1;
  do
  {
    sub_1D1BC8E68(v26, v6, type metadata accessor for StaticService);
    if (v24)
    {
      result = sub_1D1BC9194(v6, type metadata accessor for StaticService);
      if (v28 == v25)
      {

        v24 = 1;
        return v24 & 1;
      }

      v24 = 1;
    }

    else
    {
      v24 = StaticService.isActivated.getter();
      result = sub_1D1BC9194(v6, type metadata accessor for StaticService);
      if (v28 == v25)
      {

        return v24 & 1;
      }
    }

    ++v25;
    v26 += v27;
  }

  while (v25 < v22[2]);
  __break(1u);
  return result;
}

uint64_t StaticAccessory.toggle()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BB4200, 0, 0);
}

uint64_t sub_1D1BB4200()
{
  v1 = *(v0 + 64);
  if (StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  StaticAccessory.primaryStaticService.getter(v2);
  v4 = type metadata accessor for StaticService(0);
  v5 = *(*(v4 - 8) + 48);
  v6 = v5(v2, 1, v4);
  v7 = *(v0 + 80);
  if (v6 == 1)
  {
    sub_1D1741A30(*(v0 + 80), &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_7:
    v10 = *(v0 + 56);
    goto LABEL_8;
  }

  v8 = StaticService.canBeToggled.getter();
  sub_1D1BC9194(v7, type metadata accessor for StaticService);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(v0 + 72);
  StaticAccessory.primaryStaticService.getter(v9);
  if (v5(v9, 1, v4) == 1)
  {
    v10 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 72), &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_8:
    v11 = type metadata accessor for StateSnapshot(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);

    v14 = *(v0 + 8);

    return v14();
  }

  *(v0 + 48) = 2;
  *(v0 + 16) = xmmword_1D1E88490;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *v16 = v0;
  v16[1] = sub_1D1BB445C;
  v17 = *(v0 + 72);
  v18 = *(v0 + 56);

  return StaticService.toggle(options:context:)(v18, (v0 + 48), (v0 + 16));
}

uint64_t sub_1D1BB445C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 72);
  v4 = *v0;

  sub_1D1BC9194(v3, type metadata accessor for StaticService);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  v7 = *(v4 + 8);

  return v7();
}

BOOL StaticAccessory.canBeToggled.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  if (!StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    StaticAccessory.primaryStaticService.getter(v3);
    v4 = type metadata accessor for StaticService(0);
    if ((*(*(v4 - 8) + 48))(v3, 1, v4) != 1)
    {
      v5 = StaticService.canBeToggled.getter();
      sub_1D1BC9194(v3, type metadata accessor for StaticService);
      return v5;
    }

    sub_1D1741A30(v3, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  return 0;
}

uint64_t StaticAccessory.foregroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  if (*(v0 + *(type metadata accessor for StaticAccessory(0) + 92) + 8) != 255)
  {
    return sub_1D1E673CC();
  }

  StaticAccessory.primaryStaticService.getter(v7);
  v9 = type metadata accessor for StaticService(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_6;
  }

  v11 = v7[*(v9 + 112)];
  sub_1D1BC9194(v7, type metadata accessor for StaticService);
  if (v11 == 53)
  {
LABEL_6:
    StaticAccessory.primaryStaticService.getter(v5);
    if (v10(v5, 1, v9) == 1)
    {
      sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
      LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = v5[*(v9 + 104)];
      sub_1D1BC9194(v5, type metadata accessor for StaticService);
    }
  }

  v12[15] = v11;
  return ServiceKind.foregroundColor.getter();
}

uint64_t sub_1D1BB48A4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  StaticAccessory.primaryStaticService.getter(&v9 - v4);
  v6 = type metadata accessor for StaticService(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    v8 = 0;
  }

  else
  {
    v8 = v5[*(v6 + 104)];
    result = sub_1D1BC9194(v5, type metadata accessor for StaticService);
  }

  *a1 = v8;
  return result;
}

uint64_t StaticAccessory.displayAsServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v18 + 88), v5, &qword_1EC642590, qword_1D1E71260);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    v19 = type metadata accessor for StaticService(0);
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v20 = *(v1 + *(v18 + 80));
    if (*(v20 + 16))
    {
      v31 = v1;

      v21 = sub_1D1742188(v10);
      if (v22)
      {
        v23 = v21;
        v30 = *(v20 + 56);
        v24 = type metadata accessor for StaticService(0);
        v25 = *(v24 - 8);
        sub_1D1BC8E68(v30 + *(v25 + 72) * v23, v17, type metadata accessor for StaticService);
        (*(v7 + 8))(v10, v6);

        (*(v25 + 56))(v17, 0, 1, v24);
      }

      else
      {

        (*(v7 + 8))(v10, v6);
        v24 = type metadata accessor for StaticService(0);
        (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      v24 = type metadata accessor for StaticService(0);
      (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    }

    type metadata accessor for StaticService(0);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) != 1)
    {
      v28 = v17[*(v24 + 112)];
      result = sub_1D1BC9194(v17, type metadata accessor for StaticService);
      if (v28 != 53)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  sub_1D1741A30(v17, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_10:
  StaticAccessory.primaryStaticService.getter(v15);
  v26 = type metadata accessor for StaticService(0);
  if ((*(*(v26 - 8) + 48))(v15, 1, v26) == 1)
  {
    result = sub_1D1741A30(v15, &qword_1EC6436F0, &qword_1D1E99BC0);
    LOBYTE(v28) = 0;
  }

  else
  {
    LOBYTE(v28) = v15[*(v26 + 104)];
    result = sub_1D1BC9194(v15, type metadata accessor for StaticService);
  }

LABEL_14:
  *v32 = v28;
  return result;
}

uint64_t sub_1D1BB4EF0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D1BB4F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  StaticAccessory.primaryStaticService.getter(&v7 - v2);
  v4 = type metadata accessor for StaticService(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v3, &qword_1EC6436F0, &qword_1D1E99BC0);
    v5 = 0;
  }

  else
  {
    v5 = StaticService.isTransitioning.getter();
    sub_1D1BC9194(v3, type metadata accessor for StaticService);
  }

  return v5 & 1;
}

uint64_t StaticAccessory.isTransitioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v0 + *(v14 + 88), v4, &qword_1EC642590, qword_1D1E71260);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    v15 = type metadata accessor for StaticService(0);
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    goto LABEL_9;
  }

  (*(v6 + 32))(v9, v4, v5);
  v16 = *(v0 + *(v14 + 80));
  if (*(v16 + 16))
  {
    v17 = *(v0 + *(v14 + 80));

    v18 = sub_1D1742188(v9);
    if (v19)
    {
      v20 = v18;
      v21 = *(v16 + 56);
      v22 = type metadata accessor for StaticService(0);
      v23 = *(v22 - 8);
      sub_1D1BC8E68(v21 + *(v23 + 72) * v20, v13, type metadata accessor for StaticService);
      (*(v6 + 8))(v9, v5);

      (*(v23 + 56))(v13, 0, 1, v22);
      goto LABEL_8;
    }
  }

  (*(v6 + 8))(v9, v5);
  v22 = type metadata accessor for StaticService(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
LABEL_8:
  type metadata accessor for StaticService(0);
  if ((*(*(v22 - 8) + 48))(v13, 1, v22) != 1)
  {
    v24 = StaticService.isTransitioning.getter();
    sub_1D1BC9194(v13, type metadata accessor for StaticService);
    return v24 & 1;
  }

LABEL_9:
  sub_1D1741A30(v13, &qword_1EC6436F0, &qword_1D1E99BC0);
  v24 = 0;
  return v24 & 1;
}

BOOL sub_1D1BB5420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  if (!StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    StaticAccessory.primaryStaticService.getter(v3);
    v4 = type metadata accessor for StaticService(0);
    if ((*(*(v4 - 8) + 48))(v3, 1, v4) != 1)
    {
      v5 = StaticService.canBeToggled.getter();
      sub_1D1BC9194(v3, type metadata accessor for StaticService);
      return v5;
    }

    sub_1D1741A30(v3, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  return 0;
}

uint64_t sub_1D1BB5530(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticAccessory.toggle()(a1);
}

uint64_t sub_1D1BB55C8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4CF0;

  return StaticAccessory.set(showInDashboard:)(a1);
}

uint64_t sub_1D1BB565C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticAccessory.set(includeInStatus:)(a1);
}

uint64_t StaticAccessory.set(includeInStatus:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BB5780;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BB5780(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BB5880, 0, 0);
}

uint64_t sub_1D1BB5880()
{
  if (*(v0 + 24))
  {
    HMAccessory.contributesToHomeStatus.setter(*(v0 + 48));
    sub_1D1E67E1C();
    *(v0 + 32) = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BB5988, v2, v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1BB5988()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_1D18B50F8(v2);
  v0[5] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BB5A1C, 0, 0);
}

uint64_t sub_1D1BB5A1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BB5A80()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t StaticAccessory.tileStatusStringIconSymbolSuffix.getter()
{
  v41 = type metadata accessor for StaticService(0);
  v1 = *(v41 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v41);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for StaticSoftwareUpdate(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticAccessory(0);
  if ((*(v0 + v20[31]) & 1) == 0 && (StaticAccessory.isUpdating.getter() & 1) == 0)
  {
    return 0;
  }

  sub_1D1741C08(v0 + v20[30], v14, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D1741A30(v14, &qword_1EC644760, &unk_1D1E9E530);
    v21 = v1;
  }

  else
  {
    sub_1D1BC91F4(v14, v19, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1D2F0C0(&v43);
    v21 = v1;
    if (v43 != 8 && (v43 == 3 || v43 == 5))
    {
      sub_1D1BC9194(v19, type metadata accessor for StaticSoftwareUpdate);
      return 0xD000000000000015;
    }

    sub_1D1BC9194(v19, type metadata accessor for StaticSoftwareUpdate);
  }

  result = _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(*(v0 + v20[33]));
  if (!v23)
  {
    v24 = *(v0 + v20[20]);
    v25 = 1 << *(v24 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v24 + 64);
    v28 = (v25 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v29 = 0;
    if (v27)
    {
      while (1)
      {
        v30 = v29;
LABEL_18:
        sub_1D1BC8E68(*(v24 + 56) + *(v21 + 72) * (__clz(__rbit64(v27)) | (v30 << 6)), v7, type metadata accessor for StaticService);
        sub_1D1BC91F4(v7, v5, type metadata accessor for StaticService);
        StaticService.tileStatusStringIconSymbolSuffix.getter();
        if (v31)
        {
          break;
        }

        v27 &= v27 - 1;
        result = sub_1D1BC9194(v5, type metadata accessor for StaticService);
        v29 = v30;
        if (!v27)
        {
          goto LABEL_15;
        }
      }

      v33 = v42;
      sub_1D1BC91F4(v5, v42, type metadata accessor for StaticService);
      v32 = 0;
LABEL_22:
      v34 = *(v21 + 56);
      v35 = v21;
      v36 = v41;
      v34(v33, v32, 1, v41);

      if ((*(v35 + 48))(v33, 1, v36) == 1)
      {
        sub_1D1741A30(v33, &qword_1EC6436F0, &qword_1D1E99BC0);
      }

      else
      {
        v37 = StaticService.tileStatusStringIconSymbolSuffix.getter();
        v39 = v38;
        sub_1D1BC9194(v33, type metadata accessor for StaticService);
        if (v39)
        {
          return v37;
        }
      }

      return 0;
    }

LABEL_15:
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {

        v32 = 1;
        v33 = v42;
        goto LABEL_22;
      }

      v27 = *(v24 + 64 + 8 * v30);
      ++v29;
      if (v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t StaticAccessory.isUpdating.getter()
{
  v1 = type metadata accessor for StaticService(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 84));
  v15 = v0;
  result = sub_1D17868B8(sub_1D1823318, v14, v6);
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  while (1)
  {
    v11 = v9;
    if (v10 == v9)
    {
LABEL_5:

      return v10 != v11;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    sub_1D1BC8E68(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9++, v5, type metadata accessor for StaticService);
    v17 = *&v5[*(v1 + 128)];
    v16 = v5[*(v1 + 104)];

    v12 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    v13 = StaticCharacteristicsBag.isUpdating(for:)(v12);

    result = sub_1D1BC9194(v5, type metadata accessor for StaticService);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

BOOL StaticAccessory.hasDetailAttentionMessages.getter()
{
  v1 = type metadata accessor for MatterStateSnapshot();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = type metadata accessor for StaticAccessory(0);
  v18 = v0 + *(v17 + 144);
  if ((*(v18 + 8) & 1) == 0)
  {
    v19 = v17;
    v39 = *v18;
    v40 = v0;
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v20 = qword_1EE07DC60;
    swift_getKeyPath();
    v41 = v20;
    sub_1D1BC8FB4(&qword_1EE07CFB0, type metadata accessor for DataModel);
    sub_1D1E66CAC();

    v21 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
    swift_beginAccess();
    v22 = *(v20 + v21);
    if (*(v22 + 16))
    {
      v23 = *(v19 + 48);

      v24 = sub_1D1742188(v40 + v23);
      if (v25)
      {
        sub_1D1BC8E68(*(v22 + 56) + *(v2 + 72) * v24, v9, type metadata accessor for MatterStateSnapshot);
        v26 = 0;
      }

      else
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 1;
    }

    (*(v2 + 56))(v9, v26, 1, v1);
    if (!(*(v2 + 48))(v9, 1, v1))
    {
      sub_1D1BC8E68(v9, v5, type metadata accessor for MatterStateSnapshot);
      sub_1D1741A30(v9, &unk_1EC64F390, &qword_1D1E92B10);
      v31 = *&v5[*(v1 + 24)];

      sub_1D1BC9194(v5, type metadata accessor for MatterStateSnapshot);
      if (*(v31 + 16) && (v32 = sub_1D17420B0(v39), (v33 & 1) != 0))
      {
        v34 = v32;
        v35 = *(v31 + 56);
        v36 = type metadata accessor for StaticMatterDevice();
        v37 = *(v36 - 8);
        sub_1D1BC8E68(v35 + *(v37 + 72) * v34, v14, type metadata accessor for StaticMatterDevice);

        (*(v37 + 56))(v14, 0, 1, v36);
      }

      else
      {

        v38 = type metadata accessor for StaticMatterDevice();
        (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
      }

      goto LABEL_13;
    }

    sub_1D1741A30(v9, &unk_1EC64F390, &qword_1D1E92B10);
  }

  v27 = type metadata accessor for StaticMatterDevice();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
LABEL_13:
  sub_1D1741A90(v14, v16, &qword_1EC643650, &qword_1D1E71D40);
  v42 = 2;
  sub_1D1BCFA04(&v42, v16);
  v29 = v28;
  sub_1D1741A30(v16, &qword_1EC643650, &qword_1D1E71D40);
  if (v29)
  {
  }

  return v29 != 0;
}

uint64_t sub_1D1BB674C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for StaticAccessory(0) + 80));
  if (*(v5 + 16) && (v6 = sub_1D1742188(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for StaticService(0);
    v11 = *(v10 - 8);
    sub_1D1BC8E68(v9 + *(v11 + 72) * v8, a3, type metadata accessor for StaticService);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for StaticService(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t StaticAccessory.visibleStaticServices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v41 = &v39 - v3;
  v43 = type metadata accessor for StaticService(0);
  v46 = *(v43 - 8);
  v4 = *(v46 + 64);
  v5 = MEMORY[0x1EEE9AC00](v43);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v39 - v7;
  v8 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 80));
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v47 = v8;

  v15 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  v44 = v13;
  v45 = v9;
  if (v12)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v40;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      do
      {
LABEL_9:
        v17 = *(v47 + 56);
        v42 = *(v46 + 72);
        sub_1D1BC8E68(v17 + v42 * (__clz(__rbit64(v12)) | (v15 << 6)), v48, type metadata accessor for StaticService);
        if (qword_1EC642398 != -1)
        {
          swift_once();
        }

        v12 &= v12 - 1;
        v18 = qword_1EC6BE1B0;
        if (!*(qword_1EC6BE1B0 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(v48 + *(v43 + 104));
        v20 = *(qword_1EC6BE1B0 + 40);
        sub_1D1E6920C();
        v49 = v19;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v21 = sub_1D1E6926C();
        v22 = -1 << *(v18 + 32);
        v23 = v21 & ~v22;
        if (((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_23;
        }

        v24 = ~v22;
        while (1)
        {
          v50 = *(*(v18 + 48) + v23);
          v49 = v19;
          v25 = ServiceKind.rawValue.getter();
          v27 = v26;
          if (v25 == ServiceKind.rawValue.getter() && v27 == v28)
          {
            break;
          }

          v30 = sub_1D1E6904C();

          if (v30)
          {
            goto LABEL_22;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_22:
        v31 = v41;
        sub_1D1741C08(v48 + *(v43 + 116), v41, &qword_1EC642590, qword_1D1E71260);
        v32 = sub_1D1E66A7C();
        v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
        sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
        if (v33 == 1)
        {
          sub_1D1BC91F4(v48, v39, type metadata accessor for StaticService);
          v34 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D17915E0(0, *(v34 + 16) + 1, 1);
            v34 = v51;
          }

          v37 = *(v34 + 16);
          v36 = *(v34 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1D17915E0(v36 > 1, v37 + 1, 1);
            v34 = v51;
          }

          *(v34 + 16) = v37 + 1;
          v38 = *(v46 + 80);
          v40 = v34;
          result = sub_1D1BC91F4(v39, v34 + ((v38 + 32) & ~v38) + v37 * v42, type metadata accessor for StaticService);
        }

        else
        {
LABEL_23:
          result = sub_1D1BC9194(v48, type metadata accessor for StaticService);
        }

        v13 = v44;
        v9 = v45;
      }

      while (v12);
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall StaticAccessory.hasVisibleServices(minCount:)(Swift::Int minCount)
{
  v30 = minCount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29 - v4;
  v33 = type metadata accessor for StaticService(0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for StaticAccessory(0) + 84));
  v40 = v1;
  v9 = sub_1D17868B8(sub_1D1823318, v39, v8);
  v37 = v9[2];
  if (!v37)
  {
LABEL_129:

    LOBYTE(v9) = 0;
    return v9;
  }

  v32 = 0;
  v10 = 0;
  v34 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v35 = v9;
  v36 = v5;
  while (v10 < v9[2])
  {
    sub_1D1BC8E68(&v34[*(v5 + 72) * v10], v38, type metadata accessor for StaticService);
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v11 = qword_1EC6BE1B0;
    if (!*(qword_1EC6BE1B0 + 16))
    {
      goto LABEL_3;
    }

    v12 = *(v38 + *(v33 + 104));
    v13 = *(qword_1EC6BE1B0 + 40);
    sub_1D1E6920C();
    v41 = v12;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v14 = sub_1D1E6926C();
    v15 = -1 << *(v11 + 32);
    v16 = v14 & ~v15;
    if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
LABEL_3:
      sub_1D1BC9194(v38, type metadata accessor for StaticService);
LABEL_4:
      v9 = v35;
      v5 = v36;
      goto LABEL_5;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = "takeSnaphotsWhenBusy";
      switch(*(*(v11 + 48) + v16))
      {
        case 1:
          v19 = "0000003E-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 2:
          v19 = "00000270-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 3:
          v19 = "000000BB-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 4:
          v19 = "0000008D-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 5:
          v19 = "00000096-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 6:
          v19 = "00000042-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 7:
          v19 = "00000110-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 8:
          v19 = "00000204-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 9:
          v19 = "00000097-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xA:
          v19 = "0000007F-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xB:
          v19 = "00000080-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xC:
          v19 = "00000129-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xD:
          v19 = "00000237-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xE:
          v19 = "00000081-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xF:
          v19 = "00000121-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x10:
          v19 = "00000040-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x11:
          v19 = "000000D7-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x12:
          v19 = "000000BA-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x13:
          v19 = "00000041-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x14:
          v19 = "000000BC-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x15:
          v19 = "000000BD-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x16:
          v19 = "00000082-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x17:
          v19 = "000000D9-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x18:
          v19 = "000000CF-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x19:
          v19 = "000000CC-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1A:
          v19 = "00000083-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1B:
          v19 = "00000084-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1C:
          v19 = "00000043-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1D:
          v19 = "00000044-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1E:
          v19 = "00000045-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1F:
          v19 = "00000112-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x20:
          v19 = "00000085-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x21:
          v19 = "00000086-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x22:
          v19 = "00000047-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x23:
          v19 = "0000007E-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x24:
          v19 = "000000B9-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x25:
          v19 = "00000087-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x26:
          v19 = "00000113-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x27:
          v19 = "00000088-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x28:
          v19 = "00000089-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x29:
          v19 = "00000049-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2A:
          v19 = "00000125-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2B:
          v19 = "00000122-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2C:
          v19 = "000000D8-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2D:
          v19 = "0000008A-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2E:
          v19 = "0000004A-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2F:
          v19 = "000000D0-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x30:
          v19 = "000000B7-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x31:
          v19 = "0000020A-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x32:
          v19 = "0000020F-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x33:
          v19 = "0000008B-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x34:
          v19 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_65:
          v18 = v19 - 32;
          break;
        default:
          break;
      }

      v20 = v18 | 0x8000000000000000;
      v21 = "takeSnaphotsWhenBusy";
      switch(v12)
      {
        case 1:
          v22 = "0000003E-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 2:
          v22 = "00000270-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 3:
          v22 = "000000BB-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 4:
          v22 = "0000008D-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 5:
          v22 = "00000096-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 6:
          v22 = "00000042-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 7:
          v22 = "00000110-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 8:
          v22 = "00000204-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 9:
          v22 = "00000097-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 10:
          v22 = "0000007F-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 11:
          v22 = "00000080-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 12:
          v22 = "00000129-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 13:
          v22 = "00000237-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 14:
          v22 = "00000081-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 15:
          v22 = "00000121-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 16:
          v22 = "00000040-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 17:
          v22 = "000000D7-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 18:
          v22 = "000000BA-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 19:
          v22 = "00000041-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 20:
          v22 = "000000BC-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 21:
          v22 = "000000BD-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 22:
          v22 = "00000082-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 23:
          v22 = "000000D9-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 24:
          v22 = "000000CF-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 25:
          v22 = "000000CC-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 26:
          v22 = "00000083-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 27:
          v22 = "00000084-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 28:
          v22 = "00000043-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 29:
          v22 = "00000044-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 30:
          v22 = "00000045-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 31:
          v22 = "00000112-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 32:
          v22 = "00000085-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 33:
          v22 = "00000086-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 34:
          v22 = "00000047-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 35:
          v22 = "0000007E-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 36:
          v22 = "000000B9-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 37:
          v22 = "00000087-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 38:
          v22 = "00000113-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 39:
          v22 = "00000088-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 40:
          v22 = "00000089-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 41:
          v22 = "00000049-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 42:
          v22 = "00000125-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 43:
          v22 = "00000122-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 44:
          v22 = "000000D8-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 45:
          v22 = "0000008A-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 46:
          v22 = "0000004A-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 47:
          v22 = "000000D0-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 48:
          v22 = "000000B7-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 49:
          v22 = "0000020A-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 50:
          v22 = "0000020F-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 51:
          v22 = "0000008B-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 52:
          v22 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_119:
          v21 = v22 - 32;
          break;
        default:
          break;
      }

      if (v20 == (v21 | 0x8000000000000000))
      {
        break;
      }

      v23 = sub_1D1E6904C();

      if (v23)
      {
        goto LABEL_125;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_125:
    v24 = v38;
    v25 = v31;
    sub_1D1741C08(v38 + *(v33 + 116), v31, &qword_1EC642590, qword_1D1E71260);
    sub_1D1BC9194(v24, type metadata accessor for StaticService);
    v26 = sub_1D1E66A7C();
    v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
    sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
    if (v27 != 1)
    {
      goto LABEL_4;
    }

    v9 = v35;
    v5 = v36;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_131;
    }

    if (++v32 >= v30)
    {

      LOBYTE(v9) = 1;
      return v9;
    }

LABEL_5:
    if (++v10 == v37)
    {
      goto LABEL_129;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
  return v9;
}

void *StaticAccessory.staticServicesExcludingComponents.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v64 = &v54 - v3;
  v4 = &qword_1EC642DB0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v67 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v54 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - v12;
  v14 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 80));
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v56 = 0x80000001D1EB2DA0;
  v65 = v14;

  v21 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  v59 = v15;
  v60 = v19;
  v61 = v13;
  if (v18)
  {
    while (1)
    {
LABEL_11:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v65;
      v27 = *(v65 + 48);
      v28 = sub_1D1E66A7C();
      v68 = *(v28 - 8);
      (*(v68 + 16))(v13, v27 + *(v68 + 72) * v25, v28);
      v29 = *(v26 + 56);
      v30 = type metadata accessor for StaticService(0);
      v57 = *(v30 - 8);
      v58 = *(v57 + 72);
      v31 = v29 + v58 * v25;
      v32 = v67;
      sub_1D1BC8E68(v31, &v13[*(v67 + 48)], type metadata accessor for StaticService);
      v33 = v13;
      v34 = v62;
      sub_1D1741C08(v33, v62, v4, &unk_1D1E6F360);
      v35 = v34 + *(v32 + 48);
      v66 = v30;
      v36 = v4;
      v37 = v64;
      sub_1D1741C08(v35 + *(v30 + 116), v64, &qword_1EC642590, qword_1D1E71260);
      sub_1D1BC9194(v35, type metadata accessor for StaticService);
      v38 = v68;
      LODWORD(v35) = (*(v68 + 48))(v37, 1, v28);
      v39 = v37;
      v4 = v36;
      sub_1D1741A30(v39, &qword_1EC642590, qword_1D1E71260);
      v42 = *(v38 + 8);
      v40 = v38 + 8;
      v41 = v42;
      v43 = v34;
      v13 = v61;
      v42(v43, v28);
      v19 = v60;
      if (v35 != 1)
      {
        goto LABEL_6;
      }

      v68 = v40;
      v44 = v63;
      sub_1D1741C08(v13, v63, v36, &unk_1D1E6F360);
      v45 = v44 + *(v67 + 48);
      v46 = *(v45 + *(v66 + 104));
      sub_1D1BC9194(v45, type metadata accessor for StaticService);
      v69 = v46;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v56 == v47)
      {

        v41(v63, v28);
        goto LABEL_6;
      }

      v22 = sub_1D1E6904C();

      v41(v63, v28);
      if ((v22 & 1) == 0)
      {
        sub_1D1741C08(v13, v54, v36, &unk_1D1E6F360);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1D177D048(0, v55[2] + 1, 1, v55);
        }

        v49 = v55[2];
        v48 = v55[3];
        v66 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v55 = sub_1D177D048(v48 > 1, v49 + 1, 1, v55);
        }

        v50 = *(v67 + 48);
        sub_1D1741A30(v13, v36, &unk_1D1E6F360);
        v51 = v55;
        v55[2] = v66;
        v52 = v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + v49 * v58;
        v53 = v54;
        sub_1D1BC91F4(v54 + v50, v52, type metadata accessor for StaticService);
        result = (v41)(v53, v28);
        v15 = v59;
        if (!v18)
        {
          break;
        }
      }

      else
      {
LABEL_6:
        result = sub_1D1741A30(v13, v36, &unk_1D1E6F360);
        v15 = v59;
        if (!v18)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v55;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticAccessory.temperatureStringStatusIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  v19 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v19 + 88), v9, &qword_1EC642590, qword_1D1E71260);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    (*(v3 + 56))(v18, 1, 1, v2);
LABEL_9:
    result = sub_1D1741A30(v18, &qword_1EC6436F0, &qword_1D1E99BC0);
    v25 = v29;
    v29[1] = 0;
    v25[2] = 0;
    *v25 = 0;
    return result;
  }

  (*(v11 + 32))(v14, v9, v10);
  v20 = *(v1 + *(v19 + 80));
  if (*(v20 + 16))
  {

    v21 = sub_1D1742188(v14);
    if (v22)
    {
      sub_1D1BC8E68(*(v20 + 56) + *(v3 + 72) * v21, v18, type metadata accessor for StaticService);
      (*(v11 + 8))(v14, v10);

      v23 = 0;
      goto LABEL_8;
    }
  }

  (*(v11 + 8))(v14, v10);
  v23 = 1;
LABEL_8:
  (*(v3 + 56))(v18, v23, 1, v2);
  if ((*(v3 + 48))(v18, 1, v2) == 1)
  {
    goto LABEL_9;
  }

  v26 = v28;
  sub_1D1BC8E68(v18, v28, type metadata accessor for StaticService);
  v30 = 1;
  sub_1D18F211C(v26, &v30, v29);
  return sub_1D1BC9194(v18, type metadata accessor for StaticService);
}

uint64_t StaticAccessory.statusIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v16 + 88), v6, &qword_1EC642590, qword_1D1E71260);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    v17 = type metadata accessor for StaticService(0);
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
LABEL_9:
    result = sub_1D1741A30(v15, &qword_1EC6436F0, &qword_1D1E99BC0);
    v26 = 0;
    v27 = 92;
    v28 = 0x80;
    goto LABEL_16;
  }

  (*(v8 + 32))(v11, v6, v7);
  v18 = *(v1 + *(v16 + 80));
  if (*(v18 + 16))
  {
    v19 = *(v1 + *(v16 + 80));

    v20 = sub_1D1742188(v11);
    if (v21)
    {
      v22 = v20;
      v36 = *(v18 + 56);
      v23 = type metadata accessor for StaticService(0);
      v24 = *(v23 - 1);
      sub_1D1BC8E68(v36 + *(v24 + 72) * v22, v15, type metadata accessor for StaticService);
      (*(v8 + 8))(v11, v7);

      (*(v24 + 56))(v15, 0, 1, v23);
      goto LABEL_8;
    }
  }

  (*(v8 + 8))(v11, v7);
  v23 = type metadata accessor for StaticService(0);
  (*(*(v23 - 1) + 56))(v15, 1, 1, v23);
LABEL_8:
  type metadata accessor for StaticService(0);
  if ((*(*(v23 - 1) + 48))(v15, 1, v23) == 1)
  {
    goto LABEL_9;
  }

  v29 = v15[v23[28]];
  if (v29 == 53)
  {
    v29 = v15[v23[26]];
  }

  v30 = v15[v23[27]];
  v31 = &v15[v23[25]];
  v32 = v31[1];
  v26 = v29 | (v30 << 8);
  if (v32)
  {
    v33 = *v31;
    v34 = v31[1];

    v35._countAndFlagsBits = v33;
    v35._object = v32;
    IconSymbol.init(rawValue:)(v35);
    v27 = v37;
  }

  else
  {
    v27 = 92;
  }

  result = sub_1D1BC9194(v15, type metadata accessor for StaticService);
  v28 = 0;
LABEL_16:
  *a1 = v26;
  *(a1 + 8) = v28;
  *(a1 + 9) = v27;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t StaticAccessory.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for StaticAccessory(0);
  sub_1D17721A0(*(v1 + *(v7 + 52)), v6);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BB8600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  sub_1D17721A0(*(v2 + *(a1 + 52)), &v12 - v7);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t StaticAccessory.staticDevice.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BB872C, 0, 0);
}

uint64_t sub_1D1BB872C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for StaticAccessory(0) + 144);
  if (*(v2 + 8))
  {
    v3 = v0[2];
    v4 = type metadata accessor for StaticMatterDevice();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *v2;
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_1D17D0740;
    v9 = v0[2];

    return static StaticMatterDevice.find(nodeId:)(v9, v7);
  }
}

HomeDataModel::StaticAccessory::HomePodTypes_optional __swiftcall StaticAccessory.HomePodTypes.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StaticAccessory.SpecialMediaCategory.supportsAlarmsAndTimers.getter()
{
  v1 = *(v0 + 8);
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      return *v0 & 1;
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

BOOL StaticAccessory.SpecialMediaCategory.supportsMediaPlayer.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    return v1 != 0;
  }

  if (v1 == 2)
  {
    return (*v0 >> 8) & 1 | *v0 & 1;
  }

  return 1;
}

BOOL StaticAccessory.SpecialMediaCategory.isTileRepresentable.getter()
{
  if (*(v0 + 8) != 2)
  {
    return 0;
  }

  if (*v0)
  {
    return (*v0 & 0x100) == 0;
  }

  return 0;
}

uint64_t sub_1D1BB89D4(uint64_t a1)
{
  v2 = sub_1D1BC970C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8A10(uint64_t a1)
{
  v2 = sub_1D1BC970C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8A4C(uint64_t a1)
{
  v2 = sub_1D1BC96B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8A88(uint64_t a1)
{
  v2 = sub_1D1BC96B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8AC4(uint64_t a1)
{
  v2 = sub_1D1BC9664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8B00(uint64_t a1)
{
  v2 = sub_1D1BC9664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8B3C(uint64_t a1)
{
  v2 = sub_1D1BC9610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8B78(uint64_t a1)
{
  v2 = sub_1D1BC9610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8BB4()
{
  v1 = *v0;
  v2 = 0x74726F50726961;
  v3 = 0x70646E4569726973;
  if (v1 != 5)
  {
    v3 = 0x72656B61657073;
  }

  v4 = 0x6172656D6163;
  if (v1 != 3)
  {
    v4 = 0x646F50656D6F68;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x5654656C707061;
  if (v1 != 1)
  {
    v5 = 0x6365526F69647561;
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

uint64_t sub_1D1BB8CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1BCBA90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1BB8CC8(uint64_t a1)
{
  v2 = sub_1D1BC946C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8D04(uint64_t a1)
{
  v2 = sub_1D1BC946C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8D40(uint64_t a1)
{
  v2 = sub_1D1BC9568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8D7C(uint64_t a1)
{
  v2 = sub_1D1BC9568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D1BB8DB8()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_1D1BB8DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000015 && 0x80000001D1EC62D0 == a2;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC62F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1BB8ED8(uint64_t a1)
{
  v2 = sub_1D1BC9514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8F14(uint64_t a1)
{
  v2 = sub_1D1BC9514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8F50(uint64_t a1)
{
  v2 = sub_1D1BC94C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8F8C(uint64_t a1)
{
  v2 = sub_1D1BC94C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAccessory.SpecialMediaCategory.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C390, &qword_1D1E9E5B0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C398, &qword_1D1E9E5B8);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3A0, &qword_1D1E9E5C0);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3A8, &qword_1D1E9E5C8);
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3B0, &qword_1D1E9E5D0);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v46 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3B8, &qword_1D1E9E5D8);
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3C0, &qword_1D1E9E5E0);
  v46 = *(v23 - 8);
  v24 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3C8, &qword_1D1E9E5E8);
  v28 = *(v27 - 8);
  v64 = v27;
  v65 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v46 - v30;
  v32 = *v2;
  v33 = *(v2 + 8);
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BC946C();
  sub_1D1E6930C();
  if (v33 <= 1)
  {
    if (v33)
    {
      LOBYTE(v67) = 4;
      sub_1D1BC9568();
      v35 = v56;
      v36 = v64;
      sub_1D1E68DFC();
      LOBYTE(v67) = v32;
      sub_1D1BC95BC();
      v37 = v60;
      sub_1D1E68F1C();
      v38 = v59;
    }

    else
    {
      LOBYTE(v67) = 3;
      sub_1D1BC9610();
      v35 = v55;
      v36 = v64;
      sub_1D1E68DFC();
      v67 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
      sub_1D1BC92B0(&qword_1EC646B10, &qword_1EE07B258);
      v37 = v58;
      sub_1D1E68E5C();
      v38 = v57;
    }

    goto LABEL_14;
  }

  if (v33 == 2)
  {
    LOBYTE(v67) = 5;
    sub_1D1BC9514();
    v35 = v61;
    v36 = v64;
    sub_1D1E68DFC();
    LOBYTE(v67) = 0;
    v37 = v63;
    v39 = v66;
    sub_1D1E68EDC();
    if (v39)
    {
      (*(v62 + 8))(v35, v37);
      return (*(v65 + 8))(v31, v36);
    }

    LOBYTE(v67) = 1;
    sub_1D1E68EDC();
    v38 = v62;
LABEL_14:
    (*(v38 + 8))(v35, v37);
    return (*(v65 + 8))(v31, v36);
  }

  if (v32 > 1)
  {
    if (v32 == 2)
    {
      LOBYTE(v67) = 2;
      sub_1D1BC9664();
      v41 = v49;
      v40 = v64;
      sub_1D1E68DFC();
      v43 = v50;
      v42 = v51;
    }

    else
    {
      LOBYTE(v67) = 6;
      sub_1D1BC94C0();
      v41 = v52;
      v40 = v64;
      sub_1D1E68DFC();
      v43 = v53;
      v42 = v54;
    }

    (*(v43 + 8))(v41, v42);
  }

  else
  {
    if (v32)
    {
      LOBYTE(v67) = 1;
      sub_1D1BC96B8();
      v45 = v64;
      sub_1D1E68DFC();
      (*(v47 + 8))(v22, v48);
      return (*(v65 + 8))(v31, v45);
    }

    LOBYTE(v67) = 0;
    sub_1D1BC970C();
    v40 = v64;
    sub_1D1E68DFC();
    (*(v46 + 8))(v26, v23);
  }

  return (*(v65 + 8))(v31, v40);
}

uint64_t StaticAccessory.SpecialMediaCategory.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      MEMORY[0x1D3892850](5);
      sub_1D1E6922C();
      return sub_1D1E6922C();
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 6;
      }
    }

    else
    {
      v7 = v4 != 0;
    }

    return MEMORY[0x1D3892850](v7);
  }

  if (v5)
  {
    MEMORY[0x1D3892850](4);
    v7 = v4;
    return MEMORY[0x1D3892850](v7);
  }

  MEMORY[0x1D3892850](3);
  if (!v4)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D176D4E8(a1, v4);
}