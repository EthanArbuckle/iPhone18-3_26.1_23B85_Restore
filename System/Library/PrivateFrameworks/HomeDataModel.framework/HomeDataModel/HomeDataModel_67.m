uint64_t StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
  if (!*(&v12 + 1))
  {
    sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
LABEL_5:
    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
        v6 = 0;
        v7 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
LABEL_16:
        result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
        v6 = 0;
        v7 = 2;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        goto LABEL_16;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        v6 = v10;
        result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
        v7 = 3;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    v8 = a1[1];
    v11 = *a1;
    v12 = v8;
    if (*(&v8 + 1))
    {
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v9;
        v6 = v10;
        v7 = 4;
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    v4 = 0;
    v6 = 0;
    v7 = 5;
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = v9;
  result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
  v6 = 0;
  v7 = 0;
LABEL_27:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

const char *StateSnapshot.UpdateType.metricsID.getter()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v2 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v0, v4, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = "StateSnapshot.unknownHome";
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v7 = *v4;
      v8 = *(v4 + 1);
      v9 = v4[16];
      if (v9 <= 1)
      {
        if (v4[16])
        {
          sub_1D1AC373C(v7, v8, 1u);
          result = "StateSnapshot.characteristics.loadingStates";
        }

        else
        {
          sub_1D1AC373C(v7, v8, 0);
          result = "StateSnapshot.characteristics.refresh";
        }
      }

      else if (v9 == 2)
      {
        sub_1D1AC373C(v7, v8, 2u);
        result = "StateSnapshot.characteristics.overrideValues";
      }

      else if (v9 == 3)
      {
        sub_1D1AC373C(v7, v8, 3u);
        result = "StateSnapshot.characteristics.localOverrideValues";
      }

      else
      {
        sub_1D1AC373C(v7, v8, 4u);
        result = "StateSnapshot.characteristics.statelessValues";
      }

      break;
    case 2:
      sub_1D1CB2248(v4, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.actionSets";
      break;
    case 3:
      sub_1D1CB2248(v4, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.userActionPredictions";
      break;
    case 4:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      v13 = sub_1D1E66A7C();
      (*(*(v13 - 8) + 8))(v4, v13);
      result = "StateSnapshot.softwareUpdate";
      break;
    case 5:
      v17 = sub_1D1E66A7C();
      (*(*(v17 - 8) + 8))(v4, v17);
      result = "StateSnapshot.softwareUpdateOverride";
      break;
    case 6:
      v10 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];

      v11 = sub_1D1E66A7C();
      (*(*(v11 - 8) + 8))(v4, v11);
      result = "StateSnapshot.profiles";
      break;
    case 7:
      v19 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];

      v20 = sub_1D1E66A7C();
      (*(*(v20 - 8) + 8))(v4, v20);
      result = "StateSnapshot.lightProfile";
      break;
    case 8:
      result = "StateSnapshot.snapshotStream";
      break;
    case 9:

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2248(&v4[*(v18 + 48)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      result = "StateSnapshot.adaptiveTemperatureSetting";
      break;
    case 10:
      sub_1D1CB2248(v4, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.adaptiveTemperatureSleepSchedule";
      break;
    case 11:
      sub_1D1CB2248(v4, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.cleanEnergySetting";
      break;
    case 12:
      v14 = *v4;

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 8))(&v4[v15], v16);
      result = "StateSnapshot.matterDevices";
      break;
    case 13:
      return result;
    default:
      sub_1D1CB2248(v4, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.all";
      break;
  }

  return result;
}

uint64_t StateSnapshot.staticAccessories.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 32));

  return sub_1D1781AF4(v2);
}

uint64_t StateSnapshot.staticServiceGroups.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 56));

  return sub_1D17821C0(v2);
}

uint64_t StateSnapshot.staticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 60));

  return sub_1D1781D38(v2);
}

void *StateSnapshot.staticCameraProfilesInOrder.getter()
{
  v1 = type metadata accessor for StaticHome();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateSnapshot(0);
  v7 = *(v0 + *(v6 + 40));

  v9 = sub_1D1781428(v8);
  sub_1D1CB2110(v0 + *(v6 + 20), v5, type metadata accessor for StaticHome);
  v10 = *&v5[*(v2 + 72)];

  sub_1D1CB2248(v5, type metadata accessor for StaticHome);
  v11 = v9[2];
  if (!v11)
  {

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v12 = sub_1D18042F0(v9[2], 0);
  v13 = *(type metadata accessor for StaticCameraProfile() - 8);
  v14 = sub_1D1804998(&v17, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, v9);
  swift_bridgeObjectRetain_n();

  sub_1D1716918();
  if (v14 == v11)
  {

LABEL_5:
    v17 = v12;
    sub_1D1CB94F8(&v17, v10);

    swift_bridgeObjectRelease_n();
    return v17;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t StateSnapshot.staticMediaSystems.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 44));

  return sub_1D17818B0(v2);
}

uint64_t StateSnapshot.staticMediaProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 48));

  return sub_1D178166C(v2);
}

uint64_t StateSnapshot.staticHomesInOrder.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 24));
}

uint64_t StateSnapshot.staticZonesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 28));
}

uint64_t StateSnapshot.staticAccessoriesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 32));
}

uint64_t StateSnapshot.staticActionSetsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 36));
}

uint64_t StateSnapshot.staticCameraProfilesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 40));
}

uint64_t StateSnapshot.staticMediaSystemsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 44));
}

uint64_t StateSnapshot.staticMediaProfilesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 48));
}

uint64_t StateSnapshot.staticRoomsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 52));
}

uint64_t StateSnapshot.staticServiceGroupsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 56));
}

uint64_t StateSnapshot.staticServicesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 60));
}

uint64_t StateSnapshot.staticUsersDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 64));
}

uint64_t StateSnapshot.staticUserActionPredictions.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 68));
}

uint64_t StateSnapshot.staticHH2UpdatesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 72));
}

uint64_t StateSnapshot.staticResidentDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 76));
}

unint64_t sub_1D1C98808(char a1)
{
  result = 0x6567617265766F63;
  switch(a1)
  {
    case 1:
      result = 0x6F48636974617473;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 11:
    case 15:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1C989C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CC0044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1C989F4(uint64_t a1)
{
  v2 = sub_1D1CBE7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C98A30(uint64_t a1)
{
  v2 = sub_1D1CBE7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB8, &qword_1D1EA2658);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CBE7D0();
  sub_1D1E6930C();
  v15 = *v3;
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCC8, &qword_1D1EA2660);
  sub_1D1CBF160(&qword_1EC64CCD0, sub_1D1CBE824);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StateSnapshot(0);
    v12 = v11[5];
    LOBYTE(v15) = 1;
    type metadata accessor for StaticHome();
    sub_1D1CB21E0(&qword_1EC64CCE0, type metadata accessor for StaticHome);
    sub_1D1E68F1C();
    v15 = *(v3 + v11[6]);
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCE8, &qword_1D1EA2668);
    sub_1D1CBF22C(&qword_1EC64CCF0, &qword_1EC64CCE0);
    sub_1D1E68F1C();
    v15 = *(v3 + v11[7]);
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCF8, &unk_1D1EA2670);
    sub_1D1CBE878();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[8]);
    HIBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B86AB4();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[9]);
    HIBYTE(v14) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
    sub_1D1CBE964();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[10]);
    HIBYTE(v14) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
    sub_1D1CBEA50();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[11]);
    HIBYTE(v14) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
    sub_1D1CBEB3C();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[12]);
    HIBYTE(v14) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
    sub_1D1CBEC28();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[13]);
    HIBYTE(v14) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD50, &qword_1D1EA26A0);
    sub_1D1CBED14();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[14]);
    HIBYTE(v14) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B86BA0();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[15]);
    HIBYTE(v14) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[16]);
    HIBYTE(v14) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD60, &qword_1D1EA26A8);
    sub_1D1CBEE00();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[17]);
    HIBYTE(v14) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD78, &qword_1D1EA26B0);
    sub_1D1CBEEEC(&qword_1EC64CD80, &qword_1EC64CD88);
    sub_1D1E68F1C();
    v15 = *(v3 + v11[18]);
    HIBYTE(v14) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD90, &qword_1D1EA26B8);
    sub_1D1CBEF88();
    sub_1D1E68F1C();
    v15 = *(v3 + v11[19]);
    HIBYTE(v14) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CDA8, &qword_1D1EA26C0);
    sub_1D1CBF074();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StateSnapshot.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticHome();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D176D714(a1, *v1);
  v9 = type metadata accessor for StateSnapshot(0);
  v10 = v1 + v9[5];
  StaticHome.hash(into:)(a1);
  v11 = *(v2 + v9[6]);
  MEMORY[0x1D3892850](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1D1CB2110(v13, v8, type metadata accessor for StaticHome);
      StaticHome.hash(into:)(a1);
      sub_1D1CB2248(v8, type metadata accessor for StaticHome);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  sub_1D185EFC0(a1, *(v2 + v9[7]));
  sub_1D1859F70(a1, *(v2 + v9[8]));
  sub_1D185EA44(a1, *(v2 + v9[9]));
  sub_1D185E4C8(a1, *(v2 + v9[10]));
  sub_1D185DF4C(a1, *(v2 + v9[11]));
  sub_1D185D9D0(a1, *(v2 + v9[12]));
  sub_1D185D454(a1, *(v2 + v9[13]));
  sub_1D1859478(a1, *(v2 + v9[14]));
  sub_1D18599F4(a1, *(v2 + v9[15]));
  sub_1D185CE7C(a1, *(v2 + v9[16]));
  sub_1D1770734(a1, *(v2 + v9[17]));
  sub_1D185C7AC(a1, *(v2 + v9[18]));
  return sub_1D185C048(a1, *(v2 + v9[19]));
}

uint64_t StateSnapshot.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for StaticHome();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CDC0, &qword_1D1EA26C8);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D1CBE7D0();
  v28 = v11;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = v12;
  v24 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCC8, &qword_1D1EA2660);
  v30 = 0;
  sub_1D1CBF160(&qword_1EC64CDC8, sub_1D1CBF1D8);
  sub_1D1E68D7C();
  v18 = v24;
  *v24 = v31;
  LOBYTE(v31) = 1;
  sub_1D1CB21E0(&qword_1EC64CDD8, type metadata accessor for StaticHome);
  sub_1D1E68D7C();
  v19 = v23;
  sub_1D1CB2178(v7, v18 + v23[5], type metadata accessor for StaticHome);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCE8, &qword_1D1EA2668);
  v30 = 2;
  sub_1D1CBF22C(&qword_1EC64CDE0, &qword_1EC64CDD8);
  v22[1] = 0;
  sub_1D1E68D7C();
  *(v18 + v19[6]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCF8, &unk_1D1EA2670);
  v30 = 3;
  sub_1D1CBF2C8();
  sub_1D1E68D7C();
  *(v18 + v19[7]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  v30 = 4;
  sub_1D1B86D78();
  sub_1D1E68D7C();
  *(v18 + v19[8]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
  v30 = 5;
  sub_1D1CBF3B4();
  sub_1D1E68D7C();
  *(v18 + v19[9]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
  v30 = 6;
  sub_1D1CBF4A0();
  sub_1D1E68D7C();
  *(v18 + v19[10]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
  v30 = 7;
  sub_1D1CBF58C();
  sub_1D1E68D7C();
  *(v24 + v23[11]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
  v30 = 8;
  sub_1D1CBF678();
  sub_1D1E68D7C();
  *(v24 + v23[12]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD50, &qword_1D1EA26A0);
  v30 = 9;
  sub_1D1CBF764();
  sub_1D1E68D7C();
  *(v24 + v23[13]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
  v30 = 10;
  sub_1D1B86E64();
  sub_1D1E68D7C();
  *(v24 + v23[14]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v30 = 11;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  *(v24 + v23[15]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD60, &qword_1D1EA26A8);
  v30 = 12;
  sub_1D1CBF850();
  sub_1D1E68D7C();
  *(v24 + v23[16]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD78, &qword_1D1EA26B0);
  v30 = 13;
  sub_1D1CBEEEC(&qword_1EC64CE30, &qword_1EC64CE38);
  sub_1D1E68D7C();
  *(v24 + v23[17]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD90, &qword_1D1EA26B8);
  v30 = 14;
  sub_1D1CBF93C();
  sub_1D1E68D7C();
  *(v24 + v23[18]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CDA8, &qword_1D1EA26C0);
  v30 = 15;
  sub_1D1CBFA28();
  sub_1D1E68D7C();
  (*(v26 + 8))(v28, v27);
  v20 = v24;
  *(v24 + v23[19]) = v31;
  sub_1D1CB2110(v20, v25, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D1CB2248(v20, type metadata accessor for StateSnapshot);
}

uint64_t static UTType.frozenHomeType.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C868, &qword_1D1EA26D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_1D1E66F6C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_1D1E66F3C();
}

uint64_t _s13HomeDataModel13StateSnapshotV20readableContentTypesSay22UniformTypeIdentifiers6UTTypeVGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C868, &qword_1D1EA26D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CE60, &qword_1D1EA26D8);
  v4 = sub_1D1E66F6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D1E739C0;
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_1D1E66F3C();
  return v8;
}

uint64_t StateSnapshot.init(configuration:)(uint64_t a1)
{
  v2 = sub_1D1E6726C();
  v3 = [v2 regularFileContents];

  if (v3)
  {
    v4 = sub_1D1E668BC();
    v6 = v5;

    v7 = sub_1D1E65F1C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1D1E65F0C();
    type metadata accessor for StateSnapshot(0);
    sub_1D1CB21E0(&qword_1EC64CE70, type metadata accessor for StateSnapshot);
    sub_1D1E65EFC();
    v10 = sub_1D1E6727C();
    (*(*(v10 - 8) + 8))(a1, v10);

    return sub_1D174E7C4(v4, v6);
  }

  else
  {
    sub_1D1CBFB14();
    swift_allocError();
    swift_willThrow();
    v12 = sub_1D1E6727C();
    return (*(*(v12 - 8) + 8))(a1, v12);
  }
}

uint64_t StateSnapshot.fileWrapper(configuration:)()
{
  v1 = sub_1D1E65F8C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  type metadata accessor for StateSnapshot(0);
  sub_1D1CB21E0(&qword_1EC64CE78, type metadata accessor for StateSnapshot);
  v4 = sub_1D1E65F6C();
  v6 = v5;

  if (!v0)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v9 = sub_1D1E6688C();
    v10 = [v8 initRegularFileWithContents_];

    sub_1D174E7C4(v4, v6);
    return v10;
  }

  return result;
}

uint64_t StateSnapshot.StateSnapshotFileErrors.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C9A850()
{
  v1 = sub_1D1E65F8C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D1CB21E0(&qword_1EC64CE78, type metadata accessor for StateSnapshot);
  v4 = sub_1D1E65F6C();
  v6 = v5;

  if (!v0)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v9 = sub_1D1E6688C();
    v10 = [v8 initRegularFileWithContents_];

    sub_1D174E7C4(v4, v6);
    return v10;
  }

  return result;
}

uint64_t StateSnapshot.staticZones.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 28));

  return sub_1D1782D04(v2);
}

uint64_t StateSnapshot.staticActionSets.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 36));

  return sub_1D1782F48(v2);
}

uint64_t StateSnapshot.staticCameraProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 40));

  return sub_1D1781428(v2);
}

uint64_t StateSnapshot.staticRooms.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 52));

  return sub_1D178318C(v2);
}

uint64_t StateSnapshot.staticUsers.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 64));

  return sub_1D17833D0(v2);
}

