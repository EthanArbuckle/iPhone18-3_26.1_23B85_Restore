uint64_t sub_1D1DAF094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v22 = sub_1D1E66FDC();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v21 - v17;
  sub_1D1741C08(v3, &v21 - v17, &qword_1EC642590, qword_1D1E71260);
  (*(v11 + 16))(v14, v3 + *(a1 + 48), v10);
  v24 = *(v3 + *(a1 + 52));
  (*(v5 + 16))(v9, v3 + *(a1 + 60), v22);
  v19 = *(a1 + 24);
  return sub_1D1DAEC50(v18, v14, &v24, v9, v10, v23);
}

uint64_t sub_1D1DAF2E0(void *a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[5] = *a1;
  sub_1D1E67E1C();
  v3[6] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1DAF380, v5, v4);
}

uint64_t sub_1D1DAF380()
{
  v1 = v0[4];
  v2 = v0[3];
  v0[2] = v0[5];
  v3 = *v1;
  v4 = *(v2 + 36);
  v5 = (*(*(v2 + 24) + 16))(*(v2 + 16));
  v7 = v6;
  v0[9] = v6;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1D1DAF468;

  return WidgetManager.perform(_:forKind:)(v3, v5, v7);
}

uint64_t sub_1D1DAF468()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D1DAF584;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D1A0DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DAF584()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

unint64_t sub_1D1DAF600()
{
  v1 = *v0;
  v2 = 0x73656D6F486F6ELL;
  v3 = 0x48676E697373696DLL;
  v4 = 0x5464696C61766E69;
  if (v1 != 3)
  {
    v4 = 0x74756F656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1D1DAF6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1DCF00C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1DAF6D0(uint64_t a1)
{
  v2 = sub_1D1DC9A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF70C(uint64_t a1)
{
  v2 = sub_1D1DC9A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF748(uint64_t a1)
{
  v2 = sub_1D1DC9AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF784(uint64_t a1)
{
  v2 = sub_1D1DC9AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF7C0(uint64_t a1)
{
  v2 = sub_1D1DC9B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF7FC(uint64_t a1)
{
  v2 = sub_1D1DC9B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF838(uint64_t a1)
{
  v2 = sub_1D1DC9BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF874(uint64_t a1)
{
  v2 = sub_1D1DC9BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF8B0(uint64_t a1)
{
  v2 = sub_1D1DC9B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF8EC(uint64_t a1)
{
  v2 = sub_1D1DC9B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF928(uint64_t a1)
{
  v2 = sub_1D1DC9A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF964(uint64_t a1)
{
  v2 = sub_1D1DC9A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetSnapshotModerator.Error.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F978, &qword_1D1EAFB28);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F980, &qword_1D1EAFB30);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F988, &qword_1D1EAFB38);
  v45 = *(v55 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F990, &qword_1D1EAFB40);
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F998, &qword_1D1EAFB48);
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F9A0, &unk_1D1EAFB50);
  v57 = *(v25 - 8);
  v58 = v25;
  v26 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DC9A1C();
  sub_1D1E6930C();
  sub_1D1DC9148(v56, v24, type metadata accessor for WidgetSnapshotModerator.Error);
  v30 = (*(v11 + 48))(v24, 4, v10);
  if (v30 <= 1)
  {
    v35 = v52;
    v36 = v17;
    v38 = v54;
    v37 = v55;
    if (!v30)
    {
      v39 = v53;
      sub_1D1778308(v24, v53);
      v61 = 2;
      sub_1D1DC9B18();
      v40 = v58;
      sub_1D1E68DFC();
      sub_1D1E66A7C();
      sub_1D1DC9C14(&qword_1EE07B258, 255, MEMORY[0x1E69695A8]);
      sub_1D1E68E5C();
      (*(v45 + 8))(v38, v37);
      sub_1D1741A30(v39, &qword_1EC642590, qword_1D1E71260);
      return (*(v57 + 8))(v28, v40);
    }

    v59 = 0;
    sub_1D1DC9BC0();
    v32 = v58;
    sub_1D1E68DFC();
    (*(v35 + 8))(v20, v36);
  }

  else
  {
    if (v30 == 2)
    {
      v60 = 1;
      sub_1D1DC9B6C();
      v31 = v42;
      v32 = v58;
      sub_1D1E68DFC();
      v34 = v43;
      v33 = v44;
    }

    else if (v30 == 3)
    {
      v62 = 3;
      sub_1D1DC9AC4();
      v31 = v46;
      v32 = v58;
      sub_1D1E68DFC();
      v34 = v47;
      v33 = v48;
    }

    else
    {
      v63 = 4;
      sub_1D1DC9A70();
      v31 = v49;
      v32 = v58;
      sub_1D1E68DFC();
      v34 = v50;
      v33 = v51;
    }

    (*(v34 + 8))(v31, v33);
  }

  return (*(v57 + 8))(v28, v32);
}

uint64_t WidgetSnapshotModerator.Error.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1DC9148(v0, v17, type metadata accessor for WidgetSnapshotModerator.Error);
  v18 = (*(v7 + 48))(v17, 4, v6);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = 1;
    }

    else if (v18 == 3)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    return MEMORY[0x1D3892850](v19);
  }

  if (v18)
  {
    v19 = 0;
    return MEMORY[0x1D3892850](v19);
  }

  sub_1D1778308(v17, v13);
  MEMORY[0x1D3892850](2);
  sub_1D1741C08(v13, v11, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v11, v1);
    sub_1D1E6922C();
    sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
}

uint64_t WidgetSnapshotModerator.Error.hashValue.getter()
{
  sub_1D1E6920C();
  WidgetSnapshotModerator.Error.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB0400()
{
  sub_1D1E6920C();
  WidgetSnapshotModerator.Error.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB0444()
{
  sub_1D1E6920C();
  WidgetSnapshotModerator.Error.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB049C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a1 + 16);
  v11 = *(*(v6 - 8) + 16);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for WidgetDetailUpdate();
      v8 = 48;
      goto LABEL_7;
    }

    v7 = type metadata accessor for WidgetWriteRequests();
  }

  else
  {
    v7 = type metadata accessor for WidgetRefresh();
  }

  v8 = 36;
LABEL_7:
  v9 = v2 + *(v7 + v8);

  return v11(a2, v9, v6);
}

uint64_t sub_1D1DB0568(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  if (v9 == (*(v13 + 8))(v12, v13) && v11 == v14)
  {
  }

  else
  {
    v16 = sub_1D1E6904C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 16))(v17, v18);
  v21 = v20;
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  if (v19 == (*(v23 + 16))(v22, v23) && v21 == v24)
  {
  }

  else
  {
    v26 = sub_1D1E6904C();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = type metadata accessor for WidgetSnapshotModerator.MonitorEntry();
  v28 = *(v27 + 36);
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
  {
    v29 = *(v27 + 40);
    v30 = *(a4 + 8);
    return sub_1D1E6775C() & 1;
  }

  return 0;
}

uint64_t sub_1D1DB0778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 8))(v5, v6);
  sub_1D1E678EC();

  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  (*(v8 + 16))(v7, v8);
  sub_1D1E678EC();

  v9 = *(a2 + 36);
  sub_1D1E66A7C();
  sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = v3 + *(a2 + 40);
  return sub_1D1E676EC();
}

uint64_t sub_1D1DB08C0(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1DB0778(v3, a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB0910(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1DB0778(v4, a2);
  return sub_1D1E6926C();
}

uint64_t WidgetSnapshotModerator.stateSnapshots.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t WidgetSnapshotModerator.matterStateSnapshots.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t WidgetSnapshotModerator.staticMatterDevices(in:)(uint64_t a1)
{
  v3 = type metadata accessor for MatterStateSnapshot();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  swift_beginAccess();
  v12 = *(v1 + 120);
  if (*(v12 + 16) && (v13 = sub_1D1742188(a1), (v14 & 1) != 0))
  {
    sub_1D1DC9148(*(v12 + 56) + *(v4 + 72) * v13, v11, type metadata accessor for MatterStateSnapshot);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v4 + 56))(v11, v15, 1, v3);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1D1741A30(v11, &unk_1EC64F390, &qword_1D1E92B10);
    swift_endAccess();
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D1DC9148(v11, v7, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v11, &unk_1EC64F390, &qword_1D1E92B10);
  swift_endAccess();
  v17 = *&v7[*(v3 + 24)];

  sub_1D1DC91B0(v7, type metadata accessor for MatterStateSnapshot);
  v18 = v17[2];
  if (!v18)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1D180441C(v17[2], 0);
  v20 = *(type metadata accessor for StaticMatterDevice() - 8);
  v21 = sub_1D18062D4(&v23, v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v18, v17);
  result = sub_1D1716918();
  if (v21 == v18)
  {
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t WidgetSnapshotModerator.homes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t WidgetSnapshotModerator.recommendedHome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_recommendedHome;
  swift_beginAccess();
  return sub_1D1741C08(v1 + v3, a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1DB0D74(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66FDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v33 = a1;
  v17 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v18 = *(v2 + 168);
  if (*(v18 + 16) && (v19 = sub_1D1742188(v16), (v20 & 1) != 0))
  {
    v21 = (*(v18 + 56) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    swift_endAccess();
    v24 = *(v10 + 8);
    swift_unknownObjectRetain();
    v24(v16, v9);
    v25 = v33;
  }

  else
  {
    swift_endAccess();
    (*(v10 + 8))(v16, v9);
    if (qword_1EC642488 != -1)
    {
      swift_once();
    }

    v26 = sub_1D1E6701C();
    v27 = __swift_project_value_buffer(v26, qword_1EC6BE2B8);
    v25 = v33;
    v28 = v33;
    sub_1D1E66FCC();
    v23 = sub_1D17605FC("predictionController", 20, 2, v8, v27, v28);

    (*(v5 + 8))(v8, v4);
    if (v23)
    {
      v22 = &off_1F4D86A10;
    }

    else
    {
      v22 = 0;
    }
  }

  v29 = [v25 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v30 = swift_unknownObjectRetain();
  sub_1D1B0E1C8(v30, v22, v14);
  swift_endAccess();
  return v23;
}

char *sub_1D1DB1098(void *a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 14) = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
  v4 = sub_1D18D72DC(v3);
  v5 = MEMORY[0x1E69E7CD0];
  *(v1 + 15) = v4;
  *(v1 + 16) = v5;
  *(v1 + 17) = v5;
  *(v1 + 18) = v5;
  *(v1 + 19) = sub_1D18D74F8(v3);
  *(v1 + 20) = sub_1D18D765C(v3);
  *(v1 + 21) = sub_1D18D7878(v3);
  v6 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_recommendedHome;
  v7 = sub_1D1E66A7C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened] = 0;
  *&v1[OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager] = a1;
  v8 = [a1 widgetManager];
  *&v1[OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager] = v8;
  return v1;
}

uint64_t sub_1D1DB11A0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 168) = a3;
  *(v4 + 64) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  *(v4 + 88) = v5;
  v6 = *(v5 - 8);
  *(v4 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  *(v4 + 112) = v8;
  v9 = *(v8 - 8);
  *(v4 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB12DC, v3, 0);
}

uint64_t sub_1D1DB12DC()
{
  v49 = v0;
  v1 = *(v0 + 80);
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened) != 1 || (swift_beginAccess(), !*(*(v1 + 160) + 16)))
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EE0813C8);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v48 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC9DF0, &v48);
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s Unable to return StaticHome, because snapshot has not been built.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    (*(v17 + 56))(v18, 1, 4, v16);
    goto LABEL_11;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 168);
  v5 = *(v0 + 72);
  v6 = *(v3 + 48);
  if (v6(v5, 1, v2) == 1 && (v4 & 1) == 0)
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v10 = v9;
    (*(v3 + 56))(v9, 1, 1, v2);
    (*(v8 + 56))(v10, 0, 4, v7);
LABEL_11:
    swift_willThrow();
    goto LABEL_12;
  }

  v24 = *(v0 + 104);
  sub_1D1741C08(v5, v24, &qword_1EC642590, qword_1D1E71260);
  if (v6(v24, 1, v2) != 1)
  {
    v27 = *(*(v0 + 120) + 32);
    v27(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    v28 = *(v0 + 80);
    v27(*(v0 + 136), *(v0 + 128), *(v0 + 112));
    swift_beginAccess();
    v29 = *(v28 + 160);
    if (*(v29 + 16))
    {
      v30 = sub_1D1742188(*(v0 + 136));
      if (v31)
      {
        v32 = v30;
        v34 = *(v0 + 128);
        v33 = *(v0 + 136);
        v35 = *(v0 + 112);
        v36 = *(v0 + 120);
        v37 = *(v0 + 104);
        v38 = *(v0 + 64);
        v39 = *(v29 + 56);
        v40 = type metadata accessor for StaticHome();
        sub_1D1DC9148(v39 + *(*(v40 - 8) + 72) * v32, v38, type metadata accessor for StaticHome);
        swift_endAccess();
        (*(v36 + 8))(v33, v35);

        v22 = *(v0 + 8);
        goto LABEL_13;
      }
    }

    v41 = *(v0 + 136);
    v42 = *(v0 + 112);
    v43 = *(v0 + 120);
    v44 = *(v0 + 88);
    v45 = *(v0 + 96);
    swift_endAccess();
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v47 = v46;
    (*(v43 + 16))(v46, v41, v42);
    (*(v43 + 56))(v47, 0, 1, v42);
    (*(v45 + 56))(v47, 0, 4, v44);
    swift_willThrow();
    (*(v43 + 8))(v41, v42);
LABEL_12:
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);
    v21 = *(v0 + 104);

    v22 = *(v0 + 8);
LABEL_13:

    return v22();
  }

  sub_1D1741A30(*(v0 + 104), &qword_1EC642590, qword_1D1E71260);
  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  v25[1] = sub_1D1DB18E0;
  v26 = *(v0 + 80);

  return sub_1D1DB1D48();
}

uint64_t sub_1D1DB18E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = v1;

  v7 = v4[10];
  if (v1)
  {
    v8 = sub_1D1DB1CC8;
  }

  else
  {
    v4[20] = a1;
    v8 = sub_1D1DB1A1C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D1DB1A1C()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = [v1 uniqueIdentifier];

  sub_1D1E66A5C();
  v5 = v0[10];
  (*(v3 + 32))(v0[17], v0[16], v0[14]);
  swift_beginAccess();
  v6 = *(v5 + 160);
  if (*(v6 + 16) && (v7 = sub_1D1742188(v0[17]), (v8 & 1) != 0))
  {
    v9 = v7;
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[8];
    v16 = *(v6 + 56);
    v17 = type metadata accessor for StaticHome();
    sub_1D1DC9148(v16 + *(*(v17 - 8) + 72) * v9, v15, type metadata accessor for StaticHome);
    swift_endAccess();
    (*(v13 + 8))(v10, v12);

    v18 = v0[1];
  }

  else
  {
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[15];
    v22 = v0[11];
    v23 = v0[12];
    swift_endAccess();
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v25 = v24;
    (*(v21 + 16))(v24, v19, v20);
    (*(v21 + 56))(v25, 0, 1, v20);
    (*(v23 + 56))(v25, 0, 4, v22);
    swift_willThrow();
    (*(v21 + 8))(v19, v20);
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[13];

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1D1DB1CC8()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1DB1D48()
{
  v1[2] = v0;
  v2 = sub_1D1E66A7C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_1D1DB1EAC;

  return WidgetSnapshotModerator.updateHomes(timeout:)(20.0);
}

uint64_t sub_1D1DB1EAC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[5];

    v7 = v3[1];

    return v7();
  }

  else
  {
    v9 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1D1DB2008, v9, 0);
  }
}

uint64_t sub_1D1DB2008()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  v0[12] = v1;
  v2 = [v1 homes];
  v0[13] = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (qword_1EE07B038 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE081458;
    v0[14] = qword_1EE081458;

    return MEMORY[0x1EEE6DFA0](sub_1D1DB22C4, v5, 0);
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE0813C8);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D16EC000, v7, v8, "recommendedHome() HMHomeManager returned 0 homes", v9, 2u);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v10 = v0[6];
    v11 = v0[7];

    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    (*(v11 + 56))(v12, 1, 4, v10);
    swift_willThrow();
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[5];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1D1DB22C4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  *(v0 + 128) = sub_1D1DB55F4() & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2338, v2, 0);
}

uint64_t sub_1D1DB2338()
{
  if (*(v0 + 128) == 1)
  {
    v1 = [*(v0 + 96) currentHome];
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 120) = v1;
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB23C8, v2, 0);
}

uint64_t sub_1D1DB23C8()
{
  v1 = *(v0[14] + 120);
  v2 = sub_1D1E677EC();
  v3 = [v1 stringForKey_];

  v4 = v0[9];
  if (v3)
  {
    sub_1D1E6781C();

    sub_1D1E66A0C();
  }

  else
  {
    (*(v0[4] + 56))(v0[9], 1, 1, v0[3]);
  }

  v5 = v0[2];

  return MEMORY[0x1EEE6DFA0](sub_1D1DB24D4, v5, 0);
}

void sub_1D1DB24D4()
{
  v43 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1D1741C08(*(v0 + 72), v1, &qword_1EC642590, qword_1D1E71260);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(*(v0 + 72), &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    (*(v9 + 32))(v8, *(v0 + 64), v10);
    v11 = [v5 homes];
    v12 = sub_1D1E67C1C();

    v13 = swift_task_alloc();
    *(v13 + 16) = v8;
    v14 = sub_1D174A6C4(sub_1D1DCF2CC, v13, v12);

    sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    (*(v9 + 8))(v8, v10);
    if (v14)
    {
      v15 = *(v0 + 120);
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  v14 = [*(v0 + 96) currentHome];
  v15 = *(v0 + 120);
  if (!v15)
  {
LABEL_7:
    if (v14)
    {
      v16 = v14;
LABEL_15:
      v22 = v14;
      v15 = 0;
      goto LABEL_16;
    }

    v17 = *(v0 + 104);
    v18 = [*(v0 + 96) homes];
    v19 = sub_1D1E67C1C();
    v20 = v19;
    if (v19 >> 62)
    {
      if (sub_1D1E6873C())
      {
LABEL_11:

        if ((v20 & 0xC000000000000001) == 0)
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v21 = *(v20 + 32);
          goto LABEL_14;
        }

LABEL_32:
        v21 = MEMORY[0x1D3891EF0](0, v20);
LABEL_14:
        v16 = v21;

        goto LABEL_15;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_5:
  v16 = v15;
LABEL_16:
  v23 = qword_1EE07A098;
  v24 = v15;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_1D1E6709C();
  __swift_project_value_buffer(v25, qword_1EE0813C8);
  v26 = v16;
  v27 = sub_1D1E6707C();
  v28 = sub_1D1E6835C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 128);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = v32;
    *v30 = 136315394;
    if (v29)
    {
      v33 = 0x64656C62616E65;
    }

    else
    {
      v33 = 0x64656C6261736964;
    }

    v41 = v14;
    if (v29)
    {
      v34 = 0xE700000000000000;
    }

    else
    {
      v34 = 0xE800000000000000;
    }

    v35 = sub_1D1B1312C(v33, v34, &v42);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2112;
    *(v30 + 14) = v26;
    *v31 = v26;
    v36 = v26;
    _os_log_impl(&dword_1D16EC000, v27, v28, "recommendedHome() HomeSensing:%s, Home:%@", v30, 0x16u);
    sub_1D1741A30(v31, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D3893640](v32, -1, -1);
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  else
  {
  }

  v38 = *(v0 + 64);
  v37 = *(v0 + 72);
  v39 = *(v0 + 40);

  v40 = *(v0 + 8);

  v40(v26);
}

uint64_t WidgetSnapshotModerator.queueForNextUpdate<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[6] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_1D1E67E1C();
  v4[9] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2A18, v8, v7);
}

uint64_t sub_1D1DB2A18()
{
  v16 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v0[12] = (*(v1 + 8))(v2, v1);
  v0[13] = v4;
  v0[14] = (*(v1 + 16))(v2, v1);
  v0[15] = v5;
  (*(*(v2 - 8) + 8))(v3, v2);
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  v0[16] = __swift_project_value_buffer(v6, qword_1EE0813C8);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v15);
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s Informing HomeKit it should send a timeline refresh", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v11 = v0[8];
  v0[17] = *(v0[5] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
  v0[18] = sub_1D1E67E0C();
  v13 = sub_1D1E67D4C();
  v0[19] = v13;
  v0[20] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2C50, v13, v12);
}

