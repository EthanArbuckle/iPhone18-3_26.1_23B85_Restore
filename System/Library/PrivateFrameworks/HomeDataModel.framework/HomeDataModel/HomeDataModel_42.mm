uint64_t StaticMatterDevice.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = swift_task_alloc();
  v3[9] = v4;
  *v4 = v3;
  v4[1] = sub_1D1A4E218;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E218(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E318, 0, 0);
}

uint64_t sub_1D1A4E318()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[8];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4E3F4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E3F4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E4F4, 0, 0);
}

uint64_t sub_1D1A4E4F4()
{
  v18 = v0;
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[8];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    v7 = HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);
    v9 = v8;

    if (v7)
    {
      v10 = v0[7];
      v17[0] = 2;
      if (v10)
      {
        v11 = v0[6];
        v12 = MEMORY[0x1E69E6158];
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v0[4] = 0;
      }

      v0[2] = v11;
      v0[3] = v10;
      v0[5] = v12;
      ObjectType = swift_getObjectType();
      v14 = *(v9 + 72);
      swift_unknownObjectRetain();

      v14(v17, 0x10000, v0 + 2, ObjectType, v9);
      swift_unknownObjectRelease_n();
      sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t StaticMatterDevice.set(tileSize:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = *a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4E6F8;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E6F8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E7F8, 0, 0);
}

uint64_t sub_1D1A4E7F8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4E8DC;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E8DC(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E9DC, 0, 0);
}

uint64_t sub_1D1A4E9DC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice();
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    if (v8 == 2)
    {
      v9 = v7;
      v10 = 0;
    }

    else
    {
      v11 = "40-A849-215882E2F008";
      if (v8)
      {
        v11 = "HFTileResizableSizeSmall";
      }

      if (v11 | 0x8000000000000000) == 0x80000001D1EB3840 && (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_1D1E6904C();
      }

      v12 = v7;
    }

    sub_1D1A46850(v10 & 1);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t _s13HomeDataModel18StaticMatterDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v17 = type metadata accessor for StaticMatterDevice();
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    goto LABEL_30;
  }

  v18 = v17;
  v19 = *(v17 + 24);
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (*(a1 + v18[7]) != *(a2 + v18[7]))
  {
    goto LABEL_30;
  }

  if ((sub_1D17A7F14(*(a1 + v18[8]), *(a2 + v18[8])) & 1) == 0)
  {
    goto LABEL_30;
  }

  v24 = v18[9];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v25 = v18[10];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v26 = v18[11];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v30)
  {
    goto LABEL_30;
  }

  v31 = v18[12];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v32 = v18[13];
  v33 = *(v13 + 48);
  sub_1D174A548(a1 + v32, v16);
  v40 = v33;
  sub_1D174A548(a2 + v32, &v16[v33]);
  v34 = *(v5 + 48);
  if (v34(v16, 1, v4) != 1)
  {
    sub_1D174A548(v16, v12);
    if (v34(&v16[v40], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v8, &v16[v40], v4);
    sub_1D1A4FCC0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    v35 = sub_1D1E6775C();
    v36 = *(v5 + 8);
    v36(v8, v4);
    v36(v12, v4);
    sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v35)
    {
      goto LABEL_27;
    }

LABEL_30:
    v37 = 0;
    return v37 & 1;
  }

  if (v34(&v16[v40], 1, v4) != 1)
  {
LABEL_25:
    sub_1D1741A30(v16, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_30;
  }

  sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_27:
  if ((sub_1D184B120(*(a1 + v18[14]), *(a2 + v18[14])) & 1) == 0 || !_s13HomeDataModel18MatterTileMetadataV2eeoiySbAC_ACtFZ_0((a1 + v18[15]), a2 + v18[15]))
  {
    goto LABEL_30;
  }

  v37 = *(a1 + v18[16]) ^ *(a2 + v18[16]) ^ 1;
  return v37 & 1;
}

unint64_t sub_1D1A4EF94()
{
  result = qword_1EC649668;
  if (!qword_1EC649668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649668);
  }

  return result;
}

unint64_t sub_1D1A4EFE8()
{
  result = qword_1EC649678;
  if (!qword_1EC649678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649670, &qword_1D1E947E8);
    sub_1D1A4FCC0(&qword_1EC6446D8, type metadata accessor for StaticEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649678);
  }

  return result;
}

unint64_t sub_1D1A4F0A4()
{
  result = qword_1EC649688;
  if (!qword_1EC649688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649670, &qword_1D1E947E8);
    sub_1D1A4FCC0(&qword_1EC644740, type metadata accessor for StaticEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649688);
  }

  return result;
}

uint64_t sub_1D1A4F230(void *a1)
{
  a1[1] = sub_1D1A4FCC0(&qword_1EC649698, type metadata accessor for StaticMatterDevice);
  a1[2] = sub_1D1A4FCC0(&qword_1EC6496A0, type metadata accessor for StaticMatterDevice);
  a1[3] = sub_1D1A4FCC0(&qword_1EC649240, type metadata accessor for StaticMatterDevice);
  a1[4] = sub_1D1A4FCC0(&qword_1EC649210, type metadata accessor for StaticMatterDevice);
  a1[5] = sub_1D1A4FCC0(&qword_1EC6496A8, type metadata accessor for StaticMatterDevice);
  result = sub_1D1A4FCC0(&qword_1EC6496B0, type metadata accessor for StaticMatterDevice);
  a1[6] = result;
  return result;
}

void sub_1D1A4F37C()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MTRDeviceState(319);
    if (v1 <= 0x3F)
    {
      sub_1D1900840();
      if (v2 <= 0x3F)
      {
        sub_1D17786E4();
        if (v3 <= 0x3F)
        {
          sub_1D17B77BC();
          if (v4 <= 0x3F)
          {
            sub_1D1A4F4A4();
            if (v5 <= 0x3F)
            {
              type metadata accessor for MatterTileMetadata();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1A4F4A4()
{
  if (!qword_1EE07B768)
  {
    type metadata accessor for StaticEndpoint();
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B768);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticMatterDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticMatterDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1A4F660()
{
  result = qword_1EC6496B8;
  if (!qword_1EC6496B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496B8);
  }

  return result;
}

unint64_t sub_1D1A4F6B8()
{
  result = qword_1EC6496C0;
  if (!qword_1EC6496C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496C0);
  }

  return result;
}

unint64_t sub_1D1A4F710()
{
  result = qword_1EC6496C8;
  if (!qword_1EC6496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496C8);
  }

  return result;
}

uint64_t sub_1D1A4F764(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644965646F6ELL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496D6F6F72 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000444979 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC38B0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D1A4FB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A4FBE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A4FC48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_30_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1A4FCC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StaticMatterDevice.mainEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-v5];
  v7 = *(v1 + *(type metadata accessor for StaticMatterDevice() + 56));
  v14 = v1;

  sub_1D1746B78(sub_1D18076C8, v7, v6);

  v8 = type metadata accessor for StaticEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {

    sub_1D1771D7C(v11, a1);

    result = v10(v6, 1, v8);
    if (result != 1)
    {
      return sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v6, a1);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

char StaticMatterDevice.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = type metadata accessor for StaticMatterDevice();
  v11 = *(v1 + v10[14]);
  v25 = v1;

  sub_1D1746B78(sub_1D18085E0, v11, v7);

  v12 = type metadata accessor for StaticEndpoint();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v7, 1, v12) == 1)
  {

    sub_1D1771D7C(v15, v9);

    if (v14(v7, 1, v12) != 1)
    {
      sub_1D1741A30(v7, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v7, v9);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  if (v14(v9, 1, v12) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*&v9[*(v12 + 32)], &v27);
    v16 = v27;
    result = sub_1D1A51C10(v9, type metadata accessor for StaticEndpoint);
    if (v16 != 28)
    {
      goto LABEL_9;
    }
  }

  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v10[8]), &v27);
  v16 = v27;
LABEL_9:
  v18 = v1 + v10[15];
  v19 = *(v18 + 24);
  if (v19)
  {
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);

    v22._countAndFlagsBits = v20;
    v22._object = v19;
    result = IconSymbol.init(rawValue:)(v22).value;
    v23 = v26;
  }

  else
  {
    v23 = 92;
  }

  *a1 = v16;
  *(a1 + 8) = 32;
  *(a1 + 9) = v23;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t StaticMatterDevice.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v23[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23[-v10];
  v12 = type metadata accessor for StaticMatterDevice();
  if (*(v0 + *(v12 + 28)) == 2)
  {
    goto LABEL_8;
  }

  v13 = *(v0 + *(v12 + 56));
  MEMORY[0x1EEE9AC00](v12);
  *&v23[-16] = v0;

  sub_1D1746B78(sub_1D18085E0, v13, v9);

  v14 = type metadata accessor for StaticEndpoint();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v9, 1, v14) == 1)
  {

    sub_1D1771D7C(v17, v11);

    if (v16(v9, 1, v14) != 1)
    {
      sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v9, v11);
    (*(v15 + 56))(v11, 0, 1, v14);
  }

  if (v16(v11, 1, v14) != 1)
  {
    if (*&v11[*(v14 + 28)] != 2)
    {
      v19 = sub_1D1A45DFC();
      if (v19 != 2)
      {
        LOBYTE(v18) = v19;
        goto LABEL_16;
      }

      sub_1D1741C08(&v11[*(v14 + 40)], v4, &qword_1EC644778, &unk_1D1E75B10);
      v20 = type metadata accessor for StaticRVCClusterGroup();
      if ((*(*(v20 - 8) + 48))(v4, 1, v20) != 1)
      {
        v21 = v4[*(v20 + 20)];
        v18 = (v21 > 0xB) | (0x15u >> v21);
        sub_1D1A51C10(v4, type metadata accessor for StaticRVCClusterGroup);
        goto LABEL_16;
      }

      sub_1D1741A30(v4, &qword_1EC644778, &unk_1D1E75B10);
    }

    LOBYTE(v18) = 0;
LABEL_16:
    sub_1D1A51C10(v11, type metadata accessor for StaticEndpoint);
    return v18 & 1;
  }

  sub_1D1741A30(v11, &qword_1EC644780, &qword_1D1E91AA0);