void *StateSnapshot.staticActionSetsInOrder.getter()
{
  v40[5] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for StaticHome();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticActionSet();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StateSnapshot(0);
  v10 = *(v0 + *(v9 + 9));

  v12 = sub_1D1782F48(v11);
  v13 = v12;
  v14 = *(v12 + 32);
  v15 = (((1 << v14) + 63) >> 6);
  if ((v14 & 0x3Fu) > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_27;
    }
  }

  v33 = v15;
  v34 = v9;
  v35 = v4;
  v36 = v1;
  v37 = v0;
  v32[1] = v32;
  MEMORY[0x1EEE9AC00](v12);
  v17 = v32 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v17, v16);
  v38 = 0;
  v0 = 0;
  v9 = v13 + 7;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v4 = v19 & v13[7];
  v15 = ((v18 + 63) >> 6);
  while (1)
  {
    if (!v4)
    {
      v21 = v0;
      while (1)
      {
        v0 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v0 >= v15)
        {
          goto LABEL_16;
        }

        v22 = v9[v0];
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v4 = (v22 - 1) & v22;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    v20 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
LABEL_12:
    v1 = v20 | (v0 << 6);
    sub_1D1CB2110(v13[6] + *(v39 + 72) * v1, v8, type metadata accessor for StaticActionSet);
    v23 = v8[*(v5 + 32)];
    sub_1D1CB2248(v8, type metadata accessor for StaticActionSet);
    if ((v23 & 1) == 0)
    {
      *&v17[(v1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v1;
      if (__OFADD__(v38++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  v25 = sub_1D19E22C8(v17, v33, v38, v13);
  v26 = 0;
  v1 = v36;
  v0 = v37;
  v9 = v34;
  v4 = v35;
  while (1)
  {
    sub_1D1CB2110(v0 + *(v9 + 5), v4, type metadata accessor for StaticHome);
    v0 = *(v4 + *(v1 + 56));

    sub_1D1CB2248(v4, type metadata accessor for StaticHome);
    v4 = v25[2];
    if (!v4)
    {
      break;
    }

    v38 = 0;
    v27 = sub_1D1804318(v4, 0);
    v28 = sub_1D1806238(v40, v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v4, v25);
    v13 = v40[0];
    v9 = v40[1];
    v15 = v40[2];
    v1 = v40[4];
    swift_retain_n();

    sub_1D1716918();
    if (v28 == v4)
    {

      v26 = v38;
      goto LABEL_21;
    }

    __break(1u);
LABEL_27:
    v31 = swift_slowAlloc();
    v26 = 0;
    v25 = sub_1D1CB5540(v31, v15, v13, sub_1D1C9AF28, 0);

    MEMORY[0x1D3893640](v31, -1, -1);
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v40[0] = v27;
  sub_1D1CC1BF4(v40, v0);
  if (v26)
  {

    __break(1u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    result = v40[0];
    v30 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void *StateSnapshot.filteredStaticActionSetsInOrder(filterCategory:)(unsigned __int8 *a1)
{
  v60[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for StaticHome();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for StaticActionSet();
  v7 = *(v59 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v59);
  v57 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v47 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v54 = v47 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (v47 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (v47 - v19);
  v58 = *a1;
  v52 = type metadata accessor for StateSnapshot(0);
  v21 = *(v1 + *(v52 + 9));

  v23 = sub_1D1782F48(v22);
  v24 = v23;
  v25 = *(v23 + 32);
  v51 = ((1 << v25) + 63) >> 6;
  v26 = 8 * v51;
  v56 = v13;
  if ((v25 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_2:
      v49 = v6;
      v50 = v3;
      v47[1] = v47;
      v48 = v1;
      MEMORY[0x1EEE9AC00](v23);
      v53 = v47 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v53, v26);
      v55 = 0;
      v6 = 0;
      v1 = v24;
      v3 = v24 + 56;
      v27 = 1 << *(v24 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v24 + 56);
      v26 = (v27 + 63) >> 6;
      while (v29)
      {
        v30 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
LABEL_12:
        v24 = v30 | (v6 << 6);
        sub_1D1CB2110(v1[6] + *(v7 + 72) * v24, v20, type metadata accessor for StaticActionSet);
        v13 = *(v20 + v59[8]);
        sub_1D1CB2248(v20, type metadata accessor for StaticActionSet);
        if ((v13 & 1) == 0)
        {
          *&v53[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
          v34 = __OFADD__(v55, 1);
          v55 = (v55 + 1);
          if (v34)
          {
            __break(1u);
LABEL_16:
            v24 = sub_1D19E22C8(v53, v51, v55, v32);
            v1 = v48;
            v6 = v49;
            v3 = v50;
            goto LABEL_17;
          }
        }
      }

      v31 = v6;
      v13 = v56;
      v32 = v1;
      while (1)
      {
        v6 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v6 >= v26)
        {
          goto LABEL_16;
        }

        v33 = *(v3 + 8 * v6);
        ++v31;
        if (v33)
        {
          v30 = __clz(__rbit64(v33));
          v29 = (v33 - 1) & v33;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_48;
    }

    v46 = swift_slowAlloc();
    v24 = sub_1D1CB5540(v46, v51, v24, sub_1D1C9AF28, 0);

    MEMORY[0x1D3893640](v46, -1, -1);
LABEL_17:
    sub_1D1CB2110(v1 + *(v52 + 5), v6, type metadata accessor for StaticHome);
    v35 = *(v6 + *(v3 + 56));

    sub_1D1CB2248(v6, type metadata accessor for StaticHome);
    v36 = *(v24 + 16);
    if (v36)
    {
      v37 = sub_1D1804318(*(v24 + 16), 0);
      v6 = sub_1D1806238(v60, v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v36, v24);
      v55 = v60[1];
      v52 = v60[3];
      v53 = v60[2];
      v51 = v60[4];

      sub_1D1716918();
      if (v6 == v36)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v60[0] = v37;

    sub_1D1CC1BF4(v60, v35);

    swift_bridgeObjectRelease_n();
    v26 = v60[0];
    v3 = v60[0][2];
    if (v3)
    {
      v6 = 0;
      v20 = MEMORY[0x1E69E7CC0];
      v1 = v54;
      v55 = v18;
      while (v6 < *(v26 + 16))
      {
        v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v38 = *(v7 + 72);
        sub_1D1CB2110(v26 + v24 + v38 * v6, v18, type metadata accessor for StaticActionSet);
        if (*(v18 + v59[12]) == 1)
        {
          sub_1D1CB2178(v18, v1, type metadata accessor for StaticActionSet);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60[0] = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D178CE74(0, v20[2] + 1, 1);
            v1 = v54;
            v20 = v60[0];
          }

          v41 = v20[2];
          v40 = v20[3];
          if (v41 >= v40 >> 1)
          {
            sub_1D178CE74(v40 > 1, v41 + 1, 1);
            v1 = v54;
            v20 = v60[0];
          }

          v20[2] = v41 + 1;
          sub_1D1CB2178(v1, v20 + v24 + v41 * v38, type metadata accessor for StaticActionSet);
          v18 = v55;
        }

        else
        {
          sub_1D1CB2248(v18, type metadata accessor for StaticActionSet);
        }

        ++v6;
        v13 = v56;
        if (v3 == v6)
        {
          goto LABEL_33;
        }
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_33:

    v18 = v20[2];
    if (!v18)
    {
      break;
    }

    v26 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    while (v26 < v20[2])
    {
      v3 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v6 = *(v7 + 72);
      sub_1D1CB2110(v20 + v3 + v6 * v26, v13, type metadata accessor for StaticActionSet);
      if (v58 == 8 || (sub_1D171B004(v58, *(v13 + v59[13])) & 1) != 0)
      {
        sub_1D1CB2178(v13, v57, type metadata accessor for StaticActionSet);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v60[0] = v1;
        if ((v42 & 1) == 0)
        {
          sub_1D178CE74(0, v1[2] + 1, 1);
          v1 = v60[0];
        }

        v24 = v1[2];
        v43 = v1[3];
        if (v24 >= v43 >> 1)
        {
          sub_1D178CE74(v43 > 1, v24 + 1, 1);
          v1 = v60[0];
        }

        v1[2] = v24 + 1;
        sub_1D1CB2178(v57, v1 + v3 + v24 * v6, type metadata accessor for StaticActionSet);
      }

      else
      {
        sub_1D1CB2248(v13, type metadata accessor for StaticActionSet);
      }

      if (v18 == ++v26)
      {
        goto LABEL_46;
      }
    }

LABEL_49:
    __break(1u);
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_46:

  v44 = *MEMORY[0x1E69E9840];
  return v1;
}

void *StateSnapshot.staticRoomsToShowInOrder.getter()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v2 = *(v0 + *(v1 + 52));

  v4 = sub_1D178318C(v3);
  v14 = v0;
  v5 = sub_1D1B529D0(sub_1D1CC1D18, v13, v4);
  v6 = v0 + *(v1 + 20);
  v7 = *(v6 + *(type metadata accessor for StaticHome() + 48));
  v8 = v5[2];
  if (!v8)
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v15 = v9;

    sub_1D1CC3D58(&v15, v7);

    swift_bridgeObjectRelease_n();
    return v15;
  }

  v9 = sub_1D18043CC(v8, 0);
  v10 = *(type metadata accessor for StaticRoom(0) - 8);
  v11 = sub_1D1806278(&v15, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, v5);

  sub_1D1716918();
  if (v11 == v8)
  {
    goto LABEL_5;
  }

  __break(1u);
  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

BOOL sub_1D1C9B940(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for StateSnapshot(0) + 20);
  v3 = *(type metadata accessor for StaticHome() + 28);
  sub_1D1E66A7C();
  sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  return (sub_1D1E6775C() & 1) == 0;
}

uint64_t StateSnapshot.staticRoomTypesToShowInOrder.getter()
{
  v3 = 0;
  v155 = 0;
  v180 = type metadata accessor for RoomType(0);
  v158 = *(v180 - 8);
  v4 = *(v158 + 64);
  v5 = MEMORY[0x1EEE9AC00](v180);
  v177 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v169 = &v153 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v154 = &v153 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v166 = &v153 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v172 = &v153 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v165 = &v153 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v173 = &v153 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v186 = &v153 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v189 = (&v153 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v153 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABD8, &unk_1D1E97C30);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v171 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v170 = &v153 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v153 - v32;
  v188 = sub_1D1E66A7C();
  v34 = *(v188 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v188);
  v176 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v159 = &v153 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v183 = &v153 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v153 = &v153 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v181 = &v153 - v44;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
  v45 = *(*(v168 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v168);
  v167 = &v153 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v164 = &v153 - v48;
  v192 = MEMORY[0x1E69E7CC8];
  v156 = type metadata accessor for StateSnapshot(0);
  v49 = *(v156 + 52);
  v160 = v0;
  v50 = *&v0[v49];
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v50 + 64);
  v55 = ((v52 + 63) >> 6);
  v182 = (v34 + 16);
  v174 = (v34 + 56);
  v187 = (v34 + 48);
  v178 = v34;
  v179 = v50;
  v184 = (v34 + 32);
  v185 = (v34 + 8);

  v157 = MEMORY[0x1E69E7CC0];
  v163 = v51;
  v162 = v55;
  v175 = v33;
LABEL_4:
  v56 = v3;
  if (!v54)
  {
    goto LABEL_6;
  }

  do
  {
    v3 = v56;
LABEL_9:
    v57 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v58 = v57 | (v3 << 6);
    v2 = v178;
    v59 = v179;
    v60 = *(v179 + 48);
    v161 = *(v178 + 72);
    v61 = *(v178 + 16);
    v62 = v164;
    v63 = v188;
    v1 = v182;
    v61(v164, v60 + v161 * v58, v188);
    v64 = *(v59 + 56);
    v65 = v64 + *(*(type metadata accessor for StaticRoom(0) - 8) + 72) * v58;
    v66 = v168;
    sub_1D1CB2110(v65, v62 + *(v168 + 48), type metadata accessor for StaticRoom);
    v67 = v167;
    sub_1D1741A90(v62, v167, &qword_1EC645518, &qword_1D1E79AB0);
    v68 = *(v66 + 48);
    v69 = v175;
    v61(v175, &v67[v68], v63);
    sub_1D1CB2248(&v67[v68], type metadata accessor for StaticRoom);
    (*(v2 + 56))(v69, 0, 1, v63);
    (*(v2 + 8))(v67, v63);
    if ((*(v2 + 48))(v69, 1, v63) != 1)
    {
      v70 = v161;
      v71 = *v184;
      (*v184)(v153, v69, v188);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v162;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v157 = sub_1D177D0AC(0, *(v157 + 2) + 1, 1, v157);
      }

      v51 = v163;
      v2 = *(v157 + 2);
      v73 = *(v157 + 3);
      v1 = (v2 + 1);
      if (v2 >= v73 >> 1)
      {
        v157 = sub_1D177D0AC(v73 > 1, v2 + 1, 1, v157);
      }

      v74 = v157;
      *(v157 + 2) = v1;
      v71(&v74[((*(v178 + 80) + 32) & ~*(v178 + 80)) + v2 * v70], v153, v188);
      goto LABEL_4;
    }

    sub_1D1741A30(v69, &qword_1EC642590, qword_1D1E71260);
    v56 = v3;
    v51 = v163;
    v55 = v162;
  }

  while (v54);
  while (1)
  {
LABEL_6:
    v3 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v3 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v3);
    ++v56;
    if (v54)
    {
      goto LABEL_9;
    }
  }

  v75 = v157;
  v191 = v157;
  v76 = *(v157 + 2);
  v77 = v188;
  if (v76)
  {
    v78 = &v160[*(v156 + 20)];
    v79 = *(type metadata accessor for StaticHome() + 28);
    v80 = v75 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
    v81 = *(v178 + 72);
    v179 = *(v178 + 16);
    v167 = (v158 + 56);

    v168 = v81;
    do
    {
      (v179)(v181, v80, v77);
      sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      if ((sub_1D1E6775C() & 1) == 0)
      {
        v82 = v181;
        v83 = sub_1D1E66A1C();
        v175 = v84;
        v85 = v170;
        (v179)(v170, v82, v188);
        (*v174)(v85, 0, 4, v188);
        (*v167)(v85, 0, 1, v180);
        v86 = v83;
        v77 = v188;
        v81 = v168;
        sub_1D1B0F3E8(v85, v86, v175);
      }

      (*v185)(v181, v77);
      v80 += v81;
      --v76;
    }

    while (v76);
  }

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431F0, &unk_1D1EA26E0);
  v88 = *(v158 + 72);
  v89 = (*(v158 + 80) + 32) & ~*(v158 + 80);
  v168 = *(v158 + 80);
  v170 = v87;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1D1E6F900;
  v91 = *v174;
  (*v174)(v90 + v89, 2, 4, v77);
  v91(v90 + v89 + v88, 1, 4, v77);
  v175 = v90 + v89;
  v91(v90 + v89 + 2 * v88, 3, 4, v77);
  v181 = v89;
  v167 = (2 * v88);
  v174 = v90;
  v92 = v90 + v89 + 2 * v88;
  v179 = v88;
  v93 = -v88;
  v94 = -3;
  do
  {
    sub_1D1CB2110(v92, v24, type metadata accessor for RoomType);
    v104 = v189;
    sub_1D1CB2110(v24, v189, type metadata accessor for RoomType);
    v105 = *v187;
    v106 = (*v187)(v104, 4, v77);
    if (v106 > 1)
    {
      v95 = 0xD000000000000010;
      if (v106 != 3)
      {
        v95 = 0x526E776F6E6B6E75;
      }

      v96 = 0xEB000000006D6F6FLL;
      if (v106 == 3)
      {
        v96 = 0x80000001D1EC7C10;
      }

      if (v106 == 2)
      {
        v97 = 0x53736172656D6163;
      }

      else
      {
        v97 = v95;
      }

      if (v106 == 2)
      {
        v98 = 0xEE006E6F69746365;
      }

      else
      {
        v98 = v96;
      }
    }

    else if (v106)
    {
      v97 = 0x655373656E656373;
      v98 = 0xED00006E6F697463;
    }

    else
    {
      v107 = v183;
      (*v184)(v183, v189, v77);
      v108 = sub_1D1E66A1C();
      v109 = v77;
      v97 = v108;
      v98 = v110;
      (*v185)(v107, v109);
    }

    v99 = v186;
    sub_1D1CB2110(v24, v186, type metadata accessor for RoomType);
    v100 = v192;
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v190 = v100;
    sub_1D1756BEC(v99, v97, v98, v101);

    sub_1D1CB2248(v24, type metadata accessor for RoomType);
    v102 = v190;
    v192 = v190;
    v92 += v93;
    v103 = __CFADD__(v94++, 1);
    v77 = v188;
  }

  while (!v103);
  v111 = &v160[*(v156 + 20)];
  v112 = *&v111[*(type metadata accessor for StaticHome() + 52)];
  v113 = *(v112 + 16);
  if (v113)
  {
    v114 = (v112 + 40);
    v189 = MEMORY[0x1E69E7CC0];
    v55 = v155;
    v115 = v179;
    while (1)
    {
      if (v102[2])
      {
        v116 = *(v114 - 1);
        v117 = *v114;

        v118 = sub_1D171D2F0(v116, v117);
        v120 = v119;

        if (v120)
        {
          v121 = v165;
          sub_1D1CB2110(v102[7] + v118 * v115, v165, type metadata accessor for RoomType);
          v122 = v121;
          v123 = v173;
          sub_1D1CB2178(v122, v173, type metadata accessor for RoomType);
          sub_1D1CB2110(v123, v172, type metadata accessor for RoomType);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = sub_1D177FE24(0, v189[2] + 1, 1, v189);
          }

          v125 = v189[2];
          v124 = v189[3];
          if (v125 >= v124 >> 1)
          {
            v189 = sub_1D177FE24(v124 > 1, v125 + 1, 1, v189);
          }

          v126 = v189;
          v189[2] = v125 + 1;
          sub_1D1CB2178(v172, &v181[v126 + v125 * v115], type metadata accessor for RoomType);
          v127 = v173;
          v1 = v166;
          sub_1D1CB2110(v173, v166, type metadata accessor for RoomType);
          v2 = v188;
          if (v105(v1, 4, v188))
          {
            sub_1D1CB2248(v127, type metadata accessor for RoomType);
            sub_1D1CB2248(v1, type metadata accessor for RoomType);
          }

          else
          {
            v128 = v159;
            v129 = (*v184)(v159, v1, v2);
            MEMORY[0x1EEE9AC00](v129);
            *(&v153 - 2) = v128;
            v130 = sub_1D1CB55D0(sub_1D1CC3E9C, (&v153 - 4));
            v131 = *(v191 + 2);
            if (v131 < v130)
            {
              goto LABEL_79;
            }

            sub_1D1CC3ECC(v130, v131);
            sub_1D1CB2248(v173, type metadata accessor for RoomType);
            (*v185)(v128, v2);
            v115 = v179;
          }
        }
      }

      v114 += 2;
      if (!--v113)
      {
        goto LABEL_53;
      }
    }
  }

  v189 = MEMORY[0x1E69E7CC0];
  v55 = v155;
  v115 = v179;
LABEL_53:
  v132 = v154;
  sub_1D1CB2110(&v167[v175], v154, type metadata accessor for RoomType);
  v1 = v189;
  if (sub_1D17C5B18(v132, v189))
  {
    sub_1D1CB2248(v132, type metadata accessor for RoomType);
    v133 = v171;
    v2 = v170;
  }

  else
  {
    v134 = v181;
    v2 = v170;
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_1D1E739C0;
    sub_1D1CB2110(v132, &v134[v135], type metadata accessor for RoomType);
    v190 = v135;
    sub_1D17A63EC(v1);
    sub_1D1CB2248(v132, type metadata accessor for RoomType);
    v1 = v190;
    v133 = v171;
  }

  sub_1D1CB2110(v175 + v115, v132, type metadata accessor for RoomType);
  if (sub_1D17C5B18(v132, v1))
  {
    sub_1D1CB2248(v132, type metadata accessor for RoomType);
  }

  else
  {
    v136 = v181;
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_1D1E739C0;
    sub_1D1CB2110(v132, &v136[v137], type metadata accessor for RoomType);
    v190 = v137;
    sub_1D17A63EC(v1);
    sub_1D1CB2248(v132, type metadata accessor for RoomType);
    v1 = v190;
  }

  sub_1D1CB2110(v175, v132, type metadata accessor for RoomType);
  if (sub_1D17C5B18(v132, v1))
  {
    sub_1D1CB2248(v132, type metadata accessor for RoomType);
  }

  else
  {
    v138 = v181;
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_1D1E739C0;
    sub_1D1CB2110(v132, &v138[v139], type metadata accessor for RoomType);
    v190 = v139;
    sub_1D17A63EC(v1);
    sub_1D1CB2248(v132, type metadata accessor for RoomType);
    v1 = v190;
  }

  v189 = v1;

  v141 = v191;
  v142 = *(v191 + 2);
  if (v142)
  {
    v143 = 0;
    v144 = (v158 + 48);
    v145 = MEMORY[0x1E69E7CC0];
    while (v143 < *(v141 + 2))
    {
      v1 = v176;
      v2 = v188;
      (*(v178 + 16))(v176, &v141[((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v143], v188);
      sub_1D1C9CEDC(v1, v133);
      if (v55)
      {
        goto LABEL_80;
      }

      (*v185)(v1, v2);
      if ((*v144)(v133, 1, v180) == 1)
      {
        v140 = sub_1D1741A30(v133, &qword_1EC64ABD8, &unk_1D1E97C30);
      }

      else
      {
        v146 = v133;
        v147 = v169;
        sub_1D1CB2178(v146, v169, type metadata accessor for RoomType);
        sub_1D1CB2178(v147, v177, type metadata accessor for RoomType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1D177FE24(0, *(v145 + 16) + 1, 1, v145);
        }

        v2 = *(v145 + 16);
        v148 = *(v145 + 24);
        if (v2 >= v148 >> 1)
        {
          v145 = sub_1D177FE24(v148 > 1, v2 + 1, 1, v145);
        }

        *(v145 + 16) = v2 + 1;
        v140 = sub_1D1CB2178(v177, &v181[v145 + v2 * v179], type metadata accessor for RoomType);
        v133 = v171;
      }

      if (v142 == ++v143)
      {
        goto LABEL_75;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:

    (*v185)(v1, v2);

    __break(1u);
    goto LABEL_81;
  }

  v145 = MEMORY[0x1E69E7CC0];
LABEL_75:
  MEMORY[0x1EEE9AC00](v140);
  *(&v153 - 2) = v160;
  v190 = v145;
  v149 = v189;

  sub_1D1CB22A8(sub_1D1CC3E7C, (&v153 - 4));
  if (!v55)
  {

    v150 = v190;
    v190 = v149;
    sub_1D17A63EC(v150);
    v151 = v190;

    return v151;
  }

LABEL_81:

  __break(1u);
  return result;
}

uint64_t sub_1D1C9CEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 4, v4);
  v6 = type metadata accessor for RoomType(0);
  return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
}

uint64_t sub_1D1C9CFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v62 = type metadata accessor for StaticRoom(0);
  v65 = *(v62 - 8);
  v4 = *(v65 + 64);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v63 = &v58 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - v11;
  v13 = type metadata accessor for RoomType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - v18;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v58 - v26;
  sub_1D1CB2110(a1, v19, type metadata accessor for RoomType);
  v28 = *(v21 + 48);
  if (v28(v19, 4, v20))
  {
    v29 = type metadata accessor for RoomType;
    v30 = v19;
LABEL_5:
    sub_1D1CB2248(v30, v29);
LABEL_6:
    v33 = 1;
    return v33 & 1;
  }

  v59 = v12;
  v60 = v25;
  v31 = *(v21 + 32);
  v31(v27, v19, v20);
  sub_1D1CB2110(v67, v17, type metadata accessor for RoomType);
  v32 = v20;
  if (v28(v17, 4, v20))
  {
    (*(v21 + 8))(v27, v20);
    v29 = type metadata accessor for RoomType;
    v30 = v17;
    goto LABEL_5;
  }

  v35 = v60;
  v31(v60, v17, v20);
  v36 = *(v66 + *(type metadata accessor for StateSnapshot(0) + 52));
  if (!*(v36 + 16) || (v37 = sub_1D1742188(v27), (v38 & 1) == 0))
  {
    v52 = *(v21 + 8);
    v52(v35, v20);
    v52(v27, v20);
    goto LABEL_6;
  }

  v39 = v64;
  v40 = *(v65 + 72);
  sub_1D1CB2110(*(v36 + 56) + v40 * v37, v64, type metadata accessor for StaticRoom);
  v41 = v39;
  v42 = v59;
  sub_1D1CB2178(v41, v59, type metadata accessor for StaticRoom);
  if (!*(v36 + 16) || (v43 = sub_1D1742188(v60), (v44 & 1) == 0))
  {
    v53 = v42;
    v54 = *(v21 + 8);
    v54(v60, v32);
    v54(v27, v32);
    v29 = type metadata accessor for StaticRoom;
    v30 = v53;
    goto LABEL_5;
  }

  v67 = v27;
  v45 = *(v36 + 56) + v43 * v40;
  v46 = v61;
  sub_1D1CB2110(v45, v61, type metadata accessor for StaticRoom);
  v47 = v63;
  sub_1D1CB2178(v46, v63, type metadata accessor for StaticRoom);
  v48 = *(v62 + 20);
  v49 = *(v42 + v48);
  v50 = *(v42 + v48 + 8);
  v51 = (v47 + v48);
  if (v49 == *v51 && v50 == v51[1] || (v33 = 1, v55 = *v51, v56 = v51[1], (sub_1D1E6904C() & 1) == 0) && (v33 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v33 = MEMORY[0x1D3890070](v59, v63);
  }

  v57 = *(v21 + 8);
  v57(v60, v32);
  v57(v67, v32);
  sub_1D1CB2248(v63, type metadata accessor for StaticRoom);
  sub_1D1CB2248(v59, type metadata accessor for StaticRoom);
  return v33 & 1;
}

void *StateSnapshot.staticResidentsInOrder.getter()
{
  v1 = type metadata accessor for StaticHome();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateSnapshot(0);
  v7 = *(v0 + *(v6 + 76));

  v9 = sub_1D1782540(v8);
  sub_1D1CB2110(v0 + *(v6 + 20), v5, type metadata accessor for StaticHome);
  v10 = *&v5[*(v2 + 88)];

  sub_1D1CB2248(v5, type metadata accessor for StaticHome);
  if (!v10)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9[2];
  if (!v11)
  {

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v12 = sub_1D18043A4(v9[2], 0);
  v13 = *(type metadata accessor for StaticResident() - 8);
  v14 = sub_1D18067A4(&v17, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, v9);
  swift_bridgeObjectRetain_n();

  sub_1D1716918();
  if (v14 == v11)
  {

LABEL_7:
    v17 = v12;
    sub_1D1CB2368(&v17, v10);

    return v17;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t StateSnapshot.accessoryDetails(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v89 = a1;
  v4 = sub_1D1E66A7C();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticService(0);
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v79 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v79 - v14;
  v15 = type metadata accessor for StaticServiceGroup();
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v79 - v22;
  v24 = type metadata accessor for StaticAccessory(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24 - 8);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v79 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v79 - v33;
  v35 = type metadata accessor for StateSnapshot(0);
  v36 = *(v2 + v35[8]);
  if (*(v36 + 16) && (v37 = sub_1D1742188(v89), (v38 & 1) != 0))
  {
    sub_1D1CB2110(*(v36 + 56) + *(v25 + 72) * v37, v32, type metadata accessor for StaticAccessory);
    sub_1D1CB2178(v32, v34, type metadata accessor for StaticAccessory);
    sub_1D1CB2110(v34, v29, type metadata accessor for StaticAccessory);
    v39 = v88;
    AccessoryDetails.init(_:)(v29, v88);
    v40 = type metadata accessor for StaticAccessory;
    v41 = v34;
  }

  else
  {
    v42 = *(v3 + v35[14]);
    v43 = v89;
    if (*(v42 + 16))
    {
      v44 = sub_1D1742188(v89);
      if (v45)
      {
        sub_1D1CB2110(*(v42 + 56) + *(v83 + 72) * v44, v21, type metadata accessor for StaticServiceGroup);
        sub_1D1CB2178(v21, v23, type metadata accessor for StaticServiceGroup);
        v46 = v84;
        sub_1D1CB2178(v23, v84, type metadata accessor for StaticServiceGroup);
        v47 = type metadata accessor for AccessoryDetails(0);
        v48 = v88;
        *(v88 + v47[7]) = 8;
        sub_1D1CB2110(v46, v48, type metadata accessor for StaticServiceGroup);
        type metadata accessor for AccessoryDetails.Payload(0);
        swift_storeEnumTagMultiPayload();
        v49 = v48 + v47[5];
        v50 = type metadata accessor for AccessoryDetailsBasicInfo();
        v51 = (v49 + v50[5]);
        *v51 = 0;
        v51[1] = 0;
        v52 = v50[6];
        v53 = type metadata accessor for StaticRoom(0);
        (*(*(v53 - 8) + 56))(v49 + v52, 1, 1, v53);
        v54 = (v49 + v50[7]);
        *v54 = 0;
        v54[1] = 0;
        *(v49 + v50[8]) = 2;
        *(v49 + v50[9]) = 2;
        *(v49 + v50[10]) = 92;
        sub_1D1CB2178(v46, v49, type metadata accessor for StaticServiceGroup);
        swift_storeEnumTagMultiPayload();
        v55 = v47[6];
        v56 = type metadata accessor for StaticDeviceMetadata();
        (*(*(v56 - 8) + 56))(v48 + v55, 1, 1, v56);
        return (*(*(v47 - 1) + 56))(v48, 0, 1, v47);
      }
    }

    v58 = *(v3 + v35[15]);
    if (!*(v58 + 16) || (v59 = sub_1D1742188(v43), (v60 & 1) == 0))
    {
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v67 = sub_1D1E6709C();
      __swift_project_value_buffer(v67, qword_1EE07B5D8);
      v69 = v85;
      v68 = v86;
      v70 = v87;
      (*(v86 + 16))(v85, v43, v87);
      v71 = sub_1D1E6707C();
      v72 = sub_1D1E6833C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v90 = v74;
        *v73 = 136315650;
        *(v73 + 4) = sub_1D1B1312C(0xD000000000000021, 0x80000001D1EC7C30, &v90);
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC7C60, &v90);
        *(v73 + 22) = 2080;
        sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v75 = sub_1D1E68FAC();
        v77 = v76;
        (*(v68 + 8))(v69, v70);
        v78 = sub_1D1B1312C(v75, v77, &v90);

        *(v73 + 24) = v78;
        _os_log_impl(&dword_1D16EC000, v71, v72, "%s - %s Could not create AccessoryDetails for uuid: %s", v73, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v74, -1, -1);
        MEMORY[0x1D3893640](v73, -1, -1);
      }

      else
      {

        (*(v68 + 8))(v69, v70);
      }

      v63 = type metadata accessor for AccessoryDetails(0);
      v64 = *(*(v63 - 8) + 56);
      v65 = v88;
      v66 = 1;
      return v64(v65, v66, 1, v63);
    }

    sub_1D1CB2110(*(v58 + 56) + *(v80 + 72) * v59, v13, type metadata accessor for StaticService);
    v61 = v81;
    sub_1D1CB2178(v13, v81, type metadata accessor for StaticService);
    v62 = v82;
    sub_1D1CB2110(v61, v82, type metadata accessor for StaticService);
    v39 = v88;
    AccessoryDetails.init(_:)(v62, v88);
    v40 = type metadata accessor for StaticService;
    v41 = v61;
  }

  sub_1D1CB2248(v41, v40);
  v63 = type metadata accessor for AccessoryDetails(0);
  v64 = *(*(v63 - 8) + 56);
  v65 = v39;
  v66 = 0;
  return v64(v65, v66, 1, v63);
}

uint64_t StateSnapshot.findServiceGroup(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = *(*(v111 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v111);
  v110 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v109 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v89 - v9;
  v120 = sub_1D1E66A7C();
  v10 = *(v120 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v120);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v89 - v17;
  v19 = type metadata accessor for StaticServiceGroup();
  v98 = *(v19 - 8);
  v20 = *(v98 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v89 - v23;
  v24 = *(v2 + *(type metadata accessor for StateSnapshot(0) + 56));

  v26 = sub_1D17821C0(v25);
  v27 = *(v26 + 56);
  v97 = v26 + 56;
  v28 = 1 << *(v26 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & v27;
  v96 = (v28 + 63) >> 6;
  v31 = v10 + 16;
  v106 = v10 + 32;
  v32 = (v10 + 8);

  v34 = 0;
  v95 = a1;
  v94 = v19;
  v105 = v14;
  v91 = v18;
  v92 = result;
  v103 = (v10 + 8);
  v104 = v10 + 16;
  v114 = v10;
  while (1)
  {
    if (!v30)
    {
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_45;
        }

        if (v35 >= v96)
        {

          v88 = 1;
          goto LABEL_38;
        }

        v30 = *(v97 + 8 * v35);
        ++v34;
        if (v30)
        {
          goto LABEL_10;
        }
      }
    }

    v35 = v34;
LABEL_10:
    v100 = v30;
    v99 = v35;
    v36 = v93;
    sub_1D1CB2110(*(v26 + 48) + *(v98 + 72) * (__clz(__rbit64(v30)) | (v35 << 6)), v93, type metadata accessor for StaticServiceGroup);
    v37 = v36;
    v38 = v101;
    sub_1D1CB2178(v37, v101, type metadata accessor for StaticServiceGroup);
    v39 = *(v38 + *(v19 + 56));
    v40 = *(v39 + 16);
    if (v40)
    {
      v121 = MEMORY[0x1E69E7CC0];
      v112 = v40;
      sub_1D178CEFC(0, v40, 0);
      v41 = -1 << *(v39 + 32);
      v118 = v39 + 64;
      v119 = v121;
      result = sub_1D1E6869C();
      v42 = result;
      v43 = 0;
      v102 = v39 + 72;
      v44 = v39;
      v113 = v39;
      while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v44 + 32))
      {
        v46 = v42 >> 6;
        if ((*(v118 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
        {
          goto LABEL_41;
        }

        v47 = *(v44 + 36);
        v115 = v43;
        v116 = v47;
        v48 = v111;
        v49 = *(v111 + 48);
        v50 = *(v44 + 48);
        v117 = *(v10 + 72);
        v51 = v44;
        v52 = v120;
        v53 = v108;
        (*(v10 + 16))(v108, v50 + v117 * v42, v120);
        v54 = *(v51 + 56);
        v55 = type metadata accessor for StaticService(0);
        sub_1D1CB2110(v54 + *(*(v55 - 8) + 72) * v42, &v53[v49], type metadata accessor for StaticService);
        v56 = *(v10 + 32);
        v57 = v109;
        v56(v109, v53, v52);
        v58 = &v53[v49];
        v59 = v52;
        sub_1D1CB2178(v58, &v57[*(v48 + 48)], type metadata accessor for StaticService);
        v60 = v57;
        v61 = v110;
        sub_1D1741A90(v60, v110, &qword_1EC642DB0, &unk_1D1E6F360);
        v62 = *(v48 + 48);
        v63 = v107;
        v56(v107, v61, v59);
        sub_1D1CB2248(v61 + v62, type metadata accessor for StaticService);
        v64 = v119;
        v121 = v119;
        v66 = v119[2];
        v65 = v119[3];
        if (v66 >= v65 >> 1)
        {
          sub_1D178CEFC(v65 > 1, v66 + 1, 1);
          v64 = v121;
        }

        v64[2] = v66 + 1;
        v67 = v114;
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v119 = v64;
        result = (v56)(v64 + v68 + v66 * v117, v63, v120);
        v44 = v113;
        v45 = 1 << *(v113 + 32);
        if (v42 >= v45)
        {
          goto LABEL_42;
        }

        v69 = *(v118 + 8 * v46);
        if ((v69 & (1 << v42)) == 0)
        {
          goto LABEL_43;
        }

        if (v116 != *(v113 + 36))
        {
          goto LABEL_44;
        }

        v10 = v67;
        v70 = v69 & (-2 << (v42 & 0x3F));
        if (v70)
        {
          v45 = __clz(__rbit64(v70)) | v42 & 0x7FFFFFFFFFFFFFC0;
          v31 = v104;
          v14 = v105;
          v32 = v103;
        }

        else
        {
          v71 = v46 << 6;
          v72 = v46 + 1;
          v32 = v103;
          v73 = (v102 + 8 * v46);
          v31 = v104;
          v14 = v105;
          while (v72 < (v45 + 63) >> 6)
          {
            v75 = *v73++;
            v74 = v75;
            v71 += 64;
            ++v72;
            if (v75)
            {
              result = sub_1D1716920(v42, v116, 0);
              v45 = __clz(__rbit64(v74)) + v71;
              goto LABEL_13;
            }
          }

          result = sub_1D1716920(v42, v116, 0);
        }

LABEL_13:
        v43 = v115 + 1;
        v42 = v45;
        if (v115 + 1 == v112)
        {
          a1 = v95;
          v19 = v94;
          v76 = v119;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v76 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v119 = v76;
    v77 = v76[2];
    v78 = sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v121 = MEMORY[0x1D38917C0](v77, v120, v78);
    v79 = v119[2];
    if (v79)
    {
      v80 = v119 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v81 = *(v10 + 72);
      v82 = v10;
      v83 = v31;
      v84 = *(v82 + 16);
      v85 = v91;
      do
      {
        v86 = v120;
        v84(v85, v80, v120);
        sub_1D1762CB8(v14, v85);
        (*v32)(v14, v86);
        v80 += v81;
        --v79;
      }

      while (v79);

      v31 = v83;
      v10 = v114;
      a1 = v95;
      v19 = v94;
    }

    else
    {
    }

    v87 = sub_1D1A46FB0(a1, v121);

    if ((v87 & 1) == 0)
    {
      break;
    }

    v30 = (v100 - 1) & v100;
    result = sub_1D1CB2248(v101, type metadata accessor for StaticServiceGroup);
    v34 = v99;
    v26 = v92;
  }

  sub_1D1CB2178(v101, v90, type metadata accessor for StaticServiceGroup);
  v88 = 0;
LABEL_38:
  (*(v98 + 56))(v90, v88, 1, v19);
}

uint64_t StateSnapshot.ActionSetUpdateType.description.getter()
{
  v1 = *v0;
  if (!(v1 >> 14))
  {
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000027, 0x80000001D1EC7CA0);
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x1D3890F70](v2, v3);

    MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC7CD0);
    goto LABEL_11;
  }

  if (v1 >> 14 == 1)
  {
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EC7C80);
LABEL_11:
    sub_1D1E68ABC();
    return 0;
  }

  return 1684104562;
}

uint64_t StateSnapshot.ActionSetUpdateType.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t StateSnapshot.ActionSetUpdateType.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C9EB88()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t sub_1D1C9EBFC()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 2)
  {
    if (!*(v0 + 16))
    {
      MEMORY[0x1D3892850](0);
      return sub_1D1E6922C();
    }

    if (v2 == 1)
    {
      MEMORY[0x1D3892850](1);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      return MEMORY[0x1D3892890](v3);
    }

    MEMORY[0x1D3892850](2);
    v6 = v1;
    return MEMORY[0x1D3892850](v6);
  }

  v5 = *(v0 + 8);
  if (v2 == 3)
  {
    MEMORY[0x1D3892850](3);

    return sub_1D1E678EC();
  }

  else
  {
    if (v2 != 4)
    {
      v6 = 5;
      return MEMORY[0x1D3892850](v6);
    }

    MEMORY[0x1D3892850](4);

    return sub_1D1E668CC();
  }
}

uint64_t StateSnapshot.CharacteristicUpdateType.ValueType.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C9EDF4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C9EE4C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)();
  return sub_1D1E6926C();
}

id sub_1D1C9EE9C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_1D1772378(v1, &v17);
      v15 = v17;
      if (v17)
      {
        sub_1D1757A60(v18, v19, v20, v21);
        v16 = [v15 service];

        if (v16)
        {
          v5 = [v16 accessory];

          if (v5)
          {
            goto LABEL_19;
          }
        }
      }

      return 0;
    }

    v6 = sub_1D1772360(v1);
    v7 = [v6 service];

    v5 = [v7 accessory];
    v8 = [v5 home];
LABEL_15:
    v13 = v8;

    return v13;
  }

  if (v2 == 2)
  {
    sub_1D1772494(v1, &v17);
    v9 = v17;
    if (v17)
    {
      sub_1D1778940(v18, v19, v20);
      v10 = [v9 service];

      if (v10)
      {
        v5 = [v10 accessory];

        if (v5)
        {
          goto LABEL_19;
        }
      }
    }

    return 0;
  }

  if (v2 != 3)
  {
    v11 = sub_1D1778968(v1);
    v12 = [v11 service];

    v5 = [v12 accessory];
    v8 = [v5 home];
    goto LABEL_15;
  }

  sub_1D1772494(v1, &v17);
  v3 = v17;
  if (v17)
  {
    sub_1D1778940(v18, v19, v20);
    v4 = [v3 service];

    if (v4)
    {
      v5 = [v4 accessory];

      if (v5)
      {
LABEL_19:
        v8 = [v5 home];
        goto LABEL_15;
      }
    }
  }

  return 0;
}

unint64_t StateSnapshot.CharacteristicUpdateType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  v4 = byte_1EE07B288;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v11 = 0x3A68736572666572;
      if ((byte_1EE07B288 & 1) == 0)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_1D1E6873C();
        }

        else
        {
          v7 = *(v1 + 16);
        }

        goto LABEL_23;
      }

      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
      v5 = sub_1D1E6817C();
      goto LABEL_24;
    }

    sub_1D1E6884C();

    v11 = 0x53676E6964616F6CLL;
    if (v4)
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
      v5 = sub_1D1E6760C();
      goto LABEL_24;
    }

LABEL_17:
    v9 = *(v1 + 16);
LABEL_23:
    sub_1D1B2D144();
    v5 = sub_1D1E6865C();
    goto LABEL_24;
  }

  if (v3 == 2)
  {
    sub_1D1E6884C();

    v11 = 0xD000000000000010;
    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v3 == 3)
  {
    sub_1D1E6884C();

    v11 = 0xD000000000000015;
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_1D1E6884C();

  v11 = 0xD00000000000001ALL;
  if (v4)
  {
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    v6 = sub_1D1E6760C();
  }

  else
  {
    v10 = *(v1 + 16);
    sub_1D1B2D144();
    v6 = sub_1D1E6865C();
  }

  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0x616863616572202CLL, 0xED0000203A656C62);
  sub_1D1E66A7C();
  sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v5 = sub_1D1E6760C();
LABEL_24:
  MEMORY[0x1D3890F70](v5);

  return v11;
}

void StateSnapshot.CharacteristicUpdateType.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    if (*(v1 + 16))
    {
      MEMORY[0x1D3892850](1);

      sub_1D185FD68(a1, v3);
    }

    else
    {
      MEMORY[0x1D3892850](0);

      sub_1D176EF68(a1, v3);
    }
  }

  else
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = 3;
LABEL_10:
      MEMORY[0x1D3892850](v5);

      sub_1D185FB54(a1, v3);
      return;
    }

    v6 = *(v1 + 8);
    MEMORY[0x1D3892850](4);
    sub_1D185FB54(a1, v3);

    sub_1D185F6BC(a1, v6);
  }
}