uint64_t sub_1D1DB2C50()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v14 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = sub_1D1E67E0C();
  *(v0 + 168) = v5;
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v1;
  *(v6 + 24) = v7;
  *(v6 + 32) = v14;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_1D1DB2D84;
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v10, v5, v12, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DC9C5C, v6, v11);
}

uint64_t sub_1D1DB2D84()
{
  v2 = *v1;
  v3 = (*v1)[23];
  v12 = *v1;
  (*v1)[24] = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1D1DB2FBC;
  }

  else
  {
    v8 = v2[21];
    v7 = v2[22];
    v9 = v2[15];
    v10 = v2[13];
    sub_1D1DC91B0(v2[7], type metadata accessor for StateSnapshot.UpdateType);

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1D1DB2EF0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DB2EF0()
{
  v1 = v0[18];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2F54, v2, v3);
}

uint64_t sub_1D1DB2F54()
{
  v1 = v0[9];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1DB2FBC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[13];

  v6 = v0[10];
  v7 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DB3054, v6, v7);
}

uint64_t sub_1D1DB3054()
{
  v18 = v0;
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[9];

  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v17);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s Unable to execute monitorAndFetchState call, will not try again. reason=%@", v9, 0x16u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D1DB3224(uint64_t a1, uint64_t *a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  *(v3 + 120) = v6;
  v7 = *(v6 - 8);
  *(v3 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v9 = type metadata accessor for MatterStateSnapshot();
  *(v3 + 152) = v9;
  v10 = *(v9 - 8);
  *(v3 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v3 + 168) = v12;
  *(v3 + 176) = v13;
  *(v3 + 184) = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB33A8, v2, 0);
}

uint64_t sub_1D1DB33A8()
{
  v73 = v0;
  if (![*(*(v0 + 96) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) hasOptedToHH2])
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 88);
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE0813C8);
    v19 = v17;
    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6833C();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_28;
    }

    v22 = *(v0 + 88);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v22;
    *v24 = v22;
    v25 = v22;
    v26 = "updateMatterDeviceCache(from:filter:) HH1 support not available, skipping update for %@";
    goto LABEL_27;
  }

  v1 = *(v0 + 88);
  v2 = HMHome.matterAccessories.getter();
  if (v2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {

    if (!i)
    {
      break;
    }

    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE0813C8);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D16EC000, v5, v6, "updateMatterDeviceCache(from:filter:) will update MatterStateSnapshot", v7, 2u);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    v8 = *(v0 + 176);
    v9 = *(v0 + 144);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);

    v12 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_beginAccess();
    v13 = *(v11 + 120);
    if (*(v13 + 16) && (v14 = sub_1D1742188(*(v0 + 144)), (v15 & 1) != 0))
    {
      sub_1D1DC9148(*(v13 + 56) + *(*(v0 + 160) + 72) * v14, *(v0 + 112), type metadata accessor for MatterStateSnapshot);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v27 = *(v0 + 176);
    v67 = *(v0 + 168);
    v68 = *(v0 + 152);
    v28 = *(v0 + 136);
    v29 = *(v0 + 144);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    v32 = *(v0 + 112);
    v33 = *(v0 + 88);
    v34 = *(*(v0 + 160) + 56);
    v69 = *(v0 + 104);
    v35 = *(v0 + 184);
    v34(v32, v16, 1);
    swift_endAccess();
    (*(v31 + 8))(v29, v30);
    v36 = v27;
    v66 = sub_1D1A2B978(v32, 0, 0, 4, v33, v27, v35);
    v37 = [v33 matterControllerID];
    v38 = sub_1D1E6781C();
    v40 = v39;

    v41 = [v33 uniqueIdentifier];
    sub_1D1E66A5C();

    *&v71[0] = v36;
    BYTE8(v71[0]) = v35;
    sub_1D1A28CB8(v38, v40, v28, v66, v71, v67);
    sub_1D1741A30(v32, &unk_1EC64F390, &qword_1D1E92B10);
    v42 = [v33 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9148(v67, v69, type metadata accessor for MatterStateSnapshot);
    (v34)(v69, 0, 1, v68);
    swift_beginAccess();
    sub_1D1B0E5E8(v69, v28);
    swift_endAccess();
    v43 = *(v67 + *(v68 + 24));

    v44 = sub_1D1DB3B00(v33, v43);

    v45 = MEMORY[0x1E69E7CC8];
    v70 = MEMORY[0x1E69E7CC8];
    v46 = *(v44 + 16);
    if (!v46)
    {
LABEL_22:
      v51 = *(v0 + 168);
      v52 = *(v0 + 96);

      sub_1D1DC91B0(v51, type metadata accessor for MatterStateSnapshot);
      swift_beginAccess();
      v53 = *(v52 + 152);
      *(v52 + 152) = v45;

      goto LABEL_29;
    }

    v47 = 0;
    v48 = (v44 + 64);
    while (v47 < *(v44 + 16))
    {
      v49 = *v48;
      v50 = *(v48 - 3);
      *&v71[0] = *(v48 - 4);
      *(&v71[0] + 1) = v50;
      v71[1] = *(v48 - 1);
      v72 = v49;

      swift_unknownObjectRetain();

      sub_1D1DB3DE8(&v70, v71);

      swift_unknownObjectRelease();

      ++v47;
      v48 += 5;
      if (v46 == v47)
      {
        v45 = v70;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_33:
    ;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 88);
  v55 = sub_1D1E6709C();
  __swift_project_value_buffer(v55, qword_1EE0813C8);
  v56 = v54;
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6835C();

  if (os_log_type_enabled(v20, v21))
  {
    v57 = *(v0 + 88);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v57;
    *v24 = v57;
    v58 = v57;
    v26 = "updateMatterDeviceCache(from:filter:) No native Matter accessories found on %@, skipping update";
LABEL_27:
    _os_log_impl(&dword_1D16EC000, v20, v21, v26, v23, 0xCu);
    sub_1D1741A30(v24, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);
  }

LABEL_28:

LABEL_29:
  v59 = *(v0 + 168);
  v60 = *(v0 + 136);
  v61 = *(v0 + 144);
  v63 = *(v0 + 104);
  v62 = *(v0 + 112);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1D1DB3B00(void *a1, uint64_t a2)
{
  v2 = HMHome.matterAccessories.getter();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_34:
    v5 = sub_1D1E6873C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC8];
      while (1)
      {
LABEL_4:
        v8 = v6;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1D3891EF0](v8, v3);
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_33;
            }

            v9 = *(v3 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v11 = sub_1D1E682DC();
          if ((v12 & 1) == 0)
          {
            v13 = v11;
            v14 = HMAccessory.matterDevice.getter();
            if (v14)
            {
              v43 = v15;
              v44 = v14;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v47 = v7;
              v19 = sub_1D17420B0(v13);
              v21 = v7[2];
              v22 = (v20 & 1) == 0;
              v23 = __OFADD__(v21, v22);
              v24 = v21 + v22;
              if (v23)
              {
                __break(1u);
              }

              else
              {
                if (v7[3] < v24)
                {
                  v25 = v20;
                  sub_1D172BA84(v24, isUniquelyReferenced_nonNull_native);
                  v19 = sub_1D17420B0(v13);
                  if ((v25 & 1) == (v26 & 1))
                  {
                    v27 = v25;
                    goto LABEL_19;
                  }

LABEL_39:
                  result = sub_1D1E690FC();
                  __break(1u);
                  return result;
                }

                v28 = v43;
                v29 = v44;
                if (isUniquelyReferenced_nonNull_native)
                {
                  v7 = v47;
                  if (v20)
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  v38 = v19;
                  v39 = v20;
                  sub_1D173AC34();
                  v27 = v39;
                  v19 = v38;
LABEL_19:
                  v28 = v43;
                  v29 = v44;
                  v7 = v47;
                  if (v27)
                  {
LABEL_29:
                    v36 = (v7[7] + 16 * v19);
                    v37 = *v36;
                    *v36 = v29;
                    v36[1] = v28;

                    swift_unknownObjectRelease();
                    if (v6 != v5)
                    {
                      goto LABEL_4;
                    }

                    goto LABEL_36;
                  }
                }

                v7[(v19 >> 6) + 8] |= 1 << v19;
                *(v7[6] + 8 * v19) = v13;
                v30 = (v7[7] + 16 * v19);
                *v30 = v29;
                v30[1] = v28;

                v31 = v7[2];
                v23 = __OFADD__(v31, 1);
                v32 = v31 + 1;
                if (!v23)
                {
                  v7[2] = v32;
                  if (v6 != v5)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_36;
                }
              }

              __break(1u);
              goto LABEL_39;
            }

            v16 = sub_1D17420B0(v13);
            if (v17)
            {
              break;
            }
          }

          ++v8;
          if (v6 == v5)
          {
            goto LABEL_36;
          }
        }

        v33 = v16;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v7;
        if (!v34)
        {
          sub_1D173AC34();
          v7 = v47;
        }

        v35 = *(v7[7] + 16 * v33);
        swift_unknownObjectRelease();
        sub_1D1751784(v33, v7);

        if (v6 == v5)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC8];
LABEL_36:

  v47 = v7;
  v40 = a1;
  v41 = sub_1D1DC7E10(a2, &v47, v40);

  return v41;
}

unint64_t sub_1D1DB3DE8(void *a1, __int128 *a2)
{
  v3 = a2[1];
  v23 = *a2;
  v24 = v3;
  v25 = *(a2 + 4);
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE0813C8);
  v26 = v23;
  v5 = *(&v24 + 1);
  v27 = v25;
  sub_1D1DCF2EC(&v26, v22);
  swift_unknownObjectRetain();
  sub_1D1741C08(&v27, v22, &qword_1EC64FD70, &unk_1D1EB0830);
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();
  sub_1D1DCF348(&v26);
  swift_unknownObjectRelease();
  sub_1D1741A30(&v27, &qword_1EC64FD70, &unk_1D1EB0830);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v8 = 136315138;
    sub_1D1DCF2EC(&v26, v22);
    swift_unknownObjectRetain();
    v20 = v5;
    sub_1D1741C08(&v27, v22, &qword_1EC64FD70, &unk_1D1EB0830);
    v9 = WidgetManager.AttributeDescriptor.description.getter();
    v10 = a1;
    v12 = v11;
    sub_1D1DCF348(&v26);
    swift_unknownObjectRelease();
    sub_1D1741A30(&v27, &qword_1EC64FD70, &unk_1D1EB0830);
    v13 = sub_1D1B1312C(v9, v12, &v21);
    a1 = v10;

    *(v8 + 4) = v13;
    v5 = v20;
    _os_log_impl(&dword_1D16EC000, v6, v7, "updateMatterDeviceCache(from:filter:) AttributeDescriptor: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v15 = (*(v5 + 8))(ObjectType, v5);
  sub_1D1DCF2EC(&v26, v22);
  swift_unknownObjectRetain();
  sub_1D1741C08(&v27, v22, &qword_1EC64FD70, &unk_1D1EB0830);
  v16 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *a1;
  result = sub_1D17572C8(&v23, v15, isUniquelyReferenced_nonNull_native);
  *a1 = v22[0];
  return result;
}

uint64_t WidgetSnapshotModerator.updateHomes(timeout:)(double a1)
{
  *(v2 + 112) = v1;
  *(v2 + 104) = a1;
  v3 = sub_1D1E66A7C();
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v6 = *(type metadata accessor for StaticHome() - 8);
  *(v2 + 144) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB41F0, v1, 0);
}

uint64_t sub_1D1DB41F0()
{
  v1 = *(*(v0 + 14) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  *(v0 + 22) = v1;
  if ([v1 dataSyncState] == 1)
  {
    if (qword_1EE07B1C0 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v0 + 25) = v2;
    *v2 = v0;
    v2[1] = sub_1D1DB46E0;
    v3 = *(v0 + 22);
    v4 = v0[13];

    return sub_1D1DD12AC(v3, v4);
  }

  else
  {
    if (qword_1EE07B1C0 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    *(v0 + 23) = v6;
    *v6 = v0;
    v6[1] = sub_1D1DB4388;

    return sub_1D1DD0648(v1, 20.0);
  }
}

uint64_t sub_1D1DB4388()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1D1DB511C;
  }

  else
  {
    v6 = sub_1D1DB44B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DB44B4()
{
  v16 = v0;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 14);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE0813C8);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6833C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 22);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v0 + 12) = [v5 dataSyncState];
    type metadata accessor for HMHomeManagerDataSyncState(0);
    v8 = sub_1D1E678BC();
    v10 = sub_1D1B1312C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D16EC000, v3, v4, "updateHomes(timeout:) called when HMHomeManager.dataSyncState = %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  if (qword_1EE07B1C0 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  *(v0 + 25) = v11;
  *v11 = v0;
  v11[1] = sub_1D1DB46E0;
  v12 = *(v0 + 22);
  v13 = v0[13];

  return sub_1D1DD12AC(v12, v13);
}

uint64_t sub_1D1DB46E0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1D1DB5388;
  }

  else
  {
    v6 = sub_1D1DB480C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DB480C()
{
  v85 = v0;
  v3 = [*(v0 + 176) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  if (v4 >> 62)
  {
    v5 = sub_1D1E6873C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v84 = MEMORY[0x1E69E7CC0];
  sub_1D178D050(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v6 = 0;
  v7 = *(v0 + 144);
  v8 = v84;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v6, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v6 + 32);
    }

    sub_1D1CEBBBC(v9, *(v0 + 176), *(v0 + 160));
    v84 = v8;
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D178D050(v10 > 1, v11 + 1, 1);
      v8 = v84;
    }

    v12 = *(v0 + 160);
    ++v6;
    *(v8 + 16) = v11 + 1;
    sub_1D1DCF39C(v12, v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, type metadata accessor for StaticHome);
  }

  while (v5 != v6);

LABEL_14:
  v83 = v0;
  v79 = *(v8 + 16);
  if (!v79)
  {
    v1 = MEMORY[0x1E69E7CC8];
LABEL_29:
    v2 = v83;
    v0 = v83[14];

    v5 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened;
    if (*(v0 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened))
    {
      v36 = v83[14];
      swift_beginAccess();
      v37 = *(v36 + 160);

      v39 = sub_1D18533F0(v38, v1);

      if (v39)
      {

        goto LABEL_37;
      }
    }

    if (qword_1EE07A098 == -1)
    {
LABEL_33:
      v40 = sub_1D1E6709C();
      __swift_project_value_buffer(v40, qword_1EE0813C8);

      v41 = sub_1D1E6707C();
      v42 = sub_1D1E6835C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = *(v2 + 208);
        v44 = v1;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v84 = v46;
        *v45 = 136446210;

        v48 = sub_1D1DACF64(v47);

        *(v2 + 88) = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
        v80 = v5;
        v82 = v0;
        v2 = v83;
        sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640);
        v49 = sub_1D1E6770C();
        v51 = v50;

        v52 = sub_1D1B1312C(v49, v51, &v84);
        v5 = v80;
        v0 = v82;

        *(v45 + 4) = v52;
        _os_log_impl(&dword_1D16EC000, v41, v42, "updateHomes(timeout:) found homes [%{public}s]", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1D3893640](v46, -1, -1);
        v53 = v45;
        v1 = v44;
        MEMORY[0x1D3893640](v53, -1, -1);
      }

      v54 = *(v2 + 112);
      if (!*(v1 + 2))
      {

        v61 = sub_1D18D765C(MEMORY[0x1E69E7CC0]);
        swift_beginAccess();
        v62 = *(v54 + 160);
        *(v54 + 160) = v61;

        v63 = sub_1D1E6707C();
        v64 = sub_1D1E6833C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1D16EC000, v63, v64, "updateHomes(timeout:) refresh returned 0 homes", v65, 2u);
          MEMORY[0x1D3893640](v65, -1, -1);
        }

        type metadata accessor for WidgetSnapshotModerator.Error(0);
        sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
        swift_allocError();
        v67 = v66;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
        (*(*(v68 - 8) + 56))(v67, 1, 4, v68);
        swift_willThrow();
        v70 = *(v2 + 160);
        v69 = *(v2 + 168);
        v71 = *(v2 + 152);
        v72 = *(v2 + 136);

        v60 = *(v2 + 8);
        goto LABEL_41;
      }

      swift_beginAccess();
      v55 = *(v54 + 160);
      *(v54 + 160) = v1;

      *(v0 + v5) = 1;
LABEL_37:
      v57 = *(v2 + 160);
      v56 = *(v2 + 168);
      v58 = *(v2 + 152);
      v59 = *(v2 + 136);

      v60 = *(v2 + 8);
LABEL_41:

      return v60();
    }

LABEL_51:
    swift_once();
    goto LABEL_33;
  }

  v2 = 0;
  v13 = *(v0 + 128);
  v78 = *(v0 + 144);
  v77 = v8 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
  v81 = (v13 + 16);
  v75 = v13;
  v76 = (v13 + 8);
  v1 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v2 >= *(v8 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 = v83[21];
    v5 = v83[19];
    v15 = v83[17];
    v16 = v83[15];
    v17 = *(v78 + 72);
    v0 = v1;
    v1 = type metadata accessor for StaticHome;
    sub_1D1DC9148(v77 + v17 * v2, v14, type metadata accessor for StaticHome);
    v18 = *v81;
    (*v81)(v15, v14, v16);
    sub_1D1DC9148(v14, v5, type metadata accessor for StaticHome);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v0;
    v20 = sub_1D1742188(v15);
    v22 = *(v0 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_48;
    }

    v5 = v21;
    if (*(v0 + 24) < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = v20;
      sub_1D1734518();
      v20 = v35;
      v0 = v84;
    }

LABEL_25:
    v28 = v83[21];
    v29 = v83[19];
    v30 = v83[17];
    v31 = v83[15];
    if (v5)
    {
      v1 = v0;
      sub_1D1DC9C74(v83[19], *(v0 + 56) + v20 * v17);
      (*v76)(v30, v31);
      sub_1D1DC91B0(v28, type metadata accessor for StaticHome);
    }

    else
    {
      *(v0 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v5 = v20;
      v18(*(v0 + 48) + *(v75 + 72) * v20, v30, v31);
      v32 = v29;
      v1 = v0;
      sub_1D1DCF39C(v32, *(v0 + 56) + v5 * v17, type metadata accessor for StaticHome);
      (*(v75 + 8))(v30, v31);
      sub_1D1DC91B0(v28, type metadata accessor for StaticHome);
      v33 = *(v0 + 16);
      v24 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v24)
      {
        goto LABEL_49;
      }

      *(v0 + 16) = v34;
    }

    if (v79 == ++v2)
    {
      goto LABEL_29;
    }
  }

  v26 = v83[17];
  sub_1D1721458(v25, isUniquelyReferenced_nonNull_native);
  v20 = sub_1D1742188(v26);
  if ((v5 & 1) == (v27 & 1))
  {
    v0 = v84;
    goto LABEL_25;
  }

  v74 = v83[15];

  return sub_1D1E690FC();
}