LABEL_8:
  LOBYTE(v18) = 0;
  return v18 & 1;
}

unint64_t StaticMatterDevice.canBeToggled.getter()
{
  v1 = type metadata accessor for StaticEndpoint();
  v52 = *(v1 - 1);
  v2 = *(v52 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v55 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v48[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48[-v11];
  v13 = *(v0 + *(type metadata accessor for StaticMatterDevice() + 56));
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v54 = v13;

  v20 = 0;
  v21 = 0;
  v53 = v1;
  v50 = v12;
  while (2)
  {
    v49 = v20;
    while (1)
    {
      if (!v17)
      {
        if (v18 <= v21 + 1)
        {
          v23 = v21 + 1;
        }

        else
        {
          v23 = v18;
        }

        v24 = v23 - 1;
        while (1)
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_43;
          }

          if (v22 >= v18)
          {
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
            (*(*(v46 - 8) + 56))(v10, 1, 1, v46);
            v17 = 0;
            v21 = v24;
            goto LABEL_19;
          }

          v17 = *(v14 + 8 * v22);
          ++v21;
          if (v17)
          {
            v21 = v22;
            goto LABEL_18;
          }
        }
      }

      v22 = v21;
LABEL_18:
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(v54 + 48) + 2 * v26);
      v28 = v51;
      sub_1D1A51BA8(*(v54 + 56) + *(v52 + 72) * v26, v51, type metadata accessor for StaticEndpoint);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      v30 = *(v29 + 48);
      *v10 = v27;
      sub_1D1A51600(v28, v10 + v30);
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      v1 = v53;
      v12 = v50;
LABEL_19:
      sub_1D1A51B38(v10, v12);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      if ((*(*(v31 - 8) + 48))(v12, 1, v31) == 1)
      {
        v47 = v49;
LABEL_40:

        return v47 & 1;
      }

      v32 = v55;
      result = sub_1D1A51600(&v12[*(v31 + 48)], v55);
      if (*&v32[v1[7]] != 2)
      {
        break;
      }

LABEL_7:
      result = sub_1D1A51C10(v32, type metadata accessor for StaticEndpoint);
    }

    if (*(*&v32[v1[9]] + 16))
    {
      result = sub_1D171D278(11);
      if (v33)
      {
LABEL_5:
        result = sub_1D1A51C10(v32, type metadata accessor for StaticEndpoint);
        v20 = 1;
        if ((v49 & 1) == 0)
        {
          continue;
        }

        v47 = 0;
        goto LABEL_40;
      }
    }

    break;
  }

  v34 = 0;
  v35 = *&v32[v1[8]];
  v36 = 1 << *(v35 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v35 + 56);
  v39 = (v36 + 63) >> 6;
  while (v38)
  {
    v40 = v34;
LABEL_33:
    v41 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v42 = *(*(v35 + 48) + (v41 | (v40 << 6)));
    v43 = v42 > 0x15;
    v44 = (1 << v42) & 0x203AD0;
    if (!v43 && v44 != 0)
    {
      goto LABEL_5;
    }
  }

  while (1)
  {
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v40 >= v39)
    {
      goto LABEL_7;
    }

    v38 = *(v35 + 56 + 8 * v40);
    ++v34;
    if (v38)
    {
      v34 = v40;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t StaticMatterDevice.statusString(with:associatedMatterDevice:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  v14 = sub_1D1E669FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v49 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v49 - v26;
  if (*a1 == 1 && *&v1[*(type metadata accessor for StaticMatterDevice() + 28)] == 2)
  {
    v28 = a1[4];
    v29 = v15;
    (*(v15 + 56))(v27, 1, 1, v14);
    if (v28 < 3)
    {
      v51[3] = &type metadata for HomeAppFeatures;
      v51[4] = sub_1D19C6154();
      LOBYTE(v51[0]) = 3;
      v30 = sub_1D1E66D5C();
      __swift_destroy_boxed_opaque_existential_1(v51);
      if (v30)
      {
        sub_1D1741C08(v27, v25, &qword_1EC642570, &qword_1D1E6C6A0);
        if ((*(v15 + 48))(v25, 1, v14) == 1)
        {
          sub_1D1741A30(v25, &qword_1EC642570, &qword_1D1E6C6A0);
        }

        else
        {
          v44 = *(v15 + 32);
          v45 = v49;
          v44(v49, v25, v14);
          sub_1D1E668FC();
          sub_1D1A51D44(&qword_1EC642AC8, MEMORY[0x1E6969530]);
          v46 = sub_1D1E6775C();
          v47 = *(v29 + 8);
          v47(v19, v14);
          if ((v46 & 1) == 0)
          {
            sub_1D1E6691C();
            v48 = sub_1D1E6775C();
            v47(v19, v14);
            if ((v48 & 1) == 0)
            {
              LOBYTE(v51[0]) = 0;
              v50 = 2;
              v41 = sub_1D1CF0230(v45, &v50);
              v47(v45, v14);
              goto LABEL_23;
            }
          }

          v47(v45, v14);
        }
      }

      v43 = 0x80000001D1EBAD70;
      v42 = 0xD00000000000001ELL;
LABEL_22:
      v41 = static String.hfLocalized(_:)(v42, v43);
LABEL_23:
      sub_1D1741A30(v27, &qword_1EC642570, &qword_1D1E6C6A0);
      return v41;
    }

    if (v28 == 3)
    {
      v42 = 0xD000000000000022;
      v43 = 0x80000001D1EC38F0;
      goto LABEL_22;
    }

    v37 = &qword_1EC642570;
    v38 = &qword_1D1E6C6A0;
    v39 = v27;
LABEL_13:
    sub_1D1741A30(v39, v37, v38);
    return 0;
  }

  v49 = a1;
  v31 = type metadata accessor for StaticMatterDevice();
  v32 = *&v1[*(v31 + 56)];
  MEMORY[0x1EEE9AC00](v31);
  *(&v49 - 2) = v1;

  sub_1D1746B78(sub_1D18085E0, v32, v11);

  v33 = type metadata accessor for StaticEndpoint();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v11, 1, v33) == 1)
  {

    sub_1D1771D7C(v36, v13);

    if (v35(v11, 1, v33) != 1)
    {
      sub_1D1741A30(v11, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v11, v13);
    (*(v34 + 56))(v13, 0, 1, v33);
  }

  if (v35(v13, 1, v33) == 1)
  {
    v37 = &qword_1EC644780;
    v38 = &qword_1D1E91AA0;
    v39 = v13;
    goto LABEL_13;
  }

  sub_1D1A51BA8(v1, v6, type metadata accessor for StaticMatterDevice);
  (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
  v41 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v49);
  sub_1D1741A30(v6, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1A51C10(v13, type metadata accessor for StaticEndpoint);
  return v41;
}

uint64_t StaticMatterDevice.statusString.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for StatusStrings.Options();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6[13];
  v11 = sub_1D1E669FC();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *v9 = 65793;
  *(v9 + 2) = 1;
  v9[6] = 0;
  v9[v6[14]] = 2;
  v12 = &v9[v6[15]];
  v12[4] = 0;
  *v12 = 2;
  sub_1D1A51BA8(v0, v4, type metadata accessor for StaticMatterDevice);
  v13 = type metadata accessor for StaticMatterDevice();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = StaticMatterDevice.statusString(with:associatedMatterDevice:)(v9);
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1A51C10(v9, type metadata accessor for StatusStrings.Options);
  return v14;
}