uint64_t StateSnapshot.CharacteristicUpdateType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  if (v3 <= 1)
  {
    if (v3)
    {
      MEMORY[0x1D3892850](1);
      sub_1D185FD68(v6, v1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D176EF68(v6, v1);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        MEMORY[0x1D3892850](4);
        sub_1D185FB54(v6, v1);
        sub_1D185F6BC(v6, v2);
        return sub_1D1E6926C();
      }

      v4 = 3;
    }

    MEMORY[0x1D3892850](v4);
    sub_1D185FB54(v6, v1);
  }

  return sub_1D1E6926C();
}

void sub_1D1C9F79C(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    if (*(v1 + 16))
    {
      MEMORY[0x1D3892850](1);

      sub_1D185FD68(a1, v3);
    }

    else
    {
      MEMORY[0x1D3892850](0);

      sub_1D176EF68(a1, v3);
    }
  }

  else
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = 3;
LABEL_10:
      MEMORY[0x1D3892850](v5);

      sub_1D185FB54(a1, v3);
      return;
    }

    v6 = *(v1 + 8);
    MEMORY[0x1D3892850](4);
    sub_1D185FB54(a1, v3);

    sub_1D185F6BC(a1, v6);
  }
}

uint64_t sub_1D1C9F8C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  if (v3 <= 1)
  {
    if (v3)
    {
      MEMORY[0x1D3892850](1);
      sub_1D185FD68(v6, v1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D176EF68(v6, v1);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        MEMORY[0x1D3892850](4);
        sub_1D185FB54(v6, v1);
        sub_1D185F6BC(v6, v2);
        return sub_1D1E6926C();
      }

      v4 = 3;
    }

    MEMORY[0x1D3892850](v4);
    sub_1D185FB54(v6, v1);
  }

  return sub_1D1E6926C();
}

unint64_t StateSnapshot.UpdateType.description.getter()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v87 - v11;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v14 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v0, v16, type metadata accessor for StateSnapshot.UpdateType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v58 = *v16;
      v59 = *(v16 + 1);
      v60 = v16[16];
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();

      v93 = 0xD000000000000011;
      v94 = 0x80000001D1EC7EB0;
      v88 = v58;
      v89 = v59;
      LOBYTE(v90) = v60;
      v61 = StateSnapshot.CharacteristicUpdateType.description.getter();
      v63 = v62;
      sub_1D1AC373C(v58, v59, v60);
      MEMORY[0x1D3890F70](v61, v63);
      goto LABEL_13;
    case 2u:
      v46 = *v16;
      v88 = 0x65736E6F69746361;
      v89 = 0xEB00000000207374;
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      sub_1D174A5B8(&qword_1EE07B678, &qword_1EE07B680, 0x1E696CAF0);
      v47 = sub_1D1E6760C();
      goto LABEL_19;
    case 3u:
      v49 = *v16;
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();

      v88 = 0xD000000000000019;
      v89 = 0x80000001D1EC7E90;
      v50 = sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
      v51 = MEMORY[0x1D3891260](v49, v50);
      v53 = v52;

      goto LABEL_20;
    case 4u:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v33 = *&v16[v32[12]];
      v34 = *&v16[v32[16]];
      v35 = *&v16[v32[20]];
      (*(v6 + 32))(v12, v16, v5);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC7E50);
      v87 = v33;
      if (v33)
      {
        v36 = [v33 description];
        v37 = sub_1D1E6781C();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v93 = v37;
      v94 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
      v74 = sub_1D1E6789C();
      MEMORY[0x1D3890F70](v74);

      MEMORY[0x1D3890F70](0x736572676F725020, 0xEB00000000203A73);
      if (v34)
      {
        v75 = [v34 &selRef_snapshotControl];
        v76 = sub_1D1E6781C();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      v93 = v76;
      v94 = v78;
      v79 = sub_1D1E6789C();
      MEMORY[0x1D3890F70](v79);

      MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC7E70);
      if (v35)
      {
        v80 = [v35 &selRef_snapshotControl];
        v81 = sub_1D1E6781C();
        v83 = v82;
      }

      else
      {
        v81 = 0;
        v83 = 0;
      }

      v93 = v81;
      v94 = v83;
      v84 = sub_1D1E6789C();
      MEMORY[0x1D3890F70](v84);

      MEMORY[0x1D3890F70](0x20726F6620, 0xE500000000000000);
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v85 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v85);

      v43 = v88;
      (*(v6 + 8))(v12, v5);
      return v43;
    case 5u:
      v64 = v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48)];
      (*(v6 + 32))(v10, v16, v5);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EC7E30);
      LOBYTE(v93) = v64;
      sub_1D1E68ABC();
      MEMORY[0x1D3890F70](0x20726F6620, 0xE500000000000000);
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v65 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v65);

      v43 = v88;
      (*(v6 + 8))(v10, v5);
      return v43;
    case 6u:
      v66 = *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];
      v88 = 0x73656C69666F7270;
      v89 = 0xEA0000000000203ALL;
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v67 = sub_1D1E6817C();
      v69 = v68;

      MEMORY[0x1D3890F70](v67, v69);
      goto LABEL_17;
    case 7u:
      v54 = *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();

      v88 = 0xD00000000000001ALL;
      v89 = 0x80000001D1EC7E10;
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v55 = sub_1D1E6760C();
      v57 = v56;

      MEMORY[0x1D3890F70](v55, v57);
LABEL_17:

      v43 = v88;
      (*(v6 + 8))(v16, v5);
      return v43;
    case 8u:
      v71 = *v16;
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();
      if (v71)
      {
        v72 = 0x676E6973756170;
      }

      else
      {
        v72 = 0x676E696D75736572;
      }

      if (v71)
      {
        v73 = 0xE700000000000000;
      }

      else
      {
        v73 = 0xE800000000000000;
      }

      MEMORY[0x1D3890F70](v72, v73);

      MEMORY[0x1D3890F70](0x206D616572747320, 0xEF73657461647075);
      return v88;
    case 9u:

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2178(&v16[*(v44 + 48)], v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();

      v88 = 0xD00000000000001FLL;
      v89 = 0x80000001D1EC7DD0;
      v45 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter();
      MEMORY[0x1D3890F70](v45);

      v43 = v88;
      sub_1D1CB2248(v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return v43;
    case 0xAu:
      v70 = *(v16 + 1);

      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();

      v88 = 0xD00000000000002ELL;
      v89 = 0x80000001D1EC7DA0;
      v93 = v70;
      v47 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
LABEL_19:
      v51 = v47;
      v53 = v48;

LABEL_20:
      MEMORY[0x1D3890F70](v51, v53);
      goto LABEL_39;
    case 0xBu:
      v22 = *v16;
      v23 = v16[8];
      v24 = v16[9];
      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      v27 = *(v16 + 4);
      v28 = v16[40];

      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();

      v93 = 0xD000000000000017;
      v94 = 0x80000001D1EC7D80;
      LOBYTE(v88) = v23;
      BYTE1(v88) = v24;
      v89 = v26;
      v90 = v25;
      v91 = v27;
      v92 = v28;
      v29 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
      v31 = v30;

      MEMORY[0x1D3890F70](v29, v31);
LABEL_13:

      return v93;
    case 0xCu:
      v40 = *v16;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1D1E6884C();

      v88 = 0xD000000000000020;
      v89 = 0x80000001D1EC7D50;
      type metadata accessor for StaticMatterDevice();
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v42 = sub_1D1E6762C();
      MEMORY[0x1D3890F70](v42);

      v43 = v88;
      (*(v6 + 8))(&v16[v41], v5);
      return v43;
    case 0xDu:
      return 0xD00000000000001FLL;
    default:
      v17 = *v16;
      v88 = 543976513;
      v89 = 0xE400000000000000;
      if (v17)
      {
        v18 = [v17 name];
        v19 = sub_1D1E6781C();
        v21 = v20;
      }

      else
      {
        v21 = 0xE700000000000000;
        v19 = 0x676E697373696DLL;
      }

      MEMORY[0x1D3890F70](v19, v21);

LABEL_39:

      return v88;
  }
}

id StateSnapshot.UpdateType.relevantHome(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v50 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v50 - v13;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v16 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v18 = (v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1CB2110(v2, v18, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v33 = *v18;
      v34 = v18[1];
      v35 = *(v18 + 16);
      v50[1] = v33;
      v50[2] = v34;
      v51 = v35;
      v36 = sub_1D1C9EE9C();
      sub_1D1AC373C(v33, v34, v35);
      result = v36;
      if (v36)
      {
        v32 = v36;
        goto LABEL_16;
      }

      return result;
    case 2:
      v29 = sub_1D1778968(*v18);

      if (!v29)
      {
        return 0;
      }

      v30 = [v29 home];

      if (!v30)
      {
        return 0;
      }

      sub_1D174A5B8(&qword_1EE079C10, &qword_1EE07B620, 0x1E696CB98);
      return v30;
    case 3:
    case 10:
    case 11:
      sub_1D1CB2248(v18, type metadata accessor for StateSnapshot.UpdateType);
      return 0;
    case 4:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      goto LABEL_11;
    case 5:
LABEL_11:
      (*(v5 + 8))(v18, v4);
      return 0;
    case 6:
      v44 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48));

      (*(v5 + 32))(v14, v18, v4);
      if (*(a1 + 16))
      {
        v45 = sub_1D1742188(v14);
        if (v46)
        {
          v47 = (*(a1 + 56) + 16 * v45);
          v25 = *v47;
          v48 = v47[1];
          v49 = *(v5 + 8);
          swift_unknownObjectRetain();
          v49(v14, v4);
          return v25;
        }
      }

      (*(v5 + 8))(v14, v4);
      return 0;
    case 7:
      v21 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48));

      (*(v5 + 32))(v12, v18, v4);
      if (*(a1 + 16))
      {
        v22 = sub_1D1742188(v12);
        if (v23)
        {
          v24 = (*(a1 + 56) + 16 * v22);
          v25 = *v24;
          v26 = v24[1];
          v27 = *(v5 + 8);
          swift_unknownObjectRetain();
          v27(v12, v4);
          return v25;
        }
      }

      (*(v5 + 8))(v12, v4);
      return 0;
    case 8:
    case 13:
      return result;
    case 9:

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2248(v18 + *(v28 + 48), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return 0;
    case 12:
      v37 = *v18;

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v5 + 32))(v9, v18 + *(v38 + 48), v4);
      if (*(a1 + 16) && (v39 = sub_1D1742188(v9), (v40 & 1) != 0))
      {
        v41 = (*(a1 + 56) + 16 * v39);
        v25 = *v41;
        v42 = v41[1];
        v43 = *(v5 + 8);
        swift_unknownObjectRetain();
        v43(v9, v4);
        return v25;
      }

      else
      {
        (*(v5 + 8))(v9, v4);
        return 0;
      }

    default:
      v32 = *v18;
      if (!*v18)
      {
        return 0;
      }

LABEL_16:
      sub_1D174A5B8(&qword_1EE079C10, &qword_1EE07B620, 0x1E696CB98);
      return v32;
  }
}

uint64_t StateSnapshot.UpdateType.signpostDescription.getter()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v113 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v113 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v113 - v17;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v20 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v22 = v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v0, v22, type metadata accessor for StateSnapshot.UpdateType);
  v23 = 0x6E776F6E6B6E752ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = *v22;
      v50 = *(v22 + 1);
      v51 = v22[16];
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v120[0] = 0xD000000000000011;
      v120[1] = 0x80000001D1EC7FC0;
      v118 = &type metadata for StateSnapshot.CharacteristicUpdateType;
      v119 = sub_1D1CC3F8C();
      v115 = v49;
      v116 = v50;
      LOBYTE(v117) = v51;
      goto LABEL_15;
    case 2u:
      v36 = *v22;
      strcpy(v120, ".actionSets(");
      BYTE5(v120[1]) = 0;
      HIWORD(v120[1]) = -5120;
      v37 = &qword_1EC64CEB8;
      v38 = &qword_1D1EA2700;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CEB8, &qword_1D1EA2700);
      v39 = &unk_1EC64CEC0;
      goto LABEL_14;
    case 3u:
      v36 = *v22;
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v120[0] = 0xD000000000000017;
      v120[1] = 0x80000001D1EC7FA0;
      v37 = &qword_1EC64FE40;
      v38 = &qword_1D1EB0F40;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
      v39 = &unk_1EE079E28;
LABEL_14:
      v119 = sub_1D17D8EA8(v39, v37, v38);
      v115 = v36;
LABEL_15:
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v115, v113, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v114)
        {
          __swift_project_boxed_opaque_existential_1(v113, v114);
          v52 = sub_1D1E68FAC();
          v54 = v53;
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          v52 = 7104878;
          sub_1D1741A30(v113, &qword_1EC64AD00, &unk_1D1EA26F0);
          v54 = 0xE300000000000000;
        }
      }

      else
      {
        v54 = 0xE100000000000000;
        v52 = 95;
      }

      sub_1D1741A30(&v115, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v52, v54);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      return v120[0];
    case 4u:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v62 = *&v22[v61[12]];
      v63 = *&v22[v61[16]];
      v64 = *&v22[v61[20]];
      (*(v6 + 32))(v13, v22, v5);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v120[0] = 0xD000000000000010;
      v120[1] = 0x80000001D1EC7F60;
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v65 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v65);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v62)
      {
        v66 = sub_1D1741B10(0, &qword_1EC64CEA8, 0x1E696CC70);
        v67 = sub_1D174A5B8(&qword_1EC64CEB0, &qword_1EC64CEA8, 0x1E696CC70);
      }

      else
      {
        v66 = 0;
        v67 = 0;
        v116 = 0;
        v117 = 0;
      }

      v115 = v62;
      v118 = v66;
      v119 = v67;
      v84 = qword_1EE07B280;
      v85 = v62;
      v86 = v64;
      if (v84 != -1)
      {
        swift_once();
      }

      v87 = byte_1EE07B288;
      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v115, v113, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v114)
        {
          __swift_project_boxed_opaque_existential_1(v113, v114);
          v88 = sub_1D1E68FAC();
          v90 = v89;
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          v88 = 7104878;
          sub_1D1741A30(v113, &qword_1EC64AD00, &unk_1D1EA26F0);
          v90 = 0xE300000000000000;
        }
      }

      else
      {
        v90 = 0xE100000000000000;
        v88 = 95;
      }

      sub_1D1741A30(&v115, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v88, v90);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v63)
      {
        v91 = sub_1D1741B10(0, &qword_1EC64CE98, 0x1E696CC68);
        v92 = sub_1D174A5B8(&qword_1EC64CEA0, &qword_1EC64CE98, 0x1E696CC68);
        v93 = v63;
      }

      else
      {
        v93 = 0;
        v91 = 0;
        v92 = 0;
        v116 = 0;
        v117 = 0;
      }

      v115 = v93;
      v118 = v91;
      v119 = v92;
      if (v87)
      {
        sub_1D1741C08(&v115, v113, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v114)
        {
          __swift_project_boxed_opaque_existential_1(v113, v114);
          v94 = v63;
          v95 = sub_1D1E68FAC();
          v97 = v96;
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          v95 = 7104878;
          v99 = v63;
          sub_1D1741A30(v113, &qword_1EC64AD00, &unk_1D1EA26F0);
          v97 = 0xE300000000000000;
        }
      }

      else
      {
        v98 = v63;
        v97 = 0xE100000000000000;
        v95 = 95;
      }

      sub_1D1741A30(&v115, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v95, v97);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v86)
      {
        v100 = sub_1D1741B10(0, &qword_1EC64CE88, 0x1E696CC60);
        v101 = sub_1D174A5B8(&qword_1EC64CE90, &qword_1EC64CE88, 0x1E696CC60);
        v102 = v86;
      }

      else
      {
        v102 = 0;
        v100 = 0;
        v101 = 0;
        v116 = 0;
        v117 = 0;
      }

      v115 = v102;
      v118 = v100;
      v119 = v101;
      if (v87)
      {
        sub_1D1741C08(&v115, v113, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v114)
        {
          __swift_project_boxed_opaque_existential_1(v113, v114);
          v103 = v86;
          v104 = sub_1D1E68FAC();
          v106 = v105;
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          v104 = 7104878;
          v103 = v86;
          sub_1D1741A30(v113, &qword_1EC64AD00, &unk_1D1EA26F0);
          v106 = 0xE300000000000000;
        }
      }

      else
      {
        v103 = v86;
        v106 = 0xE100000000000000;
        v104 = 95;
      }

      sub_1D1741A30(&v115, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v104, v106);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);

      v23 = v120[0];
      (*(v6 + 8))(v13, v5);
      return v23;
    case 5u:
      v73 = v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48)];
      (*(v6 + 32))(v16, v22, v5);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v120[0] = 0xD000000000000018;
      v120[1] = 0x80000001D1EC7F80;
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v74 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v74);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      if (v73 > 4)
      {
        switch(v73)
        {
          case 5:
            v76 = 0x64616F6C6E776F64;
            v75 = 0xEA00000000006465;
            goto LABEL_80;
          case 6:
            v76 = 0x6574736575716572;
            break;
          case 7:
            v76 = 0x656C6C6174736E69;
            break;
          default:
LABEL_76:
            v75 = 0xEA0000000000676ELL;
            v76 = 0x696C6C6174736E69;
            goto LABEL_80;
        }

        v75 = 0xE900000000000064;
      }

      else
      {
        if (v73 == 2)
        {
          v75 = 0xE400000000000000;
          v76 = 1701736302;
          goto LABEL_80;
        }

        if (v73 != 3)
        {
          if (v73 == 4)
          {
            v75 = 0xEB00000000676E69;
            v76 = 0x64616F6C6E776F64;
            goto LABEL_80;
          }

          goto LABEL_76;
        }

        v75 = 0xE900000000000065;
        v76 = 0x6C62616C69617661;
      }

LABEL_80:
      v118 = MEMORY[0x1E69E6158];
      v119 = MEMORY[0x1E69E61C8];
      v115 = v76;
      v116 = v75;
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v115, v113, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v114)
        {
          __swift_project_boxed_opaque_existential_1(v113, v114);
          v107 = sub_1D1E68FAC();
          v109 = v108;
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          v107 = 7104878;
          sub_1D1741A30(v113, &qword_1EC64AD00, &unk_1D1EA26F0);
          v109 = 0xE300000000000000;
        }
      }

      else
      {
        v109 = 0xE100000000000000;
        v107 = 95;
      }

      sub_1D1741A30(&v115, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v107, v109);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v23 = v120[0];
      (*(v6 + 8))(v16, v5);
      return v23;
    case 6u:
      v55 = *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];
      (*(v6 + 32))(v18, v22, v5);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v115 = 0x656C69666F72702ELL;
      v116 = 0xEA00000000002873;
      v56 = MEMORY[0x1E69695A8];
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v57 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v57);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      sub_1D1CB21E0(qword_1EE07DD78, v56);
      v58 = sub_1D1E6817C();
      v60 = v59;

      MEMORY[0x1D3890F70](v58, v60);
      goto LABEL_25;
    case 7u:
      v79 = *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
      (*(v6 + 32))(v10, v22, v5);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v120[0] = 0xD00000000000001BLL;
      v120[1] = 0x80000001D1EC7F40;
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v80 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v80);

      MEMORY[0x1D3890F70](8236, 0xE200000000000000);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C0, &qword_1D1E974E0);
      v119 = sub_1D17D8EA8(&qword_1EC64CE80, &qword_1EC64A9C0, &qword_1D1E974E0);
      v115 = v79;
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v115, v113, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v114)
        {
          __swift_project_boxed_opaque_existential_1(v113, v114);
          v81 = sub_1D1E68FAC();
          v83 = v82;
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          v81 = 7104878;
          sub_1D1741A30(v113, &qword_1EC64AD00, &unk_1D1EA26F0);
          v83 = 0xE300000000000000;
        }
      }

      else
      {
        v83 = 0xE100000000000000;
        v81 = 95;
      }

      sub_1D1741A30(&v115, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v81, v83);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v23 = v120[0];
      (*(v6 + 8))(v10, v5);
      return v23;
    case 8u:
      return 0x6F687370616E732ELL;
    case 9u:

      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2178(&v22[*(v77 + 48)], v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v115 = 0xD00000000000001CLL;
      v116 = 0x80000001D1EC7F20;
      v78 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter();
      MEMORY[0x1D3890F70](v78);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v23 = v115;
      sub_1D1CB2248(v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return v23;
    case 0xAu:
      v32 = *(v22 + 1);

      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v115 = 0xD000000000000022;
      v116 = 0x80000001D1EC7EF0;
      v113[0] = v32;
      v33 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
      v35 = v34;

      MEMORY[0x1D3890F70](v33, v35);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      return v115;
    case 0xBu:
      v40 = v22[8];
      v41 = v22[9];
      v43 = *(v22 + 2);
      v42 = *(v22 + 3);
      v44 = *(v22 + 4);
      v45 = v22[40];

      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v113[0] = 0xD000000000000014;
      v113[1] = 0x80000001D1EC7ED0;
      LOBYTE(v115) = v40;
      BYTE1(v115) = v41;
      v116 = v43;
      v117 = v42;
      v118 = v44;
      LOBYTE(v119) = v45;
      v46 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
      v48 = v47;

      MEMORY[0x1D3890F70](v46, v48);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      return v113[0];
    case 0xCu:
      v68 = *v22;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v6 + 32))(v18, &v22[*(v69 + 48)], v5);
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_1D1E6884C();

      v115 = 0x4472657474616D2ELL;
      v116 = 0xEF28736563697665;
      type metadata accessor for StaticMatterDevice();
      v70 = MEMORY[0x1E69695A8];
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      v71 = sub_1D1E6762C();
      MEMORY[0x1D3890F70](v71);

      MEMORY[0x1D3890F70](0x4449656D6F68202CLL, 0xEA0000000000203ALL);
      sub_1D1CB21E0(&qword_1EE07B250, v70);
      v72 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v72);
LABEL_25:

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v23 = v115;
      (*(v6 + 8))(v18, v5);
      return v23;
    case 0xDu:
      return v23;
    default:
      v24 = *v22;
      if (!*v22)
      {
        return 0x6C696E286C6C612ELL;
      }

      v120[0] = 0x286C6C612ELL;
      v120[1] = 0xE500000000000000;
      v25 = [v24 name];
      v26 = sub_1D1E6781C();
      v28 = v27;

      v118 = MEMORY[0x1E69E6158];
      v119 = MEMORY[0x1E69E61C8];
      v115 = v26;
      v116 = v28;
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      if (byte_1EE07B288 == 1)
      {
        sub_1D1741C08(&v115, v113, &qword_1EC64AD00, &unk_1D1EA26F0);
        if (v114)
        {
          __swift_project_boxed_opaque_existential_1(v113, v114);
          v29 = sub_1D1E68FAC();
          v31 = v30;
          __swift_destroy_boxed_opaque_existential_1(v113);
        }

        else
        {
          v29 = 7104878;
          sub_1D1741A30(v113, &qword_1EC64AD00, &unk_1D1EA26F0);
          v31 = 0xE300000000000000;
        }
      }

      else
      {
        v31 = 0xE100000000000000;
        v29 = 95;
      }

      sub_1D1741A30(&v115, &qword_1EC64AD00, &unk_1D1EA26F0);
      MEMORY[0x1D3890F70](v29, v31);

      MEMORY[0x1D3890F70](47, 0xE100000000000000);
      v111 = [v24 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v112 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v112);

      (*(v6 + 8))(v18, v5);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);

      return v120[0];
  }
}

void StateSnapshot.UpdateType.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v70 = a1;
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v19 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v2, v21, type metadata accessor for StateSnapshot.UpdateType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v55 = *v21;
      v54 = *(v21 + 1);
      v56 = v21[16];
      v57 = v70;
      MEMORY[0x1D3892850](1);
      if (v56 <= 1)
      {
        if (v56)
        {
          MEMORY[0x1D3892850](1);
          sub_1D185FD68(v57, v55);
          sub_1D1AC373C(v55, v54, 1u);
        }

        else
        {
          MEMORY[0x1D3892850](0);
          sub_1D176EF68(v57, v55);
          sub_1D1AC373C(v55, v54, 0);
        }
      }

      else if (v56 == 2)
      {
        MEMORY[0x1D3892850](2);
        sub_1D185FB54(v57, v55);
        sub_1D1AC373C(v55, v54, 2u);
      }

      else if (v56 == 3)
      {
        MEMORY[0x1D3892850](3);
        sub_1D185FB54(v57, v55);
        sub_1D1AC373C(v55, v54, 3u);
      }

      else
      {
        MEMORY[0x1D3892850](4);
        sub_1D185FB54(v57, v55);
        sub_1D185F6BC(v57, v54);
        sub_1D1AC373C(v55, v54, 4u);
      }

      return;
    case 2u:
      v45 = *v21;
      v46 = v70;
      MEMORY[0x1D3892850](2);
      sub_1D1860410(v46, v45);
      goto LABEL_16;
    case 3u:
      v47 = *v21;
      v48 = v70;
      MEMORY[0x1D3892850](3);
      sub_1D1770A8C(v48, v47);
LABEL_16:

      return;
    case 4u:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v32 = *&v21[v31[12]];
      v33 = *&v21[v31[16]];
      v34 = *&v21[v31[20]];
      (*(v8 + 32))(v17, v21, v7);
      MEMORY[0x1D3892850](4);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      if (v32)
      {
        sub_1D1E6922C();
        v35 = v32;
        sub_1D1E6850C();

        if (v33)
        {
          goto LABEL_9;
        }

LABEL_36:
        sub_1D1E6922C();
        if (v34)
        {
          goto LABEL_10;
        }

        goto LABEL_37;
      }

      sub_1D1E6922C();
      if (!v33)
      {
        goto LABEL_36;
      }

LABEL_9:
      sub_1D1E6922C();
      v36 = v33;
      sub_1D1E6850C();

      if (v34)
      {
LABEL_10:
        sub_1D1E6922C();
        v37 = v34;
        sub_1D1E6850C();

        (*(v8 + 8))(v17, v7);
        return;
      }

LABEL_37:
      sub_1D1E6922C();

      (*(v8 + 8))(v17, v7);
      return;
    case 5u:
      v58 = v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48)];
      (*(v8 + 32))(v15, v21, v7);
      MEMORY[0x1D3892850](5);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      if ((v58 - 2) >= 6u)
      {
        MEMORY[0x1D3892850](5);
        v59 = v58 & 1;
      }

      else
      {
        v59 = qword_1D1EA2FB8[(v58 - 2)];
      }

      MEMORY[0x1D3892850](v59);
      (*(v8 + 8))(v15, v7);
      return;
    case 6u:
      v60 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];
      v50 = v8;
      v61 = *(v8 + 32);
      v52 = v7;
      v61(v12, v21, v7);
      v62 = v70;
      MEMORY[0x1D3892850](6);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      sub_1D176D4E8(v62, v60);
      goto LABEL_26;
    case 7u:
      v49 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
      v50 = v8;
      v51 = *(v8 + 32);
      v52 = v7;
      v51(v12, v21, v7);
      v53 = v70;
      MEMORY[0x1D3892850](7);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      sub_1D185FF70(v53, v49);
LABEL_26:

      (*(v50 + 8))(v12, v52);
      return;
    case 8u:
      v65 = *v21;
      MEMORY[0x1D3892850](9);
      sub_1D1E6922C();
      return;
    case 9u:
      v41 = *v21;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2178(&v21[*(v42 + 48)], v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v43 = v70;
      MEMORY[0x1D3892850](10);
      sub_1D1E6850C();
      MEMORY[0x1D3892850](*v6);
      v44 = v6[1];
      sub_1D1E6922C();
      if (v44)
      {
        sub_1D176FF94(v43, v44);
      }

      v66 = *(v3 + 24);
      sub_1D1E66C5C();
      sub_1D1CB21E0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
      sub_1D1E676EC();
      v67 = *(v6 + *(v3 + 28));
      sub_1D1E6922C();

      sub_1D1CB2248(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return;
    case 0xAu:
      v24 = *v21;
      v63 = *(v21 + 1);
      v64 = v70;
      MEMORY[0x1D3892850](11);
      sub_1D1E6850C();
      sub_1D176FDE8(v64, v63);
      goto LABEL_44;
    case 0xBu:
      v24 = *v21;
      v25 = v21[8];
      v26 = v21[9];
      v28 = *(v21 + 2);
      v27 = *(v21 + 3);
      v29 = *(v21 + 4);
      v30 = v21[40];
      MEMORY[0x1D3892850](12);
      sub_1D1E6850C();
      sub_1D1E6922C();
      sub_1D1E6922C();
      if (v27 && (sub_1D1E6922C(), sub_1D1E678EC(), (v30 & 1) == 0))
      {
        sub_1D1E6922C();
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v68 = v29;
        }

        else
        {
          v68 = 0;
        }

        MEMORY[0x1D3892890](v68);
      }

      else
      {
        sub_1D1E6922C();
      }

LABEL_44:

      return;
    case 0xCu:
      v38 = *v21;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v8 + 32))(v12, &v21[*(v39 + 48)], v7);
      v40 = v70;
      MEMORY[0x1D3892850](13);
      sub_1D1858EFC(v40, v38);

      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*(v8 + 8))(v12, v7);
      return;
    case 0xDu:
      MEMORY[0x1D3892850](8);
      return;
    default:
      v22 = *v21;
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
      if (v22)
      {
        v23 = v22;
        sub_1D1E6850C();
      }

      return;
  }
}