uint64_t sub_1D1DB511C()
{
  v1 = v0[24];
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE0813C8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D16EC000, v4, v5, "updateHomes(timeout:) failed to refresh HomeKit data: %@", v6, 0xCu);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  type metadata accessor for WidgetSnapshotModerator.Error(0);
  sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
  swift_allocError();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v12 - 8) + 56))(v11, 4, 4, v12);
  swift_willThrow();

  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  v16 = v0[17];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D1DB5388()
{
  v1 = v0[26];
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE0813C8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D16EC000, v4, v5, "updateHomes(timeout:) failed to refresh HomeKit data: %@", v6, 0xCu);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  type metadata accessor for WidgetSnapshotModerator.Error(0);
  sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
  swift_allocError();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v12 - 8) + 56))(v11, 4, 4, v12);
  swift_willThrow();

  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  v16 = v0[17];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D1DB55F4()
{
  v1 = *(v0 + 112);
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_1D1741A30(v9, &qword_1EC649700, &qword_1D1E6E910);
  }

  return 1;
}

uint64_t sub_1D1DB5710(id *a1)
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

uint64_t sub_1D1DB581C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 264) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = sub_1D1E67E1C();
  *(v7 + 72) = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB58C4, v9, v8);
}

uint64_t sub_1D1DB58C4()
{
  v42 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 32);
  v3 = [*(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  *(v0 + 96) = sub_1D1DC8BA4(v4, v2, &selRef_accessories, &qword_1EE07B690, 0x1E696CAC8, sub_1D1DC8B1C);

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE0813C8);

    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6835C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v41);
      *(v10 + 12) = 2080;
      v12 = sub_1D1E66A7C();
      v13 = MEMORY[0x1D3891260](v9, v12);
      v15 = sub_1D1B1312C(v13, v14, v41);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1D16EC000, v7, v8, "%s Monitoring characteristics: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 24);
    *(v0 + 104) = (*(v18 + 8))(v19, v18);
    *(v0 + 112) = v21;
    *(v0 + 120) = (*(v18 + 16))(v19, v18);
    *(v0 + 128) = v22;
    *(v0 + 136) = *(v17 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 144) = sub_1D1E67E0C();
    v23 = sub_1D1E67D4C();
    v25 = v24;
    *(v0 + 152) = v23;
    *(v0 + 160) = v24;
    v26 = sub_1D1DB5D9C;
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 32);
    v28 = sub_1D1E6709C();
    __swift_project_value_buffer(v28, qword_1EE0813C8);

    v29 = sub_1D1E6707C();
    v30 = sub_1D1E6835C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 32);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v41);
      *(v32 + 12) = 2080;
      v34 = sub_1D1E66A7C();
      v35 = MEMORY[0x1D3891260](v31, v34);
      v37 = sub_1D1B1312C(v35, v36, v41);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_1D16EC000, v29, v30, "%s Fetching characteristics: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v33, -1, -1);
      MEMORY[0x1D3893640](v32, -1, -1);
    }

    v38 = *(v0 + 64);
    *(v0 + 200) = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 208) = sub_1D1E67E0C();
    v23 = sub_1D1E67D4C();
    v25 = v39;
    *(v0 + 216) = v23;
    *(v0 + 224) = v39;
    v26 = sub_1D1DB6140;
  }

  return MEMORY[0x1EEE6DFA0](v26, v23, v25);
}

uint64_t sub_1D1DB5D9C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v14 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = sub_1D1E67E0C();
  *(v0 + 168) = v6;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
  *(v7 + 40) = v14;
  *(v7 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v9 = v0;
  v9[1] = sub_1D1DB5ED8;
  v11 = *(v0 + 16);
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v11, v6, v12, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DCF7A8, v7, updated);
}

uint64_t sub_1D1DB5ED8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v13 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1D1DB6094;
  }

  else
  {
    v8 = v2[21];
    v7 = v2[22];
    v9 = v2[16];
    v10 = v2[14];
    v11 = v2[12];

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1D1DB6030;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DB6030()
{
  v1 = v0[18];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF7D0, v2, v3);
}

uint64_t sub_1D1DB6094()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[12];

  v7 = v0[10];
  v8 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF794, v7, v8);
}

uint64_t sub_1D1DB6140()
{
  v1 = v0[25];
  v2 = v0[12];
  v3 = v0[8];
  v4 = sub_1D1E67E0C();
  v0[29] = v4;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[31] = v7;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v7 = v0;
  v7[1] = sub_1D1DB625C;
  v9 = v0[2];
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v4, v10, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA6A9C, v5, updated);
}

uint64_t sub_1D1DB625C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v11 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_1D1DB63F8;
  }

  else
  {
    v8 = v2[29];
    v7 = v2[30];
    v9 = v2[12];

    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_1D1DB6394;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DB6394()
{
  v1 = v0[26];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF7D0, v2, v3);
}

uint64_t sub_1D1DB63F8()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[12];

  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF798, v5, v6);
}

uint64_t sub_1D1DB6484(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 264) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = sub_1D1E67E1C();
  *(v7 + 72) = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB652C, v9, v8);
}

uint64_t sub_1D1DB652C()
{
  v42 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 32);
  v3 = [*(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  *(v0 + 96) = sub_1D1DC83E4(v4, v2);

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE0813C8);

    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6835C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v41);
      *(v10 + 12) = 2080;
      v12 = sub_1D1E66A7C();
      v13 = MEMORY[0x1D3891260](v9, v12);
      v15 = sub_1D1B1312C(v13, v14, v41);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1D16EC000, v7, v8, "%s Monitoring actionSets: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 24);
    *(v0 + 104) = (*(v18 + 8))(v19, v18);
    *(v0 + 112) = v21;
    *(v0 + 120) = (*(v18 + 16))(v19, v18);
    *(v0 + 128) = v22;
    *(v0 + 136) = *(v17 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 144) = sub_1D1E67E0C();
    v23 = sub_1D1E67D4C();
    v25 = v24;
    *(v0 + 152) = v23;
    *(v0 + 160) = v24;
    v26 = sub_1D1DB69D8;
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 32);
    v28 = sub_1D1E6709C();
    __swift_project_value_buffer(v28, qword_1EE0813C8);

    v29 = sub_1D1E6707C();
    v30 = sub_1D1E6835C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 32);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v41);
      *(v32 + 12) = 2080;
      v34 = sub_1D1E66A7C();
      v35 = MEMORY[0x1D3891260](v31, v34);
      v37 = sub_1D1B1312C(v35, v36, v41);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_1D16EC000, v29, v30, "%s Fetching actionSets: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v33, -1, -1);
      MEMORY[0x1D3893640](v32, -1, -1);
    }

    v38 = *(v0 + 64);
    *(v0 + 200) = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 208) = sub_1D1E67E0C();
    v23 = sub_1D1E67D4C();
    v25 = v39;
    *(v0 + 216) = v23;
    *(v0 + 224) = v39;
    v26 = sub_1D1DB6D7C;
  }

  return MEMORY[0x1EEE6DFA0](v26, v23, v25);
}

uint64_t sub_1D1DB69D8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v14 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = sub_1D1E67E0C();
  *(v0 + 168) = v6;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
  *(v7 + 40) = v14;
  *(v7 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v9 = v0;
  v9[1] = sub_1D1DB6B14;
  v11 = *(v0 + 16);
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v11, v6, v12, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DCF44C, v7, updated);
}

uint64_t sub_1D1DB6B14()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v13 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1D1DB6C6C;
  }

  else
  {
    v8 = v2[21];
    v7 = v2[22];
    v9 = v2[16];
    v10 = v2[14];
    v11 = v2[12];

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_1D1DB6030;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DB6C6C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[12];

  v7 = v0[10];
  v8 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DB6D18, v7, v8);
}

uint64_t sub_1D1DB6D18()
{
  v1 = v0[24];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1DB6D7C()
{
  v1 = v0[25];
  v2 = v0[12];
  v3 = v0[8];
  v4 = sub_1D1E67E0C();
  v0[29] = v4;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[31] = v7;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v7 = v0;
  v7[1] = sub_1D1DB6E98;
  v9 = v0[2];
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v4, v10, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA82FC, v5, updated);
}

uint64_t sub_1D1DB6E98()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v11 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_1D1DB7034;
  }

  else
  {
    v8 = v2[29];
    v7 = v2[30];
    v9 = v2[12];

    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_1D1DB6FD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DB6FD0()
{
  v1 = v0[26];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DA5900, v2, v3);
}

uint64_t sub_1D1DB7034()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[12];

  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1DB70C0, v5, v6);
}

uint64_t sub_1D1DB70C0()
{
  v1 = v0[32];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1DB7124@<X0>(id *a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v35 = a6;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*a1 *a3];
  sub_1D1741B10(0, a4, a5);
  v17 = sub_1D1E67C1C();

  v18 = v17;
  v42 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
LABEL_18:
    v31 = v18;
    v19 = sub_1D1E6873C();
    v18 = v31;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_3:
      v20 = 0;
      v39 = v18 & 0xFFFFFFFFFFFFFF8;
      v40 = v18 & 0xC000000000000001;
      v34 = v18;
      v36 = v18 + 32;
      v37 = (v12 + 8);
      v38 = v19;
      while (1)
      {
        if (v40)
        {
          v21 = MEMORY[0x1D3891EF0](v20, v34);
          v22 = __OFADD__(v20++, 1);
          if (v22)
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v30 = v42;
            goto LABEL_20;
          }
        }

        else
        {
          if (v20 >= *(v39 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v21 = *(v36 + 8 * v20);
          v22 = __OFADD__(v20++, 1);
          if (v22)
          {
            goto LABEL_15;
          }
        }

        v41 = v21;
        v23 = [v21 uniqueIdentifier];
        sub_1D1E66A5C();

        v24 = 0;
        v25 = *(a2 + 16);
        do
        {
          if (v25 == v24)
          {
            (*v37)(v15, v11);

            goto LABEL_5;
          }

          v26 = v24 + 1;
          v27 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24;
          sub_1D1DC9C14(&qword_1EE07D170, 255, MEMORY[0x1E69695A8]);
          v28 = sub_1D1E6775C();
          v24 = v26;
        }

        while ((v28 & 1) == 0);
        (*v37)(v15, v11);
        sub_1D1E6896C();
        v29 = *(v42 + 16);
        sub_1D1E689AC();
        sub_1D1E689BC();
        v18 = sub_1D1E6897C();
LABEL_5:
        if (v20 == v38)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *v35 = v30;
  return result;
}

uint64_t WidgetSnapshotModerator.fetchMatterDevices<A>(home:configuration:isMonitoring:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 376) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v11 = sub_1D1E66FDC();
  *(v8 + 152) = v11;
  v12 = *(v11 - 8);
  *(v8 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v14 = *(a6 - 8);
  *(v8 + 184) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v16 = sub_1D1E66A7C();
  *(v8 + 224) = v16;
  v17 = *(v16 - 8);
  *(v8 + 232) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v19 = type metadata accessor for MatterStateSnapshot();
  *(v8 + 256) = v19;
  v20 = *(v19 - 8);
  *(v8 + 264) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB7694, v7, 0);
}

uint64_t sub_1D1DB7694()
{
  v184 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);
  v3 = [*(v0 + 96) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v4 = *(v2 + 120);
  if (*(v4 + 16) && (v5 = sub_1D1742188(*(v0 + 248)), (v6 & 1) != 0))
  {
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    v11 = *(v0 + 232);
    v12 = *(v0 + 112);
    sub_1D1DC9148(*(v4 + 56) + *(*(v0 + 264) + 72) * v5, v8, type metadata accessor for MatterStateSnapshot);
    sub_1D1DCF39C(v8, v7, type metadata accessor for MatterStateSnapshot);
    swift_endAccess();
    v13 = *(v11 + 8);
    *(v0 + 288) = v13;
    *(v0 + 296) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v172 = v13;
    v13(v9, v10);
    v14 = swift_task_alloc();
    *(v14 + 16) = v7;
    v15 = sub_1D1788858(sub_1D1BFA988, v14, v12);

    v16 = v15[2];

    if (v16)
    {
      if (*(v0 + 376) == 1)
      {
        v17 = *(v0 + 112);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v0 + 136);
          v20 = (v17 + 32);
          v21 = MEMORY[0x1E69E7CC0];
          do
          {
            v23 = *v20++;
            v22 = v23;
            swift_beginAccess();
            v24 = *(v19 + 152);
            if (*(v24 + 16) && (v25 = sub_1D17420B0(v22), (v26 & 1) != 0))
            {
              v27 = *(v24 + 56) + 40 * v25;
              v29 = *v27;
              v28 = *(v27 + 8);
              v176 = *(v27 + 16);
              v30 = *(v27 + 32);
              v31 = v0;
              swift_endAccess();

              swift_unknownObjectRetain();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_1D177E7E0(0, *(v21 + 2) + 1, 1, v21);
              }

              v33 = *(v21 + 2);
              v32 = *(v21 + 3);
              if (v33 >= v32 >> 1)
              {
                v21 = sub_1D177E7E0((v32 > 1), v33 + 1, 1, v21);
              }

              *(v21 + 2) = v33 + 1;
              v34 = &v21[40 * v33];
              *(v34 + 4) = v29;
              *(v34 + 5) = v28;
              *(v34 + 3) = v176;
              *(v34 + 8) = v30;
              v0 = v31;
            }

            else
            {
              swift_endAccess();
            }

            --v18;
          }

          while (v18);
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        *(v0 + 304) = v21;
        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v127 = *(v0 + 216);
        v128 = *(v0 + 184);
        v130 = *(v0 + 112);
        v129 = *(v0 + 120);
        v132 = *(v0 + 96);
        v131 = *(v0 + 104);
        v133 = sub_1D1E6709C();
        *(v0 + 312) = __swift_project_value_buffer(v133, qword_1EE0813C8);
        v134 = *(v128 + 16);
        *(v0 + 320) = v134;
        *(v0 + 328) = (v128 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v134(v127, v131, v129);
        v135 = v132;

        v136 = sub_1D1E6707C();
        v137 = sub_1D1E6835C();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = *(v0 + 240);
          v181 = v137;
          v139 = *(v0 + 216);
          v140 = *(v0 + 184);
          v142 = *(v0 + 120);
          v141 = *(v0 + 128);
          v164 = *(v0 + 224);
          v168 = *(v0 + 112);
          v163 = *(v0 + 96);
          v143 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v182 = v171;
          *v143 = 136315906;
          *(v143 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v182);
          *(v143 + 12) = 2080;
          v144 = (*(v141 + 8))(v142, v141);
          v146 = v145;
          v147 = *(v140 + 8);
          v147(v139, v142);
          v148 = sub_1D1B1312C(v144, v146, &v182);

          *(v143 + 14) = v148;
          *(v143 + 22) = 2080;
          v149 = [v163 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
          v150 = sub_1D1E68FAC();
          v152 = v151;
          v172(v138, v164);
          v153 = sub_1D1B1312C(v150, v152, &v182);

          *(v143 + 24) = v153;
          *(v143 + 32) = 2080;
          v154 = MEMORY[0x1D3891260](v168, MEMORY[0x1E69E76D8]);
          v156 = sub_1D1B1312C(v154, v155, &v182);

          *(v143 + 34) = v156;
          _os_log_impl(&dword_1D16EC000, v136, v181, "%s W:{%s} HM:{%s} Sending Native Matter Monitor command [%s]", v143, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v171, -1, -1);
          MEMORY[0x1D3893640](v143, -1, -1);
        }

        else
        {
          v157 = *(v0 + 216);
          v158 = *(v0 + 184);
          v159 = *(v0 + 120);

          v147 = *(v158 + 8);
          v147(v157, v159);
        }

        *(v0 + 336) = v147;
        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v160 = *(v0 + 176);
        v161 = sub_1D1E6701C();
        *(v0 + 344) = __swift_project_value_buffer(v161, qword_1EC6BE2B8);
        sub_1D1E66FCC();

        return MEMORY[0x1EEE6DFA0](sub_1D1DB8620, 0, 0);
      }

      v104 = *(v0 + 280);
      v106 = *(v0 + 256);
      v105 = *(v0 + 264);
      v162 = *(v0 + 240);
      v107 = *(v0 + 144);
      v175 = v104;
      v180 = *(v0 + 136);
      v108 = *(v0 + 112);
      v109 = *(v0 + 96);
      v167 = v106;
      v170 = *(v0 + 88);

      v111 = sub_1D1785204(v110);

      v112 = v109;

      v114 = sub_1D1785204(v113);

      sub_1D1DC9148(v104, v107, type metadata accessor for MatterStateSnapshot);
      v115 = *(v105 + 56);
      v115(v107, 0, 1, v106);
      v116 = sub_1D1A2B978(v107, v111, v109, 2, v112, v114, 1);

      v117 = [v112 matterControllerID];
      v118 = sub_1D1E6781C();
      v120 = v119;

      v121 = [v112 uniqueIdentifier];
      sub_1D1E66A5C();

      v182 = v114;
      v183 = 1;
      sub_1D1A28CB8(v118, v120, v162, v116, &v182, v170);
      sub_1D1741A30(v107, &unk_1EC64F390, &qword_1D1E92B10);
      v122 = [v112 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9148(v170, v107, type metadata accessor for MatterStateSnapshot);
      v115(v107, 0, 1, v167);
      swift_beginAccess();
      sub_1D1B0E5E8(v107, v162);
      swift_endAccess();
      sub_1D1DC91B0(v175, type metadata accessor for MatterStateSnapshot);
    }

    else
    {
      if (qword_1EE07A098 != -1)
      {
        swift_once();
      }

      v80 = *(v0 + 200);
      v81 = *(v0 + 184);
      v82 = *(v0 + 120);
      v84 = *(v0 + 96);
      v83 = *(v0 + 104);
      v85 = sub_1D1E6709C();
      __swift_project_value_buffer(v85, qword_1EE0813C8);
      (*(v81 + 16))(v80, v83, v82);
      v86 = v84;
      v87 = sub_1D1E6707C();
      v88 = sub_1D1E6833C();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = *(v0 + 240);
        v90 = *(v0 + 200);
        v91 = *(v0 + 184);
        v92 = *(v0 + 120);
        v93 = *(v0 + 128);
        v166 = *(v0 + 96);
        v169 = *(v0 + 224);
        v94 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v182 = v179;
        *v94 = 136315650;
        *(v94 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v182);
        *(v94 + 12) = 2080;
        v95 = (*(v93 + 8))(v92, v93);
        v97 = v96;
        (*(v91 + 8))(v90, v92);
        v98 = sub_1D1B1312C(v95, v97, &v182);

        *(v94 + 14) = v98;
        *(v94 + 22) = 2080;
        v99 = [v166 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
        v100 = sub_1D1E68FAC();
        v102 = v101;
        v172(v89, v169);
        v103 = sub_1D1B1312C(v100, v102, &v182);

        *(v94 + 24) = v103;
        _os_log_impl(&dword_1D16EC000, v87, v88, "%s W:{%s} HM:{%s} 0 matching devices", v94, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v179, -1, -1);
        MEMORY[0x1D3893640](v94, -1, -1);
      }

      else
      {
        v123 = *(v0 + 200);
        v124 = *(v0 + 184);
        v125 = *(v0 + 120);

        (*(v124 + 8))(v123, v125);
      }

      v126 = *(v0 + 280);
      sub_1D1DC9148(v126, *(v0 + 88), type metadata accessor for MatterStateSnapshot);
      sub_1D1DC91B0(v126, type metadata accessor for MatterStateSnapshot);
    }
  }

  else
  {
    v35 = *(v0 + 248);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    swift_endAccess();
    v38 = *(v37 + 8);
    v38(v35, v36);
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 184);
    v39 = *(v0 + 192);
    v41 = *(v0 + 120);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);
    v44 = sub_1D1E6709C();
    __swift_project_value_buffer(v44, qword_1EE0813C8);
    (*(v40 + 16))(v39, v42, v41);
    v45 = v43;
    v46 = sub_1D1E6707C();
    v47 = sub_1D1E6833C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = *(v0 + 240);
      v173 = *(v0 + 224);
      v174 = v38;
      v50 = *(v0 + 184);
      v49 = *(v0 + 192);
      v51 = *(v0 + 120);
      v52 = *(v0 + 128);
      v165 = *(v0 + 96);
      v53 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v182 = v177;
      *v53 = 136315650;
      *(v53 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v182);
      *(v53 + 12) = 2080;
      v54 = (*(v52 + 8))(v51, v52);
      v56 = v55;
      (*(v50 + 8))(v49, v51);
      v57 = sub_1D1B1312C(v54, v56, &v182);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2080;
      v58 = [v165 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
      v59 = sub_1D1E68FAC();
      v61 = v60;
      v174(v48, v173);
      v62 = sub_1D1B1312C(v59, v61, &v182);

      *(v53 + 24) = v62;
      _os_log_impl(&dword_1D16EC000, v46, v47, "%s W:{%s} HM:{%s} failed to find MatterStateSnapshot", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v177, -1, -1);
      MEMORY[0x1D3893640](v53, -1, -1);
    }

    else
    {
      v64 = *(v0 + 184);
      v63 = *(v0 + 192);
      v65 = *(v0 + 120);

      (*(v64 + 8))(v63, v65);
    }

    if (qword_1EE07D498 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 88);
    v67 = __swift_project_value_buffer(*(v0 + 256), qword_1EE07D4A0);
    sub_1D1DC9148(v67, v66, type metadata accessor for MatterStateSnapshot);
  }

  v69 = *(v0 + 272);
  v68 = *(v0 + 280);
  v71 = *(v0 + 240);
  v70 = *(v0 + 248);
  v73 = *(v0 + 208);
  v72 = *(v0 + 216);
  v75 = *(v0 + 192);
  v74 = *(v0 + 200);
  v77 = *(v0 + 168);
  v76 = *(v0 + 176);
  v178 = *(v0 + 144);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_1D1DB8620()
{
  v1 = v0[43];
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = v0[22];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.Monitor.Matter", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[19];
  v10 = v0[20];

  (*(v10 + 16))(v8, v7, v9);
  v11 = sub_1D1E6705C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[44] = sub_1D1E6704C();
  v14 = swift_task_alloc();
  v0[45] = v14;
  *v14 = v0;
  v14[1] = sub_1D1DB8798;
  v15 = v0[38];
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[15];
  v19 = v0[13];

  return sub_1D1DB9230(v14, v16, v15, v19, v18, v17);
}