uint64_t StaticMatterDevice.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = type metadata accessor for StaticMatterDevice();
  result = 0;
  if (*(v0 + *(v8 + 28)) == 1)
  {
    v10 = *(v0 + *(v8 + 56));
    MEMORY[0x1EEE9AC00](0);
    *&v16[-16] = v0;

    sub_1D1746B78(sub_1D18085E0, v10, v5);

    v11 = type metadata accessor for StaticEndpoint();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v5, 1, v11) == 1)
    {

      sub_1D1771D7C(v14, v7);

      if (v13(v5, 1, v11) != 1)
      {
        sub_1D1741A30(v5, &qword_1EC644780, &qword_1D1E91AA0);
      }
    }

    else
    {
      sub_1D1A51600(v5, v7);
      (*(v12 + 56))(v7, 0, 1, v11);
    }

    if (v13(v7, 1, v11) == 1)
    {
      sub_1D1741A30(v7, &qword_1EC644780, &qword_1D1E91AA0);
      return 0;
    }

    else
    {
      v15 = StaticEndpoint.tileStatusStringIconSymbolSuffix.getter();
      sub_1D1A51C10(v7, type metadata accessor for StaticEndpoint);
      return v15;
    }
  }

  return result;
}

BOOL sub_1D1A51558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticEndpoint();
  v5 = a1 + *(v4 + 20);
  if (!*(v5 + *(type metadata accessor for EndpointPath(0) + 24)))
  {
    return 0;
  }

  v6 = *(a1 + *(v4 + 32));
  v7 = *(a2 + *(type metadata accessor for StaticMatterDevice() + 32));

  v8 = *(sub_1D1E63F58(v7, v6) + 2);

  return v8 != 0;
}

uint64_t sub_1D1A51600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticEndpoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t StaticMatterDevice.rvcState.getter@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for StaticEndpoint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v37 - v16;
  v17 = *(v1 + *(type metadata accessor for StaticMatterDevice() + 56));
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  v40 = v3;
  v24 = v41;
  if (v20)
  {
    while (1)
    {
      v25 = v23;
LABEL_8:
      v26 = *(v17 + 56) + *(v3 + 72) * (__clz(__rbit64(v20)) | (v25 << 6));
      v27 = v42;
      sub_1D1A51BA8(v26, v42, type metadata accessor for StaticEndpoint);
      sub_1D1A51600(v27, v24);
      sub_1D1741C08(v24 + *(v2 + 40), v15, &qword_1EC644778, &unk_1D1E75B10);
      v28 = type metadata accessor for StaticRVCClusterGroup();
      if ((*(*(v28 - 8) + 48))(v15, 1, v28) != 1)
      {
        break;
      }

      v20 &= v20 - 1;
      sub_1D1A51C10(v24, type metadata accessor for StaticEndpoint);
      result = sub_1D1741A30(v15, &qword_1EC644778, &unk_1D1E75B10);
      v23 = v25;
      v3 = v40;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    sub_1D1741A30(v15, &qword_1EC644778, &unk_1D1E75B10);
    v29 = v38;
    sub_1D1A51600(v24, v38);
    v3 = v40;
    (*(v40 + 56))(v29, 0, 1, v2);
LABEL_12:
    v30 = v39;

    if ((*(v3 + 48))(v29, 1, v2) == 1)
    {
      v31 = &qword_1EC644780;
      v32 = &qword_1D1E91AA0;
      v33 = v29;
    }

    else
    {
      v34 = v37;
      sub_1D1741C08(v29 + *(v2 + 40), v37, &qword_1EC644778, &unk_1D1E75B10);
      sub_1D1A51C10(v29, type metadata accessor for StaticEndpoint);
      v35 = type metadata accessor for StaticRVCClusterGroup();
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) != 1)
      {
        v36 = *(v34 + *(v35 + 20));
        result = sub_1D1A51C10(v34, type metadata accessor for StaticRVCClusterGroup);
        goto LABEL_18;
      }

      v31 = &qword_1EC644778;
      v32 = &unk_1D1E75B10;
      v33 = v34;
    }

    result = sub_1D1741A30(v33, v31, v32);
    v36 = 12;
LABEL_18:
    *v30 = v36;
    return result;
  }

LABEL_5:
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      v29 = v38;
      (*(v3 + 56))(v38, 1, 1, v2);
      goto LABEL_12;
    }

    v20 = *(v17 + 64 + 8 * v25);
    ++v23;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A51B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A51BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A51C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A51C70(void *a1)
{
  a1[1] = sub_1D1A51D44(&qword_1EC649240, type metadata accessor for StaticMatterDevice);
  a1[2] = sub_1D1A51D44(&qword_1EC649210, type metadata accessor for StaticMatterDevice);
  a1[3] = sub_1D1A51D44(&qword_1EC6496A8, type metadata accessor for StaticMatterDevice);
  result = sub_1D1A51D44(&qword_1EC6496B0, type metadata accessor for StaticMatterDevice);
  a1[4] = result;
  return result;
}

uint64_t sub_1D1A51D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static StaticMatterDevice.waitFor(values:home:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A51DBC, 0, 0);
}

uint64_t sub_1D1A51DBC()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[5] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D1A51EB0;
  v4.n128_u64[0] = v0[4];
  v5 = v0[2];

  return (sub_1D1A52AAC)(v5, sub_1D1A520D4, v2, v4);
}

uint64_t sub_1D1A51EB0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A51FEC, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D1A51FEC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1D1A52050(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = HMHome.device(for:)(a1);

  return v4;
}

uint64_t static StaticMatterDevice.waitFor(values:timeout:deviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1A52AAC(a1, a2, a3, a4);
}

uint64_t sub_1D1A521AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A52254, 0, 0);
}

uint64_t sub_1D1A52254()
{
  v1 = v0[4];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = v0[4];

  v9 = 0;
  v32 = v1;
  while (v5)
  {
    v10 = v9;
LABEL_10:
    v12 = v0[5];
    v11 = v0[6];
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = (v10 << 9) | (8 * v13);
    v15 = *(*(v1 + 48) + v14);
    v16 = *(*(v1 + 56) + v14);

    v17 = v12(v15);
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      ExpectedValuesBuilder.isEmpty.getter();
      if (v21)
      {

        result = swift_unknownObjectRelease();
      }

      else
      {
        v22 = v0[8];
        v23 = v0[7];
        v24 = v0[3];
        v25 = sub_1D1E67E7C();
        (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
        v26 = swift_allocObject();
        v26[2] = 0;
        v26[3] = 0;
        v26[4] = v19;
        v26[5] = v20;
        v26[6] = v16;
        v26[7] = v23;
        sub_1D1DE299C(v22, &unk_1D1E94D18, v26);
        v27 = v22;
        v1 = v32;
        result = sub_1D1741A30(v27, &unk_1EC6442C0, &qword_1D1E741A0);
      }

      v9 = v10;
    }

    else
    {

      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  v29 = v0[3];
  v28 = v0[4];

  v30 = *v29;
  v31 = swift_task_alloc();
  v0[9] = v31;
  *v31 = v0;
  v31[1] = sub_1D1A524D4;

  return sub_1D17C2A50(v30);
}

void sub_1D1A524D4(uint64_t a1)
{
  v3 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D1A525FC, 0, 0);
  }
}

void sub_1D1A525FC()
{
  v1 = v0[10];
  v2 = sub_1D18DA614(MEMORY[0x1E69E7CC0]);
  v3 = 0;
  v4 = -*(v1 + 16);
LABEL_2:
  v5 = v3 + 1;
  v6 = (v1 + 40 + 16 * v3);
  while (v4 + v5 != 1)
  {
    v3 = v5;
    if ((v5 - 1) >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v6 - 1);
    v8 = *v6;
    if (*v6)
    {
      v12 = *(v6 - 1);
      v13 = v8;
      v14 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v12;
      v17 = sub_1D17420B0(v12);
      v19 = v2[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        v23 = v18;
        if (v2[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_15;
          }

          v27 = v17;
          sub_1D173B58C();
          v17 = v27;
          if (v23)
          {
LABEL_16:
            v25 = v2[7];
            v26 = *(v25 + 8 * v17);
            *(v25 + 8 * v17) = v8;

            goto LABEL_2;
          }
        }

        else
        {
          sub_1D172C9C4(v22, isUniquelyReferenced_nonNull_native);
          v17 = sub_1D17420B0(v16);
          if ((v23 & 1) != (v24 & 1))
          {
LABEL_24:

            sub_1D1E690FC();
            return;
          }

LABEL_15:
          if (v23)
          {
            goto LABEL_16;
          }
        }

        v2[(v17 >> 6) + 8] |= 1 << v17;
        *(v2[6] + 8 * v17) = v16;
        *(v2[7] + 8 * v17) = v8;

        v28 = v2[2];
        v21 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (!v21)
        {
          v2[2] = v29;
          goto LABEL_2;
        }
      }

      __break(1u);
      return;
    }

    v5 = v3 + 1;
    v6 += 2;
    v9 = sub_1D17420B0(v7);
    if (v10)
    {
      v11 = v9;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_1D173B58C();
      }

      sub_1D1757DEC(v11, v2);
      goto LABEL_2;
    }
  }

  v30 = v0[10];
  v31 = v0[8];
  v32 = v0[2];

  *v32 = v2;

  v33 = v0[1];

  v33();
}