uint64_t sub_1D1CA2B8C(void (*a1)(_BYTE *))
{
  sub_1D1E6920C();
  a1(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CA2BF4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D1E6920C();
  a3(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CA2C58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CA2C9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v199 = a3;
  v211 = a2;
  v191 = a4;
  v232 = sub_1D1E66A7C();
  v231 = *(v232 - 8);
  v5 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v233 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for StaticZone();
  v215 = *(v223 - 8);
  v7 = *(v215 + 64);
  v8 = MEMORY[0x1EEE9AC00](v223);
  v222 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v214 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v221 = &v181 - v12;
  v206 = type metadata accessor for StaticRoom(0);
  v208 = *(v206 - 8);
  v13 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643740, &qword_1D1E71E98);
  v212 = *(v213 - 8);
  v15 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v187 = &v181 - v16;
  v193 = type metadata accessor for StaticHome();
  v17 = *(v193 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v189 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v188 = &v181 - v25;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v229 = *(v230 - 8);
  v26 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v28 = &v181 - v27;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v30 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v32 = &v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(a1, v32, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v32;
    v33 = *(v32 + 1);
    v35 = v32[16];
    if (v35 <= 1)
    {
      if (v35)
      {
        v36 = &qword_1EC64AE70;
        v37 = &qword_1D1E98EE0;
        *(&v241 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE70, &qword_1D1E98EE0);
        v38 = &unk_1EC64CF38;
      }

      else
      {
        v36 = &qword_1EC64AE80;
        v37 = &unk_1D1EA2F80;
        *(&v241 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE80, &unk_1D1EA2F80);
        v38 = &unk_1EC64CF40;
      }
    }

    else
    {
      v36 = &qword_1EC64AE60;
      v37 = &unk_1D1EA2F70;
      *(&v241 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE60, &unk_1D1EA2F70);
      v38 = &unk_1EC64CF30;
    }

    v242 = sub_1D17D8EA8(v38, v36, v37);
    *&v240 = v34;

    sub_1D16EEE20(&v240, &v243);
    sub_1D1AC373C(v34, v33, v35);
    v39 = *(&v244 + 1);
    v40 = v245;
    v41 = __swift_project_boxed_opaque_existential_1(&v243, *(&v244 + 1));
    *(&v241 + 1) = v39;
    v242 = v40[1];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v240);
    (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v41, v39);
    __swift_destroy_boxed_opaque_existential_1(&v243);
  }

  else
  {
    v242 = 0;
    v241 = 0u;
    v240 = 0u;
    sub_1D1CB2248(v32, type metadata accessor for StateSnapshot.UpdateType);
  }

  v243 = v240;
  v244 = v241;
  v245 = v242;
  if (*(&v241 + 1))
  {
    sub_1D17419CC(&v243, &v237);
    if (*(&v238 + 1))
    {
      v183 = v24;
      v184 = v17;
      sub_1D16EEE20(&v237, &v240);
      v43 = v199;
      v44 = *v199;

      v45 = a1;
      v46 = sub_1D18C211C(&unk_1F4D5FBC8, v44);
      sub_1D1CC704C(&unk_1F4D5FBE8);
      v47 = type metadata accessor for StateSnapshot(0);
      v48 = *(v43 + v47[8]);
      v236 = *(v43 + v47[15]);
      *&v237 = v48;
      v228 = v242;
      v49 = __swift_project_boxed_opaque_existential_1(&v240, *(&v241 + 1));
      v227 = &v181;
      MEMORY[0x1EEE9AC00](v49);
      *(&v181 - 6) = v43;
      *(&v181 - 5) = v45;
      v226 = v45;
      *(&v181 - 4) = v211;
      *(&v181 - 3) = v46;
      *(&v181 - 2) = &v237;
      *(&v181 - 1) = &v236;

      v50 = 0;
      sub_1D1E67ADC();
      v51 = *(v43 + v47[9]);
      v52 = v236;
      v190 = v47;
      v53 = v46;
      v54 = *(v43 + v47[12]);
      v55 = sub_1D1CC8FBC(v46);
      v218 = v52;
      v182 = v46;
      v205 = v54;
      if (v55)
      {
        v56 = v211;
        v57 = [v211 actionSets];
        sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
        v58 = sub_1D1E67C1C();

        MEMORY[0x1EEE9AC00](v59);
        v60 = v226;
        *(&v181 - 6) = v53;
        *(&v181 - 5) = v60;
        *(&v181 - 4) = v51;
        *(&v181 - 3) = v52;
        *(&v181 - 2) = v54;
        *(&v181 - 1) = v56;
        v61 = sub_1D178701C(sub_1D1CC7720, (&v181 - 8), v58);

        v62 = v52;
        v63 = v61[2];
        if (v63)
        {
          v228 = 0;
          v235 = MEMORY[0x1E69E7CC0];
          sub_1D178D0D4(0, v63, 0);
          v64 = v235;
          v65 = *(type metadata accessor for StaticActionSet() - 8);
          v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v227 = v61;
          v67 = v61 + v66;
          v68 = *(v65 + 72);
          v69 = (v231 + 16);
          do
          {
            v70 = *(v230 + 48);
            sub_1D1CB2110(v67, &v28[v70], type metadata accessor for StaticActionSet);
            (*v69)(v28, &v28[v70], v232);
            v235 = v64;
            v72 = *(v64 + 16);
            v71 = *(v64 + 24);
            if (v72 >= v71 >> 1)
            {
              sub_1D178D0D4(v71 > 1, v72 + 1, 1);
              v64 = v235;
            }

            *(v64 + 16) = v72 + 1;
            sub_1D1741A90(v28, v64 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v72, &qword_1EC643710, &unk_1D1EA2630);
            v67 += v68;
            --v63;
          }

          while (v63);

          v52 = v218;
          v50 = v228;
        }

        else
        {

          v64 = MEMORY[0x1E69E7CC0];
          v52 = v62;
        }

        v75 = v193;
        if (*(v64 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
          v76 = sub_1D1E68BCC();
        }

        else
        {
          v76 = MEMORY[0x1E69E7CC8];
        }

        v235 = v76;
        sub_1D1CB961C(v64, 1, &v235);
        if (v50)
        {
          goto LABEL_105;
        }

        v204 = v235;
      }

      else
      {
        v204 = sub_1D18D50D4(MEMORY[0x1E69E7CC0]);
        v75 = v193;
      }

      v77 = v190;
      v78 = v199;
      v79 = v199 + v190[5];
      v80 = *(v75 + 44);
      LOBYTE(v235) = *(v79 + v80);
      v81 = v211;
      v202 = v237;
      v201 = sub_1D1B7DCCC(v211, &v235, v237);
      v181 = v79;
      LOBYTE(v235) = *(v79 + v80);
      v200 = sub_1D1C4CFD8(v81, &v235, v52);
      v203 = *(v78 + v77[11]);
      v82 = &selRef_addZoneWithName_completionHandler_;
      v83 = [v81 rooms];
      v217 = sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v84 = sub_1D1E67C1C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73FA0;
      *(inited + 32) = [v81 roomForEntireHome];
      v235 = v84;
      sub_1D17A3D24(inited);
      v86 = v235;
      if (v235 >> 62)
      {
LABEL_86:
        v87 = sub_1D1E6873C();
        if (v87)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v87 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v87)
        {
LABEL_32:
          v235 = MEMORY[0x1E69E7CC0];
          sub_1D178D1D4(0, v87 & ~(v87 >> 63), 0);
          if (v87 < 0)
          {
            __break(1u);
            goto LABEL_105;
          }

          v197 = v87;
          v210 = v235;
          v196 = sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
          v88 = 0;
          v195 = "showPredictedScenesOnDashboard";
          v194 = "erStrings_roomActionSets";
          v198 = v86 & 0xC000000000000001;
          v186 = v86 & 0xFFFFFFFFFFFFFF8;
          v192 = v86;
          v185 = (v86 + 32);
          v230 = v231 + 32;
          v86 = v211;
          do
          {
            if (__OFADD__(v88, 1))
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v209 = v88 + 1;
            if (v198)
            {
              v89 = MEMORY[0x1D3891EF0]();
            }

            else
            {
              if (v88 >= *(v186 + 16))
              {
                goto LABEL_85;
              }

              v89 = v185[v88];
            }

            v227 = v89;
            v90 = [v86 zones];
            sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
            v91 = sub_1D1E67C1C();

            if (v91 >> 62)
            {
              v92 = sub_1D1E6873C();
              if (v92)
              {
LABEL_41:
                v93 = 0;
                v226 = v91 & 0xC000000000000001;
                v225 = v91 & 0xFFFFFFFFFFFFFF8;
                v224 = (v91 + 32);
                v228 = MEMORY[0x1E69E7CC0];
                v216 = v92;
                while (1)
                {
                  if (v226)
                  {
                    v94 = MEMORY[0x1D3891EF0](v93, v91);
                    v95 = __OFADD__(v93, 1);
                    v96 = v93 + 1;
                    if (v95)
                    {
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    if (v93 >= *(v225 + 16))
                    {
                      goto LABEL_83;
                    }

                    v94 = v224[v93];
                    v95 = __OFADD__(v93, 1);
                    v96 = v93 + 1;
                    if (v95)
                    {
LABEL_82:
                      __break(1u);
LABEL_83:
                      __break(1u);
                      goto LABEL_84;
                    }
                  }

                  v229 = v96;
                  v97 = v94;
                  v98 = [v94 v82[6]];
                  v99 = sub_1D1E67C1C();

                  v86 = &v181;
                  v234 = v227;
                  MEMORY[0x1EEE9AC00](v100);
                  *(&v181 - 2) = &v234;
                  LOBYTE(v98) = sub_1D18B8754(sub_1D1CC7778, (&v181 - 4), v99);

                  if (v98)
                  {
                    v101 = [v97 uniqueIdentifier];
                    v102 = v222;
                    sub_1D1E66A5C();

                    v103 = [v97 name];
                    v104 = sub_1D1E6781C();
                    v106 = v105;

                    v107 = &v102[*(v223 + 20)];
                    *v107 = v104;
                    v107[1] = v106;
                    v108 = v82[6];
                    v219 = v97;
                    v109 = [v97 v108];
                    v110 = sub_1D1E67C1C();

                    v220 = v50;
                    if (v110 >> 62)
                    {
                      v111 = sub_1D1E6873C();
                      v50 = v91;
                      if (v111)
                      {
LABEL_50:
                        v112 = 0;
                        v113 = MEMORY[0x1E69E7CC0];
                        while (1)
                        {
                          if ((v110 & 0xC000000000000001) != 0)
                          {
                            v114 = MEMORY[0x1D3891EF0](v112, v110);
                          }

                          else
                          {
                            if (v112 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
                              goto LABEL_79;
                            }

                            v114 = *(v110 + 8 * v112 + 32);
                          }

                          v115 = v114;
                          v116 = v112 + 1;
                          if (__OFADD__(v112, 1))
                          {
                            break;
                          }

                          v117 = [v114 uniqueIdentifier];
                          sub_1D1E66A5C();

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v113 = sub_1D177D0AC(0, v113[2] + 1, 1, v113);
                          }

                          v119 = v113[2];
                          v118 = v113[3];
                          if (v119 >= v118 >> 1)
                          {
                            v113 = sub_1D177D0AC(v118 > 1, v119 + 1, 1, v113);
                          }

                          v113[2] = v119 + 1;
                          (*(v231 + 32))(v113 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v119, v233, v232);
                          ++v112;
                          if (v116 == v111)
                          {
                            goto LABEL_67;
                          }
                        }

                        __break(1u);
LABEL_79:
                        __break(1u);
                        goto LABEL_80;
                      }
                    }

                    else
                    {
                      v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v50 = v91;
                      if (v111)
                      {
                        goto LABEL_50;
                      }
                    }

                    v113 = MEMORY[0x1E69E7CC0];
LABEL_67:

                    v120 = v222;
                    *&v222[*(v223 + 24)] = v113;
                    v121 = v214;
                    sub_1D1CB2178(v120, v214, type metadata accessor for StaticZone);
                    sub_1D1CB2178(v121, v221, type metadata accessor for StaticZone);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v52 = v218;
                    v91 = v50;
                    v92 = v216;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v228 = sub_1D177D7A4(0, v228[2] + 1, 1, v228);
                    }

                    v82 = &selRef_addZoneWithName_completionHandler_;
                    v50 = v220;
                    v93 = v229;
                    v86 = v228[2];
                    v123 = v228[3];
                    if (v86 >= v123 >> 1)
                    {
                      v228 = sub_1D177D7A4(v123 > 1, v86 + 1, 1, v228);
                    }

                    v124 = v228;
                    v228[2] = v86 + 1;
                    sub_1D1CB2178(v221, v124 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v86, type metadata accessor for StaticZone);
                  }

                  else
                  {

                    v93 = v229;
                  }

                  if (v93 == v92)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else
            {
              v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v92)
              {
                goto LABEL_41;
              }
            }

            v228 = MEMORY[0x1E69E7CC0];
LABEL_74:

            v229 = sub_1D17843EC(v228);

            v125 = v227;
            v228 = sub_1D1CBAA28(v202, v125, sub_1D1CB9E24, sub_1D1CB9E24);

            v126 = v125;
            v227 = sub_1D1CBAA28(v204, v126, sub_1D1CBA338, sub_1D1CBA338);

            v127 = v126;
            v226 = sub_1D1CBAA28(v201, v127, sub_1D1CBABEC, sub_1D1CBABEC);

            v128 = v127;
            v225 = sub_1D1CBAA28(v203, v128, sub_1D1CBB2DC, sub_1D1CBB2DC);

            v129 = v128;
            v224 = sub_1D1CBAA28(v205, v129, sub_1D1CBB7F0, sub_1D1CBB7F0);

            v130 = v129;
            v220 = sub_1D1CBAA28(v200, v130, sub_1D1CBBD04, sub_1D1CBBD04);

            v131 = v130;
            v219 = sub_1D1CBAA28(v52, v131, sub_1D1CBC3F4, sub_1D1CBC3F4);

            v132 = [v131 uniqueIdentifier];
            v133 = v207;
            sub_1D1E66A5C();

            v134 = [v131 name];
            v135 = sub_1D1E6781C();
            v216 = v136;

            v137 = v206;
            sub_1D18B1B7C(&v133[*(v206 + 24)]);
            v138 = v211;
            v139 = [v211 roomForEntireHome];
            v140 = sub_1D1E684FC();

            v141 = [v138 uniqueIdentifier];
            v142 = &v133[v137[9]];
            sub_1D1E66A5C();

            v143 = sub_1D18AF4CC(0xD000000000000028, v195 | 0x8000000000000000);
            v144 = sub_1D18AF4CC(0xD000000000000026, v194 | 0x8000000000000000);
            v145 = sub_1D18B13F4();

            v146 = v133;
            v147 = &v133[v137[5]];
            v148 = v216;
            *v147 = v135;
            v147[1] = v148;
            v133[v137[7]] = v140 & 1;
            *&v133[v137[8]] = v229;
            *&v133[v137[10]] = v228;
            *&v133[v137[11]] = v227;
            *&v133[v137[12]] = v226;
            *&v133[v137[13]] = v225;
            *&v133[v137[14]] = v224;
            *&v133[v137[15]] = v220;
            *&v133[v137[16]] = v219;
            *&v133[v137[17]] = v143;
            *&v133[v137[18]] = v144;
            *&v133[v137[19]] = v145;
            v149 = v210;
            v235 = v210;
            v151 = *(v210 + 16);
            v150 = *(v210 + 24);
            if (v151 >= v150 >> 1)
            {
              sub_1D178D1D4(v150 > 1, v151 + 1, 1);
              v146 = v207;
              v149 = v235;
            }

            *(v149 + 16) = v151 + 1;
            v152 = (*(v208 + 80) + 32) & ~*(v208 + 80);
            v210 = v149;
            sub_1D1CB2178(v146, v149 + v152 + *(v208 + 72) * v151, type metadata accessor for StaticRoom);
            v88 = v209;
            v86 = v211;
            v52 = v218;
            v82 = &selRef_addZoneWithName_completionHandler_;
          }

          while (v209 != v197);
LABEL_80:

          v153 = v210;
          v154 = *(v210 + 16);
          if (v154)
          {
            goto LABEL_88;
          }

          goto LABEL_81;
        }
      }

      v153 = MEMORY[0x1E69E7CC0];
      v154 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v154)
      {
LABEL_88:
        v235 = MEMORY[0x1E69E7CC0];
        sub_1D178D194(0, v154, 0);
        v155 = v235;
        v156 = (*(v208 + 80) + 32) & ~*(v208 + 80);
        v210 = v153;
        v157 = v153 + v156;
        v158 = *(v208 + 72);
        v159 = (v231 + 16);
        v160 = v187;
        do
        {
          v161 = *(v213 + 48);
          sub_1D1CB2110(v157, v160 + v161, type metadata accessor for StaticRoom);
          (*v159)(v160, v160 + v161, v232);
          v235 = v155;
          v163 = *(v155 + 16);
          v162 = *(v155 + 24);
          if (v163 >= v162 >> 1)
          {
            sub_1D178D194(v162 > 1, v163 + 1, 1);
            v160 = v187;
            v155 = v235;
          }

          *(v155 + 16) = v163 + 1;
          sub_1D1741A90(v160, v155 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v163, &qword_1EC643740, &qword_1D1E71E98);
          v157 += v158;
          --v154;
        }

        while (v154);

LABEL_93:
        v164 = v193;
        if (*(v155 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
          v165 = sub_1D1E68BCC();
        }

        else
        {
          v165 = MEMORY[0x1E69E7CC8];
        }

        v166 = v189;
        v235 = v165;
        sub_1D1CB9A20(v155, 1, &v235);
        if (!v50)
        {

          if (*(&v244 + 1))
          {
            __swift_destroy_boxed_opaque_existential_1(&v243);
          }

          v233 = v235;
          v167 = v184;
          v168 = v188;
          (*(v184 + 56))(v188, 1, 1, v164);
          v169 = v183;
          sub_1D1741A90(v168, v183, &qword_1EC64CCB0, &qword_1D1EA2640);
          v170 = *(v167 + 48);
          if (v170(v169, 1, v164) == 1)
          {
            sub_1D1CB2110(v181, v166, type metadata accessor for StaticHome);
            v171 = v170(v169, 1, v164) == 1;
            v172 = v166;
            if (!v171)
            {
              sub_1D1741A30(v169, &qword_1EC64CCB0, &qword_1D1EA2640);
              v172 = v166;
            }
          }

          else
          {
            sub_1D1CB2178(v169, v166, type metadata accessor for StaticHome);
            v172 = v166;
          }

          v173 = v190;
          v174 = *(v199 + v190[6]);
          v175 = *(v199 + v190[7]);
          v176 = *(v199 + v190[16]);
          v177 = *(v199 + v190[17]);
          v178 = *(v199 + v190[18]);
          v179 = *(v199 + v190[19]);
          v180 = v191;
          *v191 = v182;
          sub_1D1CB2178(v172, v180 + v173[5], type metadata accessor for StaticHome);
          *(v180 + v173[6]) = v174;
          *(v180 + v173[7]) = v175;
          *(v180 + v173[8]) = v202;
          *(v180 + v173[9]) = v204;
          *(v180 + v173[10]) = v201;
          *(v180 + v173[11]) = v203;
          *(v180 + v173[12]) = v205;
          *(v180 + v173[13]) = v233;
          *(v180 + v173[14]) = v200;
          *(v180 + v173[15]) = v218;
          *(v180 + v173[16]) = v176;
          *(v180 + v173[17]) = v177;
          *(v180 + v173[18]) = v178;
          *(v180 + v173[19]) = v179;
          (*(*(v173 - 1) + 56))(v180, 0, 1, v173);

          return __swift_destroy_boxed_opaque_existential_1(&v240);
        }

LABEL_105:

        __break(1u);
        return result;
      }

LABEL_81:

      v155 = MEMORY[0x1E69E7CC0];
      goto LABEL_93;
    }
  }

  else
  {
    v237 = v243;
    v238 = v244;
    v239 = v245;
  }

  if (*(&v244 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v243);
    if (*(&v238 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v237);
    }
  }

  v73 = type metadata accessor for StateSnapshot(0);
  return (*(*(v73 - 8) + 56))(v191, 1, 1, v73);
}

uint64_t sub_1D1CA49F8@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = a1;
  v80 = a4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v6 = *(v73 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v9 = v70 - v8;
  v10 = type metadata accessor for StaticHome();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = v70 - v18;
  v19 = type metadata accessor for StateSnapshot(0);
  v20 = *(a3 + v19[9]);
  v21 = *(a3 + v19[15]);
  v22 = *(a3 + v19[12]);
  v23 = *a3;
  v24 = sub_1D1CC8FBC(*a3);
  v78 = v22;
  v79 = v21;
  v77 = v23;
  if (v24)
  {
    v71 = v13;
    v72 = a3;
    v25 = v22;
    v26 = [a2 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v27 = v21;
    v28 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v29);
    v30 = v74;
    v70[-6] = v23;
    v70[-5] = v30;
    v70[-4] = v20;
    v70[-3] = v27;
    v70[-2] = v25;
    v70[-1] = a2;
    v31 = 0;
    v32 = sub_1D178701C(sub_1D1CC7720, &v70[-8], v28);

    v33 = v32[2];
    if (v33)
    {
      v74 = 0;
      v83 = MEMORY[0x1E69E7CC0];
      sub_1D178D0D4(0, v33, 0);
      v34 = v83;
      v35 = *(type metadata accessor for StaticActionSet() - 8);
      v36 = *(v35 + 80);
      v70[1] = v32;
      v37 = v32 + ((v36 + 32) & ~v36);
      v38 = *(v35 + 72);
      v39 = v73;
      do
      {
        v40 = *(v39 + 48);
        sub_1D1CB2110(v37, &v9[v40], type metadata accessor for StaticActionSet);
        v41 = sub_1D1E66A7C();
        (*(*(v41 - 8) + 16))(v9, &v9[v40], v41);
        v83 = v34;
        v43 = *(v34 + 16);
        v42 = *(v34 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D178D0D4(v42 > 1, v43 + 1, 1);
          v39 = v73;
          v34 = v83;
        }

        *(v34 + 16) = v43 + 1;
        sub_1D1741A90(v9, v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43, &qword_1EC643710, &unk_1D1EA2630);
        v37 += v38;
        --v33;
      }

      while (v33);

      v31 = v74;
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    v13 = v71;
    v44 = v81;
    v45 = v76;
    if (*(v34 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
      v46 = sub_1D1E68BCC();
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC8];
    }

    v83 = v46;
    sub_1D1CB961C(v34, 1, &v83);
    if (v31)
    {

      __break(1u);
      return result;
    }

    v74 = v83;
    a3 = v72;
  }

  else
  {
    v74 = sub_1D18D50D4(MEMORY[0x1E69E7CC0]);
    v44 = v81;
    v45 = v76;
  }

  v47 = v75;
  v48 = v82;
  (*(v44 + 56))(v75, 1, 1, v82);
  sub_1D1741A90(v47, v45, &qword_1EC64CCB0, &qword_1D1EA2640);
  v49 = *(v44 + 48);
  v50 = v49(v45, 1, v48);
  v51 = v77;
  if (v50 == 1)
  {
    sub_1D1CB2110(a3 + v19[5], v13, type metadata accessor for StaticHome);
    v52 = v49(v45, 1, v48);

    v53 = v51;
    v54 = v13;
    if (v52 != 1)
    {
      sub_1D1741A30(v45, &qword_1EC64CCB0, &qword_1D1EA2640);
      v53 = v51;
      v54 = v13;
    }
  }

  else
  {
    sub_1D1CB2178(v45, v13, type metadata accessor for StaticHome);

    v53 = v51;
    v54 = v13;
  }

  v55 = v19[7];
  v73 = *(a3 + v19[6]);
  v56 = v73;
  v58 = *(a3 + v19[8]);
  v75 = *(a3 + v55);
  v57 = v75;
  v76 = v58;
  v59 = *(a3 + v19[10]);
  v60 = *(a3 + v19[11]);
  v61 = *(a3 + v19[13]);
  v62 = *(a3 + v19[16]);
  v63 = *(a3 + v19[17]);
  v81 = *(a3 + v19[14]);
  v82 = v63;
  v64 = v19[19];
  v72 = *(a3 + v19[18]);
  v65 = *(a3 + v64);
  v66 = v80;
  *v80 = v53;
  sub_1D1CB2178(v54, v66 + v19[5], type metadata accessor for StaticHome);
  *(v66 + v19[6]) = v56;
  *(v66 + v19[7]) = v57;
  *(v66 + v19[8]) = v58;
  *(v66 + v19[9]) = v74;
  *(v66 + v19[10]) = v59;
  *(v66 + v19[11]) = v60;
  v67 = v79;
  *(v66 + v19[12]) = v78;
  *(v66 + v19[13]) = v61;
  v68 = v82;
  *(v66 + v19[14]) = v81;
  *(v66 + v19[15]) = v67;
  *(v66 + v19[16]) = v62;
  *(v66 + v19[17]) = v68;
  *(v66 + v19[18]) = v72;
  *(v66 + v19[19]) = v65;
  (*(*(v19 - 1) + 56))(v66, 0, 1, v19);
}

uint64_t sub_1D1CA519C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v80 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v71 - v7;
  v9 = type metadata accessor for StaticUserActionPrediction();
  v84 = *(v9 - 1);
  v10 = *(v84 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v71 - v14;
  v16 = type metadata accessor for StaticHome();
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v77 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v71 - v24;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v26 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v28 = (&v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1CB2110(a1, v28, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v29 = *v28;
    if (*v28 >> 62)
    {
      goto LABEL_25;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = a3;
    for (i = v19; v30; i = v19)
    {
      v31 = 0;
      v82 = v29 & 0xFFFFFFFFFFFFFF8;
      v83 = v29 & 0xC000000000000001;
      v19 = MEMORY[0x1E69E7CC0];
      v81 = v30;
      while (1)
      {
        if (v83)
        {
          v32 = v29;
          v29 = MEMORY[0x1D3891EF0](v31);
        }

        else
        {
          if (v31 >= *(v82 + 16))
          {
            goto LABEL_24;
          }

          v32 = v29;
          v29 = *(v29 + 8 * v31 + 32);
        }

        v33 = v29;
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v35 = [v29 predictionTargetUUID];
        sub_1D1E66A5C();

        [v33 predictionScore];
        *&v13[v9[5]] = v36;
        v37 = [v33 targetServiceUUID];
        if (v37)
        {
          v38 = v37;
          sub_1D1E66A5C();

          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        v40 = sub_1D1E66A7C();
        (*(*(v40 - 8) + 56))(v8, v39, 1, v40);
        sub_1D1741A90(v8, &v13[v9[6]], &qword_1EC642590, qword_1D1E71260);
        v41 = [v33 predictionType];

        if (v41 >= 5)
        {
          v42 = 0;
        }

        else
        {
          v42 = v41;
        }

        v13[v9[7]] = v42;
        sub_1D1CB2178(v13, v15, type metadata accessor for StaticUserActionPrediction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D177D7CC(0, v19[2] + 1, 1, v19);
        }

        a3 = v19[2];
        v43 = v19[3];
        if (a3 >= v43 >> 1)
        {
          v19 = sub_1D177D7CC(v43 > 1, a3 + 1, 1, v19);
        }

        v19[2] = a3 + 1;
        sub_1D1CB2178(v15, v19 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * a3, type metadata accessor for StaticUserActionPrediction);
        ++v31;
        v29 = v32;
        if (v34 == v81)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v46 = v29;
      v30 = sub_1D1E6873C();
      v29 = v46;
      v74 = a3;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v48 = v78;
    v47 = v79;
    v49 = v76;
    (*(v78 + 56))(v76, 1, 1, v79);
    v50 = v80;
    v51 = *v80;
    v52 = v77;
    sub_1D1741A90(v49, v77, &qword_1EC64CCB0, &qword_1D1EA2640);
    v53 = *(v48 + 48);
    v54 = v53(v52, 1, v47);
    v82 = v51;
    if (v54 == 1)
    {
      v55 = type metadata accessor for StateSnapshot(0);
      sub_1D1CB2110(v50 + *(v55 + 20), i, type metadata accessor for StaticHome);
      v56 = v53(v52, 1, v47);

      if (v56 != 1)
      {
        sub_1D1741A30(v52, &qword_1EC64CCB0, &qword_1D1EA2640);
      }
    }

    else
    {
      sub_1D1CB2178(v52, i, type metadata accessor for StaticHome);
    }

    v57 = type metadata accessor for StateSnapshot(0);
    v58 = *(v50 + v57[6]);
    v59 = *(v50 + v57[7]);
    v60 = v57[9];
    v77 = *(v50 + v57[8]);
    v78 = v59;
    v79 = *(v50 + v60);
    v61 = v79;
    v62 = v57[11];
    v76 = *(v50 + v57[10]);
    v63 = *(v50 + v62);
    v64 = *(v50 + v57[12]);
    v83 = *(v50 + v57[13]);
    v65 = v83;
    v84 = v58;
    v66 = v57[15];
    v72 = *(v50 + v57[14]);
    v73 = v64;
    v67 = *(v50 + v66);
    v68 = *(v50 + v57[16]);
    v69 = *(v50 + v57[18]);
    v80 = *(v50 + v57[19]);
    v81 = v63;
    v70 = v74;
    *v74 = v82;
    sub_1D1CB2178(i, v70 + v57[5], type metadata accessor for StaticHome);
    *(v70 + v57[6]) = v84;
    *(v70 + v57[7]) = v59;
    *(v70 + v57[8]) = v77;
    *(v70 + v57[9]) = v61;
    *(v70 + v57[10]) = v76;
    *(v70 + v57[11]) = v63;
    *(v70 + v57[12]) = v73;
    *(v70 + v57[13]) = v65;
    *(v70 + v57[14]) = v72;
    *(v70 + v57[15]) = v67;
    *(v70 + v57[16]) = v68;
    *(v70 + v57[17]) = v19;
    *(v70 + v57[18]) = v69;
    *(v70 + v57[19]) = v80;
    (*(*(v57 - 1) + 56))(v70, 0, 1, v57);
  }

  else
  {
    sub_1D1CB2248(v28, type metadata accessor for StateSnapshot.UpdateType);
    v44 = type metadata accessor for StateSnapshot(0);
    return (*(*(v44 - 8) + 56))(a3, 1, 1, v44);
  }
}

uint64_t sub_1D1CA5A08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v63 = a2;
  v57 = type metadata accessor for StaticSoftwareUpdate(0);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticHH2Update(0);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C5F8, &qword_1D1E9FA00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v51 - v17;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v19 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D1E66A7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(a1, v21, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v55 = v9;
    v56 = a4;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
    v28 = *&v21[v27[12]];
    v29 = *&v21[v27[16]];
    v60 = *&v21[v27[20]];
    (*(v23 + 32))(v26, v21, v22);
    v54 = a3;
    v30 = [a3 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v31 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v32);
    *(&v51 - 2) = v26;
    v33 = sub_1D174A6C4(sub_1D1CC7754, (&v51 - 4), v31);

    if (v33)
    {
      v52 = type metadata accessor for StateSnapshot(0);
      v53 = v22;
      v34 = *(v63 + *(v52 + 72));
      v35 = v60;
      if (*(v34 + 16) && (v36 = sub_1D1742188(v26), (v37 & 1) != 0))
      {
        v38 = *(v34 + 56);
        v39 = v61;
        v40 = v62;
        sub_1D1CB2110(v38 + *(v61 + 72) * v36, v62, type metadata accessor for StaticHH2Update);
        v41 = 0;
      }

      else
      {
        v41 = 1;
        v39 = v61;
        v40 = v62;
      }

      v44 = v55;
      (*(v39 + 56))(v40, v41, 1, v55);
      v45 = v35;
      v46 = v29;
      sub_1D1CABEEC(v40, v28, v45, v33, v29, v16);
      if ((*(v39 + 48))(v16, 1, v44) == 1)
      {
        sub_1D1741A30(v40, &qword_1EC64C5F8, &qword_1D1E9FA00);

        sub_1D1741A30(v16, &qword_1EC64C5F8, &qword_1D1E9FA00);
        (*(*(v52 - 8) + 56))(v56, 1, 1);
        return (*(v23 + 8))(v26, v53);
      }

      else
      {
        v48 = v58;
        sub_1D1CB2178(v16, v58, type metadata accessor for StaticHH2Update);
        v49 = v59;
        v50 = v53;
        (*(v23 + 16))(v59, v26, v53);
        sub_1D1CB2110(v48, v49 + *(v57 + 20), type metadata accessor for StaticHH2Update);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        swift_storeEnumTagMultiPayload();
        sub_1D1CAC7EC(v49, v63, v56);

        sub_1D1CB2248(v49, type metadata accessor for StaticSoftwareUpdate);
        sub_1D1CB2248(v48, type metadata accessor for StaticHH2Update);
        sub_1D1741A30(v40, &qword_1EC64C5F8, &qword_1D1E9FA00);
        return (*(v23 + 8))(v26, v50);
      }
    }

    else
    {

      v47 = type metadata accessor for StateSnapshot(0);
      (*(*(v47 - 8) + 56))(v56, 1, 1, v47);
      return (*(v23 + 8))(v26, v22);
    }
  }

  else
  {
    sub_1D1CB2248(v21, type metadata accessor for StateSnapshot.UpdateType);
    v42 = type metadata accessor for StateSnapshot(0);
    return (*(*(v42 - 8) + 56))(a4, 1, 1, v42);
  }
}

uint64_t sub_1D1CA60CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v203 = *(v6 - 8);
  v204 = v6;
  v7 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v214 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1D1E66A7C();
  v217 = *(v216 - 8);
  v9 = *(v217 + 64);
  v10 = MEMORY[0x1EEE9AC00](v216);
  v12 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v212 = &v167 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v195 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v196 = &v167 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v209 = &v167 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v194 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v213 = &v167 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v206 = &v167 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v192 = &v167 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v211 = &v167 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v200 = &v167 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v39 = &v167 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v198 = &v167 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v210 = &v167 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v190 = &v167 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v207 = &v167 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v201 = &v167 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v197 = &v167 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v193 = &v167 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v208 = &v167 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v191 = &v167 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v167 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60);
  v202 = &v167 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v199 = &v167 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v167 - v67;
  v205 = type metadata accessor for StaticMatterDevice();
  v215 = *(v205 - 8);
  v69 = v215[8];
  v70 = MEMORY[0x1EEE9AC00](v205);
  v72 = &v167 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v167 - v73;
  if (!*(a2 + 16))
  {
    return sub_1D1CB2110(a1, a3, type metadata accessor for StaticAccessory);
  }

  v75 = sub_1D1742188(a1);
  if ((v76 & 1) == 0)
  {
    return sub_1D1CB2110(a1, a3, type metadata accessor for StaticAccessory);
  }

  v181 = a1;
  v173 = a3;
  v184 = v39;
  v189 = v12;
  sub_1D1CB2110(*(a2 + 56) + v215[9] * v75, v72, type metadata accessor for StaticMatterDevice);
  v188 = type metadata accessor for StaticMatterDevice;
  sub_1D1CB2178(v72, v74, type metadata accessor for StaticMatterDevice);
  v78 = v217 + 56;
  v77 = *(v217 + 56);
  v79 = v216;
  v77(v68, 1, 1, v216);
  v80 = sub_1D1E669FC();
  v180 = *(v80 - 8);
  v82 = v180 + 56;
  v81 = *(v180 + 56);
  v81(v197, 1, 1, v80);
  (*(v203 + 56))(v198, 1, 1, v204);
  v83 = type metadata accessor for StaticDeviceMetadata();
  v182 = *(v83 - 8);
  v84 = *(v182 + 56);
  v183 = v83;
  v176 = v182 + 56;
  v170 = v84;
  (v84)(v200, 1, 1);
  v186 = v80;
  v169 = v82;
  v168 = v81;
  v81(v201, 1, 1, v80);
  v85 = v217;
  v77(v199, 1, 1, v79);
  v178 = v78;
  v177 = v77;
  v77(v202, 1, 1, v79);
  v86 = type metadata accessor for StaticSoftwareUpdate(0);
  v185 = *(v86 - 8);
  v87 = *(v185 + 56);
  v187 = v86;
  v175 = v185 + 56;
  v174 = v87;
  (v87)(v206, 1, 1);
  v88 = v74;
  v89 = v209;
  sub_1D1CB2178(v88, v209, v188);
  v90 = v215[7];
  v172 = v215 + 7;
  v171 = v90;
  v90(v89, 0, 1, v205);
  sub_1D1741A90(v68, v62, &qword_1EC642590, qword_1D1E71260);
  v92 = v85 + 48;
  v91 = *(v85 + 48);
  v93 = (v91)(v62, 1, v79);
  v188 = v91;
  if (v93 == 1)
  {
    v94 = *(v85 + 16);
    v95 = v181;
    v94(v212, v181, v79);
    if ((v91)(v62, 1, v79) != 1)
    {
      sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v85 + 32))(v212, v62, v79);
    v95 = v181;
  }

  v97 = v190;
  sub_1D1741A90(v197, v190, &qword_1EC642570, &qword_1D1E6C6A0);
  v98 = v180;
  v99 = *(v180 + 48);
  v100 = v186;
  v101 = v99(v97, 1, v186);
  v102 = v204;
  v103 = v173;
  if (v101 == 1)
  {
    v104 = type metadata accessor for StaticAccessory(0);
    sub_1D1741C08(v95 + *(v104 + 20), v207, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v99(v97, 1, v100) != 1)
    {
      sub_1D1741A30(v97, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v105 = v207;
    (*(v98 + 32))(v207, v97, v100);
    v168(v105, 0, 1, v100);
  }

  v106 = type metadata accessor for StaticAccessory(0);
  v107 = v106[7];
  LODWORD(v186) = *(v95 + v106[6]);
  v108 = *(v95 + v107 + 8);
  v197 = *(v95 + v107);
  v109 = v184;
  sub_1D1741A90(v198, v184, &qword_1EC643C58, &unk_1D1E995D0);
  v110 = *(v203 + 48);
  v111 = v110(v109, 1, v102);
  v190 = v108;
  if (v111 == 1)
  {
    sub_1D1CB2110(v95 + v106[8], v214, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v112 = v110(v109, 1, v102);

    if (v112 != 1)
    {
      sub_1D1741A30(v109, &qword_1EC643C58, &unk_1D1E995D0);
    }
  }

  else
  {
    sub_1D1CB2178(v109, v214, type metadata accessor for StaticAccessory.DeviceIdentifier);
  }

  v113 = v192;
  sub_1D1741A90(v200, v192, &qword_1EC644620, &unk_1D1E75A00);
  v114 = *(v182 + 48);
  v115 = v183;
  v116 = v114(v113, 1, v183);
  v117 = v191;
  if (v116 == 1)
  {
    sub_1D1741C08(v95 + v106[9], v211, &qword_1EC644620, &unk_1D1E75A00);
    v118 = v114(v113, 1, v115);
    v119 = v188;
    if (v118 != 1)
    {
      sub_1D1741A30(v113, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v120 = v211;
    sub_1D1CB2178(v113, v211, type metadata accessor for StaticDeviceMetadata);
    v170(v120, 0, 1, v115);
    v119 = v188;
  }

  sub_1D1741A90(v201, v210, &qword_1EC642570, &qword_1D1E6C6A0);
  LODWORD(v198) = *(v95 + v106[11]);
  sub_1D1741A90(v199, v117, &qword_1EC642590, qword_1D1E71260);
  v121 = v216;
  v122 = (v119)(v117, 1, v216);
  v123 = v193;
  v179 = v92;
  if (v122 == 1)
  {
    (*(v217 + 16))(v189, v95 + v106[12], v121);
    if ((v119)(v117, 1, v121) != 1)
    {
      sub_1D1741A30(v117, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v217 + 32))(v189, v117, v121);
  }

  v124 = v106[14];
  v204 = *(v95 + v106[13]);
  v125 = v106[16];
  LODWORD(v192) = *(v95 + v106[15]);
  LODWORD(v199) = *(v95 + v125);
  v126 = v106[18];
  LODWORD(v184) = *(v95 + v106[17]);
  LODWORD(v191) = *(v95 + v126);
  v127 = v106[20];
  LODWORD(v183) = *(v95 + v106[19]);
  v128 = *(v95 + v124 + 8);
  v181 = *(v95 + v124);
  v129 = *(v95 + v127);
  v203 = *(v95 + v106[21]);
  sub_1D1741A90(v202, v123, &qword_1EC642590, qword_1D1E71260);
  v130 = v123;
  v131 = v188;
  v132 = (v188)(v123, 1, v121);
  v182 = v129;
  v180 = v128;
  if (v132 == 1)
  {
    sub_1D1741C08(v95 + v106[22], v208, &qword_1EC642590, qword_1D1E71260);
    v133 = (v131)(v123, 1, v121);

    if (v133 != 1)
    {
      sub_1D1741A30(v123, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v134 = v208;
    (*(v217 + 32))(v208, v130, v121);
    v177(v134, 0, 1, v121);
  }

  v135 = v106[24];
  v136 = v95 + v106[23];
  v137 = *v136;
  LODWORD(v202) = *(v136 + 8);
  v138 = v106[26];
  v201 = *(v95 + v106[25]);
  LODWORD(v188) = *(v95 + v138);
  v139 = v106[28];
  LODWORD(v179) = *(v95 + v106[27]);
  v140 = *(v95 + v135 + 8);
  v176 = *(v95 + v135);
  v200 = v140;
  LODWORD(v178) = *(v95 + v139);
  LODWORD(v177) = *(v95 + v106[29]);
  v141 = v194;
  sub_1D1741A90(v206, v194, &qword_1EC644760, &unk_1D1E9E530);
  v142 = *(v185 + 48);
  v143 = v187;
  v144 = v142(v141, 1, v187);
  v145 = v215;
  v193 = v137;
  if (v144 == 1)
  {
    sub_1D1741C08(v95 + v106[30], v213, &qword_1EC644760, &unk_1D1E9E530);
    v146 = v142(v141, 1, v143);
    sub_1D18EB144(v137, v202);

    v147 = v195;
    if (v146 != 1)
    {
      sub_1D1741A30(v141, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v148 = v213;
    sub_1D1CB2178(v141, v213, type metadata accessor for StaticSoftwareUpdate);
    v174(v148, 0, 1, v143);
    sub_1D18EB144(v137, v202);

    v147 = v195;
  }

  v149 = v106[32];
  LODWORD(v195) = *(v95 + v106[31]);
  LODWORD(v206) = *(v95 + v149);
  v150 = *(v95 + v106[33]);
  LODWORD(v194) = *(v95 + v106[34]);
  v151 = v106[36];
  LODWORD(v174) = *(v95 + v106[35]);
  v187 = *(v95 + v151);
  LODWORD(v185) = *(v95 + v151 + 8);
  LODWORD(v175) = *(v95 + v106[37]);
  sub_1D1741A90(v209, v147, &qword_1EC643650, &qword_1D1E71D40);
  v152 = v145[6];
  v153 = v205;
  if (v152(v147, 1, v205) == 1)
  {
    v154 = v196;
    sub_1D1741C08(v95 + v106[38], v196, &qword_1EC643650, &qword_1D1E71D40);
    v155 = v152(v147, 1, v153);

    if (v155 != 1)
    {
      sub_1D1741A30(v147, &qword_1EC643650, &qword_1D1E71D40);
    }
  }

  else
  {
    v154 = v196;
    sub_1D1CB2178(v147, v196, type metadata accessor for StaticMatterDevice);
    v171(v154, 0, 1, v153);
  }

  v156 = *(v217 + 32);
  v157 = v216;
  v156(v103, v212, v216);
  sub_1D1741A90(v207, v103 + v106[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v103 + v106[6]) = v186;
  v158 = (v103 + v106[7]);
  v159 = v190;
  *v158 = v197;
  v158[1] = v159;
  sub_1D1CB2178(v214, v103 + v106[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v211, v103 + v106[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v210, v103 + v106[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v103 + v106[11]) = v198;
  v156(v103 + v106[12], v189, v157);
  *(v103 + v106[13]) = v204;
  v160 = (v103 + v106[14]);
  v161 = v180;
  *v160 = v181;
  v160[1] = v161;
  *(v103 + v106[15]) = v192;
  *(v103 + v106[16]) = v199;
  *(v103 + v106[17]) = v184;
  *(v103 + v106[18]) = v191;
  *(v103 + v106[19]) = v183;
  *(v103 + v106[20]) = v182;
  *(v103 + v106[21]) = v203;
  sub_1D1741A90(v208, v103 + v106[22], &qword_1EC642590, qword_1D1E71260);
  v162 = v103 + v106[23];
  *v162 = v193;
  *(v162 + 8) = v202;
  v163 = (v103 + v106[24]);
  v165 = v200;
  v164 = v201;
  *v163 = v176;
  v163[1] = v165;
  *(v103 + v106[25]) = v164;
  *(v103 + v106[26]) = v188;
  *(v103 + v106[27]) = v179;
  *(v103 + v106[28]) = v178;
  *(v103 + v106[29]) = v177;
  sub_1D1741A90(v213, v103 + v106[30], &qword_1EC644760, &unk_1D1E9E530);
  *(v103 + v106[31]) = v195;
  *(v103 + v106[32]) = v206;
  *(v103 + v106[33]) = v150;
  *(v103 + v106[34]) = v194;
  *(v103 + v106[35]) = v174;
  v166 = v103 + v106[36];
  *v166 = v187;
  *(v166 + 8) = v185;
  *(v103 + v106[37]) = v175;
  return sub_1D1741A90(v154, v103 + v106[38], &qword_1EC643650, &qword_1D1E71D40);
}

uint64_t sub_1D1CA772C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v86 = sub_1D1E66A7C();
  v90 = *(v86 - 8);
  v8 = *(v90 + 64);
  v9 = MEMORY[0x1EEE9AC00](v86);
  v89 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v83 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v84 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v72 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v72 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v72 - v29;
  v31 = type metadata accessor for StaticRoom(0);
  v32 = *(a1 + v31[10]);

  v34 = sub_1D1785BE4(v33);
  v35 = *(sub_1D1CB5974(a2, v34) + 16);

  if (!v35)
  {
    return sub_1D1CB2110(a1, a4, type metadata accessor for StaticRoom);
  }

  v79 = a4;
  v36 = v82;

  v80 = sub_1D1CBCEEC(v32, v36);
  v81 = v4;

  v37 = v90;
  v38 = *(v90 + 56);
  v39 = v86;
  v38(v30, 1, 1, v86);
  v40 = sub_1D1E669FC();
  v75 = *(v40 - 8);
  v76 = v40;
  v73 = *(v75 + 56);
  v74 = v75 + 56;
  v73(v85, 1, 1);
  v82 = v28;
  v38(v28, 1, 1, v39);
  sub_1D1741A90(v30, v25, &qword_1EC642590, qword_1D1E71260);
  v41 = *(v37 + 48);
  v42 = v41(v25, 1, v39);
  v77 = v41;
  if (v42 == 1)
  {
    (*(v37 + 16))(v88, a1, v39);
    if (v41(v25, 1, v39) != 1)
    {
      sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v37 + 32))(v88, v25, v39);
  }

  v44 = (a1 + v31[5]);
  v45 = v44[1];
  v78 = *v44;
  v46 = v83;
  sub_1D1741A90(v85, v83, &qword_1EC642570, &qword_1D1E6C6A0);
  v48 = v75;
  v47 = v76;
  v49 = *(v75 + 48);
  if (v49(v46, 1, v76) == 1)
  {
    sub_1D1741C08(a1 + v31[6], v87, &qword_1EC642570, &qword_1D1E6C6A0);
    v50 = v49(v46, 1, v47);

    v51 = v89;
    if (v50 != 1)
    {
      sub_1D1741A30(v46, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v52 = v87;
    (*(v48 + 32))(v87, v46, v47);
    (v73)(v52, 0, 1, v47);

    v51 = v89;
  }

  v85 = v45;
  v53 = v31[8];
  LODWORD(v83) = *(a1 + v31[7]);
  v54 = *(a1 + v53);
  v55 = v84;
  sub_1D1741A90(v82, v84, &qword_1EC642590, qword_1D1E71260);
  v56 = v86;
  v57 = v77;
  v58 = v77(v55, 1, v86);
  v59 = v90;
  v76 = v54;
  if (v58 == 1)
  {
    (*(v90 + 16))(v51, a1 + v31[9], v56);
    v60 = v57(v55, 1, v56);

    v61 = v56;
    v62 = v59;
    if (v60 != 1)
    {
      sub_1D1741A30(v55, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v90 + 32))(v51, v55, v56);

    v61 = v56;
    v62 = v59;
  }

  v63 = *(a1 + v31[11]);
  v90 = *(a1 + v31[12]);
  v64 = *(a1 + v31[13]);
  v65 = *(a1 + v31[14]);
  v66 = *(a1 + v31[15]);
  v84 = *(a1 + v31[16]);
  v67 = v31[18];
  v75 = *(a1 + v31[17]);
  v77 = *(a1 + v67);
  v82 = *(a1 + v31[19]);
  v68 = *(v62 + 32);
  v69 = v79;
  v68(v79, v88, v61);
  v70 = (v69 + v31[5]);
  v71 = v85;
  *v70 = v78;
  v70[1] = v71;
  sub_1D1741A90(v87, v69 + v31[6], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v69 + v31[7]) = v83;
  *(v69 + v31[8]) = v76;
  v68(v69 + v31[9], v89, v61);
  *(v69 + v31[10]) = v80;
  *(v69 + v31[11]) = v63;
  *(v69 + v31[12]) = v90;
  *(v69 + v31[13]) = v64;
  *(v69 + v31[14]) = v65;
  *(v69 + v31[15]) = v66;
  *(v69 + v31[16]) = v84;
  *(v69 + v31[17]) = v75;
  *(v69 + v31[18]) = v77;
  *(v69 + v31[19]) = v82;
}

uint64_t StateSnapshot.copyReplacing(coverages:staticHome:staticHomesInOrder:staticZonesDictionary:staticAccessoriesDictionary:staticActionSetsDictionary:staticCameraProfilesDictionary:staticMediaSystemsDictionary:staticMediaProfilesDictionary:staticRoomsDictionary:staticServiceGroupsDictionary:staticServicesDictionary:staticUsersDictionary:staticUserActionPredictions:staticHH2UpdatesDictionary:staticResidentDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v70 = a4;
  v71 = a5;
  v69 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v49 - v26;
  v28 = type metadata accessor for StaticHome();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v64 = a1;
  }

  else
  {
    v64 = *v17;
  }

  sub_1D1741C08(a2, v27, &qword_1EC64CCB0, &qword_1D1EA2640);
  v32 = *(v29 + 48);
  if (v32(v27, 1, v28) == 1)
  {
    v33 = type metadata accessor for StateSnapshot(0);
    sub_1D1CB2110(v17 + *(v33 + 20), v68, type metadata accessor for StaticHome);
    v34 = v32(v27, 1, v28);

    if (v34 != 1)
    {
      sub_1D1741A30(v27, &qword_1EC64CCB0, &qword_1D1EA2640);
    }
  }

  else
  {
    sub_1D1CB2178(v27, v68, type metadata accessor for StaticHome);
  }

  v35 = v71;
  if (v69)
  {
    v63 = v69;
    v36 = v70;
    if (v70)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v63 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 24));

    v36 = v70;
    if (v70)
    {
LABEL_10:
      v62 = v36;
      if (v35)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  v62 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 28));

  if (v35)
  {
LABEL_11:
    v61 = v35;
    if (a6)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v61 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 32));

  if (a6)
  {
LABEL_12:
    v58 = a6;
    if (a7)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v58 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 36));

  if (a7)
  {
LABEL_13:
    v56 = a7;
    v37 = a10;
    if (a8)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v56 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 40));

  v37 = a10;
  if (a8)
  {
LABEL_14:
    v54 = a8;
    v38 = a11;
    if (v37)
    {
      goto LABEL_15;
    }

LABEL_23:
    v53 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 48));

    v39 = a12;
    if (v38)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_22:
  v54 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 44));

  v38 = a11;
  if (!v37)
  {
    goto LABEL_23;
  }

LABEL_15:
  v53 = v37;
  v39 = a12;
  if (v38)
  {
LABEL_16:
    v52 = v38;
    goto LABEL_25;
  }

LABEL_24:
  v52 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 52));

LABEL_25:
  v59 = v38;
  if (v39)
  {
    v51 = v39;
  }

  else
  {
    v51 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 56));
  }

  v66 = a7;
  if (a13)
  {
    v50 = a13;
  }

  else
  {
    v50 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 60));
  }

  v60 = v37;
  v67 = a8;
  if (a14)
  {
    v40 = a14;
  }

  else
  {
    v40 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 64));
  }

  v65 = a6;
  if (a15)
  {
    v41 = a15;
  }

  else
  {
    v41 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 68));
  }

  v57 = v39;
  if (!a16)
  {
    v42 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 72));

    v55 = a13;
    if (a17)
    {
      goto LABEL_39;
    }