uint64_t sub_1D1DB8798()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1D1DB8F20;
  }

  else
  {
    v3 = sub_1D1DB88AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1DB88AC()
{
  v1 = v0[38];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  sub_1D1760838(v0[43], "Widget.Monitor.Matter", 21, 2, v0[44]);

  (*(v4 + 8))(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB8970, v5, 0);
}

uint64_t sub_1D1DB8970()
{
  v77 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  (*(v0 + 320))(*(v0 + 208), *(v0 + 104), *(v0 + 120));
  v5 = v4;

  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 336);
  if (v8)
  {
    v65 = *(v0 + 288);
    v67 = *(v0 + 296);
    v10 = *(v0 + 240);
    v72 = v7;
    v11 = *(v0 + 208);
    v12 = *(v0 + 184);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v69 = *(v0 + 112);
    v61 = *(v0 + 96);
    v63 = *(v0 + 224);
    v15 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v75 = v70;
    *v15 = 136315906;
    *(v15 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v75);
    *(v15 + 12) = 2080;
    v16 = (*(v13 + 8))(v14, v13);
    v18 = v17;
    v9(v11, v14);
    v19 = sub_1D1B1312C(v16, v18, &v75);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    v20 = [v61 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
    v21 = sub_1D1E68FAC();
    v23 = v22;
    v65(v10, v63);
    v24 = sub_1D1B1312C(v21, v23, &v75);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2080;
    v25 = MEMORY[0x1D3891260](v69, MEMORY[0x1E69E76D8]);
    v27 = sub_1D1B1312C(v25, v26, &v75);

    *(v15 + 34) = v27;
    _os_log_impl(&dword_1D16EC000, v6, v72, "%s W:{%s} HM:{%s} Native Matter Monitor command succeeded [%s]", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v70, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);
    v30 = *(v0 + 120);

    v9(v28, v30);
  }

  v31 = *(v0 + 280);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);
  v62 = *(v0 + 240);
  v34 = *(v0 + 144);
  v71 = v31;
  v73 = *(v0 + 136);
  v35 = *(v0 + 112);
  v36 = *(v0 + 96);
  v66 = v33;
  v68 = *(v0 + 88);

  v38 = sub_1D1785204(v37);

  v39 = v36;

  v41 = sub_1D1785204(v40);

  sub_1D1DC9148(v31, v34, type metadata accessor for MatterStateSnapshot);
  v64 = *(v32 + 56);
  v64(v34, 0, 1, v33);
  v60 = sub_1D1A2B978(v34, v38, v36, 2, v39, v41, 1);

  v42 = [v39 matterControllerID];
  v43 = sub_1D1E6781C();
  v45 = v44;

  v46 = [v39 uniqueIdentifier];
  sub_1D1E66A5C();

  v75 = v41;
  v76 = 1;
  sub_1D1A28CB8(v43, v45, v62, v60, &v75, v68);
  sub_1D1741A30(v34, &unk_1EC64F390, &qword_1D1E92B10);
  v47 = [v39 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1DC9148(v68, v34, type metadata accessor for MatterStateSnapshot);
  v64(v34, 0, 1, v66);
  swift_beginAccess();
  sub_1D1B0E5E8(v34, v62);
  swift_endAccess();
  sub_1D1DC91B0(v71, type metadata accessor for MatterStateSnapshot);
  v49 = *(v0 + 272);
  v48 = *(v0 + 280);
  v51 = *(v0 + 240);
  v50 = *(v0 + 248);
  v53 = *(v0 + 208);
  v52 = *(v0 + 216);
  v55 = *(v0 + 192);
  v54 = *(v0 + 200);
  v57 = *(v0 + 168);
  v56 = *(v0 + 176);
  v74 = *(v0 + 144);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_1D1DB8F20()
{
  v1 = v0[38];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  sub_1D1760838(v0[43], "Widget.Monitor.Matter", 21, 2, v0[44]);

  (*(v4 + 8))(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB8FE4, v5, 0);
}

uint64_t sub_1D1DB8FE4()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[22];
  v12 = v0[21];
  v13 = v0[18];
  sub_1D1DC91B0(v0[35], type metadata accessor for MatterStateSnapshot);

  v9 = v0[1];
  v10 = v0[46];

  return v9();
}

uint64_t sub_1D1DB90F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for MatterStateSnapshot() + 24));
  if (*(v5 + 16) && (v6 = sub_1D17420B0(*a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for StaticMatterDevice();
    v11 = *(v10 - 8);
    sub_1D1DC9148(v9 + *(v11 + 72) * v8, a3, type metadata accessor for StaticMatterDevice);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for StaticMatterDevice();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1D1DB9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1DB9258, 0, 0);
}

uint64_t sub_1D1DB9258()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = (*(v1 + 8))(v2, v1);
  v7 = v6;
  v0[7] = v6;
  v8 = (*(v1 + 16))(v2, v1);
  v10 = v9;
  v0[8] = v9;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1D1DB9378;
  v12 = v0[3];

  return WidgetManager.monitorState(for:widgetIdentifier:kind:)(v12, v5, v7, v8, v10);
}

uint64_t sub_1D1DB9378()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1DB94C0, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1D1DB94C0()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1D1DB952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v5[18] = updated;
  v11 = *(*(updated - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v12 = sub_1D1E66FDC();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v15 = type metadata accessor for StateSnapshot(0);
  v5[28] = v15;
  v16 = *(v15 - 8);
  v5[29] = v16;
  v17 = *(v16 + 64) + 15;
  v5[30] = swift_task_alloc();
  v18 = *(*(type metadata accessor for StaticHome() - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = *(v20 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB9808, v4, 0);
}

uint64_t sub_1D1DB9808()
{
  v31 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  sub_1D1741C08(v7, v2, &qword_1EC642590, qword_1D1E71260);
  v28 = *(v7 + *(type metadata accessor for WidgetRefresh() + 40));
  *(v0 + 52) = v28;
  sub_1D1741C08(v2, v1, &qword_1EC642590, qword_1D1E71260);
  v8 = (*(v4 + 48))(v1, 1, v3);
  v9 = *(v0 + 272);
  if (v8 == 1)
  {
    sub_1D1741A30(*(v0 + 272), &qword_1EC642590, qword_1D1E71260);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v11 = sub_1D1E66A1C();
    v10 = v14;
    (*(v13 + 8))(v9, v12);
  }

  *(v0 + 288) = v11;
  *(v0 + 296) = v10;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v15 = sub_1D1E6709C();
  *(v0 + 304) = __swift_project_value_buffer(v15, qword_1EE0813C8);

  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1D1B1312C(v11, v10, &v29);
    *(v18 + 12) = 2080;
    v30 = v28;
    WidgetRefreshOptions.description.getter();
    v22 = sub_1D1B1312C(v20, v21, &v29);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1D16EC000, v16, v17, "updateMinimalState(homeID:filtered:) HM:{%s} F:{%s}", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }

  v23 = swift_task_alloc();
  *(v0 + 312) = v23;
  *v23 = v0;
  v23[1] = sub_1D1DB9B00;
  v24 = *(v0 + 280);
  v25 = *(v0 + 248);
  v26 = *(v0 + 88);

  return sub_1D1DB11A0(v25, v24, 1);
}

uint64_t sub_1D1DB9B00()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v9 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 296);
    v5 = *(v2 + 88);

    v6 = sub_1D1DBBA50;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = sub_1D1DB9C28;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D1DB9C28()
{
  v45 = v0;
  v1 = v0[40];
  v2 = v0[31];
  v3 = *(v0[11] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  v0[41] = v3;
  v4 = [v3 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v5 = sub_1D1E67C1C();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  v7 = sub_1D174A6C4(sub_1D1BFA878, v6, v5);
  v0[42] = v7;

  sub_1D1DC91B0(v2, type metadata accessor for StaticHome);
  if (v7)
  {
    v8 = v0[37];

    if (qword_1EC642488 != -1)
    {
      swift_once();
    }

    v9 = v0[27];
    v10 = v0[11];
    v11 = sub_1D1E6701C();
    v0[43] = __swift_project_value_buffer(v11, qword_1EC6BE2B8);
    v12 = v7;

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1DBA074, 0, 0);
  }

  else
  {
    v14 = v0[37];
    v13 = v0[38];

    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6833C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[37];
    if (v17)
    {
      v19 = v0[36];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v20 = 136315138;
      v22 = sub_1D1B1312C(v19, v18, &v44);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1D16EC000, v15, v16, "updateMinimalState(homeID:filtered:) HM:{%s} failed to find home", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {
    }

    v23 = v0[35];
    v24 = v0[32];
    v25 = v0[33];
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v27 = v26;
    sub_1D1741C08(v23, v26, &qword_1EC642590, qword_1D1E71260);
    (*(v25 + 56))(v27, 0, 4, v24);
    swift_willThrow();
    v28 = v0[34];
    v30 = v0[30];
    v29 = v0[31];
    v31 = v0[26];
    v32 = v0[27];
    v34 = v0[24];
    v33 = v0[25];
    v35 = v0[23];
    v38 = v0[20];
    v39 = v0[19];
    v40 = v0[17];
    v41 = v0[16];
    v42 = v0[13];
    v43 = v0[12];
    sub_1D1741A30(v0[35], &qword_1EC642590, qword_1D1E71260);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_1D1DBA074()
{
  v1 = v0[43];
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = v0[27];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.FirstSnapshot", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  v14 = v0[18];
  v23 = v0[17];
  v24 = v0[11];

  v15 = *(v11 + 16);
  v0[44] = v15;
  v0[45] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v10, v9, v12);
  v16 = sub_1D1E6705C();
  v0[46] = v16;
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[47] = sub_1D1E6704C();
  *v13 = v7;
  swift_storeEnumTagMultiPayload();
  v19 = v7;
  v20 = v8;
  v21 = [v19 uniqueIdentifier];
  sub_1D1E66A5C();

  return MEMORY[0x1EEE6DFA0](sub_1D1DBA22C, v24, 0);
}

uint64_t sub_1D1DBA22C()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1D1742188(v0[17]), (v4 & 1) != 0))
  {
    sub_1D1DC9148(*(v2 + 56) + *(v0[29] + 72) * v3, v0[13], type metadata accessor for StateSnapshot);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[28];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  v11 = *(v0[29] + 56);
  v0[48] = v11;
  v11(v10, v5, 1, v6);
  swift_endAccess();
  v12 = *(v9 + 8);
  v0[49] = v12;
  v0[50] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBA350, 0, 0);
}

uint64_t sub_1D1DBA350()
{
  if ((*(v0 + 52) & 0x61) != 0)
  {
    if (qword_1EE07CD90 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE07CD98;
  }

  else
  {
    v1 = sub_1D179B6E8(&unk_1F4D5FF60);
    swift_arrayDestroy();
  }

  v2 = *(v0 + 376);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = *(v0 + 240);
  v6 = *(v0 + 176);
  v13 = *(v0 + 168);
  v14 = *(v0 + 216);
  v7 = *(v0 + 160);
  v8 = *(v0 + 104);
  v12 = *(v0 + 88);
  v9 = *(v0 + 336);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v7, v4, v9, v8, v1, v5);
  sub_1D1760838(v3, "Widget.FirstSnapshot", 20, 2, v2);

  v10 = *(v6 + 8);
  *(v0 + 408) = v10;
  *(v0 + 416) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v14, v13);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBA4F0, v12, 0);
}

uint64_t sub_1D1DBA4F0()
{
  v82 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 336);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 392);
    v77 = *(v0 + 400);
    v6 = *(v0 + 336);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v81 = v10;
    *v9 = 136315138;
    v11 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
    v12 = sub_1D1E68FAC();
    v14 = v13;
    v5(v7, v8);
    v15 = sub_1D1B1312C(v12, v14, &v81);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v3, v4, "updateMinimalState(homeID:filtered:) HM:{%s} generated snapshot", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v16 = *(v0 + 52);
  if ((v16 & 0x1000001) != 0)
  {
    v17 = *(v0 + 304);
    v18 = *(v0 + 336);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 392);
      v78 = *(v0 + 400);
      v22 = *(v0 + 336);
      v23 = *(v0 + 128);
      v24 = *(v0 + 112);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v81 = v26;
      *v25 = 136315138;
      v27 = [v22 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
      v28 = sub_1D1E68FAC();
      v30 = v29;
      v21(v23, v24);
      v31 = sub_1D1B1312C(v28, v30, &v81);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1D16EC000, v19, v20, "updateMinimalState(homeID:filtered:) HM:{%s} includes Matter update", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    v32 = *(v0 + 200);
    v33 = *(v0 + 88);
    v34 = *(v0 + 336);

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1DBAC18, 0, 0);
  }

  else if ((v16 & 0x1000) != 0 && (v35 = *(v0 + 88), v36 = sub_1D1DB0D74(*(v0 + 336)), (*(v0 + 440) = v36) != 0))
  {
    v38 = v36;
    v39 = v37;
    v40 = *(v0 + 304);
    v41 = *(v0 + 336);
    v42 = sub_1D1E6707C();
    v43 = sub_1D1E6835C();

    if (os_log_type_enabled(v42, v43))
    {
      v75 = *(v0 + 392);
      v79 = *(v0 + 400);
      v44 = *(v0 + 336);
      v45 = *(v0 + 128);
      v46 = *(v0 + 112);
      v47 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81 = v73;
      *v47 = 136315138;
      v48 = [v44 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
      v49 = sub_1D1E68FAC();
      v51 = v50;
      v75(v45, v46);
      v52 = sub_1D1B1312C(v49, v51, &v81);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D16EC000, v42, v43, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1D3893640](v73, -1, -1);
      MEMORY[0x1D3893640](v47, -1, -1);
    }

    v53 = *(v0 + 192);
    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v54 = swift_task_alloc();
    *(v0 + 448) = v54;
    *v54 = v0;
    v54[1] = sub_1D1DBB36C;
    v55 = *(v0 + 344);
    v56 = *(v0 + 192);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v56, v55, v38, v39);
  }

  else
  {
    v57 = *(v0 + 336);
    v58 = *(v0 + 240);
    v59 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 280), &qword_1EC642590, qword_1D1E71260);

    sub_1D1DC9148(v58, v59, type metadata accessor for StateSnapshot);
    v61 = *(v0 + 272);
    v60 = *(v0 + 280);
    v62 = *(v0 + 248);
    v64 = *(v0 + 208);
    v63 = *(v0 + 216);
    v65 = *(v0 + 192);
    v66 = *(v0 + 200);
    v67 = *(v0 + 184);
    v70 = *(v0 + 160);
    v71 = *(v0 + 152);
    v72 = *(v0 + 136);
    v74 = *(v0 + 128);
    v76 = *(v0 + 104);
    v80 = *(v0 + 96);
    sub_1D1DC91B0(*(v0 + 240), type metadata accessor for StateSnapshot);

    v68 = *(v0 + 8);

    return v68();
  }
}

uint64_t sub_1D1DBAC18()
{
  v1 = *(v0 + 344);
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.BuildMatterDeviceCache", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 352);
  v10 = *(v0 + 336);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 168);

  v9(v11, v12, v13);
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 424) = sub_1D1E6704C();
  *(v0 + 40) = sub_1D179C134(&unk_1F4D600A8);
  *(v0 + 48) = 2;
  v16 = swift_task_alloc();
  *(v0 + 432) = v16;
  *v16 = v0;
  v16[1] = sub_1D1DBADAC;
  v17 = *(v0 + 88);

  return sub_1D1DB3224(v10, (v0 + 40));
}

uint64_t sub_1D1DBADAC()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v5 = *v0;

  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBAEC4, 0, 0);
}

uint64_t sub_1D1DBAEC4()
{
  v1 = v0[52];
  v2 = v0[51];
  v3 = v0[42];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[11];
  sub_1D1760838(v0[43], "Widget.BuildMatterDeviceCache", 29, 2, v0[53]);

  v2(v4, v5);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBAF8C, v6, 0);
}