uint64_t sub_1D1A52884(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a2;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1A528AC, 0, 0);
}

uint64_t sub_1D1A528AC()
{
  v10 = v0;
  v1 = *(v0 + 5);
  v8 = MEMORY[0x1E69E7CC8];
  v9 = v1;
  sub_1D1A14738(&v9, &v8);
  v2 = v8;
  *(v0 + 7) = v8;
  v3 = swift_task_alloc();
  *(v0 + 8) = v3;
  *v3 = v0;
  v3[1] = sub_1D1A5296C;
  v4 = v0[6];
  v6 = *(v0 + 3);
  v5 = *(v0 + 4);

  return sub_1D1A52FE4(v6, v5, v2, v4);
}

uint64_t sub_1D1A5296C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D1A52A8C, 0, 0);
}

uint64_t sub_1D1A52AAC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a4;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A52AD4, 0, 0);
}

uint64_t sub_1D1A52AD4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643360, &qword_1D1E717C8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6496D0, &qword_1D1E94CF0);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  v7 = *(MEMORY[0x1E69E87D8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1D1A52C08;

  return MEMORY[0x1EEE6DBF8](v0 + 16, v3, v4, 0, 0, &unk_1D1E94D00, v5, v3);
}

uint64_t sub_1D1A52C08()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1A52D20, 0, 0);
}

uint64_t sub_1D1A52D20()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    sub_1D1A52EB8();
    swift_allocError();
    *v2 = v1;
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 16);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1A52DE4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1A521AC(a1, a2, v6, v7, v8, v9);
}

unint64_t sub_1D1A52EB8()
{
  result = qword_1EC6496D8;
  if (!qword_1EC6496D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496D8);
  }

  return result;
}

uint64_t sub_1D1A52F0C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1A52884(a1, v9, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1A52FE4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 48) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = sub_1D1E67D8C();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A530AC, 0, 0);
}

uint64_t sub_1D1A530AC()
{
  v29 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_1D1E6709C();
  v0[10] = __swift_project_value_buffer(v3, qword_1EE07A0B0);
  swift_unknownObjectRetain();

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 134349314;
    ObjectType = swift_getObjectType();
    *(v9 + 4) = (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
    *(v9 + 12) = 2082;
    sub_1D1A53944();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
    sub_1D1A10C28();
    v12 = sub_1D1E6760C();
    v14 = sub_1D1B1312C(v12, v13, &v28);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "[%{public}llu] waiting for attribute values: %{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
    v15 = v0[3];
    swift_unknownObjectRelease();
  }

  v16 = v0[3];
  v27 = v0[4];
  v17 = swift_getObjectType();
  v0[11] = v17;
  v18 = *(v27 + 128);
  v26 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_1D1A5339C;
  v21.n128_u64[0] = v0[6];
  v22 = v0[4];
  v23 = v0[5];
  v24 = v0[3];

  return v26(v23, v17, v22, v21);
}

uint64_t sub_1D1A5339C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D1A53610;
  }

  else
  {
    v3 = sub_1D1A534B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A534B0()
{
  v1 = v0[10];
  v2 = v0[3];
  swift_unknownObjectRetain();
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[3];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    v9 = *(v7 + 8);
    *(v8 + 4) = v9(v5, v7);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1D16EC000, v3, v4, "[%{public}llu] attribute values reached", v8, 0xCu);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
    v10 = v0[3];
    v11 = v0[4];
    swift_unknownObjectRelease();

    v9 = *(v11 + 8);
  }

  v12 = v0[3];
  v13 = v9(v0[11], v0[4]);
  v14 = v0[9];

  v15 = v0[1];

  return v15(v13, 0);
}

uint64_t sub_1D1A53610()
{
  v1 = v0[13];
  v0[2] = v1;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v5 = v0[10];
    v6 = v0[3];
    (*(v0[8] + 8))(v0[9], v0[7]);
    swift_unknownObjectRetain();
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6835C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[11];
      v10 = v0[3];
      v11 = v0[4];
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      v13 = *(v11 + 8);
      *(v12 + 4) = v13(v9, v11);
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1D16EC000, v7, v8, "[%{public}llu] stopped waiting becaused task was cancelled", v12, 0xCu);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {
      v28 = v0[3];
      v29 = v0[4];
      swift_unknownObjectRelease();

      v13 = *(v29 + 8);
    }

    v30 = v0[13];
    v31 = v0[3];
    v32 = v13(v0[11], v0[4]);

    v33 = 0;
  }

  else
  {
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[3];
    swift_unknownObjectRetain();
    v17 = v14;
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6835C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[13];
      v40 = v0[11];
      v21 = v0[3];
      v22 = v0[4];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 134349314;
      v25 = *(v22 + 8);
      *(v23 + 4) = v25(v40, v22);
      swift_unknownObjectRelease();
      *(v23 + 12) = 2112;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v27;
      *v24 = v27;
      _os_log_impl(&dword_1D16EC000, v18, v19, "[%{public}llu] got error %@ when waiting for attribute values", v23, 0x16u);
      sub_1D1741A30(v24, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {
      v34 = v0[3];
      v35 = v0[4];
      swift_unknownObjectRelease();

      v25 = *(v35 + 8);
    }

    v33 = v0[13];
    v36 = v0[3];
    v32 = v25(v0[11], v0[4]);
  }

  v37 = v0[9];

  v38 = v0[1];

  return v38(v32, v33);
}

unint64_t sub_1D1A53944()
{
  result = qword_1EC650120;
  if (!qword_1EC650120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC650120);
  }

  return result;
}

id HMAccessory.accessoryDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A53A8C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMAccessory.accessoryDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC6496E0, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMAccessory.accessoryDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A53D5C;
}

uint64_t sub_1D1A53D5C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return HMAccessory.accessoryDelegate.setter(*a1, v2);
  }

  v5 = *a1;
  v6 = swift_unknownObjectRetain();
  HMAccessory.accessoryDelegate.setter(v6, v2);

  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of AccessoryDelegate.accessory(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 136))();
}

{
  return (*(a4 + 160))();
}

{
  return (*(a4 + 352))();
}

uint64_t dispatch thunk of AccessoryDelegate.accessory(_:didAdd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 232))();
}

{
  return (*(a4 + 496))();
}