LABEL_41:
    v43 = *(v17 + *(type metadata accessor for StateSnapshot(0) + 76));

    goto LABEL_42;
  }

  v42 = a16;
  v55 = a13;
  if (!a17)
  {
    goto LABEL_41;
  }

LABEL_39:
  v43 = a17;
LABEL_42:
  *a9 = v64;
  v44 = type metadata accessor for StateSnapshot(0);
  sub_1D1CB2178(v68, a9 + v44[5], type metadata accessor for StaticHome);
  v45 = v62;
  *(a9 + v44[6]) = v63;
  *(a9 + v44[7]) = v45;
  *(a9 + v44[8]) = v61;
  *(a9 + v44[9]) = v58;
  *(a9 + v44[10]) = v56;
  v46 = v53;
  *(a9 + v44[11]) = v54;
  *(a9 + v44[12]) = v46;
  v47 = v51;
  *(a9 + v44[13]) = v52;
  *(a9 + v44[14]) = v47;
  *(a9 + v44[15]) = v50;
  *(a9 + v44[16]) = v40;
  *(a9 + v44[17]) = v41;
  *(a9 + v44[18]) = v42;
  *(a9 + v44[19]) = v43;
}

void sub_1D1CA84B8(id *a1, char *a2, void *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v426 = a6;
  v427 = a5;
  v479 = a4;
  v430 = a3;
  v450 = a2;
  v10 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v473 = *(v10 - 8);
  v11 = *(v473 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v448 = &v366 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v420 = &v366 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v447 = &v366 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v446 = &v366 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v419 = &v366 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v445 = &v366 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v444 = &v366 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v418 = &v366 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v443 = &v366 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v442 = &v366 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v423 = &v366 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v441 = &v366 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v440 = &v366 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v439 = &v366 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v417 = &v366 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v438 = &v366 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v416 = &v366 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v415 = &v366 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v437 = &v366 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v436 = &v366 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v435 = &v366 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v463 = &v366 - v59;
  v464 = type metadata accessor for StaticService(0);
  v472 = *(v464 - 8);
  v60 = *(v472 + 64);
  v61 = MEMORY[0x1EEE9AC00](v464);
  v474 = &v366 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v458 = &v366 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64 - 8);
  v471 = &v366 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v466 = &v366 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v70 = *(*(v69 - 8) + 64);
  v71 = MEMORY[0x1EEE9AC00](v69 - 8);
  v422 = &v366 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v434 = &v366 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v433 = &v366 - v76;
  MEMORY[0x1EEE9AC00](v75);
  v476 = &v366 - v77;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v478 = *(v424 - 8);
  v78 = *(v478 + 64);
  v79 = MEMORY[0x1EEE9AC00](v424);
  v410 = &v366 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v421 = &v366 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v366 - v83;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v85 = *(*(updated - 1) + 8);
  MEMORY[0x1EEE9AC00](updated);
  v470 = &v366 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v88 = *(*(v87 - 8) + 64);
  v89 = MEMORY[0x1EEE9AC00](v87 - 8);
  v449 = &v366 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v425 = &v366 - v92;
  MEMORY[0x1EEE9AC00](v91);
  v477 = &v366 - v93;
  v480 = sub_1D1E66A7C();
  v469 = *(v480 - 8);
  v94 = *(v469 + 64);
  v95 = MEMORY[0x1EEE9AC00](v480);
  v432 = &v366 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v99 = &v366 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v431 = &v366 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v452 = &v366 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v462 = &v366 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v460 = &v366 - v107;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v366 - v108;
  v451 = type metadata accessor for StaticAccessory(0);
  v110 = *(v451 - 1);
  v111 = v110[8];
  v112 = MEMORY[0x1EEE9AC00](v451);
  v414 = &v366 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x1EEE9AC00](v112);
  v429 = &v366 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v455 = &v366 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v412 = &v366 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v122 = &v366 - v121;
  MEMORY[0x1EEE9AC00](v120);
  v411 = &v366 - v123;
  v124 = [*a1 service];
  if (v124)
  {
    v413 = v10;
    v125 = v124;
    v126 = [v124 accessory];

    if (v126)
    {
      v127 = v126;
      v457 = type metadata accessor for StateSnapshot(0);
      v128 = *&v450[v457[8]];
      v459 = v127;
      v129 = [v127 uniqueIdentifier];
      sub_1D1E66A5C();

      if (!*(v128 + 16) || (v454 = v128, v130 = sub_1D1742188(v109), (v131 & 1) == 0))
      {
        (*(v469 + 8))(v109, v480);

        return;
      }

      v475 = v99;
      v367 = a7;
      v132 = *(v454 + 56);
      v401 = v110[9];
      sub_1D1CB2110(v132 + v401 * v130, v122, type metadata accessor for StaticAccessory);
      v133 = v469;
      v134 = *(v469 + 8);
      v467 = v469 + 8;
      v468 = v134;
      v134(v109, v480);
      v135 = v411;
      sub_1D1CB2178(v122, v411, type metadata accessor for StaticAccessory);
      v136 = &v450[v457[5]];
      v137 = *(type metadata accessor for StaticHome() + 44);
      v373 = v136;
      v372 = v137;
      LOBYTE(v136) = v136[v137];
      v138 = v477;
      sub_1D1CB2110(v135, v477, type metadata accessor for StaticAccessory);
      v139 = v110[7];
      v405 = v110 + 7;
      v404 = v139;
      v139(v138, 0, 1, v451);
      v140 = v459;
      v141 = [v459 services];
      v371 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v142 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v143);
      *(&v366 - 64) = 1;
      v144 = v430;
      *(&v366 - 7) = v140;
      *(&v366 - 6) = v144;
      *(&v366 - 5) = v479;
      *(&v366 - 32) = v136;
      v145 = v427;
      *(&v366 - 3) = v138;
      *(&v366 - 2) = v145;
      v146 = sub_1D17893E4(sub_1D1CC712C, (&v366 - 10), v142);
      v147 = v7;

      v148 = v146[2];
      if (v148)
      {
        v461 = v7;
        v482 = MEMORY[0x1E69E7CC0];
        sub_1D178D2D8(0, v148, 0);
        v149 = v482;
        v150 = (*(v472 + 80) + 32) & ~*(v472 + 80);
        v456 = v146;
        v151 = v146 + v150;
        v152 = *(v472 + 72);
        v153 = (v133 + 16);
        v154 = v424;
        do
        {
          v155 = *(v154 + 48);
          sub_1D1CB2110(v151, &v84[v155], type metadata accessor for StaticService);
          (*v153)(v84, &v84[v155], v480);
          v482 = v149;
          v157 = *(v149 + 16);
          v156 = *(v149 + 24);
          if (v157 >= v156 >> 1)
          {
            sub_1D178D2D8(v156 > 1, v157 + 1, 1);
            v154 = v424;
            v149 = v482;
          }

          *(v149 + 16) = v157 + 1;
          sub_1D1741A90(v84, v149 + ((*(v478 + 80) + 32) & ~*(v478 + 80)) + *(v478 + 72) * v157, &qword_1EC6436E8, &unk_1D1E71E40);
          v151 += v152;
          --v148;
        }

        while (v148);

        v147 = v461;
      }

      else
      {

        v149 = MEMORY[0x1E69E7CC0];
      }

      v158 = MEMORY[0x1E69E7CC8];
      v159 = v468;
      if (*(v149 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
        v158 = sub_1D1E68BCC();
      }

      v160 = v430;
      v482 = v158;
      sub_1D1CBFC40(v149, 1, &v482);
      if (v147)
      {
LABEL_119:

        __break(1u);
        goto LABEL_120;
      }

      v161 = v482;
      sub_1D1741A30(v477, &qword_1EC6436C8, &unk_1D1E97C40);
      v482 = v161;
      v162 = v160;
      v163 = v470;
      sub_1D1CB2110(v162, v470, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v453 = v161;
      v461 = 0;
      if (EnumCaseMultiPayload == 1)
      {
        v166 = *v163;
        v165 = *(v163 + 8);
        v167 = *(v163 + 16);
        if (v167 == 4)
        {

          v168 = [v459 uniqueIdentifier];
          v169 = v460;
          sub_1D1E66A5C();

          if (*(v165 + 16))
          {
            v170 = sub_1D1742188(v169);
            if (v171)
            {
              LODWORD(v477) = *(*(v165 + 56) + v170);
              v159(v169, v480);

              if (qword_1EE07A098 != -1)
              {
LABEL_117:
                swift_once();
              }

              v172 = sub_1D1E6709C();
              __swift_project_value_buffer(v172, qword_1EE0813C8);
              v173 = sub_1D1E6707C();
              v174 = sub_1D1E6835C();
              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                v176 = swift_slowAlloc();
                v481 = v176;
                *v175 = 136315394;
                *(v175 + 4) = sub_1D1B1312C(0xD00000000000004DLL, 0x80000001D1EC81F0, &v481);
                *(v175 + 12) = 1024;
                *(v175 + 14) = v477;
                _os_log_impl(&dword_1D16EC000, v173, v174, "%s Applying reachability flag: %{BOOL}d", v175, 0x12u);
                __swift_destroy_boxed_opaque_existential_1(v176);
                MEMORY[0x1D3893640](v176, -1, -1);
                v177 = v175;
                v161 = v453;
                MEMORY[0x1D3893640](v177, -1, -1);
              }

              goto LABEL_28;
            }
          }

          v159(v169, v480);
        }

        else
        {

          sub_1D1AC373C(v166, v165, v167);
        }
      }

      else
      {

        sub_1D1CB2248(v163, type metadata accessor for StateSnapshot.UpdateType);
      }

      LODWORD(v477) = 2;
LABEL_28:
      v178 = v459;
      v179 = [v459 room];
      v180 = v178;
      if (!v179)
      {
        v179 = [v479 roomForEntireHome];
      }

      LOBYTE(v481) = v373[v372];
      v181 = *&v450[v457[18]];
      v182 = type metadata accessor for StaticMatterDevice();
      v183 = *(v182 - 8);
      v184 = *(v183 + 56);
      v185 = v183 + 56;
      v186 = v476;
      v403 = v182;
      v376 = v184;
      v184(v476, 1, 1);

      v187 = v180;
      v188 = v479;
      v189 = v161;
      v190 = v412;
      v409 = v188;
      sub_1D1BBA530(v187, v188, v179, v477, &v481, v189, v181, v186, v412);
      v366 = v187;
      v191 = [v187 uniqueIdentifier];
      v192 = v462;
      sub_1D1E66A5C();

      v193 = v425;
      sub_1D1AA5ABC(v192, v425);
      v194 = v480;
      v468(v192, v480);
      sub_1D1741A30(v193, &qword_1EC6436C8, &unk_1D1E97C40);
      v195 = v469 + 16;
      v476 = *(v469 + 16);
      (v476)(v192, v190, v194);
      sub_1D1CB2110(v190, v193, type metadata accessor for StaticAccessory);
      v404(v193, 0, 1, v451);
      sub_1D1B0CF04(v193, v192);
      v147 = 0;
      v198 = *(v189 + 64);
      v197 = (v189 + 64);
      v196 = v198;
      v199 = 1 << *(v197 - 32);
      v200 = -1;
      if (v199 < 64)
      {
        v200 = ~(-1 << v199);
      }

      v201 = v200 & v196;
      v202 = (v199 + 63) >> 6;
      v479 = (v195 + 16);
      updated = (v195 + 32);
      v477 = v195;
      v374 = (v195 + 40);
      v370 = (v473 + 56);
      v369 = (v473 + 48);
      v375 = v185;
      v368 = (v185 - 8);
      v161 = v463;
      v203 = v471;
      v204 = v466;
      v457 = v197;
      v456 = v202;
      while (v201)
      {
        v206 = v147;
LABEL_45:
        v470 = (v201 - 1) & v201;
        v209 = __clz(__rbit64(v201)) | (v206 << 6);
        v210 = v453;
        v211 = v469;
        v212 = v462;
        v213 = v480;
        (v476)(v462, *(v453 + 48) + *(v469 + 72) * v209, v480);
        v214 = v458;
        sub_1D1CB2110(*(v210 + 56) + *(v472 + 72) * v209, v458, type metadata accessor for StaticService);
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        v216 = *(v215 + 48);
        v217 = v471;
        (*(v211 + 32))(v471, v212, v213);
        v218 = &v217[v216];
        v203 = v217;
        sub_1D1CB2178(v214, v218, type metadata accessor for StaticService);
        (*(*(v215 - 8) + 56))(v217, 0, 1, v215);
        v204 = v466;
        v161 = v463;
LABEL_46:
        sub_1D1741A90(v203, v204, &qword_1EC643C68, &unk_1D1E764C0);
        v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        if ((*(*(v219 - 8) + 48))(v204, 1, v219) == 1)
        {

          v356 = v411;
          v357 = *(v411 + v451[20]);

          v359 = v367;
          v360 = v461;
          sub_1D1C920FC(v358, v367);

          v361 = *v359;
          v362 = v482;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v481 = v361;
          sub_1D1CC7144(v362, sub_1D1CB5348, 0, isUniquelyReferenced_nonNull_native, &v481);
          if (!v360)
          {

            v364 = v481;
            sub_1D1CB2248(v412, type metadata accessor for StaticAccessory);
            sub_1D1CB2248(v356, type metadata accessor for StaticAccessory);
            v365 = *v359;
            *v359 = v364;

            return;
          }

LABEL_120:

          __break(1u);
          return;
        }

        v220 = v204 + *(v219 + 48);
        sub_1D1741C08(v220 + *(v464 + 148), v161, &qword_1EC642590, qword_1D1E71260);
        sub_1D1CB2248(v220, type metadata accessor for StaticService);
        v221 = *updated;
        v222 = v480;
        if ((*updated)(v161, 1, v480) == 1)
        {
          sub_1D1741A30(v161, &qword_1EC642590, qword_1D1E71260);
          v205 = v468;
        }

        else
        {
          v223 = v452;
          v473 = *v479;
          (v473)(v452, v161, v222);
          if (*(v454 + 16) && (v224 = sub_1D1742188(v223), v204 = v466, (v225 & 1) != 0))
          {
            v428 = v221;
            v226 = v429;
            sub_1D1CB2110(*(v454 + 56) + v224 * v401, v429, type metadata accessor for StaticAccessory);
            v227 = v455;
            sub_1D1CB2178(v226, v455, type metadata accessor for StaticAccessory);
            v228 = [v409 accessories];
            sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
            v229 = sub_1D1E67C1C();

            MEMORY[0x1EEE9AC00](v230);
            *(&v366 - 2) = v223;
            v231 = v461;
            v232 = sub_1D174A6C4(sub_1D1CC7564, (&v366 - 4), v229);
            v461 = v231;

            if (v232)
            {
              v233 = v373[v372];
              v234 = v449;
              sub_1D1CB2110(v227, v449, type metadata accessor for StaticAccessory);
              v404(v234, 0, 1, v451);
              v235 = v232;
              v236 = [v232 services];
              v237 = sub_1D1E67C1C();

              MEMORY[0x1EEE9AC00](v238);
              *(&v366 - 64) = 1;
              v402 = v235;
              v239 = v430;
              *(&v366 - 7) = v235;
              *(&v366 - 6) = v239;
              *(&v366 - 5) = v409;
              *(&v366 - 32) = v233;
              v240 = v427;
              *(&v366 - 3) = v234;
              *(&v366 - 2) = v240;
              v241 = v461;
              v242 = sub_1D17893E4(sub_1D1CC7738, (&v366 - 10), v237);
              v408 = v241;

              v243 = *(v242 + 2);
              if (v243)
              {
                v481 = MEMORY[0x1E69E7CC0];
                sub_1D178D2D8(0, v243, 0);
                v244 = v481;
                v245 = *(v472 + 80);
                v461 = v242;
                v246 = &v242[(v245 + 32) & ~v245];
                v247 = *(v472 + 72);
                v248 = v424;
                v249 = v410;
                do
                {
                  v250 = *(v248 + 48);
                  sub_1D1CB2110(v246, v249 + v250, type metadata accessor for StaticService);
                  (v476)(v249, v249 + v250, v480);
                  v481 = v244;
                  v252 = *(v244 + 16);
                  v251 = *(v244 + 24);
                  if (v252 >= v251 >> 1)
                  {
                    sub_1D178D2D8(v251 > 1, v252 + 1, 1);
                    v248 = v424;
                    v244 = v481;
                  }

                  *(v244 + 16) = v252 + 1;
                  sub_1D1741A90(v249, v244 + ((*(v478 + 80) + 32) & ~*(v478 + 80)) + *(v478 + 72) * v252, &qword_1EC6436E8, &unk_1D1E71E40);
                  v246 += v247;
                  --v243;
                }

                while (v243);
              }

              else
              {

                v244 = MEMORY[0x1E69E7CC0];
              }

              v256 = v421;
              if (*(v244 + 16))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
                v257 = sub_1D1E68BCC();
                v258 = *(v244 + 16);
                v481 = v257;
                v461 = v258;
                if (v258)
                {
                  v259 = 0;
                  v460 = *(v424 + 48);
                  v161 = v244 + ((*(v478 + 80) + 32) & ~*(v478 + 80));
                  v459 = *(v478 + 72);
                  v260 = v480;
                  while (1)
                  {
                    sub_1D1741C08(v161, v256, &qword_1EC6436E8, &unk_1D1E71E40);
                    v261 = (v259 + 1);
                    if (__OFADD__(v259, 1))
                    {
                      break;
                    }

                    v262 = v475;
                    (v473)(v475, v256, v260);
                    sub_1D1CB2178(v256 + v460, v474, type metadata accessor for StaticService);
                    v264 = sub_1D1742188(v262);
                    v265 = v257[2];
                    v266 = (v263 & 1) == 0;
                    v267 = v265 + v266;
                    if (__OFADD__(v265, v266))
                    {
                      goto LABEL_115;
                    }

                    v268 = v263;
                    if (v257[3] < v267)
                    {
                      sub_1D1723194(v267, 1);
                      v269 = sub_1D1742188(v475);
                      if ((v268 & 1) != (v270 & 1))
                      {
                        sub_1D1E690FC();
                        __break(1u);
                        goto LABEL_119;
                      }

                      v264 = v269;
                    }

                    v257 = v481;
                    if (v268)
                    {
                      v468(v475, v480);
                      sub_1D1CC76B8(v474, v257[7] + *(v472 + 72) * v264, type metadata accessor for StaticService);
                    }

                    else
                    {
                      v481[(v264 >> 6) + 8] |= 1 << v264;
                      (v473)(v257[6] + *(v469 + 72) * v264, v475, v480);
                      sub_1D1CB2178(v474, v257[7] + *(v472 + 72) * v264, type metadata accessor for StaticService);
                      v271 = v257[2];
                      v272 = __OFADD__(v271, 1);
                      v273 = v271 + 1;
                      if (v272)
                      {
                        goto LABEL_116;
                      }

                      v257[2] = v273;
                    }

                    v161 += v459;
                    ++v259;
                    v260 = v480;
                    if (v261 == v461)
                    {

                      v274 = v408;
                      goto LABEL_77;
                    }
                  }

LABEL_114:
                  __break(1u);
LABEL_115:
                  __break(1u);
LABEL_116:
                  __break(1u);
                  goto LABEL_117;
                }
              }

              else
              {
                v257 = MEMORY[0x1E69E7CC8];
                v481 = MEMORY[0x1E69E7CC8];
              }

              v274 = v408;

LABEL_77:
              v275 = sub_1D1741A30(v449, &qword_1EC6436C8, &unk_1D1E97C40);
              MEMORY[0x1EEE9AC00](v275);
              *(&v366 - 2) = v450;
              *(&v366 - 1) = &v482;
              sub_1D1D3936C(sub_1D1CC7584, (&v366 - 4), v257);
              v461 = v274;
              v276 = *v374;
              v277 = v480;
              (*v374)(v435, 1, 1, v480);
              v278 = sub_1D1E669FC();
              v408 = *(v278 - 8);
              v279 = *(v408 + 7);
              v279(v439, 1, 1, v278);
              (*v370)(v443, 1, 1, v413);
              v280 = type metadata accessor for StaticDeviceMetadata();
              v459 = *(v280 - 8);
              v281 = *(v459 + 56);
              v460 = v280;
              v396 = (v459 + 56);
              v395 = v281;
              v281(v444, 1, 1);
              v400 = v279;
              v279(v440, 1, 1, v278);
              v276(v436, 1, 1, v277);
              v407 = v276;
              v276(v437, 1, 1, v277);
              v282 = type metadata accessor for StaticSoftwareUpdate(0);
              v397 = *(v282 - 8);
              v283 = *(v397 + 56);
              v406 = v282;
              v382 = v397 + 56;
              v381 = v283;
              v283(v446, 1, 1);
              v376(v433, 1, 1, v403);
              v284 = v415;
              sub_1D1741A90(v435, v415, &qword_1EC642590, qword_1D1E71260);
              v285 = v428;
              if (v428(v284, 1, v277) == 1)
              {
                (v476)(v431, v455, v277);
                if (v285(v284, 1, v277) != 1)
                {
                  sub_1D1741A30(v284, &qword_1EC642590, qword_1D1E71260);
                }
              }

              else
              {
                (v473)(v431, v284, v277);
              }

              v286 = v423;
              sub_1D1741A90(v439, v423, &qword_1EC642570, &qword_1D1E6C6A0);
              v287 = v408;
              v288 = *(v408 + 6);
              if (v288(v286, 1, v278) == 1)
              {
                sub_1D1741C08(v455 + v451[5], v441, &qword_1EC642570, &qword_1D1E6C6A0);
                if (v288(v286, 1, v278) != 1)
                {
                  sub_1D1741A30(v423, &qword_1EC642570, &qword_1D1E6C6A0);
                }
              }

              else
              {
                v289 = v441;
                (*(v287 + 4))(v441, v286, v278);
                v400(v289, 0, 1, v278);
              }

              v290 = v451;
              v291 = v451[7];
              v292 = v455;
              v398 = *(v455 + v451[6]);
              v293 = *(v455 + v291 + 8);
              v400 = *(v455 + v291);
              v294 = v418;
              sub_1D1741A90(v443, v418, &qword_1EC643C58, &unk_1D1E995D0);
              v295 = *v369;
              v296 = v413;
              v297 = (*v369)(v294, 1, v413);
              v399 = v293;
              if (v297 == 1)
              {
                sub_1D1CB2110(v292 + v290[8], v448, type metadata accessor for StaticAccessory.DeviceIdentifier);
                v298 = v295(v294, 1, v296);

                if (v298 != 1)
                {
                  sub_1D1741A30(v294, &qword_1EC643C58, &unk_1D1E995D0);
                }
              }

              else
              {
                sub_1D1CB2178(v294, v448, type metadata accessor for StaticAccessory.DeviceIdentifier);
              }

              v299 = v419;
              sub_1D1741A90(v444, v419, &qword_1EC644620, &unk_1D1E75A00);
              v300 = *(v459 + 48);
              v301 = v460;
              if (v300(v299, 1, v460) == 1)
              {
                v302 = v301;
                v303 = v455;
                sub_1D1741C08(v455 + v290[9], v445, &qword_1EC644620, &unk_1D1E75A00);
                if (v300(v299, 1, v302) != 1)
                {
                  sub_1D1741A30(v299, &qword_1EC644620, &unk_1D1E75A00);
                }
              }

              else
              {
                v304 = v299;
                v305 = v445;
                sub_1D1CB2178(v304, v445, type metadata accessor for StaticDeviceMetadata);
                v395(v305, 0, 1, v301);
                v303 = v455;
              }

              sub_1D1741A90(v440, v442, &qword_1EC642570, &qword_1D1E6C6A0);
              LODWORD(v396) = *(v303 + v290[11]);
              v306 = v416;
              sub_1D1741A90(v436, v416, &qword_1EC642590, qword_1D1E71260);
              v307 = v303;
              v308 = v480;
              v309 = v428;
              v310 = v428(v306, 1, v480);
              v311 = v417;
              if (v310 == 1)
              {
                (v476)(v432, v307 + v290[12], v308);
                if (v309(v306, 1, v308) != 1)
                {
                  sub_1D1741A30(v306, &qword_1EC642590, qword_1D1E71260);
                }
              }

              else
              {
                (v473)(v432, v306, v308);
              }

              v312 = v290[14];
              v313 = v455;
              v460 = *(v455 + v290[13]);
              v314 = *(v455 + v312 + 8);
              v395 = *(v455 + v312);
              v315 = v290[16];
              v391 = *(v455 + v290[15]);
              v392 = *(v455 + v315);
              v316 = v290[18];
              v388 = *(v455 + v290[17]);
              v390 = *(v455 + v316);
              v389 = *(v455 + v290[19]);
              v317 = *(v455 + v290[21]);
              sub_1D1741A90(v437, v311, &qword_1EC642590, qword_1D1E71260);
              v318 = v428;
              v319 = v428(v311, 1, v308);
              v394 = v314;
              v393 = v317;
              if (v319 == 1)
              {
                sub_1D1741C08(v313 + v290[22], v438, &qword_1EC642590, qword_1D1E71260);
                v320 = v318(v311, 1, v308);

                if (v320 != 1)
                {
                  sub_1D1741A30(v311, &qword_1EC642590, qword_1D1E71260);
                }
              }

              else
              {
                v321 = v438;
                (v473)(v438, v311, v308);
                v407(v321, 0, 1, v308);
              }

              v322 = v290[24];
              v323 = v455;
              v324 = v455 + v290[23];
              v459 = *v324;
              LODWORD(v428) = *(v324 + 8);
              v325 = v290[26];
              v408 = *(v455 + v290[25]);
              v387 = *(v455 + v325);
              v326 = v290[28];
              v386 = *(v455 + v290[27]);
              v327 = *(v455 + v322 + 8);
              v383 = *(v455 + v322);
              v407 = v327;
              v385 = *(v455 + v326);
              v384 = *(v455 + v290[29]);
              v328 = v420;
              sub_1D1741A90(v446, v420, &qword_1EC644760, &unk_1D1E9E530);
              v329 = *(v397 + 48);
              v330 = v406;
              if (v329(v328, 1, v406) == 1)
              {
                sub_1D1741C08(v323 + v290[30], v447, &qword_1EC644760, &unk_1D1E9E530);
                v331 = v329(v328, 1, v330);
                sub_1D18EB144(v459, v428);

                if (v331 != 1)
                {
                  sub_1D1741A30(v328, &qword_1EC644760, &unk_1D1E9E530);
                }
              }

              else
              {
                v332 = v447;
                sub_1D1CB2178(v328, v447, type metadata accessor for StaticSoftwareUpdate);
                v381(v332, 0, 1, v330);
                sub_1D18EB144(v459, v428);
              }

              v333 = v290[32];
              LODWORD(v382) = *(v323 + v290[31]);
              LODWORD(v397) = *(v323 + v333);
              v334 = v290[34];
              v406 = *(v323 + v290[33]);
              LODWORD(v381) = *(v323 + v334);
              v335 = v290[36];
              v377 = *(v323 + v290[35]);
              v380 = *(v323 + v335);
              v379 = *(v323 + v335 + 8);
              v378 = *(v323 + v290[37]);
              v336 = v422;
              sub_1D1741A90(v433, v422, &qword_1EC643650, &qword_1D1E71D40);
              v337 = *v368;
              v338 = v403;
              if ((*v368)(v336, 1, v403) == 1)
              {
                sub_1D1741C08(v323 + v290[38], v434, &qword_1EC643650, &qword_1D1E71D40);
                v339 = v337(v336, 1, v338);

                if (v339 != 1)
                {
                  sub_1D1741A30(v422, &qword_1EC643650, &qword_1D1E71D40);
                }
              }

              else
              {
                v340 = v434;
                sub_1D1CB2178(v336, v434, type metadata accessor for StaticMatterDevice);
                v376(v340, 0, 1, v338);
              }

              v341 = v414;
              v342 = v473;
              (v473)(v414, v431, v480);
              v343 = v451;
              sub_1D1741A90(v441, v341 + v451[5], &qword_1EC642570, &qword_1D1E6C6A0);
              *(v341 + v343[6]) = v398;
              v344 = (v341 + v343[7]);
              v345 = v399;
              *v344 = v400;
              v344[1] = v345;
              sub_1D1CB2178(v448, v341 + v343[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
              sub_1D1741A90(v445, v341 + v343[9], &qword_1EC644620, &unk_1D1E75A00);
              sub_1D1741A90(v442, v341 + v343[10], &qword_1EC642570, &qword_1D1E6C6A0);
              *(v341 + v343[11]) = v396;
              v346 = v480;
              v342(v341 + v343[12], v432, v480);
              *(v341 + v343[13]) = v460;
              v347 = (v341 + v343[14]);
              v348 = v394;
              *v347 = v395;
              v347[1] = v348;
              *(v341 + v343[15]) = v391;
              *(v341 + v343[16]) = v392;
              *(v341 + v343[17]) = v388;
              *(v341 + v343[18]) = v390;
              *(v341 + v343[19]) = v389;
              *(v341 + v343[20]) = v257;
              *(v341 + v343[21]) = v393;
              sub_1D1741A90(v438, v341 + v343[22], &qword_1EC642590, qword_1D1E71260);
              v349 = v341 + v343[23];
              *v349 = v459;
              *(v349 + 8) = v428;
              v350 = (v341 + v343[24]);
              v351 = v407;
              *v350 = v383;
              v350[1] = v351;
              *(v341 + v343[25]) = v408;
              *(v341 + v343[26]) = v387;
              *(v341 + v343[27]) = v386;
              *(v341 + v343[28]) = v385;
              *(v341 + v343[29]) = v384;
              sub_1D1741A90(v447, v341 + v343[30], &qword_1EC644760, &unk_1D1E9E530);
              *(v341 + v343[31]) = v382;
              *(v341 + v343[32]) = v397;
              *(v341 + v343[33]) = v406;
              *(v341 + v343[34]) = v381;
              *(v341 + v343[35]) = v377;
              v352 = v341 + v343[36];
              *v352 = v380;
              *(v352 + 8) = v379;
              *(v341 + v343[37]) = v378;
              sub_1D1741A90(v434, v341 + v343[38], &qword_1EC643650, &qword_1D1E71D40);
              v353 = v462;
              v354 = v346;
              (v476)(v462, v341, v346);
              v355 = v425;
              sub_1D1CB2110(v341, v425, type metadata accessor for StaticAccessory);
              v404(v355, 0, 1, v343);
              sub_1D1B0CF04(v355, v353);

              sub_1D1CB2248(v341, type metadata accessor for StaticAccessory);
              v222 = v354;
              sub_1D1CB2248(v455, type metadata accessor for StaticAccessory);
              v205 = v468;
              v468(v452, v354);
              v161 = v463;
              v204 = v466;
            }

            else
            {
              sub_1D1CB2248(v227, type metadata accessor for StaticAccessory);
              v255 = v223;
              v222 = v480;
              v205 = v468;
              v468(v255, v480);
              v204 = v466;
            }
          }

          else
          {
            v253 = v223;
            v205 = v468;
            v468(v253, v222);
          }
        }

        v205(v204, v222);
        v197 = v457;
        v202 = v456;
        v201 = v470;
        v203 = v471;
      }

      if (v202 <= (v147 + 1))
      {
        v207 = v147 + 1;
      }

      else
      {
        v207 = v202;
      }

      v208 = v207 - 1;
      while (1)
      {
        v206 = (v147 + 1);
        if (__OFADD__(v147, 1))
        {
          break;
        }

        if (v206 >= v202)
        {
          v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
          (*(*(v254 - 8) + 56))(v203, 1, 1, v254);
          v470 = 0;
          v147 = v208;
          goto LABEL_46;
        }

        v201 = *&v197[2 * v206];
        ++v147;
        if (v201)
        {
          v147 = v206;
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_114;
    }
  }
}

uint64_t sub_1D1CAB6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v68 = a2;
  v75 = type metadata accessor for StaticService(0);
  v4 = *(v75 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CF48, &unk_1D1EA2F90);
  v7 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v60 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v63 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v62 = &v60 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v60 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v60 - v29;
  sub_1D1741C08(a1, v19, &qword_1EC642DB0, &unk_1D1E6F360);
  v72 = v9;
  v31 = *(v9 + 48);
  v70 = v19;
  sub_1D1CB2178(&v19[v31], v30, type metadata accessor for StaticService);
  v32 = v4;
  v33 = v4 + 56;
  v34 = *(v4 + 56);
  v35 = 1;
  v36 = v75;
  v73 = v34;
  v74 = v33;
  (v34)(v30, 0, 1);
  v37 = *(v68 + *(type metadata accessor for StateSnapshot(0) + 60));
  v68 = a1;
  sub_1D1741C08(a1, v17, &qword_1EC642DB0, &unk_1D1E6F360);
  v38 = *(v37 + 16);
  v71 = v17;
  if (v38)
  {
    v39 = sub_1D1742188(v17);
    if (v40)
    {
      sub_1D1CB2110(*(v37 + 56) + *(v32 + 72) * v39, v28, type metadata accessor for StaticService);
      v35 = 0;
    }
  }

  v41 = v67;
  v73(v28, v35, 1, v36);
  v42 = *(v69 + 48);
  sub_1D1741C08(v30, v41, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1741C08(v28, v41 + v42, &qword_1EC6436F0, &qword_1D1E99BC0);
  v43 = *(v32 + 48);
  if (v43(v41, 1, v36) == 1)
  {
    sub_1D1741A30(v28, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v30, &qword_1EC6436F0, &qword_1D1E99BC0);
    v44 = v43(v41 + v42, 1, v36);
    v45 = v71;
    if (v44 == 1)
    {
      sub_1D1741A30(v41, &qword_1EC6436F0, &qword_1D1E99BC0);
      v46 = 1;
      v47 = v72;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v48 = v62;
  sub_1D1741C08(v41, v62, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v43(v41 + v42, 1, v36) == 1)
  {
    sub_1D1741A30(v28, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741A30(v30, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1CB2248(v48, type metadata accessor for StaticService);
    v45 = v71;
LABEL_9:
    sub_1D1741A30(v41, &qword_1EC64CF48, &unk_1D1EA2F90);
    v46 = 0;
    v47 = v72;
    goto LABEL_11;
  }

  v49 = v61;
  sub_1D1CB2178(v41 + v42, v61, type metadata accessor for StaticService);
  v50 = v48;
  v46 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v48, v49);
  sub_1D1CB2248(v49, type metadata accessor for StaticService);
  sub_1D1741A30(v28, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1741A30(v30, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1CB2248(v50, type metadata accessor for StaticService);
  sub_1D1741A30(v41, &qword_1EC6436F0, &qword_1D1E99BC0);
  v45 = v71;
  v47 = v72;
LABEL_11:
  sub_1D1CB2248(&v45[*(v47 + 48)], type metadata accessor for StaticService);
  v51 = sub_1D1E66A7C();
  v52 = *(*(v51 - 8) + 8);
  v52(v45, v51);
  result = (v52)(v70, v51);
  if (!v46)
  {
    v54 = v68;
    v55 = v65;
    sub_1D1741C08(v68, v65, &qword_1EC642DB0, &unk_1D1E6F360);
    v56 = *(v47 + 48);
    v57 = v54;
    v58 = v64;
    sub_1D1741C08(v57, v64, &qword_1EC642DB0, &unk_1D1E6F360);
    v59 = v63;
    sub_1D1CB2178(v58 + *(v47 + 48), v63, type metadata accessor for StaticService);
    v73(v59, 0, 1, v75);
    sub_1D1B0D124(v59, v55);
    v52(v58, v51);
    return sub_1D1CB2248(v55 + v56, type metadata accessor for StaticService);
  }

  return result;
}

uint64_t sub_1D1CABDE0(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1D1CABEEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a5;
  v98 = a4;
  v91 = a3;
  v100 = a2;
  v101 = a6;
  v7 = sub_1D1E66A7C();
  v96 = *(v7 - 8);
  v97 = v7;
  v8 = *(v96 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v90 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v89 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v89 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C5F8, &qword_1D1E9FA00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v89 - v27;
  v29 = type metadata accessor for StaticHH2Update(0);
  v30 = *(v29 - 1);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v89 - v35;
  sub_1D1741C08(a1, v28, &qword_1EC64C5F8, &qword_1D1E9FA00);
  v99 = v30;
  v37 = *(v30 + 48);
  if (v37(v28, 1, v29) != 1)
  {
    sub_1D1CB2178(v28, v36, type metadata accessor for StaticHH2Update);
    v38 = v100;
    if (!v100)
    {
      sub_1D1CB2248(v36, type metadata accessor for StaticHH2Update);
      goto LABEL_9;
    }

    v39 = v36;
    if (v91)
    {
      v40 = v91;
      v41 = v38;
      v42 = [v40 licenseAgreement];
      v44 = v96;
      v43 = v97;
      v45 = v94;
      if (v42)
      {

        v46 = v40;
        v47 = [v46 releaseNotes];
        if (v47 || (v47 = [v46 releaseNotesSummary]) != 0)
        {
          v71 = v47;
          v72 = [v47 stringValue];
          v95 = sub_1D1E6781C();
          v70 = v73;

          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v59 = v100;
      v44 = v96;
      v43 = v97;
      v45 = v94;
    }

    v69 = (v39 + v29[6]);
    v70 = v69[1];
    if (v70 >= 2)
    {
      v95 = *v69;

      goto LABEL_27;
    }

LABEL_23:
    v95 = 0;
    v70 = 0;
LABEL_27:
    v74 = v38;
    sub_1D1D2EF78(v74, [v98 softwareVersion], &v102);
    v75 = v102;
    v76 = v102;
    v77 = v92;
    (*(v44 + 56))(v92, 1, 1, v43);
    v78 = *(v39 + v29[5]);
    if ((((v78 - 8) < 0xFAu) & v78 & (v76 == 5)) != 0)
    {
      v75 = *(v39 + v29[5]);
    }

    if (!v70)
    {
      v79 = (v39 + v29[6]);
      v70 = v79[1];
      v95 = *v79;
      sub_1D18614CC(v95, v70);
    }

    v80 = v77;
    v81 = v93;
    sub_1D1741A90(v80, v93, &qword_1EC642590, qword_1D1E71260);
    v82 = *(v44 + 48);
    if (v82(v81, 1, v43) == 1)
    {
      (*(v44 + 16))(v45, v39, v43);
      if (v82(v81, 1, v43) != 1)
      {
        sub_1D1741A30(v81, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v44 + 32))(v45, v81, v43);
    }

    v83 = v39 + v29[7];
    v84 = *v83;
    v85 = *(v83 + 8);
    sub_1D1CB2248(v39, type metadata accessor for StaticHH2Update);
    v86 = v101;
    (*(v44 + 32))(v101, v45, v43);
    *(v86 + v29[5]) = v75;
    v87 = (v86 + v29[6]);
    *v87 = v95;
    v87[1] = v70;
    v88 = v86 + v29[7];
    *v88 = v84;
    *(v88 + 8) = v85;
    v67 = *(v99 + 56);
    v68 = v86;
    return v67(v68, 0, 1, v29);
  }

  sub_1D1741A30(v28, &qword_1EC64C5F8, &qword_1D1E9FA00);
  v38 = v100;
LABEL_9:
  sub_1D1741C08(a1, v26, &qword_1EC64C5F8, &qword_1D1E9FA00);
  if (v37(v26, 1, v29) == 1)
  {
    sub_1D1741A30(v26, &qword_1EC64C5F8, &qword_1D1E9FA00);
    if (v38)
    {
LABEL_11:
      v48 = v38;
      v49 = v98;
      return sub_1D1D269CC(v48, v49, v101);
    }

    return (*(v99 + 56))(v101, 1, 1, v29);
  }

  sub_1D1CB2178(v26, v34, type metadata accessor for StaticHH2Update);
  v51 = v95;
  if (!v95)
  {
    sub_1D1CB2248(v34, type metadata accessor for StaticHH2Update);
    if (v38)
    {
      goto LABEL_11;
    }

    return (*(v99 + 56))(v101, 1, 1, v29);
  }

  v53 = v96;
  v52 = v97;
  (*(v96 + 56))(v18, 1, 1, v97);
  [v51 percentageComplete];
  v55 = v54;
  v56 = v89;
  sub_1D1741A90(v18, v89, &qword_1EC642590, qword_1D1E71260);
  v57 = *(v53 + 48);
  if (v57(v56, 1, v52) == 1)
  {
    v58 = v90;
    (*(v53 + 16))(v90, v34, v52);
    if (v57(v56, 1, v52) != 1)
    {
      sub_1D1741A30(v56, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v58 = v90;
    (*(v53 + 32))(v90, v56, v52);
  }

  v60 = v29[6];
  v61 = v34[v29[5]];
  v62 = *&v34[v60];
  v63 = *&v34[v60 + 8];
  sub_1D18614CC(v62, v63);
  sub_1D1CB2248(v34, type metadata accessor for StaticHH2Update);
  v64 = v101;
  (*(v53 + 32))(v101, v58, v52);
  *(v64 + v29[5]) = v61;
  v65 = (v64 + v29[6]);
  *v65 = v62;
  v65[1] = v63;
  v66 = v64 + v29[7];
  *v66 = v55;
  *(v66 + 8) = 0;
  v67 = *(v99 + 56);
  v68 = v64;
  return v67(v68, 0, 1, v29);
}

uint64_t sub_1D1CAC7EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v763 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v672 = &v645 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v673 = &v645 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v722 = &v645 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v760 = &v645 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v761 = &v645 - v17;
  v777 = type metadata accessor for StaticService(0);
  v759 = *(v777 - 1);
  v18 = *(v759 + 64);
  v19 = MEMORY[0x1EEE9AC00](v777);
  v674 = &v645 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v675 = &v645 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v723 = &v645 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643770, &qword_1D1E71EC8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v755 = &v645 - v26;
  v776 = type metadata accessor for StaticMediaSystem();
  v754 = *(v776 - 1);
  v27 = *(v754 + 64);
  v28 = MEMORY[0x1EEE9AC00](v776);
  v704 = &v645 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v705 = &v645 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v765 = &v645 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v746 = &v645 - v35;
  v773 = type metadata accessor for StaticMediaProfile();
  v745 = *(v773 - 1);
  v36 = *(v745 + 64);
  v37 = MEMORY[0x1EEE9AC00](v773);
  v699 = &v645 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v700 = &v645 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v764 = &v645 - v41;
  v42 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v770 = *(v42 - 8);
  v771 = v42;
  v43 = *(v770 + 8);
  MEMORY[0x1EEE9AC00](v42);
  v740 = &v645 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v687 = &v645 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v774 = &v645 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v738 = &v645 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v671 = &v645 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v721 = &v645 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v716 = &v645 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v702 = &v645 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v758 = &v645 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v757 = &v645 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v695 = &v645 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v696 = &v645 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v749 = &v645 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v686 = &v645 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v739 = &v645 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v735 = (&v645 - v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v78 = *(*(v77 - 8) + 64);
  v79 = MEMORY[0x1EEE9AC00](v77 - 8);
  v666 = &v645 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v720 = &v645 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v708 = &v645 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v684 = &v645 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v737 = &v645 - v88;
  MEMORY[0x1EEE9AC00](v87);
  v731 = (&v645 - v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v91 = *(*(v90 - 8) + 64);
  v92 = MEMORY[0x1EEE9AC00](v90 - 8);
  v692 = &v645 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v750 = &v645 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v747 = (&v645 - v97);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v683 = &v645 - v99;
  MEMORY[0x1EEE9AC00](v98);
  v728 = (&v645 - v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v102 = *(*(v101 - 8) + 64);
  v103 = MEMORY[0x1EEE9AC00](v101 - 8);
  v668 = &v645 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x1EEE9AC00](v103);
  v719 = &v645 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v665 = &v645 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v718 = &v645 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v709 = &v645 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v706 = &v645 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v698 = &v645 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v756 = &v645 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v697 = &v645 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v691 = &v645 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v748 = (&v645 - v124);
  v125 = MEMORY[0x1EEE9AC00](v123);
  v742 = &v645 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v736 = &v645 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v679 = &v645 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v734 = (&v645 - v132);
  v133 = MEMORY[0x1EEE9AC00](v131);
  v729 = &v645 - v134;
  MEMORY[0x1EEE9AC00](v133);
  v725 = &v645 - v135;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v137 = *(*(v136 - 8) + 64);
  v138 = MEMORY[0x1EEE9AC00](v136 - 8);
  v670 = &v645 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = MEMORY[0x1EEE9AC00](v138);
  v717 = &v645 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v669 = &v645 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v715 = &v645 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v667 = &v645 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v714 = &v645 - v149;
  v150 = MEMORY[0x1EEE9AC00](v148);
  v664 = &v645 - v151;
  v152 = MEMORY[0x1EEE9AC00](v150);
  v663 = &v645 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v711 = &v645 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v710 = &v645 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v707 = &v645 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v703 = &v645 - v161;
  v162 = MEMORY[0x1EEE9AC00](v160);
  v662 = &v645 - v163;
  v164 = MEMORY[0x1EEE9AC00](v162);
  v701 = &v645 - v165;
  v166 = MEMORY[0x1EEE9AC00](v164);
  v694 = &v645 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v753 = &v645 - v169;
  v170 = MEMORY[0x1EEE9AC00](v168);
  v693 = &v645 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v690 = &v645 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v689 = &v645 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v741 = &v645 - v177;
  v178 = MEMORY[0x1EEE9AC00](v176);
  v688 = &v645 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v681 = &v645 - v181;
  v182 = MEMORY[0x1EEE9AC00](v180);
  v733 = &v645 - v183;
  v184 = MEMORY[0x1EEE9AC00](v182);
  v680 = &v645 - v185;
  v186 = MEMORY[0x1EEE9AC00](v184);
  v678 = &v645 - v187;
  v188 = MEMORY[0x1EEE9AC00](v186);
  v727 = &v645 - v189;
  v190 = MEMORY[0x1EEE9AC00](v188);
  v726 = (&v645 - v191);
  MEMORY[0x1EEE9AC00](v190);
  v724 = &v645 - v192;
  v193 = type metadata accessor for StaticAccessory(0);
  v677 = *(v193 - 1);
  v194 = *(v677 + 8);
  v195 = MEMORY[0x1EEE9AC00](v193);
  v685 = &v645 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = MEMORY[0x1EEE9AC00](v195);
  v199 = &v645 - v198;
  v200 = MEMORY[0x1EEE9AC00](v197);
  v676 = &v645 - v201;
  MEMORY[0x1EEE9AC00](v200);
  v682 = &v645 - v202;
  v203 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v204 = *(*(v203 - 8) + 64);
  MEMORY[0x1EEE9AC00](v203);
  v206 = &v645 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for StaticHH2Update(0);
  v208 = *(*(v207 - 8) + 64);
  v209 = MEMORY[0x1EEE9AC00](v207 - 8);
  v211 = &v645 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v209);
  v213 = &v645 - v212;
  v214 = sub_1D1E66A7C();
  v215 = *(*(v214 - 8) + 64);
  v216 = MEMORY[0x1EEE9AC00](v214);
  v713 = &v645 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = MEMORY[0x1EEE9AC00](v216);
  v712 = &v645 - v219;
  v220 = MEMORY[0x1EEE9AC00](v218);
  v752 = &v645 - v221;
  v222 = MEMORY[0x1EEE9AC00](v220);
  v751 = &v645 - v223;
  v224 = MEMORY[0x1EEE9AC00](v222);
  v744 = &v645 - v225;
  v226 = MEMORY[0x1EEE9AC00](v224);
  v743 = &v645 - v227;
  v228 = MEMORY[0x1EEE9AC00](v226);
  v732 = &v645 - v229;
  v230 = MEMORY[0x1EEE9AC00](v228);
  v730 = &v645 - v231;
  MEMORY[0x1EEE9AC00](v230);
  v233 = &v645 - v232;
  v780 = v234;
  v781 = v235;
  v766 = *(v235 + 16);
  v767 = v235 + 16;
  v766(&v645 - v232, a1);
  v779 = type metadata accessor for StateSnapshot(0);
  v236 = a2;
  v237 = *(a2 + v779[18]);
  v778 = type metadata accessor for StaticSoftwareUpdate(0);
  v238 = *(v778 + 20);
  v768 = a1;
  sub_1D1CB2110(a1 + v238, v206, type metadata accessor for StaticSoftwareUpdate.Kind);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1D1CB2248(v206, type metadata accessor for StaticSoftwareUpdate.Kind);
  }

  else
  {
    sub_1D1CB2178(v206, v213, type metadata accessor for StaticHH2Update);
    sub_1D1CB2110(v213, v211, type metadata accessor for StaticHH2Update);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v782 = v237;
    sub_1D175346C(v211, v233, isUniquelyReferenced_nonNull_native);
    sub_1D1CB2248(v213, type metadata accessor for StaticHH2Update);
    v237 = v782;
  }

  v762 = v237;
  v240 = v236;
  v241 = *(v236 + v779[8]);
  v242 = *(v241 + 16);

  v769 = v236;
  v775 = v233;
  if (v242)
  {
    v243 = sub_1D1742188(v233);
    v244 = v773;
    if ((v245 & 1) == 0)
    {
      goto LABEL_40;
    }

    v772 = v241;
    v246 = v676;
    sub_1D1CB2110(*(v241 + 56) + *(v677 + 9) * v243, v676, type metadata accessor for StaticAccessory);
    v247 = v682;
    sub_1D1CB2178(v246, v682, type metadata accessor for StaticAccessory);
    v249 = v780;
    v248 = v781;
    v251 = v781 + 56;
    v250 = *(v781 + 56);
    v250(v724, 1, 1, v780);
    v252 = sub_1D1E669FC();
    v657 = *(v252 - 8);
    v254 = v657 + 56;
    v253 = *(v657 + 56);
    v253(v725, 1, 1, v252);
    (*(v770 + 7))(v728, 1, 1, v771);
    v255 = type metadata accessor for StaticDeviceMetadata();
    v658 = *(v255 - 8);
    v256 = *(v658 + 56);
    v659 = v255;
    v656 = v658 + 56;
    v653 = v256;
    (v256)(v731, 1, 1);
    v652 = v253;
    v649 = v254;
    v253(v729, 1, 1, v252);
    v250(v726, 1, 1, v249);
    v655 = v251;
    v654 = v250;
    v250(v727, 1, 1, v249);
    v257 = v735;
    sub_1D1CB2110(v768, v735, type metadata accessor for StaticSoftwareUpdate);
    v660 = *(v778 - 8);
    v258 = *(v660 + 56);
    v651 = v660 + 56;
    v650 = v258;
    (v258)(v257, 0, 1);
    v259 = type metadata accessor for StaticMatterDevice();
    v661 = *(v259 - 8);
    v260 = *(v661 + 56);
    v676 = v259;
    v647 = v661 + 56;
    v646 = v260;
    (v260)(v738, 1, 1);
    v261 = v678;
    sub_1D1741A90(v724, v678, &qword_1EC642590, qword_1D1E71260);
    v262 = *(v248 + 48);
    v263 = v262(v261, 1, v249);
    v677 = v262;
    v724 = v248 + 48;
    if (v263 == 1)
    {
      (v766)(v730, v247, v249);
      if (v262(v261, 1, v249) != 1)
      {
        sub_1D1741A30(v261, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v248 + 32))(v730, v261, v249);
    }

    v264 = v679;
    sub_1D1741A90(v725, v679, &qword_1EC642570, &qword_1D1E6C6A0);
    v265 = v657;
    v266 = *(v657 + 48);
    if (v266(v264, 1, v252) == 1)
    {
      sub_1D1741C08(v247 + v193[5], v734, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v266(v264, 1, v252) != 1)
      {
        sub_1D1741A30(v264, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v267 = v734;
      (*(v265 + 32))(v734, v264, v252);
      v652(v267, 0, 1, v252);
    }

    v268 = v193[7];
    LODWORD(v679) = *(v247 + v193[6]);
    v269 = *(v247 + v268 + 8);
    v725 = *(v247 + v268);
    v270 = v683;
    sub_1D1741A90(v728, v683, &qword_1EC643C58, &unk_1D1E995D0);
    v271 = v771;
    v272 = *(v770 + 6);
    v273 = v272(v270, 1, v771);
    v274 = v780;
    if (v273 == 1)
    {
      sub_1D1CB2110(v247 + v193[8], v740, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v275 = v272(v270, 1, v271);

      if (v275 != 1)
      {
        sub_1D1741A30(v270, &qword_1EC643C58, &unk_1D1E995D0);
      }
    }

    else
    {
      sub_1D1CB2178(v270, v740, type metadata accessor for StaticAccessory.DeviceIdentifier);
    }

    v276 = v684;
    sub_1D1741A90(v731, v684, &qword_1EC644620, &unk_1D1E75A00);
    v277 = *(v658 + 48);
    v278 = v659;
    if (v277(v276, 1, v659) == 1)
    {
      sub_1D1741C08(v247 + v193[9], v737, &qword_1EC644620, &unk_1D1E75A00);
      if (v277(v276, 1, v278) != 1)
      {
        sub_1D1741A30(v276, &qword_1EC644620, &unk_1D1E75A00);
      }
    }

    else
    {
      v279 = v737;
      sub_1D1CB2178(v276, v737, type metadata accessor for StaticDeviceMetadata);
      v653(v279, 0, 1, v278);
    }

    sub_1D1741A90(v729, v736, &qword_1EC642570, &qword_1D1E6C6A0);
    LODWORD(v684) = *(v247 + v193[11]);
    v280 = v680;
    sub_1D1741A90(v726, v680, &qword_1EC642590, qword_1D1E71260);
    v281 = v677;
    if (v677(v280, 1, v274) == 1)
    {
      (v766)(v732, v247 + v193[12], v274);
      v282 = v281(v280, 1, v274);
      v283 = v681;
      v284 = v274;
      if (v282 != 1)
      {
        sub_1D1741A30(v280, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v781 + 32))(v732, v280, v274);
      v283 = v681;
      v284 = v274;
    }

    v728 = v269;
    v285 = v193[14];
    v731 = *(v247 + v193[13]);
    v286 = v193[16];
    LODWORD(v683) = *(v247 + v193[15]);
    LODWORD(v726) = *(v247 + v286);
    v287 = v193[18];
    LODWORD(v680) = *(v247 + v193[17]);
    LODWORD(v681) = *(v247 + v287);
    v288 = v193[20];
    LODWORD(v678) = *(v247 + v193[19]);
    v289 = *(v247 + v285 + 8);
    v658 = *(v247 + v285);
    v290 = *(v247 + v288);
    v291 = *(v247 + v193[21]);
    sub_1D1741A90(v727, v283, &qword_1EC642590, qword_1D1E71260);
    v292 = v677;
    v293 = v677(v283, 1, v284);
    v659 = v290;
    v657 = v289;
    v656 = v291;
    if (v293 == 1)
    {
      sub_1D1741C08(v247 + v193[22], v733, &qword_1EC642590, qword_1D1E71260);
      v294 = v292(v283, 1, v284);

      if (v294 != 1)
      {
        sub_1D1741A30(v283, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v295 = v733;
      (*(v781 + 32))(v733, v283, v284);
      v654(v295, 0, 1, v284);
    }

    v296 = v193[24];
    v297 = v247 + v193[23];
    v298 = *v297;
    v299 = *(v297 + 8);
    v300 = v193[26];
    v729 = *(v247 + v193[25]);
    LODWORD(v724) = *(v247 + v300);
    v301 = v193[28];
    LODWORD(v677) = *(v247 + v193[27]);
    v302 = *(v247 + v296 + 8);
    v653 = *(v247 + v296);
    LODWORD(v655) = *(v247 + v301);
    LODWORD(v654) = *(v247 + v193[29]);
    v303 = v686;
    sub_1D1741A90(v735, v686, &qword_1EC644760, &unk_1D1E9E530);
    v304 = *(v660 + 48);
    v305 = v778;
    v306 = v304(v303, 1, v778);
    v727 = v298;
    v648 = v299;
    if (v306 == 1)
    {
      sub_1D1741C08(v247 + v193[30], v739, &qword_1EC644760, &unk_1D1E9E530);
      v307 = v304(v303, 1, v305);
      sub_1D18EB144(v298, v299);

      v308 = v307 == 1;
      v309 = v676;
      v310 = v303;
      v311 = v302;
      if (!v308)
      {
        sub_1D1741A30(v310, &qword_1EC644760, &unk_1D1E9E530);
      }
    }

    else
    {
      v312 = v739;
      sub_1D1CB2178(v303, v739, type metadata accessor for StaticSoftwareUpdate);
      v650(v312, 0, 1, v305);
      sub_1D18EB144(v298, v299);

      v309 = v676;
      v311 = v302;
    }

    v313 = v193[32];
    LODWORD(v686) = *(v247 + v193[31]);
    LODWORD(v735) = *(v247 + v313);
    v314 = *(v247 + v193[33]);
    LODWORD(v676) = *(v247 + v193[34]);
    v315 = v193[36];
    LODWORD(v649) = *(v247 + v193[35]);
    v660 = *(v247 + v315);
    LODWORD(v651) = *(v247 + v315 + 8);
    LODWORD(v650) = *(v247 + v193[37]);
    v316 = v687;
    sub_1D1741A90(v738, v687, &qword_1EC643650, &qword_1D1E71D40);
    v317 = *(v661 + 48);
    v318 = v317(v316, 1, v309);
    v652 = v311;
    if (v318 == 1)
    {
      v319 = v648;
      sub_1D1741C08(v247 + v193[38], v774, &qword_1EC643650, &qword_1D1E71D40);
      v320 = v317(v316, 1, v309);

      v321 = v316;
      v322 = v314;
      if (v320 != 1)
      {
        sub_1D1741A30(v321, &qword_1EC643650, &qword_1D1E71D40);
      }
    }

    else
    {
      v319 = v648;
      v323 = v774;
      sub_1D1CB2178(v316, v774, type metadata accessor for StaticMatterDevice);
      v646(v323, 0, 1, v309);

      v322 = v314;
    }

    v324 = v780;
    v325 = *(v781 + 32);
    v325(v199, v730, v780);
    sub_1D1741A90(v734, &v199[v193[5]], &qword_1EC642570, &qword_1D1E6C6A0);
    v199[v193[6]] = v679;
    v326 = &v199[v193[7]];
    v327 = v728;
    *v326 = v725;
    *(v326 + 1) = v327;
    sub_1D1CB2178(v740, &v199[v193[8]], type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1741A90(v737, &v199[v193[9]], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1741A90(v736, &v199[v193[10]], &qword_1EC642570, &qword_1D1E6C6A0);
    v199[v193[11]] = v684;
    v325(&v199[v193[12]], v732, v324);
    *&v199[v193[13]] = v731;
    v328 = &v199[v193[14]];
    v329 = v657;
    *v328 = v658;
    *(v328 + 1) = v329;
    v199[v193[15]] = v683;
    v199[v193[16]] = v726;
    v199[v193[17]] = v680;
    v199[v193[18]] = v681;
    v199[v193[19]] = v678;
    *&v199[v193[20]] = v659;
    *&v199[v193[21]] = v656;
    sub_1D1741A90(v733, &v199[v193[22]], &qword_1EC642590, qword_1D1E71260);
    v330 = &v199[v193[23]];
    *v330 = v727;
    v330[8] = v319;
    v331 = &v199[v193[24]];
    v332 = v652;
    *v331 = v653;
    *(v331 + 1) = v332;
    *&v199[v193[25]] = v729;
    v199[v193[26]] = v724;
    v199[v193[27]] = v677;
    v199[v193[28]] = v655;
    v199[v193[29]] = v654;
    sub_1D1741A90(v739, &v199[v193[30]], &qword_1EC644760, &unk_1D1E9E530);
    v199[v193[31]] = v686;
    v199[v193[32]] = v735;
    *&v199[v193[33]] = v322;
    v199[v193[34]] = v676;
    v199[v193[35]] = v649;
    v333 = &v199[v193[36]];
    *v333 = v660;
    v333[8] = v651;
    v199[v193[37]] = v650;
    sub_1D1741A90(v774, &v199[v193[38]], &qword_1EC643650, &qword_1D1E71D40);
    v334 = v685;
    sub_1D1CB2110(v199, v685, type metadata accessor for StaticAccessory);
    v335 = v772;
    v336 = swift_isUniquelyReferenced_nonNull_native();
    v782 = v335;
    v233 = v775;
    sub_1D1753298(v334, v775, v336);
    sub_1D1CB2248(v199, type metadata accessor for StaticAccessory);
    sub_1D1CB2248(v247, type metadata accessor for StaticAccessory);
    v241 = v782;
    v240 = v769;
  }

  v244 = v773;
LABEL_40:
  v337 = *(v240 + v779[12]);
  swift_bridgeObjectRetain_n();
  v774 = v337;
  v338 = sub_1D178166C(v337);
  MEMORY[0x1EEE9AC00](v338);
  *(&v645 - 2) = v233;
  v339 = v746;
  v340 = 0;
  sub_1D1747080(sub_1D1CC75C4, v338, v746);

  v341 = (*(v745 + 48))(v339, 1, v244);
  v772 = v241;
  if (v341 == 1)
  {
    sub_1D1741A30(v339, &qword_1EC643758, &qword_1D1E71EB0);
  }

  else
  {
    v745 = 0;
    v342 = v764;
    sub_1D1CB2178(v339, v764, type metadata accessor for StaticMediaProfile);
    v344 = v780;
    v343 = v781;
    v345 = *(v781 + 56);
    v346 = v688;
    v345(v688, 1, 1, v780);
    v347 = sub_1D1E669FC();
    v348 = *(v347 - 8);
    v349 = *(v348 + 56);
    v735 = (v348 + 56);
    v734 = v349;
    (v349)(v742, 1, 1, v347);
    v345(v741, 1, 1, v344);
    v350 = *(v770 + 7);
    v729 = v770 + 56;
    v728 = v350;
    (v350)(v747, 1, 1, v771);
    v351 = v749;
    sub_1D1CB2110(v768, v749, type metadata accessor for StaticSoftwareUpdate);
    v736 = *(v778 - 8);
    v352 = *(v736 + 56);
    v727 = v736 + 56;
    v726 = v352;
    (v352)(v351, 0, 1);
    v353 = v689;
    sub_1D1741A90(v346, v689, &qword_1EC642590, qword_1D1E71260);
    v354 = *(v343 + 48);
    v355 = v354(v353, 1, v344);
    v731 = v354;
    v730 = (v343 + 48);
    v356 = v348;
    if (v355 == 1)
    {
      (v766)(v743, v342, v344);
      v357 = v354(v353, 1, v344);
      v358 = v691;
      if (v357 != 1)
      {
        sub_1D1741A30(v353, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v343 + 32))(v743, v353, v344);
      v358 = v691;
    }

    v359 = v244[6];
    v360 = v764;
    v361 = (v764 + v244[5]);
    v362 = v361[1];
    v738 = *v361;
    v363 = *(v764 + v359);
    v364 = (v764 + v244[7]);
    v365 = v364[1];
    v740 = *v364;
    sub_1D1741A90(v742, v358, &qword_1EC642570, &qword_1D1E6C6A0);
    v366 = *(v356 + 48);
    v367 = v366(v358, 1, v347);
    v746 = v363;
    v739 = v365;
    v737 = v362;
    if (v367 == 1)
    {
      sub_1D1741C08(v360 + v244[8], v748, &qword_1EC642570, &qword_1D1E6C6A0);
      v368 = v366(v358, 1, v347);

      v369 = v781;
      v370 = v360;
      if (v368 != 1)
      {
        sub_1D1741A30(v358, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v371 = v748;
      (*(v356 + 32))(v748, v358, v347);
      (v734)(v371, 0, 1, v347);

      v369 = v781;
      v370 = v360;
    }

    v372 = v773;
    v373 = v773[10];
    v374 = (v370 + v773[9]);
    v375 = v374[1];
    v733 = *v374;
    LODWORD(v735) = *(v370 + v373);
    LODWORD(v734) = *(v370 + v773[11]);
    LODWORD(v742) = *(v370 + v773[13]);
    v376 = v690;
    sub_1D1741A90(v741, v690, &qword_1EC642590, qword_1D1E71260);
    v377 = v780;
    v378 = v731;
    v379 = v731(v376, 1, v780);
    v381 = v770;
    v380 = v771;
    v732 = v375;
    if (v379 == 1)
    {
      (v766)(v744, v370 + v372[14], v377);
      v382 = v378(v376, 1, v377);

      v383 = v695;
      if (v382 != 1)
      {
        sub_1D1741A30(v376, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v369 + 32))(v744, v376, v377);

      v383 = v695;
    }

    v384 = v372[16];
    LODWORD(v731) = *(v370 + v372[15]);
    LODWORD(v741) = *(v370 + v384);
    v385 = *(v370 + v372[17]);
    v386 = v692;
    sub_1D1741A90(v747, v692, &qword_1EC643C58, &unk_1D1E995D0);
    v387 = *(v381 + 6);
    v388 = v387(v386, 1, v380);
    v389 = v778;
    if (v388 == 1)
    {
      sub_1D1741C08(v370 + v372[18], v750, &qword_1EC643C58, &unk_1D1E995D0);
      v390 = v387(v386, 1, v380);

      v391 = v736;
      if (v390 != 1)
      {
        sub_1D1741A30(v386, &qword_1EC643C58, &unk_1D1E995D0);
      }
    }

    else
    {
      v392 = v750;
      sub_1D1CB2178(v386, v750, type metadata accessor for StaticAccessory.DeviceIdentifier);
      (v728)(v392, 0, 1, v380);

      v391 = v736;
    }

    v747 = v385;
    v393 = v372[20];
    LODWORD(v730) = *(v370 + v372[19]);
    LODWORD(v736) = *(v370 + v393);
    v394 = v372[22];
    v395 = (v370 + v372[21]);
    v397 = *v395;
    v396 = v395[1];
    v728 = v397;
    v770 = v396;
    v398 = *(v370 + v394 + 8);
    v729 = *(v370 + v394);
    v771 = v398;
    v399 = v370 + v372[23];
    v400 = *v399;
    v401 = *(v399 + 8);
    v402 = *(v370 + v372[24]);
    sub_1D1741A90(v749, v383, &qword_1EC644760, &unk_1D1E9E530);
    v403 = *(v391 + 48);
    if (v403(v383, 1, v389) == 1)
    {
      v404 = v696;
      sub_1D1741C08(v370 + v372[25], v696, &qword_1EC644760, &unk_1D1E9E530);
      v405 = v403(v383, 1, v389);

      sub_1D18EB144(v400, v401);

      if (v405 != 1)
      {
        sub_1D1741A30(v383, &qword_1EC644760, &unk_1D1E9E530);
      }
    }

    else
    {
      v404 = v696;
      sub_1D1CB2178(v383, v696, type metadata accessor for StaticSoftwareUpdate);
      (v726)(v404, 0, 1, v389);

      sub_1D18EB144(v400, v401);
    }

    v406 = *(v370 + v372[26]);
    v407 = v780;
    v408 = *(v781 + 32);
    v409 = v700;
    v408(v700, v743, v780);
    v410 = (v409 + v372[5]);
    v411 = v737;
    *v410 = v738;
    v410[1] = v411;
    *(v409 + v372[6]) = v746;
    v412 = (v409 + v372[7]);
    v413 = v739;
    *v412 = v740;
    v412[1] = v413;
    sub_1D1741A90(v748, v409 + v372[8], &qword_1EC642570, &qword_1D1E6C6A0);
    v414 = (v409 + v372[9]);
    v415 = v732;
    *v414 = v733;
    v414[1] = v415;
    *(v409 + v372[10]) = v735;
    *(v409 + v372[11]) = v734;
    *(v409 + v372[12]) = 1;
    *(v409 + v372[13]) = v742;
    v408((v409 + v372[14]), v744, v407);
    *(v409 + v372[15]) = v731;
    *(v409 + v372[16]) = v741;
    *(v409 + v372[17]) = v747;
    sub_1D1741A90(v750, v409 + v372[18], &qword_1EC643C58, &unk_1D1E995D0);
    *(v409 + v372[19]) = v730;
    *(v409 + v372[20]) = v736;
    v416 = (v409 + v372[21]);
    v417 = v770;
    *v416 = v728;
    v416[1] = v417;
    v418 = (v409 + v372[22]);
    v419 = v771;
    *v418 = v729;
    v418[1] = v419;
    v420 = v409 + v372[23];
    *v420 = v400;
    *(v420 + 8) = v401;
    *(v409 + v372[24]) = v402;
    sub_1D1741A90(v404, v409 + v372[25], &qword_1EC644760, &unk_1D1E9E530);
    *(v409 + v372[26]) = v406;
    v421 = v699;
    sub_1D1CB2110(v409, v699, type metadata accessor for StaticMediaProfile);
    v422 = v774;
    v423 = swift_isUniquelyReferenced_nonNull_native();
    v782 = v422;
    sub_1D17530C4(v421, v409, v423);
    sub_1D1CB2248(v409, type metadata accessor for StaticMediaProfile);
    sub_1D1CB2248(v764, type metadata accessor for StaticMediaProfile);
    v774 = v782;
    v240 = v769;
    v233 = v775;
    v340 = v745;
  }

  v424 = *(v240 + v779[11]);
  swift_bridgeObjectRetain_n();
  v773 = v424;
  v425 = sub_1D17818B0(v424);
  MEMORY[0x1EEE9AC00](v425);
  *(&v645 - 2) = v233;
  v426 = v755;
  sub_1D17470D4(sub_1D1CC7614, v425, v755);

  v427 = (*(v754 + 48))(v426, 1, v776);
  v428 = v765;
  if (v427 == 1)
  {
    v429 = sub_1D1741A30(v426, &qword_1EC643770, &qword_1D1E71EC8);
  }

  else
  {
    v771 = v340;
    sub_1D1CB2178(v426, v765, type metadata accessor for StaticMediaSystem);
    v430 = v780;
    v431 = v781;
    v432 = *(v781 + 56);
    v433 = v693;
    v432(v693, 1, 1, v780);
    v434 = sub_1D1E669FC();
    v435 = *(v434 - 8);
    v436 = v697;
    v748 = *(v435 + 56);
    v747 = (v435 + 56);
    (v748)(v697, 1, 1, v434);
    v437 = v757;
    sub_1D1CB2110(v768, v757, type metadata accessor for StaticSoftwareUpdate);
    v749 = *(v778 - 8);
    v438 = *(v749 + 56);
    v736 = v749 + 56;
    v735 = v438;
    (v438)(v437, 0, 1);
    v432(v753, 1, 1, v430);
    v439 = v694;
    sub_1D1741A90(v433, v694, &qword_1EC642590, qword_1D1E71260);
    v440 = *(v431 + 48);
    v441 = v440(v439, 1, v430);
    v770 = v440;
    v755 = v431 + 48;
    if (v441 == 1)
    {
      (v766)(v751, v428, v430);
      if (v440(v439, 1, v430) != 1)
      {
        sub_1D1741A30(v439, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v431 + 32))(v751, v439, v430);
    }

    v442 = v776;
    v443 = v776[6];
    v444 = v765;
    v445 = &v765[v776[5]];
    v446 = *(v445 + 1);
    v754 = *v445;
    v447 = *&v765[v443];
    v448 = v765[v443 + 8];
    v449 = v436;
    v450 = v698;
    sub_1D1741A90(v449, v698, &qword_1EC642570, &qword_1D1E6C6A0);
    v451 = *(v435 + 48);
    v452 = v451(v450, 1, v434);
    LODWORD(v764) = v448;
    v750 = v446;
    if (v452 == 1)
    {
      sub_1D1741C08(v444 + v442[7], v756, &qword_1EC642570, &qword_1D1E6C6A0);
      v453 = v451(v450, 1, v434);

      sub_1D18EB144(v447, v448);
      v454 = v780;
      v455 = v444;
      if (v453 != 1)
      {
        sub_1D1741A30(v450, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v456 = v756;
      (*(v435 + 32))(v756, v450, v434);
      (v748)(v456, 0, 1, v434);

      sub_1D18EB144(v447, v448);
      v454 = v780;
      v455 = v444;
    }

    v765 = v447;
    v457 = v776;
    v458 = v776[9];
    v459 = v455 + v776[8];
    v460 = *(v459 + 8);
    v747 = *v459;
    LODWORD(v748) = *(v455 + v458);
    v461 = v776[11];
    LODWORD(v744) = *(v455 + v776[10]);
    LODWORD(v745) = *(v455 + v461);
    v462 = v776[13];
    LODWORD(v742) = *(v455 + v776[12]);
    LODWORD(v743) = *(v455 + v462);
    v463 = v776[15];
    LODWORD(v740) = *(v455 + v776[14]);
    LODWORD(v741) = *(v455 + v463);
    v464 = v776[17];
    v465 = (v455 + v776[16]);
    v466 = v465[1];
    v738 = *v465;
    v467 = *(v455 + v464);
    v468 = v702;
    sub_1D1741A90(v757, v702, &qword_1EC644760, &unk_1D1E9E530);
    v469 = *(v749 + 48);
    v470 = v778;
    v471 = v469(v468, 1, v778);
    v746 = v460;
    if (v471 == 1)
    {
      sub_1D1741C08(v455 + v457[18], v758, &qword_1EC644760, &unk_1D1E9E530);
      v472 = v469(v468, 1, v470);

      v473 = v752;
      if (v472 != 1)
      {
        sub_1D1741A30(v468, &qword_1EC644760, &unk_1D1E9E530);
      }
    }

    else
    {
      v474 = v758;
      sub_1D1CB2178(v468, v758, type metadata accessor for StaticSoftwareUpdate);
      (v735)(v474, 0, 1, v470);

      v473 = v752;
    }

    v475 = v776;
    LODWORD(v757) = *(v455 + v776[19]);
    v476 = v701;
    sub_1D1741A90(v753, v701, &qword_1EC642590, qword_1D1E71260);
    v477 = v770;
    v478 = (v770)(v476, 1, v454);
    v739 = v467;
    v737 = v466;
    if (v478 == 1)
    {
      (v766)(v473, v455 + v475[20], v454);
      if (v477(v476, 1, v454) != 1)
      {
        sub_1D1741A30(v476, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v781 + 32))(v473, v476, v454);
    }

    v479 = v475[22];
    v755 = *(v455 + v475[21]);
    v480 = *(v455 + v479 + 8);
    v770 = *(v455 + v479);
    v481 = *(v455 + v475[23]);
    v482 = *(v455 + v475[24]);
    v483 = *(v455 + v475[25]);
    v484 = *(v781 + 32);
    v485 = v705;
    v484(v705, v751, v454);
    v486 = (v485 + v475[5]);
    v487 = v750;
    *v486 = v754;
    v486[1] = v487;
    v488 = v485 + v475[6];
    *v488 = v765;
    *(v488 + 8) = v764;
    sub_1D1741A90(v756, v485 + v475[7], &qword_1EC642570, &qword_1D1E6C6A0);
    v489 = (v485 + v475[8]);
    v490 = v746;
    *v489 = v747;
    v489[1] = v490;
    *(v485 + v475[9]) = v748;
    *(v485 + v475[10]) = v744;
    *(v485 + v475[11]) = v745;
    *(v485 + v475[12]) = v742;
    *(v485 + v475[13]) = v743;
    *(v485 + v475[14]) = v740;
    *(v485 + v475[15]) = v741;
    v491 = (v485 + v475[16]);
    v492 = v737;
    *v491 = v738;
    v491[1] = v492;
    *(v485 + v475[17]) = v739;
    sub_1D1741A90(v758, v485 + v475[18], &qword_1EC644760, &unk_1D1E9E530);
    *(v485 + v475[19]) = v757;
    v484((v485 + v475[20]), v752, v454);
    *(v485 + v475[21]) = v755;
    v493 = (v485 + v475[22]);
    *v493 = v770;
    v493[1] = v480;
    *(v485 + v475[23]) = v481;
    *(v485 + v475[24]) = v482;
    *(v485 + v475[25]) = v483;
    v494 = v704;
    sub_1D1CB2110(v485, v704, type metadata accessor for StaticMediaSystem);

    v495 = v773;
    v496 = swift_isUniquelyReferenced_nonNull_native();
    v782 = v495;
    sub_1D1752EF0(v494, v485, v496);
    v773 = v782;
    sub_1D1CB2248(v485, type metadata accessor for StaticMediaSystem);
    v429 = sub_1D1CB2248(v455, type metadata accessor for StaticMediaSystem);
    v240 = v769;
    v233 = v775;
  }

  v497 = *(v240 + v779[15]);
  MEMORY[0x1EEE9AC00](v429);
  *(&v645 - 2) = v233;

  v498 = v760;
  v776 = v497;
  sub_1D174736C(sub_1D1CC7664, (&v645 - 4), v497, v760);
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  if ((*(*(v499 - 8) + 48))(v498, 1, v499) == 1)
  {
    sub_1D1741A30(v498, &qword_1EC643C68, &unk_1D1E764C0);
    v500 = v761;
    (*(v759 + 56))(v761, 1, 1, v777);
LABEL_85:
    sub_1D1741A30(v500, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_127;
  }

  v500 = v761;
  sub_1D1CB2178(v498 + *(v499 + 48), v761, type metadata accessor for StaticService);
  v501 = v759;
  v502 = v777;
  (*(v759 + 56))(v500, 0, 1, v777);
  (*(v781 + 8))(v498, v780);
  if ((*(v501 + 48))(v500, 1, v502) == 1)
  {
    goto LABEL_85;
  }

  v503 = v500;
  v504 = v723;
  sub_1D1CB2178(v503, v723, type metadata accessor for StaticService);
  v505 = v780;
  v506 = v781;
  v508 = v781 + 56;
  v507 = *(v781 + 56);
  v509 = v662;
  v507(v662, 1, 1, v780);
  v507(v703, 1, 1, v505);
  v510 = type metadata accessor for StaticDeviceMetadata();
  v749 = *(v510 - 8);
  v511 = *(v749 + 56);
  v750 = v510;
  v748 = (v749 + 56);
  v747 = v511;
  (v511)(v708, 1, 1);
  v512 = sub_1D1E669FC();
  v770 = *(v512 - 8);
  v513 = v770 + 56;
  v514 = *(v770 + 7);
  v514(v706, 1, 1, v512);
  v752 = v513;
  v751 = v514;
  v514(v709, 1, 1, v512);
  v507(v707, 1, 1, v505);
  v507(v710, 1, 1, v505);
  v515 = v716;
  sub_1D1CB2110(v768, v716, type metadata accessor for StaticSoftwareUpdate);
  v753 = *(v778 - 8);
  v516 = *(v753 + 56);
  v731 = (v753 + 56);
  v730 = v516;
  (v516)(v515, 0, 1);
  v768 = v508;
  v765 = v507;
  v507(v711, 1, 1, v505);
  v517 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v518 = *(v517 - 8);
  v519 = *(v518 + 56);
  v756 = v517;
  v733 = v518 + 56;
  v732 = v519;
  (v519)(v722, 1, 1);
  v520 = v509;
  v521 = v663;
  sub_1D1741A90(v520, v663, &qword_1EC642590, qword_1D1E71260);
  v523 = (v506 + 48);
  v522 = *(v506 + 48);
  if (v522(v521, 1, v505) == 1)
  {
    (v766)(v712, v504, v505);
    v524 = v522;
    if (v522(v521, 1, v505) != 1)
    {
      sub_1D1741A30(v521, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v506 + 32))(v712, v521, v505);
    v524 = v522;
  }

  v525 = v502[6];
  v526 = (v504 + v502[5]);
  v527 = v526[1];
  v761 = *v526;
  LODWORD(v764) = *(v504 + v525);
  v528 = v502[8];
  LODWORD(v759) = *(v504 + v502[7]);
  v529 = v502[9];
  LODWORD(v760) = *(v504 + v502[10]);
  LODWORD(v757) = *(v504 + v528);
  LODWORD(v758) = *(v504 + v529);
  v530 = v664;
  sub_1D1741A90(v703, v664, &qword_1EC642590, qword_1D1E71260);
  v531 = v524(v530, 1, v505);
  v532 = v749;
  if (v531 == 1)
  {
    (v766)(v713, v504 + v502[11], v505);
    v533 = v524(v530, 1, v505);

    v308 = v533 == 1;
    v502 = v777;
    if (!v308)
    {
      sub_1D1741A30(v530, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v781 + 32))(v713, v530, v505);
  }

  v534 = v504 + v502[12];
  v766 = *v534;
  v767 = v527;
  LODWORD(v754) = *(v534 + 8);
  v535 = v666;
  sub_1D1741A90(v708, v666, &qword_1EC644620, &unk_1D1E75A00);
  v536 = v504;
  v537 = v502;
  v538 = *(v532 + 48);
  v539 = v750;
  v540 = v538(v535, 1, v750);
  v755 = v518;
  if (v540 == 1)
  {
    sub_1D1741C08(v536 + v537[13], v720, &qword_1EC644620, &unk_1D1E75A00);
    v541 = v536;
    if (v538(v535, 1, v539) != 1)
    {
      sub_1D1741A30(v535, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v542 = v720;
    sub_1D1CB2178(v535, v720, type metadata accessor for StaticDeviceMetadata);
    (v747)(v542, 0, 1, v539);
    v541 = v536;
  }

  v543 = v665;
  sub_1D1741A90(v706, v665, &qword_1EC642570, &qword_1D1E6C6A0);
  v544 = v770;
  v545 = *(v770 + 6);
  if (v545(v543, 1, v512) == 1)
  {
    sub_1D1741C08(v541 + v777[14], v718, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v545(v543, 1, v512) != 1)
    {
      sub_1D1741A30(v543, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v546 = *(v544 + 4);
    v547 = v718;
    v546(v718, v543, v512);
    (v751)(v547, 0, 1, v512);
  }

  v548 = v668;
  sub_1D1741A90(v709, v668, &qword_1EC642570, &qword_1D1E6C6A0);
  v549 = v545(v548, 1, v512);
  v771 = v524;
  v550 = v523;
  if (v549 == 1)
  {
    sub_1D1741C08(v541 + v777[15], v719, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v545(v548, 1, v512) != 1)
    {
      sub_1D1741A30(v548, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v551 = v719;
    (*(v770 + 4))(v719, v548, v512);
    (v751)(v551, 0, 1, v512);
  }

  v552 = v777;
  v553 = v777[17];
  LODWORD(v751) = *(v541 + v777[16]);
  LODWORD(v752) = *(v541 + v553);
  v554 = v777[19];
  LODWORD(v749) = *(v541 + v777[18]);
  v555 = *(v541 + v554);
  v556 = v777[21];
  v557 = (v541 + v777[20]);
  v558 = v557[1];
  v747 = *v557;
  LODWORD(v748) = *(v541 + v556);
  v559 = v777[23];
  LODWORD(v744) = *(v541 + v777[22]);
  LODWORD(v745) = *(v541 + v559);
  v560 = v777[25];
  LODWORD(v743) = *(v541 + v777[24]);
  v561 = v777[27];
  LODWORD(v742) = *(v541 + v777[26]);
  v562 = *(v541 + v560 + 8);
  v739 = *(v541 + v560);
  LODWORD(v741) = *(v541 + v561);
  LODWORD(v740) = *(v541 + v777[28]);
  v563 = v667;
  sub_1D1741A90(v707, v667, &qword_1EC642590, qword_1D1E71260);
  v564 = v780;
  v565 = v771;
  v566 = v771(v563, 1, v780);
  v746 = v558;
  v738 = v562;
  if (v566 == 1)
  {
    sub_1D1741C08(v541 + v552[29], v714, &qword_1EC642590, qword_1D1E71260);
    v567 = v565(v563, 1, v564);

    v568 = v550;
    if (v567 != 1)
    {
      sub_1D1741A30(v563, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v569 = v714;
    (*(v781 + 32))(v714, v563, v564);
    (v765)(v569, 0, 1, v564);

    v568 = v550;
  }

  v570 = v669;
  sub_1D1741A90(v710, v669, &qword_1EC642590, qword_1D1E71260);
  v571 = v771;
  v572 = v771(v570, 1, v564);
  v750 = v555;
  v734 = v568;
  if (v572 == 1)
  {
    v573 = v777;
    sub_1D1741C08(v541 + v777[30], v715, &qword_1EC642590, qword_1D1E71260);
    v574 = v571(v570, 1, v564);
    v240 = v769;
    if (v574 != 1)
    {
      sub_1D1741A30(v570, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v575 = v715;
    (*(v781 + 32))(v715, v570, v564);
    (v765)(v575, 0, 1, v564);
    v573 = v777;
    v240 = v769;
  }

  v576 = *(v541 + v573[31]);
  v577 = *(v541 + v573[32]);
  v578 = (v541 + v573[33]);
  v579 = v578[1];
  v770 = *v578;
  v580 = v671;
  sub_1D1741A90(v716, v671, &qword_1EC644760, &unk_1D1E9E530);
  v581 = v541;
  v582 = v573;
  v583 = *(v753 + 48);
  v584 = v778;
  v585 = v583(v580, 1, v778);
  v737 = v577;
  v736 = v579;
  v735 = v576;
  if (v585 == 1)
  {
    v586 = v582[34];
    v587 = v581;
    sub_1D1741C08(v581 + v586, v721, &qword_1EC644760, &unk_1D1E9E530);
    v588 = v583(v580, 1, v584);

    if (v588 != 1)
    {
      sub_1D1741A30(v580, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v589 = v721;
    sub_1D1CB2178(v580, v721, type metadata accessor for StaticSoftwareUpdate);
    (v730)(v589, 0, 1, v584);

    v587 = v581;
  }

  v590 = v777;
  v591 = v777[36];
  LODWORD(v778) = *(v587 + v777[35]);
  v592 = *(v587 + v591);
  v593 = v670;
  sub_1D1741A90(v711, v670, &qword_1EC642590, qword_1D1E71260);
  v594 = v780;
  v595 = v771;
  if (v771(v593, 1, v780) == 1)
  {
    sub_1D1741C08(v587 + v590[37], v717, &qword_1EC642590, qword_1D1E71260);
    v596 = v595(v593, 1, v594);

    v308 = v596 == 1;
    v590 = v777;
    v597 = v756;
    v598 = v592;
    if (!v308)
    {
      sub_1D1741A30(v593, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v599 = v717;
    (*(v781 + 32))(v717, v593, v594);
    (v765)(v599, 0, 1, v594);

    v597 = v756;
    v598 = v592;
  }

  v600 = (v587 + v590[38]);
  v601 = *v600;
  v602 = *(v600 + 2);
  v603 = v672;
  sub_1D1741A90(v722, v672, &qword_1EC64C9B0, &qword_1D1EA1190);
  v604 = v587;
  v605 = v590;
  v606 = *(v755 + 48);
  if (v606(v603, 1, v597) == 1)
  {
    v607 = v604 + v605[40];
    v608 = v673;
    sub_1D1741C08(v607, v673, &qword_1EC64C9B0, &qword_1D1EA1190);
    v609 = v606(v603, 1, v597);
    v610 = v608;
    if (v609 != 1)
    {
      sub_1D1741A30(v603, &qword_1EC64C9B0, &qword_1D1EA1190);
    }
  }

  else
  {
    v611 = v673;
    sub_1D1CB2178(v603, v673, type metadata accessor for StaticService.AutoClimateControlConfig);
    (v732)(v611, 0, 1, v597);
    v610 = v611;
  }

  v612 = v777;
  v613 = v675;
  sub_1D1741A90(v720, &v675[v777[13]], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v718, v613 + v612[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v719, v613 + v612[15], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v714, v613 + v612[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v715, v613 + v612[30], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v721, v613 + v612[34], &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741A90(v717, v613 + v612[37], &qword_1EC642590, qword_1D1E71260);
  v614 = v723;
  sub_1D1741C08(v723 + v612[39], v613 + v612[39], &qword_1EC644870, &unk_1D1EABA00);
  sub_1D1741A90(v610, v613 + v612[40], &qword_1EC64C9B0, &qword_1D1EA1190);
  v615 = v780;
  v616 = *(v781 + 32);
  v616(v613, v712, v780);
  v617 = (v613 + v612[5]);
  v618 = v767;
  *v617 = v761;
  v617[1] = v618;
  *(v613 + v612[6]) = v764;
  *(v613 + v612[7]) = v759;
  *(v613 + v612[8]) = v757;
  *(v613 + v612[9]) = v758;
  *(v613 + v612[10]) = v760;
  v616(v613 + v612[11], v713, v615);
  v619 = v613 + v612[12];
  *v619 = v766;
  *(v619 + 8) = v754;
  *(v613 + v612[16]) = v751;
  *(v613 + v612[17]) = v752;
  *(v613 + v612[18]) = v749;
  *(v613 + v612[19]) = v750;
  v620 = (v613 + v612[20]);
  v621 = v746;
  *v620 = v747;
  v620[1] = v621;
  *(v613 + v612[21]) = v748;
  *(v613 + v612[22]) = v744;
  *(v613 + v612[23]) = v745;
  *(v613 + v612[24]) = v743;
  v622 = (v613 + v612[25]);
  v623 = v738;
  *v622 = v739;
  v622[1] = v623;
  *(v613 + v612[26]) = v742;
  *(v613 + v612[27]) = v741;
  *(v613 + v612[28]) = v740;
  *(v613 + v612[31]) = v735;
  *(v613 + v612[32]) = v737;
  v624 = (v613 + v612[33]);
  v625 = v736;
  *v624 = v770;
  v624[1] = v625;
  *(v613 + v612[35]) = v778;
  *(v613 + v612[36]) = v598;
  v626 = v613 + v612[38];
  *v626 = v601;
  *(v626 + 2) = v602;
  v627 = v674;
  sub_1D1CB2110(v613, v674, type metadata accessor for StaticService);
  v628 = v776;
  v629 = swift_isUniquelyReferenced_nonNull_native();
  v782 = v628;
  sub_1D1752D1C(v627, v613, v629);
  v776 = v782;
  sub_1D1CB2248(v613, type metadata accessor for StaticService);
  sub_1D1CB2248(v614, type metadata accessor for StaticService);
LABEL_127:
  v630 = *v240;
  v631 = v779;
  v632 = v763;
  sub_1D1CB2110(v240 + v779[5], v763 + v779[5], type metadata accessor for StaticHome);
  v633 = v240;
  v634 = *(v240 + v631[6]);
  v635 = *(v633 + v631[7]);
  v636 = *(v633 + v631[9]);
  v637 = *(v633 + v631[10]);
  v638 = *(v633 + v631[13]);
  v639 = *(v633 + v631[14]);
  v640 = *(v633 + v631[16]);
  v641 = *(v633 + v631[17]);
  v642 = *(v633 + v631[19]);
  v777 = v641;
  v778 = v642;
  *v632 = v630;
  *(v632 + v631[6]) = v634;
  *(v632 + v631[7]) = v635;
  *(v632 + v631[8]) = v772;
  *(v632 + v631[9]) = v636;
  *(v632 + v631[10]) = v637;
  *(v632 + v631[11]) = v773;
  *(v632 + v631[12]) = v774;
  *(v632 + v631[13]) = v638;
  *(v632 + v631[14]) = v639;
  *(v632 + v631[15]) = v776;
  *(v632 + v631[16]) = v640;
  *(v632 + v631[17]) = v641;
  *(v632 + v631[18]) = v762;
  *(v632 + v631[19]) = v642;
  (*(*(v631 - 1) + 56))(v632, 0, 1, v631);
  v643 = *(v781 + 8);

  return v643(v775, v780);
}