uint64_t sub_1D1DBAF8C()
{
  v46 = v0;
  if ((*(v0 + 52) & 0x1001) != 0 && (v1 = *(v0 + 88), v2 = sub_1D1DB0D74(*(v0 + 336)), (*(v0 + 440) = v2) != 0))
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v0 + 304);
    v7 = *(v0 + 336);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v41 = *(v0 + 392);
      v43 = *(v0 + 400);
      v10 = *(v0 + 336);
      v11 = *(v0 + 128);
      v12 = *(v0 + 112);
      v13 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v13 = 136315138;
      v14 = [v10 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
      v15 = sub_1D1E68FAC();
      v17 = v16;
      v41(v11, v12);
      v18 = sub_1D1B1312C(v15, v17, &v45);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D16EC000, v8, v9, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D3893640](v39, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    v19 = *(v0 + 192);
    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v20 = swift_task_alloc();
    *(v0 + 448) = v20;
    *v20 = v0;
    v20[1] = sub_1D1DBB36C;
    v21 = *(v0 + 344);
    v22 = *(v0 + 192);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v22, v21, v4, v5);
  }

  else
  {
    v24 = *(v0 + 336);
    v25 = *(v0 + 240);
    v26 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 280), &qword_1EC642590, qword_1D1E71260);

    sub_1D1DC9148(v25, v26, type metadata accessor for StateSnapshot);
    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    v29 = *(v0 + 248);
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 192);
    v33 = *(v0 + 200);
    v34 = *(v0 + 184);
    v36 = *(v0 + 160);
    v37 = *(v0 + 152);
    v38 = *(v0 + 136);
    v40 = *(v0 + 128);
    v42 = *(v0 + 104);
    v44 = *(v0 + 96);
    sub_1D1DC91B0(*(v0 + 240), type metadata accessor for StateSnapshot);

    v35 = *(v0 + 8);

    return v35();
  }
}

void sub_1D1DBB36C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = a1;

  v7 = v3[55];
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v4[51];
    v8 = v4[52];
    v10 = v4[24];
    v11 = v4[21];
    v12 = v4[11];
    swift_unknownObjectRelease();
    v9(v10, v11);

    MEMORY[0x1EEE6DFA0](sub_1D1DBB4EC, v12, 0);
  }
}

uint64_t sub_1D1DBB4EC()
{
  v80 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 336);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 392);
    v76 = *(v0 + 400);
    v6 = *(v0 + 336);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v79 = v10;
    *v9 = 136315138;
    v11 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
    v12 = sub_1D1E68FAC();
    v14 = v13;
    v5(v7, v8);
    v15 = sub_1D1B1312C(v12, v14, &v79);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v3, v4, "updateMinimalState(homeID:filtered:) HM:{%s} predictions fetched", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v16 = *(v0 + 344);
  v17 = *(v0 + 184);
  sub_1D1E66FCC();
  v18 = sub_1D1E66FFC();
  v19 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v20 = *(v0 + 184);
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v18, v19, v22, "Widget.MergedPredictionsSnapshot", "", v21, 2u);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v24 = *(v0 + 360);
  v23 = *(v0 + 368);
  v25 = *(v0 + 352);
  v26 = v18;
  v27 = *(v0 + 52);
  v60 = *(v0 + 456);
  v61 = *(v0 + 240);
  v67 = *(v0 + 232);
  v70 = *(v0 + 224);
  v73 = *(v0 + 384);
  v28 = *(v0 + 208);
  v29 = *(v0 + 184);
  v30 = *(v0 + 168);
  v31 = *(v0 + 152);
  v59 = *(v0 + 144);
  v32 = *(v0 + 96);

  v64 = v27 & 0x61;
  v25(v28, v29, v30);
  v33 = *(v23 + 48);
  v34 = *(v23 + 52);
  swift_allocObject();
  v77 = sub_1D1E6704C();
  *v31 = v60;
  swift_storeEnumTagMultiPayload();
  sub_1D1DC9148(v61, v32, type metadata accessor for StateSnapshot);
  v73(v32, 0, 1, v70);
  v35 = *(v0 + 456);
  v36 = *(v0 + 328);
  if (v64)
  {
    v37 = qword_1EE07CD90;
    v38 = v36;

    if (v37 != -1)
    {
      swift_once();
    }

    v39 = qword_1EE07CD98;
  }

  else
  {
    v40 = v36;

    v39 = sub_1D179B6E8(&unk_1F4D65098);
    swift_arrayDestroy();
  }

  v41 = *(v0 + 440);
  v65 = *(v0 + 456);
  v68 = *(v0 + 408);
  v42 = *(v0 + 344);
  v43 = *(v0 + 328);
  v71 = *(v0 + 280);
  v74 = *(v0 + 416);
  v62 = *(v0 + 184);
  v44 = *(v0 + 168);
  v45 = *(v0 + 152);
  v46 = *(v0 + 96);
  v47 = *(v0 + 56);
  v48 = *(v0 + 336);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v45, v43, v48, v46, v39, v47);
  sub_1D1760838(v42, "Widget.MergedPredictionsSnapshot", 32, 2, v77);

  swift_unknownObjectRelease();

  v68(v62, v44);
  sub_1D1741A30(v71, &qword_1EC642590, qword_1D1E71260);
  v50 = *(v0 + 272);
  v49 = *(v0 + 280);
  v51 = *(v0 + 248);
  v53 = *(v0 + 208);
  v52 = *(v0 + 216);
  v54 = *(v0 + 192);
  v55 = *(v0 + 200);
  v56 = *(v0 + 184);
  v63 = *(v0 + 160);
  v66 = *(v0 + 152);
  v69 = *(v0 + 136);
  v72 = *(v0 + 128);
  v75 = *(v0 + 104);
  v78 = *(v0 + 96);
  sub_1D1DC91B0(*(v0 + 240), type metadata accessor for StateSnapshot);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1D1DBBA50()
{
  v17 = v0[40];
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v11 = v0[20];
  v12 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[12];
  sub_1D1741A30(v0[35], &qword_1EC642590, qword_1D1E71260);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1DBBB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v5[12] = updated;
  v7 = *(updated - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_1D1E67E1C();
  v5[16] = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  v5[17] = v10;
  v5[18] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1DBBC98, v10, v9);
}

uint64_t sub_1D1DBBC98()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = type metadata accessor for WidgetDetailUpdate();
  *(v0 + 152) = v4;
  v5 = v4[12];
  *(v0 + 192) = v5;
  v6 = *(v3 + v4[9]);
  v7 = *(v3 + v4[14]);
  *(v0 + 196) = v7;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_1D1DBBD80;
  v9 = *(v0 + 120);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);

  return sub_1D1DB581C(v9, v3 + v5, v6, v7, v12, v10);
}

uint64_t sub_1D1DBBD80()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_1D1DBC2B4;
  }

  else
  {
    v7 = sub_1D1DBBEBC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D1DBBEBC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 64);
  v3 = *(v2 + *(*(v0 + 152) + 40));
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_1D1DBBF80;
  v5 = *(v0 + 196);
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);

  return sub_1D1DB6484(v6, v2 + v1, v3, v5, v9, v7);
}

uint64_t sub_1D1DBBF80()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_1D1DBC328;
  }

  else
  {
    v7 = sub_1D1DBC0BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D1DBC0BC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D1E6F900;
  v10 = (v9 + v8);
  *v10 = v6;
  swift_storeEnumTagMultiPayload();
  sub_1D1DC9148(v2, v10 + v7, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1DC9148(v3, v10 + 2 * v7, type metadata accessor for StateSnapshot.UpdateType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v6;
  v12 = v6;
  v13 = sub_1D1ABB498(v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  sub_1D1DC91B0(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1DC91B0(v2, type metadata accessor for StateSnapshot.UpdateType);

  v15 = v0[1];

  return v15(v13);
}

uint64_t sub_1D1DBC2B4()
{
  v1 = v0[16];

  v2 = v0[21];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1DBC328()
{
  v2 = v0[15];
  v1 = v0[16];

  sub_1D1DC91B0(v2, type metadata accessor for StateSnapshot.UpdateType);
  v3 = v0[23];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1DBC3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v8 = sub_1D1E66FDC();
  v5[26] = v8;
  v9 = *(v8 - 8);
  v5[27] = v9;
  v10 = *(v9 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v11 = type metadata accessor for WidgetRefresh();
  v5[30] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v13 = type metadata accessor for StateSnapshot(0);
  v5[32] = v13;
  v14 = *(v13 - 8);
  v5[33] = v14;
  v15 = *(v14 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v16 = sub_1D1E66A7C();
  v5[37] = v16;
  v17 = *(v16 - 8);
  v5[38] = v17;
  v18 = *(v17 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v20 = *(*(type metadata accessor for StaticHome() - 8) + 64) + 15;
  v21 = swift_task_alloc();
  v5[45] = v21;
  v22 = swift_task_alloc();
  v5[46] = v22;
  *v22 = v5;
  v22[1] = sub_1D1DBC6BC;

  return sub_1D1DB11A0(v21, a2, 1);
}

uint64_t sub_1D1DBC6BC()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1D1DBE380;
  }

  else
  {
    v6 = sub_1D1DBC7E8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DBC7E8()
{
  v96 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = [*(*(v0 + 192) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  v6 = sub_1D174A6C4(sub_1D1BFAA84, v5, v4);
  *(v0 + 384) = v6;

  sub_1D1DC91B0(v2, type metadata accessor for StaticHome);
  if (v6)
  {
    v7 = *(v0 + 328);
    v8 = *(v0 + 192);
    v9 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_beginAccess();
    v10 = *(v8 + 112);
    if (*(v10 + 16) && (v11 = sub_1D1742188(*(v0 + 328)), (v12 & 1) != 0))
    {
      sub_1D1DC9148(*(v10 + 56) + *(*(v0 + 264) + 72) * v11, *(v0 + 352), type metadata accessor for StateSnapshot);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(v0 + 352);
    v15 = *(v0 + 328);
    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    v18 = *(v0 + 256);
    v19 = *(v0 + 264);
    v20 = *(v19 + 56);
    *(v0 + 392) = v20;
    v20(v14, v13, 1, v18);
    swift_endAccess();
    v21 = *(v17 + 8);
    *(v0 + 400) = v21;
    *(v0 + 408) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v15, v16);
    v22 = *(v19 + 48);
    if (v22(v14, 1, v18) == 1)
    {
      v23 = *(v0 + 248);
      v24 = *(v0 + 176);
      v25 = *(v0 + 184);
      v26 = *(v0 + 168);
      v27 = type metadata accessor for WidgetDetailUpdate();
      sub_1D1DAF094(v27, v23);
      v28 = swift_task_alloc();
      *(v0 + 416) = v28;
      *v28 = v0;
      v28[1] = sub_1D1DBD048;
      v29 = *(v0 + 280);
      v30 = *(v0 + 248);
      v31 = *(v0 + 184);
      v32 = *(v0 + 192);
      v33 = *(v0 + 176);

      return sub_1D1DB952C(v29, v30, v33, v31);
    }

    else
    {
      v50 = *(v0 + 344);
      v51 = *(v0 + 256);
      sub_1D1741C08(*(v0 + 352), v50, &unk_1EC649E30, &unk_1D1E91250);
      v52 = v22(v50, 1, v51);
      if (v52 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_1D1DCF39C(*(v0 + 344), *(v0 + 280), type metadata accessor for StateSnapshot);
        v56 = *(v0 + 176);
        v55 = *(v0 + 184);
        v57 = *(v0 + 168);
        sub_1D1DCF39C(*(v0 + 280), *(v0 + 288), type metadata accessor for StateSnapshot);
        v58 = type metadata accessor for WidgetDetailUpdate();
        *(v0 + 432) = v58;
        v59 = *(v57 + *(v58 + 56));
        *(v0 + 496) = v59;
        if (v59 == 1)
        {
          v60 = *(v0 + 384);
          v62 = *(v0 + 184);
          v61 = *(v0 + 192);
          v64 = *(v0 + 168);
          v63 = *(v0 + 176);
          v65 = *(v64 + *(v58 + 36));
          v93 = v58;
          v66 = swift_task_alloc();
          v66[2] = v63;
          v66[3] = v62;
          v66[4] = v64;
          v66[5] = v60;
          v67 = sub_1D1892678(sub_1D1DCF7B8, v66, v65);

          swift_beginAccess();
          sub_1D1951664(v67);
          swift_endAccess();

          v68 = *(v64 + *(v93 + 40));
          v69 = swift_task_alloc();
          v69[2] = v63;
          v69[3] = v62;
          v69[4] = v64;
          v69[5] = v60;
          v70 = sub_1D1892678(sub_1D1DCF428, v69, v68);

          swift_beginAccess();
          sub_1D1951664(v70);
          swift_endAccess();
        }

        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v71 = *(v0 + 384);
        v72 = sub_1D1E6709C();
        *(v0 + 440) = __swift_project_value_buffer(v72, qword_1EE0813C8);
        v73 = v71;
        v74 = sub_1D1E6707C();
        v75 = sub_1D1E6835C();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = *(v0 + 400);
          v94 = *(v0 + 408);
          v77 = *(v0 + 384);
          v78 = *(v0 + 320);
          v79 = *(v0 + 296);
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v95 = v81;
          *v80 = 136315138;
          v82 = [v77 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
          v83 = sub_1D1E68FAC();
          v85 = v84;
          v76(v78, v79);
          v86 = sub_1D1B1312C(v83, v85, &v95);

          *(v80 + 4) = v86;
          _os_log_impl(&dword_1D16EC000, v74, v75, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v81);
          MEMORY[0x1D3893640](v81, -1, -1);
          MEMORY[0x1D3893640](v80, -1, -1);
        }

        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v87 = *(v0 + 232);
        v88 = sub_1D1E6701C();
        *(v0 + 448) = __swift_project_value_buffer(v88, qword_1EC6BE2B8);
        sub_1D1E66FCC();
        v52 = sub_1D1DBD5C8;
        v53 = 0;
        v54 = 0;
      }

      return MEMORY[0x1EEE6DFA0](v52, v53, v54);
    }
  }

  else
  {
    v35 = *(v0 + 168);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v37 = v36;
    sub_1D1741C08(v35, v36, &qword_1EC642590, qword_1D1E71260);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v38 - 8) + 56))(v37, 0, 4, v38);
    swift_willThrow();
    v40 = *(v0 + 352);
    v39 = *(v0 + 360);
    v42 = *(v0 + 336);
    v41 = *(v0 + 344);
    v44 = *(v0 + 320);
    v43 = *(v0 + 328);
    v45 = *(v0 + 312);
    v47 = *(v0 + 280);
    v46 = *(v0 + 288);
    v48 = *(v0 + 272);
    v89 = *(v0 + 248);
    v90 = *(v0 + 232);
    v91 = *(v0 + 224);
    v92 = *(v0 + 200);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_1D1DBD048()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v13 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = sub_1D1DBE49C;
  }

  else
  {
    v7 = v2[30];
    v6 = v2[31];
    v8 = v2[26];
    v9 = v2[27];
    v10 = v2[24];
    v11 = v2[22];
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    (*(*(v11 - 8) + 8))(v6 + *(v7 + 36), v11);
    (*(v9 + 8))(v6 + *(v7 + 44), v8);
    v5 = sub_1D1DBD1EC;
    v4 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1DBD1EC()
{
  v40 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  sub_1D1DCF39C(*(v0 + 280), *(v0 + 288), type metadata accessor for StateSnapshot);
  v5 = type metadata accessor for WidgetDetailUpdate();
  *(v0 + 432) = v5;
  v6 = *(v4 + *(v5 + 56));
  *(v0 + 496) = v6;
  if (v6 == 1)
  {
    v7 = *(v0 + 384);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v10 + *(v5 + 36));
    v37 = v5;
    v13 = swift_task_alloc();
    v13[2] = v11;
    v13[3] = v9;
    v13[4] = v10;
    v13[5] = v7;
    v14 = sub_1D1892678(sub_1D1DCF7B8, v13, v12);

    swift_beginAccess();
    sub_1D1951664(v14);
    swift_endAccess();

    v15 = *(v10 + *(v37 + 40));
    v16 = swift_task_alloc();
    v16[2] = v11;
    v16[3] = v9;
    v16[4] = v10;
    v16[5] = v7;
    v17 = sub_1D1892678(sub_1D1DCF428, v16, v15);

    swift_beginAccess();
    sub_1D1951664(v17);
    swift_endAccess();
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 384);
  v19 = sub_1D1E6709C();
  *(v0 + 440) = __swift_project_value_buffer(v19, qword_1EE0813C8);
  v20 = v18;
  v21 = sub_1D1E6707C();
  v22 = sub_1D1E6835C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 400);
    v38 = *(v0 + 408);
    v24 = *(v0 + 384);
    v25 = *(v0 + 320);
    v26 = *(v0 + 296);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    v29 = [v24 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
    v30 = sub_1D1E68FAC();
    v32 = v31;
    v23(v25, v26);
    v33 = sub_1D1B1312C(v30, v32, &v39);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1D16EC000, v21, v22, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1D3893640](v28, -1, -1);
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 232);
  v35 = sub_1D1E6701C();
  *(v0 + 448) = __swift_project_value_buffer(v35, qword_1EC6BE2B8);
  sub_1D1E66FCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1DBD5C8, 0, 0);
}

uint64_t sub_1D1DBD5C8()
{
  v1 = v0[56];
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = v0[29];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.MergedSnapshotUpdate", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v7 = v0[48];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[26];
  v11 = v0[27];

  (*(v11 + 16))(v9, v8, v10);
  v12 = sub_1D1E6705C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[57] = sub_1D1E6704C();
  v15 = swift_task_alloc();
  v0[58] = v15;
  *v15 = v0;
  v15[1] = sub_1D1DBD74C;
  v16 = v0[36];
  v17 = v0[34];
  v19 = v0[23];
  v18 = v0[24];
  v20 = v0[21];
  v21 = v0[22];

  return sub_1D1DBE8F0(v17, v18, v7, v20, v16, v21, v19);
}

uint64_t sub_1D1DBD74C()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_1D1DBDE44;
  }

  else
  {
    v3 = sub_1D1DBD860;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1DBD860()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  sub_1D1760838(v0[56], "Widget.MergedSnapshotUpdate", 27, 2, v0[57]);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBD918, v4, 0);
}

uint64_t sub_1D1DBD918()
{
  v67 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 384);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 400);
    v63 = *(v0 + 408);
    v7 = *(v0 + 384);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v66 = v11;
    *v10 = 136315138;
    v12 = [v7 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8]);
    v13 = sub_1D1E68FAC();
    v15 = v14;
    v6(v8, v9);
    v16 = sub_1D1B1312C(v13, v15, &v66);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1D16EC000, v3, v4, "updateDetailedState(detailed:) HM:{%s} updated snapshot", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v17 = v11;
    v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v64 = *(v0 + 432);
  v18 = *(v0 + 392);
  v19 = *(v0 + 336);
  v20 = *(v0 + 320);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  v23 = *(v0 + 256);
  v24 = *(v0 + 192);
  v25 = *(v0 + 168);
  v26 = [*(v0 + 384) v5[61]];
  sub_1D1E66A5C();

  sub_1D1DC9148(v21, v19, type metadata accessor for StateSnapshot);
  v18(v19, 0, 1, v23);
  swift_beginAccess();
  sub_1D1B0D344(v19, v20);
  swift_endAccess();
  if ((*(v25 + *(v64 + 52)) & 0x1000001) != 0)
  {
    if (*(v0 + 496) == 1)
    {
      v27 = *(v0 + 472);
      v28 = *(v0 + 384);
      v29 = *(v0 + 192);
      v30 = *(v0 + 168);
      v31 = *(v30 + *(*(v0 + 432) + 44));
      v32 = swift_task_alloc();
      *(v32 + 16) = *(v0 + 176);
      *(v32 + 32) = v30;
      *(v32 + 40) = v28;
      v33 = sub_1D1892878(sub_1D1DCF404, v32, v31);

      swift_beginAccess();
      sub_1D195168C(v33);
      swift_endAccess();
    }

    v34 = *(v0 + 432);
    v35 = *(v0 + 384);
    v36 = *(v0 + 312);
    v37 = *(v0 + 168);
    v38 = [v35 uniqueIdentifier];
    sub_1D1E66A5C();

    v39 = *(v34 + 48);
    v40 = *(v37 + *(v34 + 44));
    v41 = swift_task_alloc();
    *(v0 + 480) = v41;
    *v41 = v0;
    v41[1] = sub_1D1DBE05C;
    v42 = *(v0 + 496);
    v44 = *(v0 + 192);
    v43 = *(v0 + 200);
    v45 = *(v0 + 176);
    v46 = *(v0 + 184);

    return WidgetSnapshotModerator.fetchMatterDevices<A>(home:configuration:isMonitoring:_:)(v43, v35, v37 + v39, v42, v40, v45, v46);
  }

  else
  {
    v48 = *(v0 + 352);
    v49 = *(v0 + 360);
    v51 = *(v0 + 336);
    v50 = *(v0 + 344);
    v53 = *(v0 + 320);
    v52 = *(v0 + 328);
    v54 = *(v0 + 288);
    v58 = *(v0 + 312);
    v59 = *(v0 + 280);
    v55 = *(v0 + 272);
    v60 = *(v0 + 248);
    v61 = *(v0 + 232);
    v62 = *(v0 + 224);
    v65 = *(v0 + 200);
    v56 = *(v0 + 160);

    sub_1D1741A30(v48, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1DCF39C(v55, v56, type metadata accessor for StateSnapshot);
    sub_1D1DC91B0(v54, type metadata accessor for StateSnapshot);

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_1D1DBDE44()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  sub_1D1760838(v0[56], "Widget.MergedSnapshotUpdate", 27, 2, v0[57]);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBDEFC, v4, 0);
}

uint64_t sub_1D1DBDEFC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1DC91B0(v2, type metadata accessor for StateSnapshot);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 312);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v12 = *(v0 + 272);
  v15 = *(v0 + 248);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);
  v19 = *(v0 + 472);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1DBE05C()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v9 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = *(v2 + 408);
    v5 = *(v2 + 192);
    (*(v2 + 400))(*(v2 + 312), *(v2 + 296));
    v6 = sub_1D1DBE650;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 192);
    v6 = sub_1D1DBE18C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D1DBE18C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = type metadata accessor for MatterStateSnapshot();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  swift_beginAccess();
  sub_1D1B0E5E8(v3, v1);
  swift_endAccess();
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 288);
  v16 = *(v0 + 312);
  v17 = *(v0 + 280);
  v12 = *(v0 + 272);
  v18 = *(v0 + 248);
  v19 = *(v0 + 232);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v13 = *(v0 + 160);

  sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1DCF39C(v12, v13, type metadata accessor for StateSnapshot);
  sub_1D1DC91B0(v11, type metadata accessor for StateSnapshot);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1DBE380()
{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[34];
  v13 = v0[31];
  v14 = v0[29];
  v15 = v0[28];
  v16 = v0[25];
  v17 = v0[47];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1DBE49C()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 176);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
  (*(*(v6 - 8) + 8))(v2 + *(v3 + 36), v6);
  (*(v5 + 8))(v2 + *(v3 + 44), v4);
  v8 = *(v0 + 352);
  v7 = *(v0 + 360);
  v10 = *(v0 + 336);
  v9 = *(v0 + 344);
  v12 = *(v0 + 320);
  v11 = *(v0 + 328);
  v13 = *(v0 + 312);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 272);
  v19 = *(v0 + 248);
  v20 = *(v0 + 232);
  v21 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 424);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1DBE650()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);

  sub_1D1DC91B0(v3, type metadata accessor for StateSnapshot);
  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1DC91B0(v2, type metadata accessor for StateSnapshot);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = *(v0 + 312);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 272);
  v16 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = *(v0 + 224);
  v19 = *(v0 + 200);
  v20 = *(v0 + 488);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1DBE7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(type metadata accessor for WidgetDetailUpdate() + 48);
  a6[3] = a4;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2 + v12, a4);
  v14 = [a3 uniqueIdentifier];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v16 = a6 + *(v15 + 36);
  sub_1D1E66A5C();

  v17 = *(v15 + 40);
  v18 = sub_1D1E66A7C();
  return (*(*(v18 - 8) + 16))(a6 + v17, a1, v18);
}