uint64_t sub_1D1A54290(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateName: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 24))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A545E8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 isReachable];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateReachability: | accessory={id: %{public}s, name: %s, reachable: %{BOOL}d}", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 32))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A54978(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateServices: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 40))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A54CD0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "accessory:didUpdateNameFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 48))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A55150(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "accessory:didUpdateAssociatedServiceTypeFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 56))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A555D0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC649730);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6832C();

  v21 = os_log_type_enabled(v19, v20);
  v67 = v17;
  v68 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v22 = 136447490;
    v23 = [v14 uniqueIdentifier];
    v63 = v20;
    v24 = v17;
    v25 = v23;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v62 = v19;
    v26 = sub_1D1E68FAC();
    v65 = v18;
    v66 = v4;
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v12, v8);
    v30 = sub_1D1B1312C(v26, v28, &v70);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = [v14 name];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35 = sub_1D1B1312C(v32, v34, &v70);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2082;
    v36 = [v24 uniqueIdentifier];
    sub_1D1E66A5C();

    v37 = sub_1D1E68FAC();
    v39 = v38;
    v29(v12, v8);
    v40 = sub_1D1B1312C(v37, v39, &v70);

    *(v22 + 24) = v40;
    *(v22 + 32) = 2080;
    v41 = [v24 name];
    v42 = sub_1D1E6781C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v70);
    v18 = v65;

    *(v22 + 34) = v45;
    *(v22 + 42) = 2082;
    v46 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v47 = sub_1D1E68FAC();
    v49 = v48;
    v29(v12, v8);
    v4 = v66;
    v50 = sub_1D1B1312C(v47, v49, &v70);

    *(v22 + 44) = v50;
    *(v22 + 52) = 2080;
    v51 = [v18 characteristicType];
    v52 = sub_1D1E6781C();
    v54 = v53;

    v55 = sub_1D1B1312C(v52, v54, &v70);

    *(v22 + 54) = v55;
    v19 = v62;
    _os_log_impl(&dword_1D16EC000, v62, v63, "accessory:service:didUpdateValueFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}, characteristic={id: %{public}s, type: %s}", v22, 0x3Eu);
    v56 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  v57 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = *(v57 + 8);
    ObjectType = swift_getObjectType();
    v69 = v18;
    v70 = v67;
    (*(v59 + 64))(v68, &v70, &v69, ObjectType, v59);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A55B4C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateApplicationData: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 72))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A55EA4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "accessory:didUpdateApplicationDataFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 80))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A56324(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 isAdditionalSetupRequired];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateAdditionalSetupRequired: | accessory={id: %{public}s, name: %s, setupRequired: %{BOOL}d}", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 88))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A566B4(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 isCalibrating];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateCalibrationStatus: | accessory={id: %{public}s, name: %s, isCalibrating: %{BOOL}d}", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 96))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A56A44(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "accessory:didUpdateBulletinBoardNotificationFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 104))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A56EC4(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  v14 = os_log_type_enabled(v12, v13);
  v44 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v15 = 136446722;
    v16 = [v10 uniqueIdentifier];
    v42 = v13;
    v17 = v16;
    sub_1D1E66A5C();

    v41 = sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = v11;
    v21 = v20;
    v40 = *(v5 + 8);
    v40(v8, v4);
    v22 = sub_1D1B1312C(v18, v21, &v46);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = [v10 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v11 = v19;
    v28 = sub_1D1B1312C(v27, v26, &v46);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2082;
    v29 = [v19 uniqueIdentifier];
    sub_1D1E66A5C();

    v30 = sub_1D1E68FAC();
    v32 = v31;
    v40(v8, v4);
    v33 = sub_1D1B1312C(v30, v32, &v46);

    *(v15 + 24) = v33;
    _os_log_impl(&dword_1D16EC000, v12, v42, "accessory:didUpdateHasAuthorizationDataFor: | accessory={id: %{public}s, name: %s}, characteristic={id: %{public}s}", v15, 0x20u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v35 = v45 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    v46 = v11;
    (*(v37 + 112))(v44, &v46, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A572E4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);

  v13 = a1;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v16 = 136446722;
    v17 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v37 = v4;
    v20 = v19;
    (*(v8 + 8))(v11, v7);
    v21 = sub_1D1B1312C(v18, v20, &v39);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v39);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = v38;
    if (a3)
    {
      v28 = v38;
    }

    else
    {
      v28 = 7104878;
    }

    if (a3)
    {
      v29 = a3;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = sub_1D1B1312C(v28, v29, &v39);
    v4 = v37;

    *(v16 + 24) = v30;
    _os_log_impl(&dword_1D16EC000, v14, v15, "accessory:didUpdateBundleID: | accessory={id: %{public}s, name: %s}, bundleID: %s", v16, 0x20u);
    v31 = v36;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {

    v27 = v38;
  }

  v32 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    (*(v34 + 120))(v13, v27, a3, ObjectType, v34);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A57664(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);

  v13 = a1;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v16 = 136446722;
    v17 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v37 = v4;
    v20 = v19;
    (*(v8 + 8))(v11, v7);
    v21 = sub_1D1B1312C(v18, v20, &v39);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v39);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = v38;
    if (a3)
    {
      v28 = v38;
    }

    else
    {
      v28 = 7104878;
    }

    if (a3)
    {
      v29 = a3;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = sub_1D1B1312C(v28, v29, &v39);
    v4 = v37;

    *(v16 + 24) = v30;
    _os_log_impl(&dword_1D16EC000, v14, v15, "accessory:didUpdateStoreID: | accessory={id: %{public}s, name: %s}, storeID: %s", v16, 0x20u);
    v31 = v36;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {

    v27 = v38;
  }

  v32 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    (*(v34 + 128))(v13, v27, a3, ObjectType, v34);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A579E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t))
{
  if (a4)
  {
    v8 = sub_1D1E6781C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = a1;
  a5(v11, v8, v10);
}

uint64_t sub_1D1A57A7C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v40[0] = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v38 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, v40);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v3 = v38;
    v28 = sub_1D1B1312C(v27, v26, v40);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_1D16EC000, v13, v14, "accessory:didUpdate:settings: | accessory={id: %{public}s, name: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v29 = v16;
    a2 = v39;
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v30 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = *(v30 + 8);
    if (a2)
    {
      v33 = sub_1D1741B10(0, &qword_1EC649708, 0x1E696CAD8);
      v34 = a2;
    }

    else
    {
      v34 = 0;
      v33 = 0;
      v40[1] = 0;
      v40[2] = 0;
    }

    v40[0] = v34;
    v40[3] = v33;
    ObjectType = swift_getObjectType();
    v36 = *(v32 + 136);
    v37 = a2;
    v36(v12, v40, ObjectType, v32);
    swift_unknownObjectRelease();
    return sub_1D18B9B30(v40);
  }

  return result;
}