uint64_t sub_1D1DBE8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v12 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v7[9] = v12;
  v13 = *(v12 + 64) + 15;
  v7[10] = swift_task_alloc();
  v14 = swift_task_alloc();
  v7[11] = v14;
  *v14 = v7;
  v14[1] = sub_1D1DBEA1C;

  return sub_1D1DBBB90(a3, a4, a6, a7);
}

uint64_t sub_1D1DBEA1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v6 = v3[10];

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1DBEB6C, 0, 0);
  }
}

uint64_t sub_1D1DBEB6C()
{
  v1 = v0[12];
  sub_1D1DC9148(v0[6], v0[2], type metadata accessor for StateSnapshot);
  v27 = v1;
  v28 = *(v1 + 16);
  if (!v28)
  {
    goto LABEL_8;
  }

  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[4];
  v7 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v29 = *(v3 + 72);
  sub_1D1DC9148(v0[12] + v11, v4, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1DBEDD4(v10, v4, v9, v8, v7);
  if (v2)
  {
    v12 = v0[10];
    v13 = v0[2];

    sub_1D1DC91B0(v12, type metadata accessor for StateSnapshot.UpdateType);
    return sub_1D1DC91B0(v13, type metadata accessor for StateSnapshot);
  }

  result = sub_1D1DC91B0(v0[10], type metadata accessor for StateSnapshot.UpdateType);
  v15 = v29;
  if (v28 == 1)
  {
LABEL_8:
    v24 = v0[12];
    v25 = v0[10];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v16 = v29 + v11;
    v17 = 1;
    while (v17 < *(v27 + 16))
    {
      v18 = v0[10];
      v19 = v0[7];
      v30 = v0[8];
      v21 = v0[4];
      v20 = v0[5];
      v23 = v0[2];
      v22 = v0[3];
      sub_1D1DC9148(v0[12] + v16, v18, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1DBEDD4(v23, v18, v22, v21, v20);
      ++v17;
      result = sub_1D1DC91B0(v0[10], type metadata accessor for StateSnapshot.UpdateType);
      v16 += v15;
      if (v28 == v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DBEDD4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v15 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1DC9148(a2, v17, type metadata accessor for StateSnapshot.UpdateType);
  v18 = *(a3 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  sub_1D1DCF39C(a1, v13, type metadata accessor for StateSnapshot);
  v19 = type metadata accessor for StateSnapshot(0);
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  if ((*(a5 + *(type metadata accessor for WidgetDetailUpdate() + 52)) & 0x61) != 0)
  {
    v20 = qword_1EE07CD90;
    v21 = v18;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = qword_1EE07CD98;
  }

  else
  {
    v23 = v18;
    v22 = sub_1D179B6E8(&unk_1F4D66710);
    swift_arrayDestroy();
  }

  return StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v17, v18, a4, v13, v22, a1);
}

void sub_1D1DBF00C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = *(type metadata accessor for WidgetDetailUpdate() + 48);
  a6[3] = a4;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2 + v12, a4);
  v14 = [a3 uniqueIdentifier];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v16 = a6 + *(v15 + 36);
  sub_1D1E66A5C();

  *(a6 + *(v15 + 40)) = v11;
}

uint64_t sub_1D1DBF100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(a3 - 8);
  v5[10] = v6;
  v7 = *(v6 + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for WidgetDetailUpdate();
  v5[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  v5[19] = v11;
  v12 = *(v11 - 8);
  v5[20] = v12;
  v13 = *(v12 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DBF2E4, v4, 0);
}

uint64_t sub_1D1DBF2E4()
{
  v27 = v0;
  v1 = **(v0 + 48);
  *(v0 + 192) = v1;
  v26 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_42:
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 200) = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v0 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = v0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3891EF0](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v0 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
      {
        v8 = [v7 actionSet];
        v9 = [v8 home];
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          type metadata accessor for MatterExecuteRequest();
          swift_dynamicCastClass();
LABEL_21:

          goto LABEL_14;
        }

        v12 = [v11 characteristic];
        v13 = [v12 service];

        if (!v13)
        {
          goto LABEL_21;
        }

        v8 = [v13 accessory];

        if (!v8)
        {
          goto LABEL_21;
        }

        v9 = [v8 home];
      }

      v10 = v9;

      if (v10)
      {
        break;
      }

LABEL_14:
      ++v4;
      if (v0 == v2)
      {
        goto LABEL_28;
      }
    }

    MEMORY[0x1D3891220]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v3 = v26;
  }

  while (v0 != v2);
LABEL_28:
  v15 = sub_1D1785278(v3);
  v25[26] = v15;

  if ((v15 & 0xC000000000000001) != 0)
  {
    if (sub_1D1E6873C() < 2)
    {
      goto LABEL_37;
    }
  }

  else if (*(v15 + 16) < 2)
  {
    goto LABEL_37;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE0813C8);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6833C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC6750, &v26);
    _os_log_impl(&dword_1D16EC000, v17, v18, "%s Write requested with accessories from multiple homes. This is undefined behavior.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D3893640](v20, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

LABEL_37:
  v21 = swift_task_alloc();
  v25[27] = v21;
  *v21 = v25;
  v21[1] = sub_1D1DBF754;
  v22 = v25[23];
  v23 = v25[9];

  return sub_1D1DC07C0(v22, v15, v23);
}

uint64_t sub_1D1DBF754()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 72);

  if (v0)
  {
    v7 = sub_1D1DC0438;
  }

  else
  {
    v7 = sub_1D1DBF89C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

id sub_1D1DBF89C()
{
  v1 = v0[24];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v23 = v0[24];
    }

    else
    {
      v23 = v0[25];
    }

    result = sub_1D1E6873C();
    if (result)
    {
LABEL_3:
      v3 = 0;
      v4 = v0[20];
      v5 = (v4 + 48);
      v53 = v4;
      v55 = (v4 + 32);
      v57 = (v4 + 56);
      v6 = MEMORY[0x1E69E7CC0];
      v59 = result;
      while (1)
      {
        v7 = v0[24];
        if ((v7 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1D3891EF0](v3);
        }

        else
        {
          if (v3 >= *(v0[25] + 16))
          {
            goto LABEL_54;
          }

          result = *(v7 + 8 * v3 + 32);
        }

        v8 = result;
        v9 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10 || (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
        {
          v11 = v0[17];
          v12 = [v10 actionSet];
          v13 = [v12 uniqueIdentifier];

          sub_1D1E66A5C();
          v14 = 0;
        }

        else
        {
          v14 = 1;
        }

        v16 = v0[18];
        v15 = v0[19];
        v17 = v0[17];

        (*v57)(v17, v14, 1, v15);
        sub_1D1778308(v17, v16);
        if ((*v5)(v16, 1, v15) == 1)
        {
          result = sub_1D1741A30(v0[18], &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v18 = *v55;
          (*v55)(v0[22], v0[18], v0[19]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D177D0AC(0, *(v6 + 2) + 1, 1, v6);
          }

          v20 = *(v6 + 2);
          v19 = *(v6 + 3);
          if (v20 >= v19 >> 1)
          {
            v6 = sub_1D177D0AC(v19 > 1, v20 + 1, 1, v6);
          }

          v21 = v0[22];
          v22 = v0[19];
          *(v6 + 2) = v20 + 1;
          result = v18(&v6[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20], v21, v22);
        }

        ++v3;
        if (v9 == v59)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    result = *(v0[25] + 16);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v0[29] = v6;
  v24 = v0[24];
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v45 = v0[24];
    }

    else
    {
      v45 = v0[25];
    }

    result = sub_1D1E6873C();
    v25 = result;
    if (result)
    {
LABEL_28:
      v26 = 0;
      v27 = v0[20];
      v58 = (v27 + 48);
      v60 = (v27 + 56);
      v54 = v27;
      v56 = (v27 + 32);
      v28 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v29 = v0[24];
        if ((v29 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1D3891EF0](v26);
        }

        else
        {
          if (v26 >= *(v0[25] + 16))
          {
            goto LABEL_56;
          }

          result = *(v29 + 8 * v26 + 32);
        }

        v30 = result;
        v31 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v0[15];
          v34 = [v32 characteristic];
          v35 = [v34 uniqueIdentifier];

          sub_1D1E66A5C();
          v36 = 0;
        }

        else
        {
          v36 = 1;
        }

        v37 = v0[19];
        v38 = v0[15];
        v39 = v0[16];

        (*v60)(v38, v36, 1, v37);
        sub_1D1778308(v38, v39);
        if ((*v58)(v39, 1, v37) == 1)
        {
          result = sub_1D1741A30(v0[16], &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v40 = *v56;
          (*v56)(v0[21], v0[16], v0[19]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1D177D0AC(0, *(v28 + 2) + 1, 1, v28);
          }

          v42 = *(v28 + 2);
          v41 = *(v28 + 3);
          if (v42 >= v41 >> 1)
          {
            v28 = sub_1D177D0AC(v41 > 1, v42 + 1, 1, v28);
          }

          v43 = v0[21];
          v44 = v0[19];
          *(v28 + 2) = v42 + 1;
          result = v40(&v28[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v42], v43, v44);
        }

        ++v26;
        if (v31 == v25)
        {
          goto LABEL_50;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }
  }

  else
  {
    v25 = *(v0[25] + 16);
    if (v25)
    {
      goto LABEL_28;
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v0[30] = v28;
  v46 = v0[8];
  v47 = v0[9];
  v48 = v0[7];
  v49 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager;
  v50 = swift_task_alloc();
  v0[31] = v50;
  v51 = type metadata accessor for WidgetWriteRequests();
  v0[32] = v51;
  *v50 = v0;
  v50[1] = sub_1D1DBFE40;
  v52 = v0[6];

  return sub_1D1DAF2E0((v47 + v49), v51);
}

uint64_t sub_1D1DBFE40()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v10 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[29];
    v5 = v2[30];
    v6 = v2[9];

    v7 = sub_1D1DC0520;
    v8 = v6;
  }

  else
  {
    v8 = v2[9];
    v7 = sub_1D1DBFF70;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1D1DBFF70()
{
  v28 = v0;
  v1 = v0[33];
  v25 = v0[29];
  v26 = v0[30];
  v2 = v0[20];
  v20 = v0[19];
  v21 = v0[23];
  v3 = v0[14];
  v23 = v0[32];
  v24 = v0[13];
  v4 = v0[10];
  v22 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  swift_beginAccess();
  v9 = *(v5 + 144);
  v10 = swift_task_alloc();
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v8;

  v11 = sub_1D1B525A0(sub_1D1DCF47C, v10, v9);

  v12 = sub_1D1DAD26C(v11);

  (*(v2 + 16))(v3, v21, v20);
  (*(v2 + 56))(v3, 0, 1, v20);
  (*(v4 + 16))(v22, v8 + *(v23 + 36), v7);
  v27[0] = *(v8 + *(v23 + 40));
  WidgetDetailUpdate.init(homeID:characteristics:actionSets:matterDevices:configuration:isMonitoring:filtered:)(v3, v26, v25, v12, v22, 1, v27, v7, v24);
  v13 = swift_task_alloc();
  v0[34] = v13;
  *v13 = v0;
  v13[1] = sub_1D1DC016C;
  v14 = v0[13];
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[7];
  v18 = v0[5];

  return sub_1D1DBC3B8(v18, v14, v17, v15);
}

uint64_t sub_1D1DC016C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v17 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_1D1DC0620;
  }

  else
  {
    v7 = v2[12];
    v6 = v2[13];
    v8 = v2[9];
    v9 = v2[10];
    v10 = v2[7];
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    v11 = *(v6 + v7[9]);

    v12 = *(v6 + v7[10]);

    v13 = *(v6 + v7[11]);

    (*(v9 + 8))(v6 + v7[12], v10);
    v14 = v7[15];
    v15 = sub_1D1E66FDC();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
    v5 = sub_1D1DC0338;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1DC0338()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v11 = v0[11];
  (*(v0[20] + 8))(v0[23], v0[19]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1DC0438()
{
  v13 = v0[28];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1DC0520()
{
  (*(v0[20] + 8))(v0[23], v0[19]);
  v13 = v0[33];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1DC0620()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  (*(v0[20] + 8))(v0[23], v0[19]);
  sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
  v5 = *(v1 + v2[9]);

  v6 = *(v1 + v2[10]);

  v7 = *(v1 + v2[11]);

  (*(v3 + 8))(v1 + v2[12], v4);
  v8 = v2[15];
  v9 = sub_1D1E66FDC();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v22 = v0[35];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v16 = v0[15];
  v15 = v0[16];
  v18 = v0[13];
  v17 = v0[14];
  v19 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D1DC07C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = sub_1D1E66A7C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DC0888, a3, 0);
}

uint64_t sub_1D1DC0888()
{
  v1 = sub_1D17721CC(v0[3]);
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v1;
    v7 = [v1 uniqueIdentifier];

    sub_1D1E66A5C();
    (*(v3 + 32))(v5, v2, v4);
    v8 = v0[7];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_1D1DC09D0;
    v12 = v0[4];

    return sub_1D1DB1D48();
  }
}

uint64_t sub_1D1DC09D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[7];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v4[4];
    v4[9] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D1DC0B24, v10, 0);
  }
}

uint64_t sub_1D1DC0B24()
{
  v1 = v0[9];
  v2 = v0[2];
  v3 = [v1 uniqueIdentifier];

  sub_1D1E66A5C();
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1DC0BC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for WidgetWriteRequests() + 36);
  v8 = (*(a4 + 8))(a3, a4);
  v10 = v9;
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if (v8 == (*(v11 + 8))(v12, v11) && v10 == v13)
  {
  }

  else
  {
    v15 = sub_1D1E6904C();

    v16 = 0;
    if ((v15 & 1) == 0)
    {
      return v16 & 1;
    }
  }

  v17 = (*(a4 + 16))(a3, a4);
  v19 = v18;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  if (v17 == (*(v21 + 16))(v20, v21) && v19 == v22)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1D1E6904C();
  }

  return v16 & 1;
}

uint64_t WidgetSnapshotModerator.updateState<A>(updateType:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6[6] = a4;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v8 = *(a3 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  v6[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[13] = v13;
  *v13 = v6;
  v13[1] = sub_1D1DC0ED4;

  return WidgetSnapshotModerator.updateHomes(timeout:)(a5);
}

uint64_t sub_1D1DC0ED4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1D1DC1710;
  }

  else
  {
    v6 = sub_1D1DC1000;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DC1000()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[15] = type metadata accessor for WidgetSnapshotModerator.UpdateType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = swift_task_alloc();
      v0[18] = v5;
      *v5 = v0;
      v5[1] = sub_1D1DC14B8;
      v6 = v0[12];
      v7 = v0[6];
      v8 = v0[7];
      v9 = v0[4];
      v10 = v0[5];

      return sub_1D1DBC3B8(v6, v9, v10, v7);
    }

    else
    {
      v18 = swift_task_alloc();
      v0[20] = v18;
      *v18 = v0;
      v18[1] = sub_1D1DC15E4;
      v19 = v0[12];
      v20 = v0[6];
      v21 = v0[7];
      v22 = v0[4];
      v23 = v0[5];

      return sub_1D1DBF100(v19, v22, v23, v20);
    }
  }

  else
  {
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_1D1DC11B0;
    v13 = v0[12];
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[4];
    v17 = v0[5];

    return sub_1D1DB952C(v13, v16, v17, v14);
  }
}