uint64_t sub_1D1A57E44(void *a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    *(v14 + 22) = 1024;
    v26 = v33;
    *(v14 + 24) = v33 & 1;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdateFirmwareUpdateAvailable: | accessory={id: %{public}s, name: %s}, available: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 144))(v11, v26 & 1, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A581CC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC649730);
  v14 = a1;

  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6832C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v4;
    v18 = v17;
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136446722;
    v19 = [v14 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v20 = sub_1D1E68FAC();
    v37 = a2;
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_1D1B1312C(v20, v22, &v38);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = [v14 name];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28 = sub_1D1B1312C(v25, v27, &v38);
    a2 = v37;

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_1D1B1312C(a2, a3, &v38);
    _os_log_impl(&dword_1D16EC000, v15, v16, "accessory:didUpdateFirmwareVersion: | accessory={id: %{public}s, name: %s}, firmwareVersion: %s", v18, 0x20u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    v30 = v18;
    v4 = v36;
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  v31 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 152))(v14, a2, a3, ObjectType, v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A58578(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v34 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, &v36);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v36);

    *(v16 + 14) = v27;
    v3 = v34;
    _os_log_impl(&dword_1D16EC000, v13, v14, "accessory:didUpdate:softwareVersion: | accessory={id: %{public}s, name: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v28 = v16;
    a2 = v35;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 160))(v12, a2, ObjectType, v31);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A588F4(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 isControllable];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateControllable: | accessory={id: %{public}s, name: %s}, controllable: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 168))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A58C84(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a2;
  v13 = a1;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v48 = v14;
    v50 = v15;
    v52 = v3;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v16 = 136446978;
    v17 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = a2;
    v21 = v20;
    v22 = v13;
    v23 = *(v7 + 8);
    v23(v10, v6);
    v24 = sub_1D1B1312C(v18, v21, &v53);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v51 = v22;
    v25 = [v22 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    a2 = v19;
    v30 = sub_1D1B1312C(v29, v28, &v53);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    if (v19)
    {
      v31 = [v12 uniqueIdentifier];
      sub_1D1E66A5C();

      v32 = sub_1D1E66A1C();
      v34 = v33;
      v23(v10, v6);
      v35 = sub_1D1B1312C(v32, v34, &v53);

      *(v16 + 24) = v35;
      *(v16 + 32) = 2080;
      v36 = [v12 name];
      v37 = sub_1D1E6781C();
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
      v40 = sub_1D1B1312C(7104878, 0xE300000000000000, &v53);

      *(v16 + 24) = v40;
      *(v16 + 32) = 2080;
    }

    v41 = v48;
    v42 = sub_1D1B1312C(v37, v39, &v53);

    *(v16 + 34) = v42;
    _os_log_impl(&dword_1D16EC000, v41, v50, "accessory:didUpdateConfiguredNameFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v43 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    v13 = v51;
    v3 = v52;
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = a2;
    (*(v46 + 176))(v13, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5913C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a2;
  v13 = a1;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v48 = v14;
    v50 = v15;
    v52 = v3;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v16 = 136446978;
    v17 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = a2;
    v21 = v20;
    v22 = v13;
    v23 = *(v7 + 8);
    v23(v10, v6);
    v24 = sub_1D1B1312C(v18, v21, &v53);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v51 = v22;
    v25 = [v22 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    a2 = v19;
    v30 = sub_1D1B1312C(v29, v28, &v53);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    if (v19)
    {
      v31 = [v12 uniqueIdentifier];
      sub_1D1E66A5C();

      v32 = sub_1D1E66A1C();
      v34 = v33;
      v23(v10, v6);
      v35 = sub_1D1B1312C(v32, v34, &v53);

      *(v16 + 24) = v35;
      *(v16 + 32) = 2080;
      v36 = [v12 name];
      v37 = sub_1D1E6781C();
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
      v40 = sub_1D1B1312C(7104878, 0xE300000000000000, &v53);

      *(v16 + 24) = v40;
      *(v16 + 32) = 2080;
    }

    v41 = v48;
    v42 = sub_1D1B1312C(v37, v39, &v53);

    *(v16 + 34) = v42;
    _os_log_impl(&dword_1D16EC000, v41, v50, "accessory:didUpdateDefaultNameFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v43 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    v13 = v51;
    v3 = v52;
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = a2;
    (*(v46 + 184))(v13, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A595F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a2;
  v13 = a1;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v48 = v14;
    v50 = v15;
    v52 = v3;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v16 = 136446978;
    v17 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = a2;
    v21 = v20;
    v22 = v13;
    v23 = *(v7 + 8);
    v23(v10, v6);
    v24 = sub_1D1B1312C(v18, v21, &v53);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v51 = v22;
    v25 = [v22 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    a2 = v19;
    v30 = sub_1D1B1312C(v29, v28, &v53);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    if (v19)
    {
      v31 = [v12 uniqueIdentifier];
      sub_1D1E66A5C();

      v32 = sub_1D1E66A1C();
      v34 = v33;
      v23(v10, v6);
      v35 = sub_1D1B1312C(v32, v34, &v53);

      *(v16 + 24) = v35;
      *(v16 + 32) = 2080;
      v36 = [v12 name];
      v37 = sub_1D1E6781C();
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
      v40 = sub_1D1B1312C(7104878, 0xE300000000000000, &v53);

      *(v16 + 24) = v40;
      *(v16 + 32) = 2080;
    }

    v41 = v48;
    v42 = sub_1D1B1312C(v37, v39, &v53);

    *(v16 + 34) = v42;
    _os_log_impl(&dword_1D16EC000, v41, v50, "accessory:didUpdateServiceSubtypeFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v43 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    v13 = v51;
    v3 = v52;
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = a2;
    (*(v46 + 192))(v13, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A59AAC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a2;
  v13 = a1;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v48 = v14;
    v50 = v15;
    v52 = v3;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v16 = 136446978;
    v17 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = a2;
    v21 = v20;
    v22 = v13;
    v23 = *(v7 + 8);
    v23(v10, v6);
    v24 = sub_1D1B1312C(v18, v21, &v53);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v51 = v22;
    v25 = [v22 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    a2 = v19;
    v30 = sub_1D1B1312C(v29, v28, &v53);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    if (v19)
    {
      v31 = [v12 uniqueIdentifier];
      sub_1D1E66A5C();

      v32 = sub_1D1E66A1C();
      v34 = v33;
      v23(v10, v6);
      v35 = sub_1D1B1312C(v32, v34, &v53);

      *(v16 + 24) = v35;
      *(v16 + 32) = 2080;
      v36 = [v12 name];
      v37 = sub_1D1E6781C();
      v39 = v38;
    }

    else
    {
      v37 = 7104878;
      v39 = 0xE300000000000000;
      v40 = sub_1D1B1312C(7104878, 0xE300000000000000, &v53);

      *(v16 + 24) = v40;
      *(v16 + 32) = 2080;
    }

    v41 = v48;
    v42 = sub_1D1B1312C(v37, v39, &v53);

    *(v16 + 34) = v42;
    _os_log_impl(&dword_1D16EC000, v41, v50, "accessory:didUpdateConfigurationStateFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v43 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    v13 = v51;
    v3 = v52;
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = a2;
    (*(v46 + 200))(v13, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A59F64(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsTargetControl];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateTargetControlSupport: | accessory={id: %{public}s, name: %s}, supportsTargetControl: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 208))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5A2F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "accessory:didAddControlTarget: | accessory={id: %{public}s, name: %s}, targetAccessory={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 216))(v52, v13, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5A770(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "accessory:didRemoveControlTarget: | accessory={id: %{public}s, name: %s}, targetAccessory={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 224))(v52, v13, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5ABEC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v36 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, v38);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v3 = v36;
    v28 = sub_1D1B1312C(v27, v26, v38);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_1D16EC000, v13, v14, "accessory:didAdd:symptomsHandler: | accessory={id: %{public}s, name: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v29 = v16;
    a2 = v37;
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v30 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    v38[3] = sub_1D1741B10(0, &qword_1EC6496F8, 0x1E696CC80);
    v38[0] = a2;
    v34 = *(v32 + 232);
    v35 = a2;
    v34(v12, v38, ObjectType, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return result;
}

uint64_t sub_1D1A5AF98(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidRemoveSymptomsHandler: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 240))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5B2F0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsMultiUser];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateMultiUserSupport: | accessory={id: %{public}s, name: %s}, supportsMultiUser: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 248))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5B680(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsHomeLevelLocationServiceSetting];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateHomeLevelLocationServiceSettingSupport: | accessory={id: %{public}s, name: %s}, supportsHomeLevelLocationServiceSetting: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 256))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5BA10(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsAudioReturnChannel];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateAudioReturnChannelSupport: | accessory={id: %{public}s, name: %s}, supportsAudioReturnChannel: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 264))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5BDA0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsCompanionInitiatedRestart];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsCompanionInitiatedRestart: | accessory={id: %{public}s, name: %s}, supportsCompanionInitiatedRestart: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 272))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5C130(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsCompanionInitiatedObliterate];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsCompanionInitiatedObliterate: | accessory={id: %{public}s, name: %s}, supportsCompanionInitiatedObliterate: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 280))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5C4C0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsMusicAlarm];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsMusicAlarm: | accessory={id: %{public}s, name: %s}, supportsMusicAlarm: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 288))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5C850(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsAnnounce];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsAnnounce: | accessory={id: %{public}s, name: %s}, supportsAnnounce: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 296))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5CBE0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsMediaActions];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsMediaActions: | accessory={id: %{public}s, name: %s}, supportsMediaActions: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 304))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5CF70(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsThirdPartyMusic];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsThirdPartyMusic: | accessory={id: %{public}s, name: %s}, supportsThirdPartyMusic: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 312))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5D300(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsDoorbellChime];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsDoorbellChime: | accessory={id: %{public}s, name: %s}, supportsDoorbellChime: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 320))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5D690(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsUserMediaSettings];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsUserMediaSettings: | accessory={id: %{public}s, name: %s}, supportsUserMediaSettings: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 328))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5DA20(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "accessory:didUpdateLastKnownOperatingStateResponseFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 336))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5DEA0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v33);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v33);

    *(v14 + 14) = v25;
    *(v14 + 22) = 2048;
    v26 = [v10 reachableTransports];

    *(v14 + 24) = v26;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateReachableTransports: | accessory={id: %{public}s, name: %s}, reachableTransports: %ld", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v27 = v14;
    v2 = v32;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  else
  {
  }

  v28 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    (*(v30 + 344))(v10, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5E230(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v34 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, &v36);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v36);

    *(v16 + 14) = v27;
    v3 = v34;
    _os_log_impl(&dword_1D16EC000, v13, v14, "accessory:didUpdate:device: | accessory={id: %{public}s, name: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v28 = v16;
    a2 = v35;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    v36 = a2;
    (*(v31 + 352))(v12, &v36, ObjectType, v31);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5E5B0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdatePairingIdentity: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 360))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5E908(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateAudioDestinationController: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 368))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5EC60(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateAudioDestination: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 376))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5EFB8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateDiagnosticsTransferSupport: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 384))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5F310(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidSetHasOnboardedForNaturalLighting: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 392))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5F668(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsPreferredMediaUser];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsPreferredMediaUser: | accessory={id: %{public}s, name: %s}, supportsPreferredMediaUser: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 400))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5F9F8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdatePreferredMediaUser: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 408))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5FD50(void *a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    *(v14 + 22) = 1024;
    v26 = v33;
    *(v14 + 24) = v33 & 1;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdateSupportsWalletKey: | accessory={id: %{public}s, name: %s}, supportsWalletKey: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 416))(v11, v26 & 1, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A600D8(void *a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    *(v14 + 22) = 1024;
    v26 = v33;
    *(v14 + 24) = v33 & 1;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdateSupportsUWBUnlock: | accessory={id: %{public}s, name: %s}, supportsUWBUnlock: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 424))(v11, v26 & 1, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A60460(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v35 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    v19 = sub_1D1B1312C(v16, v18, &v36);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v36);

    *(v13 + 14) = v24;
    *(v13 + 22) = 2080;
    v25 = [v10 pendingConfigurationIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1D1E6781C();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v30 = sub_1D1B1312C(v27, v29, &v36);

    *(v13 + 24) = v30;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdatePendingConfigurationIdentifier: | accessory={id: %{public}s, name: %s}, pendingConfigurationIdentifier: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);

    v2 = v35;
  }

  else
  {
  }

  v31 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 432))(v10, ObjectType, v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A60824(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v16 = 136446466;
    v18 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v36 = v3;
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = sub_1D1B1312C(v19, v21, v38);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v12 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v3 = v36;
    v28 = sub_1D1B1312C(v27, v26, v38);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_1D16EC000, v13, v14, "accessory:didUpdateWifiNetworkInfo: | accessory={id: %{public}s, name: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    v29 = v16;
    a2 = v37;
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v30 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    v38[3] = sub_1D1741B10(0, &qword_1EC6496F0, 0x1E69A2A80);
    v38[0] = a2;
    v34 = *(v32 + 440);
    v35 = a2;
    v34(v12, v38, ObjectType, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return result;
}

uint64_t sub_1D1A60BD0(void *a1, int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v32 = v3;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_1D1B1312C(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v34);

    *(v14 + 14) = v25;
    v3 = v32;
    *(v14 + 22) = 1024;
    v26 = v33;
    *(v14 + 24) = v33 & 1;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdateHH1EOLEnabled: | accessory={id: %{public}s, name: %s}, enabled: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v26 = v33;
  }

  v27 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 448))(v11, v26 & 1, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A60F58(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsRMVonAppleTV];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsRMVonAppleTV: | accessory={id: %{public}s, name: %s}, supportsRMVonAppleTV: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 456))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A612E8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsJustSiri];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsJustSiri: | accessory={id: %{public}s, name: %s}, supportsJustSiri: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 464))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A61678(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    *(v14 + 22) = 1024;
    LODWORD(v25) = [v10 supportsMediaContentProfile];

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidUpdateSupportsMediaContentProfile: | accessory={id: %{public}s, name: %s}, supportsMediaContentProfile: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 472))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A61A08(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidSetHasOnboardedForAdaptiveTemperatureAutomations: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 480))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A61D60(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessoryDidSetHasOnboardedForCleanEnergyAutomation: | accessory={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 488))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A620B8(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  v14 = os_log_type_enabled(v12, v13);
  v44 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v15 = 136446722;
    v16 = [v10 uniqueIdentifier];
    v42 = v13;
    v17 = v16;
    sub_1D1E66A5C();

    v41 = sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = v11;
    v21 = v20;
    v40 = *(v5 + 8);
    v40(v8, v4);
    v22 = sub_1D1B1312C(v18, v21, &v46);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = [v10 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v11 = v19;
    v28 = sub_1D1B1312C(v27, v26, &v46);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2082;
    v29 = [v19 uniqueIdentifier];
    sub_1D1E66A5C();

    v30 = sub_1D1E68FAC();
    v32 = v31;
    v40(v8, v4);
    v33 = sub_1D1B1312C(v30, v32, &v46);

    *(v15 + 24) = v33;
    _os_log_impl(&dword_1D16EC000, v12, v42, "accessory:didAdd:profile: | accessory={id: %{public}s, name: %s}, profile={id: %{public}s}", v15, 0x20u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v35 = v45 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    v46 = v11;
    (*(v37 + 496))(v44, &v46, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A624D8(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  v14 = os_log_type_enabled(v12, v13);
  v44 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v15 = 136446722;
    v16 = [v10 uniqueIdentifier];
    v42 = v13;
    v17 = v16;
    sub_1D1E66A5C();

    v41 = sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v19 = v11;
    v21 = v20;
    v40 = *(v5 + 8);
    v40(v8, v4);
    v22 = sub_1D1B1312C(v18, v21, &v46);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = [v10 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = v24;
    v11 = v19;
    v28 = sub_1D1B1312C(v27, v26, &v46);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2082;
    v29 = [v19 uniqueIdentifier];
    sub_1D1E66A5C();

    v30 = sub_1D1E68FAC();
    v32 = v31;
    v40(v8, v4);
    v33 = sub_1D1B1312C(v30, v32, &v46);

    *(v15 + 24) = v33;
    _os_log_impl(&dword_1D16EC000, v12, v42, "accessory:didRemove:profile: | accessory={id: %{public}s, name: %s}, profile={id: %{public}s}", v15, 0x20u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v35 = v45 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    v46 = v11;
    (*(v37 + 504))(v44, &v46, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A628F8()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A62994(uint64_t **a1))(void *a1)
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
  v2[4] = HMAccessory.accessoryDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMAccessorySettingsDataSource.settingsDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_0();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A62AE8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_0();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMAccessorySettingsDataSource.settingsDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_0();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_0();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649710, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMAccessorySettingsDataSource.settingsDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_0();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A62DB8;
}

uint64_t sub_1D1A62DB8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return HMAccessorySettingsDataSource.settingsDelegate.setter(*a1, v2);
  }

  v5 = *a1;
  v6 = swift_unknownObjectRetain();
  HMAccessorySettingsDataSource.settingsDelegate.setter(v6, v2);

  return swift_unknownObjectRelease();
}

unint64_t sub_1D1A63030()
{
  result = qword_1EC649728;
  if (!qword_1EC649728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC649728);
  }

  return result;
}

id sub_1D1A6307C()
{
  result = [*v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_0();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A63138(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = HMAccessorySettingsDataSource.settingsDelegate.modify(v3);
  return sub_1D1861B38;
}

uint64_t sub_1D1A631AC()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC649730);
  __swift_project_value_buffer(v0, qword_1EC649730);
  return sub_1D1E6708C();
}

uint64_t static Logger.homeKitDelegates.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC649730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id HMHome.homeDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_1();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A633D8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_1();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMHome.homeDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_1();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_1();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649750, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMHome.homeDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_1();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A636A8;
}

uint64_t sub_1D1A636A8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return HMHome.homeDelegate.setter(*a1, v2);
  }

  v5 = *a1;
  v6 = swift_unknownObjectRetain();
  HMHome.homeDelegate.setter(v6, v2);

  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didAdd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 40))();
}