uint64_t sub_1D1DC11B0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1D1DC1DC0;
  }

  else
  {
    v6 = sub_1D1DC12DC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DC12DC()
{
  v1 = v0[15];
  v2 = v0[4];
  sub_1D1DCF39C(v0[12], v0[3], type metadata accessor for StateSnapshot);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
      v8 = type metadata accessor for WidgetDetailUpdate();
      v9 = *&v7[v8[9]];

      v10 = *&v7[v8[10]];

      v11 = *&v7[v8[11]];

      (*(v4 + 8))(&v7[v8[12]], v5);
      v12 = v8[15];
      goto LABEL_7;
    }

    v14 = *v7;

    v13 = type metadata accessor for WidgetWriteRequests();
  }

  else
  {
    sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
    v13 = type metadata accessor for WidgetRefresh();
  }

  v15 = v13;
  (*(v4 + 8))(&v7[*(v13 + 36)], v5);
  v12 = *(v15 + 44);
LABEL_7:
  v16 = sub_1D1E66FDC();
  (*(*(v16 - 8) + 8))(&v7[v12], v16);
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D1DC14B8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1D1DC1F90;
  }

  else
  {
    v6 = sub_1D1DCF7A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DC15E4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1D1DC2160;
  }

  else
  {
    v6 = sub_1D1DCF7A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DC1710()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 88);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    *(v0 + 176) = v6;
    v7 = *(v6 - 8);
    *(v0 + 184) = v7;
    if ((*(v7 + 48))(v5, 4, v6) == 4)
    {
      v8 = *(v0 + 72);
      v10 = *(v0 + 40);
      v9 = *(v0 + 48);
      v11 = *(v0 + 32);

      updated = type metadata accessor for WidgetSnapshotModerator.UpdateType();
      sub_1D1DB049C(updated, v8);
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_1D1DC1A5C;
      v14 = *(v0 + 72);
      v15 = *(v0 + 48);
      v16 = *(v0 + 56);
      v17 = *(v0 + 40);

      return WidgetSnapshotModerator.queueForNextUpdate<A>(configuration:)(v14, v17, v15);
    }

    sub_1D1DC91B0(v5, type metadata accessor for WidgetSnapshotModerator.Error);
  }

  v19 = *(v0 + 112);
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  v22 = *(v0 + 32);
  type metadata accessor for WidgetSnapshotModerator.UpdateType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = *(v0 + 64);
  if (!EnumCaseMultiPayload)
  {
    sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
    v30 = type metadata accessor for WidgetRefresh();
LABEL_12:
    v32 = v30;
    (*(v24 + 8))(&v22[*(v30 + 36)], v20);
    v29 = *(v32 + 44);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *v22;

    v30 = type metadata accessor for WidgetWriteRequests();
    goto LABEL_12;
  }

  sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
  v25 = type metadata accessor for WidgetDetailUpdate();
  v26 = *&v22[v25[9]];

  v27 = *&v22[v25[10]];

  v28 = *&v22[v25[11]];

  (*(v24 + 8))(&v22[v25[12]], v20);
  v29 = v25[15];
LABEL_13:
  v33 = sub_1D1E66FDC();
  (*(*(v33 - 8) + 8))(&v22[v29], v33);
  v35 = *(v0 + 88);
  v34 = *(v0 + 96);
  v36 = *(v0 + 72);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1D1DC1A5C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1DC1B6C, v2, 0);
}

uint64_t sub_1D1DC1B6C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 80);
  sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error);
  swift_allocError();
  (*(v2 + 56))(v4, 4, 4, v1);
  swift_willThrow();

  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  type metadata accessor for WidgetSnapshotModerator.UpdateType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 64);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
      v10 = type metadata accessor for WidgetDetailUpdate();
      v11 = *&v7[v10[9]];

      v12 = *&v7[v10[10]];

      v13 = *&v7[v10[11]];

      (*(v9 + 8))(&v7[v10[12]], v5);
      v14 = v10[15];
      goto LABEL_7;
    }

    v16 = *v7;

    v15 = type metadata accessor for WidgetWriteRequests();
  }

  else
  {
    sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    v15 = type metadata accessor for WidgetRefresh();
  }

  v17 = v15;
  (*(v9 + 8))(&v7[*(v15 + 36)], v5);
  v14 = *(v17 + 44);
LABEL_7:
  v18 = sub_1D1E66FDC();
  (*(*(v18 - 8) + 8))(&v7[v14], v18);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D1DC1DC0()
{
  v1 = v0[17];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  type metadata accessor for WidgetSnapshotModerator.UpdateType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[8];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
      v7 = type metadata accessor for WidgetDetailUpdate();
      v8 = *&v4[v7[9]];

      v9 = *&v4[v7[10]];

      v10 = *&v4[v7[11]];

      (*(v6 + 8))(&v4[v7[12]], v2);
      v11 = v7[15];
      goto LABEL_7;
    }

    v13 = *v4;

    v12 = type metadata accessor for WidgetWriteRequests();
  }

  else
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    v12 = type metadata accessor for WidgetRefresh();
  }

  v14 = v12;
  (*(v6 + 8))(&v4[*(v12 + 36)], v2);
  v11 = *(v14 + 44);
LABEL_7:
  v15 = sub_1D1E66FDC();
  (*(*(v15 - 8) + 8))(&v4[v11], v15);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D1DC1F90()
{
  v1 = v0[19];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  type metadata accessor for WidgetSnapshotModerator.UpdateType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[8];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
      v7 = type metadata accessor for WidgetDetailUpdate();
      v8 = *&v4[v7[9]];

      v9 = *&v4[v7[10]];

      v10 = *&v4[v7[11]];

      (*(v6 + 8))(&v4[v7[12]], v2);
      v11 = v7[15];
      goto LABEL_7;
    }

    v13 = *v4;

    v12 = type metadata accessor for WidgetWriteRequests();
  }

  else
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    v12 = type metadata accessor for WidgetRefresh();
  }

  v14 = v12;
  (*(v6 + 8))(&v4[*(v12 + 36)], v2);
  v11 = *(v14 + 44);
LABEL_7:
  v15 = sub_1D1E66FDC();
  (*(*(v15 - 8) + 8))(&v4[v11], v15);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D1DC2160()
{
  v1 = v0[21];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  type metadata accessor for WidgetSnapshotModerator.UpdateType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[8];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
      v7 = type metadata accessor for WidgetDetailUpdate();
      v8 = *&v4[v7[9]];

      v9 = *&v4[v7[10]];

      v10 = *&v4[v7[11]];

      (*(v6 + 8))(&v4[v7[12]], v2);
      v11 = v7[15];
      goto LABEL_7;
    }

    v13 = *v4;

    v12 = type metadata accessor for WidgetWriteRequests();
  }

  else
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    v12 = type metadata accessor for WidgetRefresh();
  }

  v14 = v12;
  (*(v6 + 8))(&v4[*(v12 + 36)], v2);
  v11 = *(v14 + 44);
LABEL_7:
  v15 = sub_1D1E66FDC();
  (*(*(v15 - 8) + 8))(&v4[v11], v15);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

void *WidgetSnapshotModerator.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  v7 = v0[20];

  v8 = v0[21];

  sub_1D1741A30(v0 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_recommendedHome, &qword_1EC642590, qword_1D1E71260);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t WidgetSnapshotModerator.__deallocating_deinit()
{
  WidgetSnapshotModerator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1DC23FC()
{
  type metadata accessor for HomeAppSettings();
  v0 = swift_allocObject();
  result = sub_1D1DC2478();
  qword_1EE081458 = v0;
  return result;
}

uint64_t sub_1D1DC2438()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1DC2478()
{
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1D1E677EC();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 112) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1D1E677EC();
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    v6 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 120) = v6;
  return v0;
}

uint64_t sub_1D1DC2594(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD38, &qword_1D1EB0800);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v27 - v4;
  v5 = sub_1D1E66A7C();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD40, &qword_1D1EB0808);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for WidgetDataModel.Error(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD48, &qword_1D1EB0810);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DCF1D0();
  v22 = v34;
  sub_1D1E6930C();
  sub_1D1DC9148(v35, v15, type metadata accessor for WidgetDataModel.Error);
  if ((*(v22 + 48))(v15, 1, v5) == 1)
  {
    v36 = 0;
    sub_1D1DCF278();
    sub_1D1E68DFC();
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    v24 = v30;
    (*(v22 + 32))(v30, v15, v5);
    v37 = 1;
    sub_1D1DCF224();
    v25 = v31;
    sub_1D1E68DFC();
    sub_1D1DC9C14(&qword_1EE07B258, 255, MEMORY[0x1E69695A8]);
    v26 = v33;
    sub_1D1E68F1C();
    (*(v32 + 8))(v25, v26);
    (*(v22 + 8))(v24, v5);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1DC2A08()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetDataModel.Error(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1DC9148(v1, v10, type metadata accessor for WidgetDataModel.Error);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x1D3892850](0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1D3892850](1);
    sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1DC2BF8()
{
  if (*v0)
  {
    result = 0x48676E697373696DLL;
  }

  else
  {
    result = 0x73656D6F486F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1D1DC2C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656D6F486F6ELL && a2 == 0xE700000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x48676E697373696DLL && a2 == 0xEB00000000656D6FLL)
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

uint64_t sub_1D1DC2D1C(uint64_t a1)
{
  v2 = sub_1D1DCF1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DC2D58(uint64_t a1)
{
  v2 = sub_1D1DCF1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DC2D94(uint64_t a1)
{
  v2 = sub_1D1DCF224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DC2DD0(uint64_t a1)
{
  v2 = sub_1D1DCF224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DC2E0C(uint64_t a1)
{
  v2 = sub_1D1DCF278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DC2E48(uint64_t a1)
{
  v2 = sub_1D1DCF278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DC2E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1DC9148(v2, v12, type metadata accessor for WidgetDataModel.Error);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x1D3892850](0);
  }

  (*(v5 + 32))(v9, v12, v4);
  MEMORY[0x1D3892850](1);
  sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1D1DC3058(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1DC9148(v4, v13, type metadata accessor for WidgetDataModel.Error);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x1D3892850](0);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x1D3892850](1);
    sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v6 + 8))(v10, v5);
  }

  return sub_1D1E6926C();
}

uint64_t static WidgetDataModel.options.getter()
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  v0 = qword_1EC64F960;
  os_unfair_lock_unlock(&dword_1EC64F958);
  return v0;
}

void sub_1D1DC32F0(uint64_t *a1@<X8>)
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  v2 = qword_1EC64F960;
  os_unfair_lock_unlock(&dword_1EC64F958);
  *a1 = v2;
}

void sub_1D1DC3368(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = v1;

  os_unfair_lock_unlock(&dword_1EC64F958);
}

void static WidgetDataModel.options.setter(uint64_t a1)
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = a1;

  os_unfair_lock_unlock(&dword_1EC64F958);
}

void (*static WidgetDataModel.options.modify(uint64_t *a1))(uint64_t *a1)
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  v2 = qword_1EC64F960;
  os_unfair_lock_unlock(&dword_1EC64F958);
  *a1 = v2;
  return sub_1D1DC34EC;
}

void sub_1D1DC34EC(uint64_t *a1)
{
  v1 = *a1;
  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = v1;

  os_unfair_lock_unlock(&dword_1EC64F958);
}

uint64_t WidgetDataModel.queueForNextUpdate<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1D1DC3608;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC3608(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *v1;
  v3[6] = a1;

  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v5;
  v6[1] = sub_1D1DC377C;
  v7 = v3[4];
  v8 = v3[3];
  v9 = v3[2];

  return WidgetSnapshotModerator.queueForNextUpdate<A>(configuration:)(v9, v8, v7);
}

uint64_t sub_1D1DC377C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t WidgetDataModel.home(_:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for StaticHome() - 8);
  v3[11] = v4;
  v5 = *(v4 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v3[21] = qword_1EE07B4E0;
  v10 = swift_task_alloc();
  v3[22] = v10;
  *v10 = v3;
  v10[1] = sub_1D1DC3A78;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC3A78(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v7 = *v1;
  *(v3 + 184) = a1;

  v5 = swift_task_alloc();
  *(v3 + 192) = v5;
  *v5 = v7;
  v5[1] = sub_1D1DC3BAC;

  return WidgetSnapshotModerator.updateHomes(timeout:)(20.0);
}

uint64_t sub_1D1DC3BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v6 = sub_1D1DC49E4;
  }

  else
  {
    v7 = *(v2 + 184);

    v6 = sub_1D1DC3CE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, 0);
}

uint64_t sub_1D1DC3CE8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1D1741C08(v0[9], v3, &qword_1EC642590, qword_1D1E71260);
  v4 = *(v2 + 48);
  v0[26] = v4;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_1D1741A30(v0[15], &qword_1EC642590, qword_1D1E71260);
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v6 = sub_1D1DC41D4;
  }

  else
  {
    (*(v0[17] + 32))(v0[20], v0[15], v0[16]);
    v5 = swift_task_alloc();
    v0[28] = v5;
    *v5 = v0;
    v6 = sub_1D1DC3E48;
  }

  v5[1] = v6;
  v7 = v0[10];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC3E48(uint64_t a1)
{
  v3 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DC3F4C, a1, 0);
}

uint64_t sub_1D1DC3F4C()
{
  v1 = v0[29];
  v2 = v0[21];
  swift_beginAccess();
  v0[30] = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1DC3FD8, v2, 0);
}

uint64_t sub_1D1DC3FD8()
{
  v1 = v0[29];
  v2 = v0[30];

  if (*(v2 + 16) && (v3 = v0[30], v4 = sub_1D1742188(v0[20]), (v5 & 1) != 0))
  {
    sub_1D1DC9148(*(v0[30] + 56) + *(v0[11] + 72) * v4, v0[13], type metadata accessor for StaticHome);
    v6 = v0[30];
    v7 = v0[19];
    v8 = v0[18];
    v9 = v0[15];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    v13 = v0[8];
    (*(v0[17] + 8))(v0[20], v0[16]);

    sub_1D1DCF39C(v11, v13, type metadata accessor for StaticHome);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[30];
    v17 = v0[20];
    v18 = v0[16];
    v19 = v0[17];

    (*(v19 + 8))(v17, v18);
    v20 = swift_task_alloc();
    v0[31] = v20;
    *v20 = v0;
    v20[1] = sub_1D1DC41D4;
    v21 = v0[10];

    return WidgetDataModel.snapshotModerator.getter();
  }
}

uint64_t sub_1D1DC41D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v7 = *v1;
  *(v3 + 256) = a1;

  v5 = swift_task_alloc();
  *(v3 + 264) = v5;
  *v5 = v7;
  v5[1] = sub_1D1DC4304;

  return sub_1D1DB1D48();
}

uint64_t sub_1D1DC4304(uint64_t a1)
{
  v3 = *(*v2 + 264);
  v4 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {
    v5 = v4[21];

    return MEMORY[0x1EEE6DFA0](sub_1D1DC4AA4, v5, 0);
  }

  else
  {
    v6 = v4[32];

    v7 = swift_task_alloc();
    v4[36] = v7;
    *v7 = v4;
    v7[1] = sub_1D1DC4478;
    v8 = v4[10];

    return WidgetDataModel.snapshotModerator.getter();
  }
}

uint64_t sub_1D1DC4478(uint64_t a1)
{
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DC457C, a1, 0);
}

uint64_t sub_1D1DC457C()
{
  v1 = v0[37];
  v2 = v0[21];
  swift_beginAccess();
  v0[38] = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1DC4608, v2, 0);
}

uint64_t sub_1D1DC4608()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[19];

  v5 = [v3 uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v2 + 16) && (v6 = v0[38], v7 = sub_1D1742188(v0[19]), (v8 & 1) != 0))
  {
    v9 = v0[34];
    sub_1D1DC9148(*(v0[38] + 56) + *(v0[11] + 72) * v7, v0[12], type metadata accessor for StaticHome);

    v10 = v0[38];
    v11 = v0[20];
    v12 = v0[18];
    v13 = v0[15];
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    v17 = v0[8];
    (*(v0[17] + 8))(v0[19], v0[16]);

    sub_1D1DCF39C(v16, v17, type metadata accessor for StaticHome);

    v18 = v0[1];
  }

  else
  {
    v19 = v0[38];
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[19];
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[14];
    v26 = v0[9];

    v27 = *(v24 + 8);
    v27(v22, v23);
    sub_1D1741C08(v26, v25, &qword_1EC642590, qword_1D1E71260);
    v28 = v21(v25, 1, v23);
    v29 = v0[34];
    if (v28 == 1)
    {
      v30 = v0[16];
      v31 = v0[17];
      sub_1D1741A30(v0[14], &qword_1EC642590, qword_1D1E71260);
      type metadata accessor for WidgetDataModel.Error(0);
      sub_1D1DC9C14(&qword_1EC64F9D8, 255, type metadata accessor for WidgetDataModel.Error);
      swift_allocError();
      (*(v31 + 56))(v32, 1, 1, v30);
      swift_willThrow();
    }

    else
    {
      v34 = v0[17];
      v33 = v0[18];
      v35 = v0[16];
      (*(v34 + 32))(v33, v0[14], v35);
      type metadata accessor for WidgetDataModel.Error(0);
      sub_1D1DC9C14(&qword_1EC64F9D8, 255, type metadata accessor for WidgetDataModel.Error);
      swift_allocError();
      v37 = v36;
      (*(v34 + 16))(v36, v33, v35);
      (*(v34 + 56))(v37, 0, 1, v35);
      swift_willThrow();

      v27(v33, v35);
    }

    v39 = v0[19];
    v38 = v0[20];
    v40 = v0[18];
    v42 = v0[14];
    v41 = v0[15];
    v44 = v0[12];
    v43 = v0[13];

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_1D1DC49E4()
{
  v1 = v0[23];

  v2 = v0[25];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1DC4AA4()
{
  v1 = v0[32];

  v2 = v0[35];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t WidgetDataModel.orderedHomes.getter()
{
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F9E0, &unk_1D1EAFBD0);
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(type metadata accessor for StaticHome() - 8);
  v1[13] = v5;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v1[15] = qword_1EE07B4E0;
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v1;
  v7[1] = sub_1D1DC4CF0;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC4CF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v7 = *v1;
  *(v3 + 136) = a1;

  v5 = swift_task_alloc();
  *(v3 + 144) = v5;
  *v5 = v7;
  v5[1] = sub_1D1DC4E24;

  return WidgetSnapshotModerator.updateHomes(timeout:)(20.0);
}

uint64_t sub_1D1DC4E24()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[15];

    return MEMORY[0x1EEE6DFA0](sub_1D1DC5798, v4, 0);
  }

  else
  {
    v5 = v3[17];

    v6 = swift_task_alloc();
    v3[20] = v6;
    *v6 = v3;
    v6[1] = sub_1D1DC4F98;
    v7 = v3[9];

    return WidgetDataModel.snapshotModerator.getter();
  }
}

uint64_t sub_1D1DC4F98(uint64_t a1)
{
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DC509C, a1, 0);
}

uint64_t sub_1D1DC509C()
{
  v1 = v0[21];
  v2 = v0[15];
  swift_beginAccess();
  v0[22] = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1DC5128, v2, 0);
}