{
  return (*(a4 + 56))();
}

{
  return (*(a4 + 80))();
}

{
  return (*(a4 + 104))();
}

{
  return (*(a4 + 144))();
}

{
  return (*(a4 + 184))();
}

{
  return (*(a4 + 216))();
}

{
  return (*(a4 + 280))();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didRemove:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 48))();
}

{
  return (*(a4 + 64))();
}

{
  return (*(a4 + 88))();
}

{
  return (*(a4 + 112))();
}

{
  return (*(a4 + 152))();
}

{
  return (*(a4 + 192))();
}

{
  return (*(a4 + 224))();
}

{
  return (*(a4 + 288))();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didUpdateNameFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 96))();
}

{
  return (*(a4 + 120))();
}

{
  return (*(a4 + 160))();
}

{
  return (*(a4 + 200))();
}

{
  return (*(a4 + 232))();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didAdd:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 128))();
}

{
  return (*(a5 + 168))();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didRemove:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 136))();
}

{
  return (*(a5 + 176))();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 240))();
}

{
  return (*(a4 + 264))();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didUpdateApplicationDataFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 312))();
}

{
  return (*(a4 + 320))();
}

{
  return (*(a4 + 328))();
}

uint64_t sub_1D1A63B3C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateName: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 24))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A63E94(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    v16 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1D1B1312C(v17, v19, &v32);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "homeDidUpdateAccessControl:forCurrentUser: | home={id: %{public}s, name: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    v26 = v14;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 32))(v10, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A641EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didAdd:accessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 40))(v52, v13, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A64668(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didRemove:accessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 48))(v52, v13, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A64AE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v16 = 136446722;
    v17 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v39 = v3;
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1D1B1312C(v18, v20, &v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v12 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v40);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = [v13 name];
    v28 = sub_1D1E6781C();
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v40);

    *(v16 + 24) = v31;
    v3 = v39;
    _os_log_impl(&dword_1D16EC000, v14, v15, "home:didAdd:user: | home={id: %{public}s, name: %s}, user={name: %s}", v16, 0x20u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v32, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  v33 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    v40 = v13;
    (*(v35 + 56))(v12, &v40, ObjectType, v35);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A64EB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v16 = 136446722;
    v17 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v39 = v3;
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1D1B1312C(v18, v20, &v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v12 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v40);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = [v13 name];
    v28 = sub_1D1E6781C();
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v40);

    *(v16 + 24) = v31;
    v3 = v39;
    _os_log_impl(&dword_1D16EC000, v14, v15, "home:didRemove:user: | home={id: %{public}s, name: %s}, user={name: %s}", v16, 0x20u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v32, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  v33 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = *(v33 + 8);
    ObjectType = swift_getObjectType();
    v40 = v13;
    (*(v35 + 64))(v12, &v40, ObjectType, v35);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6528C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC649730);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6832C();

  v21 = os_log_type_enabled(v19, v20);
  v66 = v17;
  v67 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v68 = v63;
    *v22 = 136447490;
    v23 = [v14 uniqueIdentifier];
    v62 = v20;
    v24 = v17;
    v25 = v23;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v61 = v19;
    v26 = sub_1D1E68FAC();
    v64 = v18;
    v65 = v4;
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v12, v8);
    v30 = sub_1D1B1312C(v26, v28, &v68);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = [v14 name];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35 = sub_1D1B1312C(v32, v34, &v68);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2082;
    v36 = [v24 uniqueIdentifier];
    sub_1D1E66A5C();

    v37 = sub_1D1E68FAC();
    v39 = v38;
    v29(v12, v8);
    v40 = sub_1D1B1312C(v37, v39, &v68);

    *(v22 + 24) = v40;
    *(v22 + 32) = 2080;
    v41 = [v24 name];
    v42 = sub_1D1E6781C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v68);
    v18 = v64;

    *(v22 + 34) = v45;
    *(v22 + 42) = 2082;
    v46 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v47 = sub_1D1E68FAC();
    v49 = v48;
    v29(v12, v8);
    v4 = v65;
    v50 = sub_1D1B1312C(v47, v49, &v68);

    *(v22 + 44) = v50;
    *(v22 + 52) = 2080;
    v51 = [v18 name];
    v52 = sub_1D1E6781C();
    v54 = v53;

    v55 = sub_1D1B1312C(v52, v54, &v68);

    *(v22 + 54) = v55;
    v19 = v61;
    _os_log_impl(&dword_1D16EC000, v61, v62, "home:didUpdate:room:for: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v22, 0x3Eu);
    v56 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  v57 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = *(v57 + 8);
    ObjectType = swift_getObjectType();
    v68 = v66;
    (*(v59 + 72))(v67, &v68, v18, ObjectType, v59);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A65808(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didAdd:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 80))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A65C88(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didRemove:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 88))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66108(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateNameFor:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 96))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66588(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didAdd:zone: | home={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 104))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66A08(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didRemove:zone: | home={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 112))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66E88(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateNameFor:zone: | home={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 120))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A67308(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC649730);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6832C();

  v21 = os_log_type_enabled(v19, v20);
  v67 = v17;
  v68 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v22 = 136447490;
    v23 = [v14 uniqueIdentifier];
    v63 = v20;
    v24 = v17;
    v25 = v23;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v62 = v19;
    v26 = sub_1D1E68FAC();
    v65 = v18;
    v66 = v4;
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v12, v8);
    v30 = sub_1D1B1312C(v26, v28, &v70);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = [v14 name];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35 = sub_1D1B1312C(v32, v34, &v70);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2082;
    v36 = [v24 uniqueIdentifier];
    sub_1D1E66A5C();

    v37 = sub_1D1E68FAC();
    v39 = v38;
    v29(v12, v8);
    v40 = sub_1D1B1312C(v37, v39, &v70);

    *(v22 + 24) = v40;
    *(v22 + 32) = 2080;
    v41 = [v24 name];
    v42 = sub_1D1E6781C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v70);
    v18 = v65;

    *(v22 + 34) = v45;
    *(v22 + 42) = 2082;
    v46 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v47 = sub_1D1E68FAC();
    v49 = v48;
    v29(v12, v8);
    v4 = v66;
    v50 = sub_1D1B1312C(v47, v49, &v70);

    *(v22 + 44) = v50;
    *(v22 + 52) = 2080;
    v51 = [v18 name];
    v52 = sub_1D1E6781C();
    v54 = v53;

    v55 = sub_1D1B1312C(v52, v54, &v70);

    *(v22 + 54) = v55;
    v19 = v62;
    _os_log_impl(&dword_1D16EC000, v62, v63, "home:didAdd:room:to:zone: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v22, 0x3Eu);
    v56 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  v57 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = *(v57 + 8);
    ObjectType = swift_getObjectType();
    v69 = v18;
    v70 = v67;
    (*(v59 + 128))(v68, &v70, &v69, ObjectType, v59);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A67884(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC649730);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6832C();

  v21 = os_log_type_enabled(v19, v20);
  v67 = v17;
  v68 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v22 = 136447490;
    v23 = [v14 uniqueIdentifier];
    v63 = v20;
    v24 = v17;
    v25 = v23;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v62 = v19;
    v26 = sub_1D1E68FAC();
    v65 = v18;
    v66 = v4;
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v12, v8);
    v30 = sub_1D1B1312C(v26, v28, &v70);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = [v14 name];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35 = sub_1D1B1312C(v32, v34, &v70);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2082;
    v36 = [v24 uniqueIdentifier];
    sub_1D1E66A5C();

    v37 = sub_1D1E68FAC();
    v39 = v38;
    v29(v12, v8);
    v40 = sub_1D1B1312C(v37, v39, &v70);

    *(v22 + 24) = v40;
    *(v22 + 32) = 2080;
    v41 = [v24 name];
    v42 = sub_1D1E6781C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v70);
    v18 = v65;

    *(v22 + 34) = v45;
    *(v22 + 42) = 2082;
    v46 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v47 = sub_1D1E68FAC();
    v49 = v48;
    v29(v12, v8);
    v4 = v66;
    v50 = sub_1D1B1312C(v47, v49, &v70);

    *(v22 + 44) = v50;
    *(v22 + 52) = 2080;
    v51 = [v18 name];
    v52 = sub_1D1E6781C();
    v54 = v53;

    v55 = sub_1D1B1312C(v52, v54, &v70);

    *(v22 + 54) = v55;
    v19 = v62;
    _os_log_impl(&dword_1D16EC000, v62, v63, "home:didRemove:room:from:zone: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v22, 0x3Eu);
    v56 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  v57 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = *(v57 + 8);
    ObjectType = swift_getObjectType();
    v69 = v18;
    v70 = v67;
    (*(v59 + 136))(v68, &v70, &v69, ObjectType, v59);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A67E00(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didAdd:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 144))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A68280(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didRemove:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 152))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A68700(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);
  v12 = a1;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v17 = 136446978;
    v18 = [v12 uniqueIdentifier];
    v49 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v48) = v15;
    v20 = sub_1D1E68FAC();
    v21 = v13;
    v23 = v22;
    v51 = v3;
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = sub_1D1B1312C(v20, v23, &v53);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v13 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v53);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2082;
    v32 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = sub_1D1E68FAC();
    v35 = v34;
    v24(v10, v6);
    v3 = v51;
    v36 = sub_1D1B1312C(v33, v35, &v53);

    *(v17 + 24) = v36;
    *(v17 + 32) = 2080;
    v37 = [v21 name];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v53);

    *(v17 + 34) = v41;
    v42 = v49;
    _os_log_impl(&dword_1D16EC000, v49, BYTE4(v48), "home:didUpdateNameFor:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v17, 0x2Au);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v44 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    v53 = v13;
    (*(v46 + 160))(v52, &v53, ObjectType, v46);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A68B80(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC649730);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6832C();

  v21 = os_log_type_enabled(v19, v20);
  v67 = v17;
  v68 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v22 = 136447490;
    v23 = [v14 uniqueIdentifier];
    v63 = v20;
    v24 = v17;
    v25 = v23;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v62 = v19;
    v26 = sub_1D1E68FAC();
    v65 = v18;
    v66 = v4;
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v12, v8);
    v30 = sub_1D1B1312C(v26, v28, &v70);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = [v14 name];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35 = sub_1D1B1312C(v32, v34, &v70);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2082;
    v36 = [v24 uniqueIdentifier];
    sub_1D1E66A5C();

    v37 = sub_1D1E68FAC();
    v39 = v38;
    v29(v12, v8);
    v40 = sub_1D1B1312C(v37, v39, &v70);

    *(v22 + 24) = v40;
    *(v22 + 32) = 2080;
    v41 = [v24 name];
    v42 = sub_1D1E6781C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v70);
    v18 = v65;

    *(v22 + 34) = v45;
    *(v22 + 42) = 2082;
    v46 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v47 = sub_1D1E68FAC();
    v49 = v48;
    v29(v12, v8);
    v4 = v66;
    v50 = sub_1D1B1312C(v47, v49, &v70);

    *(v22 + 44) = v50;
    *(v22 + 52) = 2080;
    v51 = [v18 name];
    v52 = sub_1D1E6781C();
    v54 = v53;

    v55 = sub_1D1B1312C(v52, v54, &v70);

    *(v22 + 54) = v55;
    v19 = v62;
    _os_log_impl(&dword_1D16EC000, v62, v63, "home:didAdd:service:to:serviceGroup: | home={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v22, 0x3Eu);
    v56 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  v57 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = *(v57 + 8);
    ObjectType = swift_getObjectType();
    v69 = v18;
    v70 = v67;
    (*(v59 + 168))(v68, &v70, &v69, ObjectType, v59);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A690FC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC649730);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6832C();

  v21 = os_log_type_enabled(v19, v20);
  v67 = v17;
  v68 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70 = v64;
    *v22 = 136447490;
    v23 = [v14 uniqueIdentifier];
    v63 = v20;
    v24 = v17;
    v25 = v23;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v62 = v19;
    v26 = sub_1D1E68FAC();
    v65 = v18;
    v66 = v4;
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v12, v8);
    v30 = sub_1D1B1312C(v26, v28, &v70);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = [v14 name];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35 = sub_1D1B1312C(v32, v34, &v70);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2082;
    v36 = [v24 uniqueIdentifier];
    sub_1D1E66A5C();

    v37 = sub_1D1E68FAC();
    v39 = v38;
    v29(v12, v8);
    v40 = sub_1D1B1312C(v37, v39, &v70);

    *(v22 + 24) = v40;
    *(v22 + 32) = 2080;
    v41 = [v24 name];
    v42 = sub_1D1E6781C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v70);
    v18 = v65;

    *(v22 + 34) = v45;
    *(v22 + 42) = 2082;
    v46 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v47 = sub_1D1E68FAC();
    v49 = v48;
    v29(v12, v8);
    v4 = v66;
    v50 = sub_1D1B1312C(v47, v49, &v70);

    *(v22 + 44) = v50;
    *(v22 + 52) = 2080;
    v51 = [v18 name];
    v52 = sub_1D1E6781C();
    v54 = v53;

    v55 = sub_1D1B1312C(v52, v54, &v70);

    *(v22 + 54) = v55;
    v19 = v62;
    _os_log_impl(&dword_1D16EC000, v62, v63, "home:didRemove:service:from:serviceGroup: | home={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v22, 0x3Eu);
    v56 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  v57 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = *(v57 + 8);
    ObjectType = swift_getObjectType();
    v69 = v18;
    v70 = v67;
    (*(v59 + 176))(v68, &v70, &v69, ObjectType, v59);
    return swift_unknownObjectRelease();
  }

  return result;
}