uint64_t sub_1D1DC5128()
{
  v24 = v0;
  v1 = v0[21];
  v2 = v0[22];

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 && (v5 = v0[22], v6 = v0[13], v4 = sub_1D180437C(v3, 0), v7 = sub_1D1804AF4(&v23, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3, v5), , result = sub_1D1716918(), v7 != v3))
  {
    __break(1u);
  }

  else
  {
    v9 = v0[19];
    v23 = v4;
    sub_1D1DC5B34(&v23);
    if (v9)
    {
    }

    else
    {
      v10 = v0[22];

      v11 = v23;
      v12 = v23[2];
      if (v12)
      {
        v13 = v0[13];
        v23 = MEMORY[0x1E69E7CC0];
        sub_1D178D050(0, v12, 0);
        v14 = v23;
        v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v16 = v11 + v15;
        v17 = *(v13 + 72);
        do
        {
          sub_1D1DC9148(v16, v0[14], type metadata accessor for StaticHome);
          v23 = v14;
          v19 = v14[2];
          v18 = v14[3];
          if (v19 >= v18 >> 1)
          {
            sub_1D178D050(v18 > 1, v19 + 1, 1);
            v14 = v23;
          }

          v20 = v0[14];
          v14[2] = v19 + 1;
          sub_1D1DCF39C(v20, v14 + v15 + v19 * v17, type metadata accessor for StaticHome);
          v16 += v17;
          --v12;
        }

        while (v12);
      }

      else
      {

        v14 = MEMORY[0x1E69E7CC0];
      }

      v0[23] = v14;
      v0[7] = v14;
      v21 = swift_task_alloc();
      v0[24] = v21;
      *v21 = v0;
      v21[1] = sub_1D1DC53B4;
      v22 = v0[9];

      return WidgetDataModel.snapshotModerator.getter();
    }
  }

  return result;
}

uint64_t sub_1D1DC53B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v7 = *v1;
  *(v3 + 200) = a1;

  v5 = swift_task_alloc();
  *(v3 + 208) = v5;
  *v5 = v7;
  v5[1] = sub_1D1DC54E4;

  return sub_1D1DB1D48();
}

uint64_t sub_1D1DC54E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = v1;

  v7 = v4[25];
  v8 = v4[15];
  if (v1)
  {

    v9 = sub_1D1DC5814;
  }

  else
  {

    v4[28] = a1;
    v9 = sub_1D1DC5650;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1D1DC5650()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 224);
  sub_1D1DC588C(v2, v6);
  *(v0 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCE8, &qword_1D1EA2668);
  sub_1D17D8EA8(&qword_1EE079E48, &qword_1EC64CCE8, &qword_1D1EA2668);
  sub_1D1E6773C();

  (*(v4 + 8))(v3, v5);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  v9 = *(v0 + 56);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1D1DC5798()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_1D1DC5814()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[7];

  v4 = v0[1];

  return v4(v3);
}

void sub_1D1DC588C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  v6 = *(type metadata accessor for StaticHome() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v24 = (2 * v5) | 1;
  v23 = a2;
  v8 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v23;

    v10 = sub_1D1DC7BE0(a1 + v7, v8, v24, v9);
    if (v2)
    {

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;

    if (v13)
    {

LABEL_16:
      sub_1D1E693BC();
LABEL_17:

      return;
    }

    if (v5 < v12)
    {
      break;
    }

    if (v12 < 0)
    {
      goto LABEL_19;
    }

    v14 = v5;
    v15 = v9;
    v16 = v7;
    sub_1D1DC9578(a1, a1 + v7, v12, v24, v15);
    v18 = v17;

    swift_unknownObjectRelease();
    v19 = v18 >> 1;
    if (v19 < v12)
    {
      goto LABEL_20;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D177D070(0, *(v25 + 2) + 1, 1, v25);
    }

    v21 = *(v25 + 2);
    v20 = *(v25 + 3);
    if (v21 >= v20 >> 1)
    {
      v25 = sub_1D177D070((v20 > 1), v21 + 1, 1, v25);
    }

    *(v25 + 2) = v21 + 1;
    v22 = &v25[16 * v21];
    *(v22 + 4) = v12;
    *(v22 + 5) = v19;
    if (v19 >= v14)
    {
      goto LABEL_16;
    }

    v5 = v14;
    v8 = v19 + 1;
    v7 = v16;
    if (v14 < (v19 + 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t WidgetDataModel.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WidgetDataModel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1DC5B34(void **a1)
{
  v2 = *(type metadata accessor for StaticHome() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C01C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1DC5BDC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1DC5BDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StaticHome();
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StaticHome() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1DC5FB0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D1DC5D08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1DC5D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StaticHome();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v33 - v17;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v40 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v38 = v21;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      sub_1D1DC9148(v24, v18, type metadata accessor for StaticHome);
      sub_1D1DC9148(v21, v14, type metadata accessor for StaticHome);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v18[v25 + 8];
      v28 = &v14[v25];
      if (v26 == *v28 && v27 == *(v28 + 1))
      {
        sub_1D1DC91B0(v14, type metadata accessor for StaticHome);
        result = sub_1D1DC91B0(v18, type metadata accessor for StaticHome);
LABEL_5:
        a3 = v39 + 1;
        v21 = v38 + v34;
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_1D1E6904C();
      sub_1D1DC91B0(v14, type metadata accessor for StaticHome);
      result = sub_1D1DC91B0(v18, type metadata accessor for StaticHome);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v31 = v41;
      sub_1D1DCF39C(v24, v41, type metadata accessor for StaticHome);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1DCF39C(v31, v21, type metadata accessor for StaticHome);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DC5FB0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = type metadata accessor for StaticHome();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v138 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v145 = &v126 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v146 = &v126 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v144 = &v126 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v143 = (&v126 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = &v126 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v131 = &v126 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_1D1E0BE44(v29);
      v29 = result;
    }

    v149 = v29;
    v121 = *(v29 + 16);
    if (v121 >= 2)
    {
      while (*a3)
      {
        v122 = *(v29 + 16 * v121);
        v123 = v29;
        v124 = *(v29 + 16 * (v121 - 1) + 32);
        v29 = *(v29 + 16 * (v121 - 1) + 40);
        sub_1D1DC6A44(*a3 + *(v9 + 72) * v122, *a3 + *(v9 + 72) * v124, *a3 + *(v9 + 72) * v29, v30);
        if (v5)
        {
        }

        if (v29 < v122)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1D1E0BE44(v123);
        }

        if (v121 - 2 >= *(v123 + 2))
        {
          goto LABEL_137;
        }

        v125 = &v123[16 * v121];
        *v125 = v122;
        *(v125 + 1) = v29;
        v149 = v123;
        result = sub_1D1E0BDB8(v121 - 1);
        v29 = v149;
        v121 = *(v149 + 16);
        if (v121 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v147 = v25;
  v127 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v135 = a3;
  v128 = v9;
  v148 = v8;
  while (1)
  {
    v30 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_37;
    }

    v139 = v27;
    a3 = *a3;
    v31 = *(v9 + 72);
    v141 = v28 + 1;
    v32 = v131;
    sub_1D1DC9148(a3 + v31 * v30, v131, type metadata accessor for StaticHome);
    v134 = v28;
    v142 = v31;
    v30 = v132;
    sub_1D1DC9148(a3 + v31 * v28, v132, type metadata accessor for StaticHome);
    v33 = *(v8 + 20);
    v34 = *(v32 + v33);
    v35 = *(v32 + v33 + 8);
    v36 = (v30 + v33);
    v37 = v34 == *v36 && v35 == v36[1];
    v130 = v5;
    LODWORD(v140) = v37 ? 0 : sub_1D1E6904C();
    v129 = v29;
    sub_1D1DC91B0(v132, type metadata accessor for StaticHome);
    result = sub_1D1DC91B0(v131, type metadata accessor for StaticHome);
    v38 = v134 + 2;
    v39 = v141;
    v40 = v142 * (v134 + 2);
    v41 = a3 + v40;
    v42 = v142 * v141;
    v43 = a3 + v142 * v141;
    do
    {
      v9 = v38;
      v29 = v39;
      v45 = v42;
      v5 = v40;
      if (v38 >= v139)
      {
        break;
      }

      a3 = v143;
      sub_1D1DC9148(v41, v143, type metadata accessor for StaticHome);
      v46 = v144;
      sub_1D1DC9148(v43, v144, type metadata accessor for StaticHome);
      v47 = *(v148 + 20);
      v48 = *(a3 + v47);
      v49 = *(a3 + v47 + 8);
      v50 = (v46 + v47);
      v51 = v48 == *v50 && v49 == v50[1];
      v44 = v51 ? 0 : sub_1D1E6904C();
      v30 = type metadata accessor for StaticHome;
      sub_1D1DC91B0(v144, type metadata accessor for StaticHome);
      result = sub_1D1DC91B0(v143, type metadata accessor for StaticHome);
      v38 = v9 + 1;
      v41 += v142;
      v43 += v142;
      v39 = v29 + 1;
      v42 = v45 + v142;
      v40 = v5 + v142;
    }

    while (((v140 ^ v44) & 1) == 0);
    if (v140)
    {
      v52 = v134;
      if (v9 < v134)
      {
        goto LABEL_140;
      }

      if (v134 >= v9)
      {
        v30 = v9;
        v29 = v129;
        v5 = v130;
        a3 = v135;
        v9 = v128;
        v8 = v148;
        v28 = v134;
        goto LABEL_37;
      }

      v53 = v134 * v142;
      v8 = v148;
      do
      {
        if (v52 != v29)
        {
          v55 = *v135;
          if (!*v135)
          {
            goto LABEL_146;
          }

          sub_1D1DCF39C(v55 + v53, v138, type metadata accessor for StaticHome);
          if (v53 < v45 || v55 + v53 >= (v55 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D1DCF39C(v138, v55 + v45, type metadata accessor for StaticHome);
          v8 = v148;
        }

        ++v52;
        v45 -= v142;
        v5 -= v142;
        v53 += v142;
      }

      while (v52 < v29--);
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
    }

    else
    {
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
      v8 = v148;
    }

    v28 = v134;
LABEL_37:
    v56 = a3[1];
    if (v30 < v56)
    {
      if (__OFSUB__(v30, v28))
      {
        goto LABEL_139;
      }

      if (v30 - v28 < v127)
      {
        v57 = v28 + v127;
        if (__OFADD__(v28, v127))
        {
          goto LABEL_141;
        }

        if (v57 >= v56)
        {
          v57 = a3[1];
        }

        if (v57 < v28)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v30 != v57)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v30 < v28)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_1D177D070((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v28;
    *(v78 + 40) = v30;
    v141 = v30;
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (v76)
    {
      while (1)
      {
        v79 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_80:
          if (v83)
          {
            goto LABEL_127;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_130;
          }

          v102 = (v29 + 32 + 16 * v79);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_134;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v79 = v77 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_94:
        if (v101)
        {
          goto LABEL_129;
        }

        v109 = v29 + 16 * v79;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_132;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_101:
        v117 = v79 - 1;
        if (v79 - 1 >= v77)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v118 = *(v29 + 32 + 16 * v117);
        v119 = *(v29 + 32 + 16 * v79 + 8);
        sub_1D1DC6A44(*a3 + *(v9 + 72) * v118, *a3 + *(v9 + 72) * *(v29 + 32 + 16 * v79), *a3 + *(v9 + 72) * v119, v30);
        if (v5)
        {
        }

        if (v119 < v118)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D1E0BE44(v29);
        }

        if (v117 >= *(v29 + 16))
        {
          goto LABEL_124;
        }

        v120 = v29 + 16 * v117;
        *(v120 + 32) = v118;
        *(v120 + 40) = v119;
        v149 = v29;
        result = sub_1D1E0BDB8(v79);
        v29 = v149;
        v77 = *(v149 + 16);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_125;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_126;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_128;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_131;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v79);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_135;
        }

        if (v82 < v116)
        {
          v79 = v77 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v141;
    v8 = v148;
    if (v141 >= v27)
    {
      goto LABEL_111;
    }
  }

  v129 = v29;
  v130 = v5;
  v58 = *a3;
  v59 = *(v9 + 72);
  v60 = *a3 + v59 * (v30 - 1);
  v61 = -v59;
  v134 = v28;
  v62 = v28 - v30;
  v136 = v59;
  v137 = v57;
  v63 = v58 + v30 * v59;
  v64 = v146;
  while (2)
  {
    v140 = v62;
    v141 = v30;
    v139 = v63;
    v65 = v63;
    v142 = v60;
LABEL_49:
    v66 = v147;
    sub_1D1DC9148(v65, v147, type metadata accessor for StaticHome);
    sub_1D1DC9148(v60, v64, type metadata accessor for StaticHome);
    v67 = *(v8 + 20);
    v68 = *(v66 + v67);
    v69 = *(v66 + v67 + 8);
    v70 = (v64 + v67);
    if (v68 == *v70 && v69 == v70[1])
    {
      sub_1D1DC91B0(v64, type metadata accessor for StaticHome);
      sub_1D1DC91B0(v66, type metadata accessor for StaticHome);
LABEL_47:
      v30 = v141 + 1;
      v60 = v142 + v136;
      v62 = v140 - 1;
      v63 = v139 + v136;
      if (v141 + 1 != v137)
      {
        continue;
      }

      v30 = v137;
      v29 = v129;
      v5 = v130;
      v28 = v134;
      a3 = v135;
      v9 = v128;
      goto LABEL_60;
    }

    break;
  }

  v72 = sub_1D1E6904C();
  sub_1D1DC91B0(v64, type metadata accessor for StaticHome);
  result = sub_1D1DC91B0(v66, type metadata accessor for StaticHome);
  if ((v72 & 1) == 0)
  {
    v8 = v148;
    goto LABEL_47;
  }

  v8 = v148;
  if (v58)
  {
    v73 = v145;
    sub_1D1DCF39C(v65, v145, type metadata accessor for StaticHome);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1DCF39C(v73, v60, type metadata accessor for StaticHome);
    v60 += v61;
    v65 += v61;
    v74 = __CFADD__(v62++, 1);
    v64 = v146;
    if (v74)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

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
  return result;
}

uint64_t sub_1D1DC6A44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a4;
  v57 = type metadata accessor for StaticHome();
  v7 = *(*(v57 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v21 = (a2 - a1) / v19;
  v61 = a1;
  v60 = v58;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (v58 < a2 || a2 + v23 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = v58 + v23;
    if (v23 >= 1)
    {
      v34 = -v19;
      v35 = v58 + v23;
      do
      {
        v51 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v53 = v36;
        v54 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v61 = v36;
            v59 = v51;
            goto LABEL_69;
          }

          v38 = a3;
          v52 = v33;
          v39 = v34;
          v40 = v35 + v34;
          v41 = v35 + v34;
          v42 = v55;
          sub_1D1DC9148(v41, v55, type metadata accessor for StaticHome);
          v43 = v56;
          sub_1D1DC9148(v37, v56, type metadata accessor for StaticHome);
          v44 = *(v57 + 20);
          v45 = *(v42 + v44);
          v46 = *(v42 + v44 + 8);
          v47 = (v43 + v44);
          v48 = v45 == *v47 && v46 == v47[1];
          v49 = v48 ? 0 : sub_1D1E6904C();
          v34 = v39;
          a3 = v38 + v39;
          sub_1D1DC91B0(v56, type metadata accessor for StaticHome);
          sub_1D1DC91B0(v55, type metadata accessor for StaticHome);
          if (v49)
          {
            break;
          }

          v33 = v40;
          v37 = v54;
          if (v38 < v35 || a3 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v38 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = v40;
          v36 = v53;
          if (v40 <= v58)
          {
            a2 = v53;
            goto LABEL_68;
          }
        }

        a2 = v54;
        if (v38 < v53 || a3 >= v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v33 = v52;
        }

        else
        {
          v33 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v58);
    }

LABEL_68:
    v61 = a2;
    v59 = v33;
  }

  else
  {
    v22 = v21 * v19;
    if (v58 < a1 || a1 + v22 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v58 + v22;
    v59 = v58 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_1D1DC9148(a2, v17, type metadata accessor for StaticHome);
        sub_1D1DC9148(v58, v14, type metadata accessor for StaticHome);
        v26 = *(v57 + 20);
        v27 = *&v17[v26];
        v28 = *&v17[v26 + 8];
        v29 = &v14[v26];
        if (v27 == *v29 && v28 == *(v29 + 1))
        {
          break;
        }

        v31 = sub_1D1E6904C();
        sub_1D1DC91B0(v14, type metadata accessor for StaticHome);
        sub_1D1DC91B0(v17, type metadata accessor for StaticHome);
        if ((v31 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
LABEL_38:
        a1 += v19;
        v61 = a1;
        if (v58 >= v24 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1D1DC91B0(v14, type metadata accessor for StaticHome);
      sub_1D1DC91B0(v17, type metadata accessor for StaticHome);
LABEL_30:
      v32 = v58 + v19;
      if (a1 < v58 || a1 >= v32)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v58)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = v32;
      v58 = v32;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1D1DC727C(&v61, &v60, &v59, type metadata accessor for StaticHome);
  return 1;
}

uint64_t sub_1D1DC700C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D1DC727C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D1DC7364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetDataModel.Error(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD68, &qword_1D1EB0818);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1D1DC9148(a1, &v23 - v16, type metadata accessor for WidgetDataModel.Error);
  sub_1D1DC9148(a2, &v17[v18], type metadata accessor for WidgetDataModel.Error);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D1DC9148(v17, v12, type metadata accessor for WidgetDataModel.Error);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1D1DC91B0(v17, type metadata accessor for WidgetDataModel.Error);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v17, &qword_1EC64FD68, &qword_1D1EB0818);
    v20 = 0;
    return v20 & 1;
  }

  sub_1D1DC91B0(v17, type metadata accessor for WidgetDataModel.Error);
  v20 = 1;
  return v20 & 1;
}

uint64_t _s13HomeDataModel23WidgetSnapshotModeratorC5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_1D1E66A7C();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD88, &qword_1D1EB0888);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v37 - v22;
  v24 = *(v21 + 56);
  sub_1D1DC9148(v39, &v37 - v22, type metadata accessor for WidgetSnapshotModerator.Error);
  sub_1D1DC9148(v40, &v23[v24], type metadata accessor for WidgetSnapshotModerator.Error);
  v25 = *(v7 + 48);
  v26 = v25(v23, 4, v6);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      if (v25(&v23[v24], 4, v6) != 2)
      {
        goto LABEL_15;
      }
    }

    else if (v26 == 3)
    {
      if (v25(&v23[v24], 4, v6) != 3)
      {
        goto LABEL_15;
      }
    }

    else if (v25(&v23[v24], 4, v6) != 4)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_1D1DC91B0(v23, type metadata accessor for WidgetSnapshotModerator.Error);
    return 1;
  }

  v39 = v5;
  v40 = v10;
  v28 = v37;
  v27 = v38;
  if (!v26)
  {
    sub_1D1DC9148(v23, v18, type metadata accessor for WidgetSnapshotModerator.Error);
    if (v25(&v23[v24], 4, v6))
    {
      sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_15;
    }

    v30 = *(v11 + 48);
    sub_1D1778308(v18, v14);
    sub_1D1778308(&v23[v24], &v14[v30]);
    v31 = v28;
    v32 = *(v28 + 48);
    if (v32(v14, 1, v27) == 1)
    {
      if (v32(&v14[v30], 1, v27) == 1)
      {
        sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
        goto LABEL_14;
      }
    }

    else
    {
      v33 = v40;
      sub_1D1741C08(v14, v40, &qword_1EC642590, qword_1D1E71260);
      if (v32(&v14[v30], 1, v27) != 1)
      {
        v34 = v39;
        (*(v31 + 32))(v39, &v14[v30], v27);
        sub_1D1DC9C14(&qword_1EE07D170, 255, MEMORY[0x1E69695A8]);
        v35 = sub_1D1E6775C();
        v36 = *(v31 + 8);
        v36(v34, v27);
        v36(v33, v27);
        sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
        if (v35)
        {
          goto LABEL_14;
        }

LABEL_23:
        sub_1D1DC91B0(v23, type metadata accessor for WidgetSnapshotModerator.Error);
        return 0;
      }

      (*(v31 + 8))(v33, v27);
    }

    sub_1D1741A30(v14, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_23;
  }

  if (v25(&v23[v24], 4, v6) == 1)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_1D1741A30(v23, &qword_1EC64FD88, &qword_1D1EB0888);
  return 0;
}