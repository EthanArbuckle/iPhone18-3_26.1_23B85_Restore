id sub_1D1876F98()
{
  result = [objc_allocWithZone(type metadata accessor for CoordinationDataModel()) init];
  qword_1EE07B1E0 = result;
  return result;
}

id static CoordinationDataModel.shared.getter()
{
  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE07B1E0;

  return v1;
}

uint64_t sub_1D1877084()
{
  type metadata accessor for CoordinationSnapshotModerator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  if (qword_1EE07A758 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = qword_1EE081410;
  *(v0 + 120) = 0;
  qword_1EC6BE0C8 = v0;
}

uint64_t sub_1D1877110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A48, &qword_1D1E7B908);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D1E670CC();
  qword_1EC6459E0 = result;
  return result;
}

uint64_t static CoordinationDataModel.snapshotPublisher.getter()
{
  if (qword_1EC642208 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D18771B8()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC6459E8);
  __swift_project_value_buffer(v0, qword_1EC6459E8);
  return sub_1D1E6708C();
}

uint64_t static CoordinationDataModel.modelLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC6459E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D1877300(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v59 = a4;
  v7 = sub_1D1E66A7C();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43[-v11];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A38, &unk_1D1E7B8F0);
  v13 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43[-v14];
  v15 = *(a1 + 16);

  v52 = a2;

  v48 = v15;
  if (!v15)
  {
LABEL_19:
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  v16 = 0;
  v47 = v51 + 16;
  v17 = v52 + 32;
  v54 = (v51 + 32);
  v44 = (v51 + 8);
  v46 = a1;
  v45 = v12;
  while (v16 < *(a1 + 16))
  {
    v20 = *(v51 + 72);
    (*(v51 + 16))(v12, a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + v20 * v16, v7);
    v21 = *(v52 + 16);
    if (v16 == v21)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return (*v44)(v12, v7);
    }

    if (v16 >= v21)
    {
      goto LABEL_23;
    }

    v53 = v20;
    v22 = v49;
    v23 = *(v50 + 48);
    v24 = *v54;
    (*v54)(v49, v12, v7);
    v55 = v17;
    sub_1D17419CC(v17, &v22[v23]);
    v25 = v56;
    v26 = v7;
    v24(v56, v22, v7);
    sub_1D16EEE20(&v22[v23], v58);
    v27 = *v59;
    v29 = sub_1D1742188(v25);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_24;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if (a3)
      {
        if (v28)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D1738B50();
        if (v33)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v34 = v59;
      sub_1D1727FEC(v32, a3 & 1);
      v35 = *v34;
      v36 = sub_1D1742188(v56);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_26;
      }

      v29 = v36;
      if (v33)
      {
LABEL_3:
        v18 = *v59;
        sub_1D17419CC(v58, v57);
        __swift_destroy_boxed_opaque_existential_1(v58);
        v7 = v26;
        (*v44)(v56, v26);
        v19 = (*(v18 + 56) + 40 * v29);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1D16EEE20(v57, v19);
        goto LABEL_4;
      }
    }

    v38 = *v59;
    *(*v59 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v7 = v26;
    v24((v38[6] + v29 * v53), v56, v26);
    sub_1D16EEE20(v58, v38[7] + 40 * v29);
    v39 = v38[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_25;
    }

    v38[2] = v41;
LABEL_4:
    ++v16;
    v17 = v55 + 40;
    a3 = 1;
    a1 = v46;
    v12 = v45;
    if (v48 == v16)
    {
      goto LABEL_19;
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
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1877764(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v59 = a4;
  v7 = sub_1D1E66A7C();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43[-v11];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A40, &qword_1D1E7B900);
  v13 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43[-v14];
  v15 = *(a1 + 16);

  v52 = a2;

  v48 = v15;
  if (!v15)
  {
LABEL_19:
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  v16 = 0;
  v47 = v51 + 16;
  v17 = v52 + 32;
  v54 = (v51 + 32);
  v44 = (v51 + 8);
  v46 = a1;
  v45 = v12;
  while (v16 < *(a1 + 16))
  {
    v20 = *(v51 + 72);
    (*(v51 + 16))(v12, a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + v20 * v16, v7);
    v21 = *(v52 + 16);
    if (v16 == v21)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return (*v44)(v12, v7);
    }

    if (v16 >= v21)
    {
      goto LABEL_23;
    }

    v53 = v20;
    v22 = v49;
    v23 = *(v50 + 48);
    v24 = *v54;
    (*v54)(v49, v12, v7);
    v55 = v17;
    sub_1D17419CC(v17, &v22[v23]);
    v25 = v56;
    v26 = v7;
    v24(v56, v22, v7);
    sub_1D16EEE20(&v22[v23], v58);
    v27 = *v59;
    v29 = sub_1D1742188(v25);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_24;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if (a3)
      {
        if (v28)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D1738B8C();
        if (v33)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v34 = v59;
      sub_1D1728028(v32, a3 & 1);
      v35 = *v34;
      v36 = sub_1D1742188(v56);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_26;
      }

      v29 = v36;
      if (v33)
      {
LABEL_3:
        v18 = *v59;
        sub_1D17419CC(v58, v57);
        __swift_destroy_boxed_opaque_existential_1(v58);
        v7 = v26;
        (*v44)(v56, v26);
        v19 = (*(v18 + 56) + 40 * v29);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1D16EEE20(v57, v19);
        goto LABEL_4;
      }
    }

    v38 = *v59;
    *(*v59 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v7 = v26;
    v24((v38[6] + v29 * v53), v56, v26);
    sub_1D16EEE20(v58, v38[7] + 40 * v29);
    v39 = v38[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_25;
    }

    v38[2] = v41;
LABEL_4:
    ++v16;
    v17 = v55 + 40;
    a3 = 1;
    a1 = v46;
    v12 = v45;
    if (v48 == v16)
    {
      goto LABEL_19;
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
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel012CoordinationbC0C6ErrorsO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    switch(v2)
    {
      case 3:
        if (v3 == 3)
        {
          v4 = 1;
          v2 = 3;
          goto LABEL_23;
        }

        break;
      case 4:
        if (v3 == 4)
        {
          v4 = 1;
          v2 = 4;
          goto LABEL_23;
        }

        break;
      case 5:
        if (v3 == 5)
        {
          v4 = 1;
          v2 = 5;
          goto LABEL_23;
        }

        break;
      default:
LABEL_16:
        if (v3 >= 6)
        {
          sub_1D1877D48();
          sub_1D1741C70(v3);
          sub_1D1741C70(v2);
          v4 = sub_1D1E684FC();
          goto LABEL_23;
        }

        break;
    }

LABEL_22:
    sub_1D1741C70(*a2);
    sub_1D1741C70(v2);
    v4 = 0;
    goto LABEL_23;
  }

  if (!v2)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  if (v3 != 2)
  {
    goto LABEL_22;
  }

  v4 = 1;
  v2 = 2;
LABEL_23:
  sub_1D1757B18(v2);
  sub_1D1757B18(v3);
  return v4 & 1;
}

uint64_t type metadata accessor for CoordinationDataModel()
{
  result = qword_1EE07B1C8;
  if (!qword_1EE07B1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1877D48()
{
  result = qword_1EE07B260;
  if (!qword_1EE07B260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B260);
  }

  return result;
}

unint64_t sub_1D1877DA4()
{
  result = qword_1EC645A20;
  if (!qword_1EC645A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645A20);
  }

  return result;
}

void sub_1D1877E00()
{
  sub_1D1878150();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D1878150()
{
  if (!qword_1EE07A048)
  {
    v0 = sub_1D1E6713C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07A048);
    }
  }
}

uint64_t sub_1D18781A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1878208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1873F9C(a1, v4, v5, v7);
}

uint64_t sub_1D18782C8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_1D187832C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1D1878390(uint64_t a1)
{
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1D18783EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C30, &qword_1D1E6E980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D187845C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v7 = [v6 accessories];
  v8 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v9 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v10);
  v44 = a1;
  v11 = 0;
  v12 = sub_1D174A6C4(sub_1D18881D8, v43, v9);

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D1E73FA0;
    *(v5 + 32) = v12;
    goto LABEL_4;
  }

  v48 = v8;
  v14 = [v6 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v15 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v16);
  v44 = a1;
  v17 = sub_1D174A6C4(sub_1D188823C, v43, v15);

  if (!v17)
  {
LABEL_4:

    return v5;
  }

  v18 = [v17 components];
  sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
  v19 = sub_1D1E67C1C();

  v49 = v5;
  if (v19 >> 62)
  {
LABEL_53:
    v20 = sub_1D1E6873C();
    v46 = v17;
    v47 = v11;
    if (!v20)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v17;
    v47 = 0;
    if (!v20)
    {
      goto LABEL_26;
    }
  }

  v11 = 0;
  v17 = (v19 & 0xC000000000000001);
  v45 = v6;
  do
  {
    v6 = v11;
    while (1)
    {
      if (v17)
      {
        v21 = MEMORY[0x1D3891EF0](v6, v19);
      }

      else
      {
        if (v6 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v21 = *(v19 + 8 * v6 + 32);
      }

      v22 = v21;
      v11 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v23 = [v21 mediaProfile];
      if (v23)
      {
        break;
      }

LABEL_12:
      ++v6;
      if (v11 == v20)
      {
        v6 = v45;
        goto LABEL_26;
      }
    }

    v24 = v23;
    v25 = [v23 accessory];

    if (!v25)
    {
      goto LABEL_12;
    }

    MEMORY[0x1D3891220]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v6 = v45;
  }

  while (v11 != v20);
LABEL_26:

  v49 = sub_1D174999C(v27);
  v28 = v47;
  sub_1D18856FC(&v49);
  if (v28)
  {
LABEL_61:

    __break(1u);
    return result;
  }

  v29 = v48;
  v28 = v49;
  v30 = v49 < 0 || (v49 & 0x4000000000000000) != 0;
  if (!v30)
  {
    v31 = *(v49 + 16);
    v32 = v31;
    goto LABEL_32;
  }

  v31 = sub_1D1E6873C();
  if (sub_1D1E6873C() < 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v32 = sub_1D1E6873C();
LABEL_32:
  v33 = v31 != 0;
  if (v32 < v33)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if ((v28 & 0xC000000000000001) != 0 && v31)
  {
    v34 = 0;
    do
    {
      v35 = v34 + 1;
      sub_1D1E6889C();
      v34 = v35;
    }

    while (v33 != v35);
  }

  if (v30)
  {
    v36 = sub_1D1E68B9C();
    v29 = v37;
    v33 = v38;
    v31 = v39;

    v28 = v36;
    if (v31)
    {
      goto LABEL_44;
    }

LABEL_43:
    sub_1D1906460(v28, v29, v33, v31);
    v5 = v40;
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  v33 = 0;
  v29 = v28 + 32;
  if (v31)
  {
    v31 = 3;
  }

  else
  {
    v31 = 1;
  }

LABEL_44:
  sub_1D1E6907C();
  swift_unknownObjectRetain_n();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
    swift_unknownObjectRelease();
    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = *(v41 + 16);

  if (__OFSUB__(v31 >> 1, v33))
  {
    goto LABEL_58;
  }

  if (v42 != (v31 >> 1) - v33)
  {
LABEL_59:
    swift_unknownObjectRelease_n();
    goto LABEL_43;
  }

  v5 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v5)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1D18789E8()
{
  v1 = v0[6];
  sub_1D18792E0();
  v2 = *v0;
  sub_1D17419CC(v1 + 16, v53);
  if (v2)
  {
    v3 = v54;
    v4 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v5 = *(v4 + 72);
    v6 = swift_unknownObjectRetain();
    v5(v6, v3, v4);
    sub_1D17419CC(v53, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v45, v50);
      v7 = v51;
      v8 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      ObjectType = swift_getObjectType();
      v48[0] = v2;
      (*(v8 + 56))(v48, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v48);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    else
    {
      swift_unknownObjectRelease();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_1D1741A30(&v45, &qword_1EC6459D0, &qword_1D1E7B6A8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  v9 = v0[1];
  sub_1D17419CC(v1 + 16, v53);
  if (v9)
  {
    v10 = v54;
    v11 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v12 = *(v11 + 72);
    v13 = swift_unknownObjectRetain();
    v12(v13, v10, v11);
    sub_1D17419CC(v53, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v45, v50);
      v14 = v51;
      v15 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      ObjectType = swift_getObjectType();
      v48[0] = v9;
      (*(v15 + 56))(v48, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v48);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    else
    {
      swift_unknownObjectRelease();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_1D1741A30(&v45, &qword_1EC6459D0, &qword_1D1E7B6A8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  v16 = v0[2];
  sub_1D17419CC(v1 + 16, v53);
  if (v16)
  {
    v17 = v54;
    v18 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v19 = *(v18 + 72);
    v20 = swift_unknownObjectRetain();
    v19(v20, v17, v18);
    sub_1D17419CC(v53, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v45, v50);
      v21 = v51;
      v22 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      ObjectType = swift_getObjectType();
      v48[0] = v16;
      (*(v22 + 56))(v48, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v48);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    else
    {
      swift_unknownObjectRelease();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_1D1741A30(&v45, &qword_1EC6459D0, &qword_1D1E7B6A8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  v23 = v0[3];
  sub_1D17419CC(v1 + 16, v53);
  if (v23)
  {
    v24 = v54;
    v25 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v26 = *(v25 + 72);
    v27 = swift_unknownObjectRetain();
    v26(v27, v24, v25);
    sub_1D17419CC(v53, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v45, v50);
      v28 = v51;
      v29 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      ObjectType = swift_getObjectType();
      v48[0] = v23;
      (*(v29 + 56))(v48, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v48);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    else
    {
      swift_unknownObjectRelease();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_1D1741A30(&v45, &qword_1EC6459D0, &qword_1D1E7B6A8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  v30 = v0[4];
  sub_1D17419CC(v1 + 16, v53);
  if (v30)
  {
    v31 = v54;
    v32 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v33 = *(v32 + 72);
    v34 = swift_unknownObjectRetain();
    v33(v34, v31, v32);
    sub_1D17419CC(v53, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v45, v50);
      v35 = v51;
      v36 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      ObjectType = swift_getObjectType();
      v48[0] = v30;
      (*(v36 + 56))(v48, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v48);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    else
    {
      swift_unknownObjectRelease();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_1D1741A30(&v45, &qword_1EC6459D0, &qword_1D1E7B6A8);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  v37 = v0[5];
  sub_1D17419CC(v1 + 16, v53);
  if (v37)
  {
    v38 = v54;
    v39 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v40 = *(v39 + 72);
    v41 = swift_unknownObjectRetain();
    v40(v41, v38, v39);
    sub_1D17419CC(v53, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v45, v50);
      v42 = v51;
      v43 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      ObjectType = swift_getObjectType();
      v48[0] = v37;
      (*(v43 + 56))(v48, v42, v43);
      __swift_destroy_boxed_opaque_existential_1(v48);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    else
    {
      swift_unknownObjectRelease();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_1D1741A30(&v45, &qword_1EC6459D0, &qword_1D1E7B6A8);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1D1879184(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    sub_1D17419CC(a2, v10);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(v8, v11);
      v4 = ObjectType;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(v11, ObjectType);
      (*(v5 + 72))(v3, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_1D1741A30(v8, &qword_1EC6459C0, &qword_1D1E7B920);
    }

    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    ObjectType = swift_getObjectType();
    v11[0] = v3;
    (*(v7 + 56))(v11, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

void sub_1D18792E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EC6459E8);
    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6835C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBB460, &v12);
      _os_log_impl(&dword_1D16EC000, v3, v4, "cancel %s fetch", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1D3893640](v6, -1, -1);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    [v1 cancel];

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EC6459E8);
    oslog = sub_1D1E6707C();
    v8 = sub_1D1E6835C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBB460, &v12);
      _os_log_impl(&dword_1D16EC000, oslog, v8, "no %s fetch in flight", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }
  }
}

void sub_1D187958C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EC6459E8);
    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6835C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBB440, &v12);
      _os_log_impl(&dword_1D16EC000, v3, v4, "cancel %s fetch", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1D3893640](v6, -1, -1);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    [v1 cancel];

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EC6459E8);
    oslog = sub_1D1E6707C();
    v8 = sub_1D1E6835C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBB440, &v12);
      _os_log_impl(&dword_1D16EC000, oslog, v8, "no %s fetch in flight", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }
  }
}

uint64_t sub_1D1879838(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D1E66A7C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[9] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v3[10] = v8;
  v3[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1879930, v8, v7);
}

uint64_t sub_1D1879930()
{
  v40 = v0;
  v1 = v0[3];
  if (v1 >> 62)
  {
LABEL_36:
    result = sub_1D1E6873C();
    v0[12] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[12] = result;
    if (result)
    {
LABEL_3:
      v3 = v0[3];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3891EF0](0);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v4 = *(v3 + 32);
      }

      v0[13] = v4;
      v0[14] = 1;
      v36 = v4;
      v5 = [v4 components];
      sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
      v6 = sub_1D1E67C1C();

      v7 = MEMORY[0x1E69E7CC0];
      v0[2] = MEMORY[0x1E69E7CC0];
      if (v6 >> 62)
      {
        v8 = sub_1D1E6873C();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v0;
      v0[15] = v7;
      if (!v8)
      {
        v37 = v7;
        goto LABEL_27;
      }

      v0 = 0;
      v37 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = v0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1D3891EF0](v9, v6);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v0 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v12 = [v10 mediaProfile];
          if (v12)
          {
            break;
          }

LABEL_13:
          ++v9;
          if (v0 == v8)
          {
            goto LABEL_27;
          }
        }

        v13 = v12;
        v14 = [v12 accessory];

        if (!v14)
        {
          goto LABEL_13;
        }

        MEMORY[0x1D3891220]();
        if (*((v38[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v38[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D1E67C5C();
        }

        sub_1D1E67CAC();
        v37 = v38[2];
        v38[15] = v37;
        if (v0 == v8)
        {
LABEL_27:

          if (qword_1EC642210 != -1)
          {
            swift_once();
          }

          v16 = sub_1D1E6709C();
          __swift_project_value_buffer(v16, qword_1EC6459E8);
          v17 = v36;
          v18 = sub_1D1E6707C();
          v19 = sub_1D1E6835C();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v39 = v21;
            *v20 = 136315138;
            v22 = [v17 description];
            v23 = sub_1D1E6781C();
            v25 = v24;

            v26 = sub_1D1B1312C(v23, v25, &v39);

            *(v20 + 4) = v26;
            _os_log_impl(&dword_1D16EC000, v18, v19, "registering for %s", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            MEMORY[0x1D3893640](v21, -1, -1);
            MEMORY[0x1D3893640](v20, -1, -1);
          }

          v27 = v38[8];
          v28 = [v17 uniqueIdentifier];
          sub_1D1E66A5C();

          v29 = swift_task_alloc();
          v38[16] = v29;
          *v29 = v38;
          v29[1] = sub_1D1879DCC;
          v30 = v38[8];
          v31 = v38[4];
          v32 = v38[5];

          return sub_1D187CAB0(v30, v37, v31);
        }
      }
    }
  }

  v34 = v0[8];
  v33 = v0[9];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1D1879DCC()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 88);
  v8 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D1879F6C, v8, v7);
}

void sub_1D1879F6C()
{
  v41 = v0;
  v3 = v0[14];
  v4 = v0[12];

  if (v3 == v4)
  {
    v6 = v0[8];
    v5 = v0[9];

    v7 = v0[1];

    v7();
    return;
  }

  v8 = v0[14];
  v9 = v0[3];
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1D3891EF0](v0[14]);
  }

  else
  {
    if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 8 * v8 + 32);
  }

  v0[13] = v10;
  v0[14] = (v8 + 1);
  if (__OFADD__(v8, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v10;
  v11 = [(__objc2_prot *)v10 components];
  sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
  v1 = sub_1D1E67C1C();

  v8 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_40:
    v12 = sub_1D1E6873C();
    goto LABEL_12;
  }

  v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v39 = v0;
  v0[15] = v8;
  if (!v12)
  {
    v38 = v8;
    goto LABEL_30;
  }

  v13 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v0 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  do
  {
    v8 = v13;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3891EF0](v8, v1);
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_38;
        }

        v14 = *(v1 + 8 * v8 + 32);
      }

      v15 = v14;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v16 = [v14 mediaProfile];
      if (v16)
      {
        break;
      }

LABEL_16:
      ++v8;
      if (v13 == v12)
      {
        goto LABEL_30;
      }
    }

    v17 = v16;
    v18 = [v16 accessory];

    if (!v18)
    {
      goto LABEL_16;
    }

    MEMORY[0x1D3891220]();
    if (*((v39[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v39[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v38 = v39[2];
    v39[15] = v38;
  }

  while (v13 != v12);
LABEL_30:

  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6709C();
  __swift_project_value_buffer(v20, qword_1EC6459E8);
  v21 = v37;
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v25;
    *v24 = 136315138;
    v26 = [(__objc2_prot *)v21 description];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = sub_1D1B1312C(v27, v29, &v40);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1D16EC000, v22, v23, "registering for %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1D3893640](v25, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  v31 = v39[8];
  v32 = [(__objc2_prot *)v21 uniqueIdentifier];
  sub_1D1E66A5C();

  v33 = swift_task_alloc();
  v39[16] = v33;
  v33->isa = v39;
  v33->name = sub_1D1879DCC;
  v34 = v39[8];
  v35 = v39[4];
  v36 = v39[5];

  sub_1D187CAB0(v34, v38, v35);
}

uint64_t sub_1D187A3FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D1E66A7C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[8] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v3[9] = v8;
  v3[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D187A4F4, v8, v7);
}

uint64_t sub_1D187A4F4()
{
  v42 = v1;
  v2 = v1[2];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[11] = v3;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v18 = v1[7];
    v17 = v1[8];

    v19 = v1[1];

    return v19();
  }

  if (v2 < 0)
  {
    v40 = v1[2];
  }

  v3 = sub_1D1E6873C();
  v1[11] = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v1[12] = *MEMORY[0x1E696C9B0];
    while (1)
    {
      v1[13] = v4;
      v5 = v1[2];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v6 = *(v5 + 8 * v4 + 32);
      }

      v0 = v6;
      v1[14] = v6;
      v7 = v1[12];
      v8 = [v6 category];
      v9 = [v8 categoryType];

      v10 = sub_1D1E6781C();
      v12 = v11;

      if (v10 == sub_1D1E6781C() && v12 == v13)
      {

        goto LABEL_20;
      }

      v15 = sub_1D1E6904C();

      if (v15)
      {
        goto LABEL_20;
      }

      v16 = [v0 siriEndpointProfile];
      if (v16)
      {
        break;
      }

      v4 = v1[13] + 1;
      if (v4 == v1[11])
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    if (qword_1EC642210 == -1)
    {
      goto LABEL_21;
    }
  }

  swift_once();
LABEL_21:
  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  v22 = v0;
  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6835C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41 = v26;
    *v25 = 136315138;
    v27 = [v22 description];
    v28 = sub_1D1E6781C();
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v41);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D16EC000, v23, v24, "registering for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1D3893640](v26, -1, -1);
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v32 = v1[7];
  v33 = [v22 uniqueIdentifier];
  sub_1D1E66A5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v34 = swift_allocObject();
  v1[15] = v34;
  *(v34 + 16) = xmmword_1D1E73FA0;
  *(v34 + 32) = v22;
  v35 = v22;
  v36 = swift_task_alloc();
  v1[16] = v36;
  *v36 = v1;
  v36[1] = sub_1D187A914;
  v37 = v1[7];
  v38 = v1[3];
  v39 = v1[4];

  return sub_1D187CAB0(v37, v34, v38);
}

uint64_t sub_1D187A914()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 80);
  v8 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D187AAB4, v8, v7);
}

uint64_t sub_1D187AAB4()
{
  v39 = v0;

  v1 = *(v0 + 104) + 1;
  if (v1 == *(v0 + 88))
  {
LABEL_2:
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    while (1)
    {
      *(v0 + 104) = v1;
      v6 = *(v0 + 16);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v7 = *(v6 + 8 * v1 + 32);
      }

      v8 = v7;
      *(v0 + 112) = v7;
      v9 = *(v0 + 96);
      v10 = [v7 category];
      v11 = [v10 categoryType];

      v12 = sub_1D1E6781C();
      v14 = v13;

      if (v12 == sub_1D1E6781C() && v14 == v15)
      {

        goto LABEL_18;
      }

      v17 = sub_1D1E6904C();

      if (v17)
      {
        goto LABEL_18;
      }

      v18 = [v8 siriEndpointProfile];
      if (v18)
      {
        break;
      }

      v1 = *(v0 + 104) + 1;
      if (v1 == *(v0 + 88))
      {
        goto LABEL_2;
      }
    }

LABEL_18:
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EC6459E8);
    v20 = v8;
    v21 = sub_1D1E6707C();
    v22 = sub_1D1E6835C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      v25 = [v20 description];
      v26 = sub_1D1E6781C();
      v28 = v27;

      v29 = sub_1D1B1312C(v26, v28, &v38);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1D16EC000, v21, v22, "registering for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    v30 = *(v0 + 56);
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v32 = swift_allocObject();
    *(v0 + 120) = v32;
    *(v32 + 16) = xmmword_1D1E73FA0;
    *(v32 + 32) = v20;
    v33 = v20;
    v34 = swift_task_alloc();
    *(v0 + 128) = v34;
    *v34 = v0;
    v34[1] = sub_1D187A914;
    v35 = *(v0 + 56);
    v36 = *(v0 + 24);
    v37 = *(v0 + 32);

    return sub_1D187CAB0(v35, v32, v36);
  }
}

uint64_t CoordinationDataModel.register(for:isRemoval:withManagers:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 112) = a2;
  *(v4 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D187AEC4, 0, 0);
}

uint64_t sub_1D187AEC4()
{
  sub_1D1E67E1C();
  *(v0 + 64) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D187AF58, v2, v1);
}

uint64_t sub_1D187AF58()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[9] = v4;
  v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D187AFF0, 0, 0);
}

uint64_t sub_1D187AFF0()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = [v1 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v4 = sub_1D1E67C1C();

    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    v6 = sub_1D174A6C4(sub_1D188823C, v5, v4);
    *(v0 + 80) = v6;

    if (v6)
    {
      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v7[1] = sub_1D187B288;
      v8 = *(v0 + 48);
      v9 = *(v0 + 56);
      v10 = *(v0 + 112);

      return sub_1D187B6A4(v6, v10, v8);
    }

    v12 = *(v0 + 40);
    v13 = [*(v0 + 72) mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v14 = sub_1D1E67C1C();

    v15 = swift_task_alloc();
    *(v15 + 16) = v12;
    v16 = sub_1D174A6C4(sub_1D188823C, v15, v14);
    *(v0 + 96) = v16;

    if (v16)
    {
      v17 = swift_task_alloc();
      *(v0 + 104) = v17;
      *v17 = v0;
      v17[1] = sub_1D187B3E8;
      v18 = *(v0 + 48);
      v19 = *(v0 + 56);
      v20 = *(v0 + 112);

      return sub_1D187BEE8(v16, v20, v18);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D187B288()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D187B384, 0, 0);
}

uint64_t sub_1D187B384()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D187B3E8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D187B4E4, 0, 0);
}

uint64_t sub_1D187B4E4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CoordinationDataModel.update(for:isRemoval:withManagers:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4BFC;

  return sub_1D187B6A4(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return sub_1D187BEE8(a1, a2, a3);
}

uint64_t sub_1D187B6A4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 264) = a2;
  *(v4 + 96) = a1;
  v5 = sub_1D1E66A7C();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  *(v4 + 144) = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  *(v4 + 160) = v10;
  v11 = *(v10 - 8);
  *(v4 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  *(v4 + 184) = v13;
  v14 = *(v13 - 8);
  *(v4 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v4 + 208) = sub_1D1E67E0C();
  v17 = sub_1D1E67D4C();
  *(v4 + 216) = v17;
  *(v4 + 224) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1D187B8A0, v17, v16);
}

uint64_t sub_1D187B8A0()
{
  v1 = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v2 = *(v0 + 96);
  if (v1 == 1)
  {
    inited = swift_initStackObject();
    *(v0 + 232) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 240) = v5;
    *v5 = v0;
    v5[1] = sub_1D187BA20;
    v6 = *(v0 + 112);

    return sub_1D187C854(inited);
  }

  else
  {
    v8 = swift_initStackObject();
    *(v0 + 248) = v8;
    *(v8 + 16) = xmmword_1D1E73FA0;
    *(v8 + 32) = v2;
    v9 = v2;
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_1D187BD8C;
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);

    return sub_1D187A3FC(v8, v11);
  }
}

uint64_t sub_1D187BA20()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v8 = *v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  swift_arrayDestroy();
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D187BB7C, v6, v5);
}

uint64_t sub_1D187BB7C()
{
  v1 = *(v0 + 208);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 200);
  v20 = *(v0 + 192);
  v2 = *(v0 + 176);
  v21 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v18 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 264);
  v8 = *(v0 + 96);
  v9 = __swift_project_value_buffer(v3, qword_1EE07B210);
  (*(v4 + 16))(v2, v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v10 = *(v6 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D1E739C0;
  v13 = [v8 uniqueIdentifier];
  sub_1D1E66A5C();

  (*(v6 + 32))(v12 + v11, v7, v16);
  *v5 = v12;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v4 + 8))(v2, v3);
  (*(v20 + 8))(v19, v21);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D187BD8C()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v8 = *v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  swift_arrayDestroy();
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D18881F8, v6, v5);
}

uint64_t sub_1D187BEE8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 240) = a2;
  *(v4 + 96) = a1;
  v5 = sub_1D1E66A7C();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  *(v4 + 144) = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  *(v4 + 160) = v10;
  v11 = *(v10 - 8);
  *(v4 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v4 + 184) = sub_1D1E67E0C();
  v14 = sub_1D1E67D4C();
  *(v4 + 192) = v14;
  *(v4 + 200) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D187C07C, v14, v13);
}

uint64_t sub_1D187C07C()
{
  v1 = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v2 = *(v0 + 96);
  if (v1 == 1)
  {
    inited = swift_initStackObject();
    *(v0 + 208) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = sub_1D187C1FC;
    v6 = *(v0 + 112);

    return sub_1D187CA18(inited);
  }

  else
  {
    v8 = swift_initStackObject();
    *(v0 + 224) = v8;
    *(v8 + 16) = xmmword_1D1E73FA0;
    *(v8 + 32) = v2;
    v9 = v2;
    v10 = swift_task_alloc();
    *(v0 + 232) = v10;
    *v10 = v0;
    v10[1] = sub_1D187C528;
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);

    return sub_1D1879838(v8, v11);
  }
}

uint64_t sub_1D187C1FC()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v8 = *v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  swift_arrayDestroy();
  v5 = *(v1 + 200);
  v6 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D187C358, v6, v5);
}

uint64_t sub_1D187C358()
{
  v1 = v0[23];

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[17];
  v16 = v0[18];
  v17 = v0[20];
  v6 = v0[16];
  v15 = v0[15];
  v7 = v0[12];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v8, qword_1EE07B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v9 = *(v6 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E739C0;
  v12 = [v7 uniqueIdentifier];
  sub_1D1E66A5C();

  (*(v6 + 32))(v11 + v10, v5, v15);
  *v4 = v11;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v3 + 8))(v2, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D187C528()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v8 = *v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  swift_arrayDestroy();
  v5 = *(v1 + 200);
  v6 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D187C684, v6, v5);
}

uint64_t sub_1D187C684()
{
  v1 = v0[23];

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[17];
  v16 = v0[18];
  v17 = v0[20];
  v6 = v0[16];
  v15 = v0[15];
  v7 = v0[12];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v8, qword_1EE07B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v9 = *(v6 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E739C0;
  v12 = [v7 uniqueIdentifier];
  sub_1D1E66A5C();

  (*(v6 + 32))(v11 + v10, v5, v15);
  *v4 = v11;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v3 + 8))(v2, v17);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D187C854(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1D1E67E1C();
  v2[4] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D187C8EC, v4, v3);
}

uint64_t sub_1D187C8EC()
{
  v15 = v0;
  v1 = v0[4];
  v2 = v0[2];

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v7 = v0[2] + 32;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1D3891EF0](v4, v0[2]);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_12;
        }

        v8 = *(v7 + 8 * v4);
      }

      v2 = v8;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v0[3];
      v14 = v8;
      sub_1D187E0FC(&v14, v10);

      ++v4;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    if (v0[2] < 0)
    {
      v11 = v0[2];
    }
  }

LABEL_16:
  v12 = v0[1];

  return v12();
}

uint64_t sub_1D187CA18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1D1E67E1C();
  v2[4] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1888200, v4, v3);
}

uint64_t sub_1D187CAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[115] = v3;
  v4[114] = a3;
  v4[113] = a2;
  v4[112] = a1;
  v5 = sub_1D1E66A7C();
  v4[116] = v5;
  v6 = *(v5 - 8);
  v4[117] = v6;
  v7 = *(v6 + 64) + 15;
  v4[118] = swift_task_alloc();
  sub_1D1E67E1C();
  v4[119] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v4[120] = v9;
  v4[121] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D187CBB4, v9, v8);
}

uint64_t sub_1D187CBB4()
{
  v121 = v0;
  v1 = *(v0 + 904);
  if (!v1)
  {
    goto LABEL_56;
  }

  if (v1 >> 62)
  {
    goto LABEL_55;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_56:
    v91 = *(v0 + 952);
    goto LABEL_57;
  }

LABEL_4:

  v120[0] = sub_1D174999C(v3);
  sub_1D18856FC(v120);
  v4 = v120[0];
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC6459E8);

  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6832C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v120[0] = v9;
    *v8 = 136315138;
    v10 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v11 = MEMORY[0x1D3891260](v4, v10);
    v13 = sub_1D1B1312C(v11, v12, v120);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D16EC000, v6, v7, "sortedAccessories: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    result = sub_1D1E6873C();
    if (!result)
    {
LABEL_62:
      v94 = *(v0 + 952);

LABEL_57:

      goto LABEL_58;
    }
  }

  else
  {
    result = *(v4 + 16);
    if (!result)
    {
      goto LABEL_62;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D3891EF0](0, v4);
  }

  else
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = *(v4 + 32);
  }

  v16 = v15;
  *(v0 + 976) = v15;
  v17 = *(v0 + 920);
  v18 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (*(v19 + 16))
  {
    v20 = *(v0 + 896);
    v21 = *(v17 + v18);

    v22 = sub_1D1742188(v20);
    if (v23)
    {
      v24 = *(v0 + 952);
      v25 = (*(v19 + 56) + (v22 << 7));
      v26 = v25[3];
      v28 = *v25;
      v27 = v25[1];
      *(v0 + 48) = v25[2];
      *(v0 + 64) = v26;
      *(v0 + 16) = v28;
      *(v0 + 32) = v27;
      v29 = v25[7];
      v31 = v25[4];
      v30 = v25[5];
      *(v0 + 112) = v25[6];
      *(v0 + 128) = v29;
      *(v0 + 80) = v31;
      *(v0 + 96) = v30;
      sub_1D1741C08(v0 + 16, v0 + 144, &qword_1EC642C30, &qword_1D1E6E980);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
LABEL_58:
      v92 = *(v0 + 944);

      v93 = *(v0 + 8);

      return v93();
    }
  }

  v110 = v18;
  v111 = v17;
  v115 = v16;
  v32 = 0;
  v113 = (v0 + 552);
  v33 = *(v0 + 904);
  v34 = v33 & 0xC000000000000001;
  v35 = v33 & 0xFFFFFFFFFFFFFF8;
  while (v2 != v32)
  {
    if (v34)
    {
      v36 = MEMORY[0x1D3891EF0](v32, v1);
    }

    else
    {
      if (v32 >= *(v35 + 16))
      {
        goto LABEL_54;
      }

      v36 = *(v1 + 8 * v32 + 32);
    }

    v37 = v36;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      v2 = sub_1D1E6873C();
      if (!v2)
      {
        goto LABEL_56;
      }

      goto LABEL_4;
    }

    v38 = [v36 isReachable];

    ++v32;
    if ((v38 & 1) == 0)
    {
      v117 = 2;
      goto LABEL_28;
    }
  }

  v117 = 0;
LABEL_28:
  *(v0 + 984) = v117;
  sub_1D1741C08(*(v0 + 912), v0 + 272, &qword_1EC645A70, &qword_1D1E7B9A8);
  if (!*(v0 + 296))
  {
    sub_1D1741A30(v0 + 272, &qword_1EC645A70, &qword_1D1E7B9A8);
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0;
    goto LABEL_33;
  }

  sub_1D16EEE20((v0 + 312), v0 + 472);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  if (!*(v0 + 496))
  {
LABEL_33:
    sub_1D1741A30(v0 + 472, &qword_1EC6459D0, &qword_1D1E7B6A8);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
  v39 = type metadata accessor for MockTimerManager();
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 888);
    v41 = &off_1F4D6BEB0;
    v42 = v39;
    goto LABEL_35;
  }

LABEL_34:
  v43 = [objc_allocWithZone(type metadata accessor for _TimerConnectionProvider()) init];
  v44 = objc_allocWithZone(MEMORY[0x1E6997488]);
  v45 = v115;
  v40 = [v44 initForAccessory:v45 withConnectionProvider:v43];

  v42 = sub_1D1741B10(0, &qword_1EC645A78, 0x1E6997488);
  v41 = &protocol witness table for COTimerManager;
LABEL_35:
  v46 = *(v0 + 912);
  *(v0 + 432) = v40;
  *(v0 + 456) = v42;
  *(v0 + 464) = v41;
  sub_1D1741C08(v46, v0 + 352, &qword_1EC645A70, &qword_1D1E7B9A8);
  if (!*(v0 + 376))
  {
    sub_1D1741A30(v0 + 352, &qword_1EC645A70, &qword_1D1E7B9A8);
    v47 = v0 + 552;
    *v113 = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0;
    goto LABEL_40;
  }

  v47 = v0 + 552;
  sub_1D16EEE20((v0 + 352), v113);
  __swift_destroy_boxed_opaque_existential_1((v0 + 392));
  if (!*(v0 + 576))
  {
LABEL_40:
    sub_1D1741A30(v47, &qword_1EC6459C0, &qword_1D1E7B920);
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
  v48 = type metadata accessor for MockAlarmManager();
  if (swift_dynamicCast())
  {
    v49 = *(v0 + 880);
    v50 = &off_1F4D6BB60;
    v51 = v48;
    goto LABEL_42;
  }

LABEL_41:
  v52 = [objc_allocWithZone(type metadata accessor for _AlarmConnectionProvider()) &selRef_selectAreasWithParams_expectedValues_expectedValueInterval_completion_];
  v53 = objc_allocWithZone(MEMORY[0x1E6997480]);
  v54 = v115;
  v49 = [v53 initForAccessory:v54 withConnectionProvider:v52];

  v51 = sub_1D1741B10(0, &qword_1EC645A80, 0x1E6997480);
  v50 = &protocol witness table for COAlarmManager;
LABEL_42:
  *(v0 + 512) = v49;
  *(v0 + 536) = v51;
  *(v0 + 544) = v50;
  sub_1D1741C08(v0 + 432, v0 + 632, &qword_1EC6459D0, &qword_1D1E7B6A8);
  if (!*(v0 + 656))
  {
    v83 = *(v0 + 952);

    sub_1D1757B18(v117);

    sub_1D1741A30(v0 + 512, &qword_1EC6459C0, &qword_1D1E7B920);
    v84 = &qword_1EC6459D0;
    v85 = &qword_1D1E7B6A8;
    sub_1D1741A30(v0 + 432, &qword_1EC6459D0, &qword_1D1E7B6A8);
    v86 = v0 + 632;
LABEL_48:
    sub_1D1741A30(v86, v84, v85);
    goto LABEL_58;
  }

  sub_1D16EEE20((v0 + 632), v0 + 592);
  sub_1D1741C08(v0 + 512, v0 + 712, &qword_1EC6459C0, &qword_1D1E7B920);
  if (!*(v0 + 736))
  {
    v87 = *(v0 + 952);

    sub_1D1757B18(v117);

    __swift_destroy_boxed_opaque_existential_1((v0 + 592));
    v84 = &qword_1EC6459C0;
    v85 = &qword_1D1E7B920;
    sub_1D1741A30(v0 + 512, &qword_1EC6459C0, &qword_1D1E7B920);
    sub_1D1741A30(v0 + 432, &qword_1EC6459D0, &qword_1D1E7B6A8);
    v86 = v0 + 712;
    goto LABEL_48;
  }

  v95 = *(v0 + 936);
  v96 = *(v0 + 928);
  v98 = *(v0 + 944);
  v55 = *(v0 + 920);
  v56 = *(v0 + 896);
  sub_1D16EEE20((v0 + 712), v0 + 672);
  v114 = sub_1D187E864((v0 + 592), v56, MEMORY[0x1E6997468], &unk_1F4D6CA20, sub_1D18880EC);
  *(v0 + 992) = v114;
  v57 = sub_1D187E864((v0 + 592), v56, MEMORY[0x1E6997470], &unk_1F4D6C9D0, sub_1D1888010);
  *(v0 + 1000) = v57;
  v58 = sub_1D187E864((v0 + 592), v56, MEMORY[0x1E6997478], &unk_1F4D6C980, sub_1D1887FF8);
  *(v0 + 1008) = v58;
  v59 = sub_1D187E65C((v0 + 592), v56, v115, MEMORY[0x1E6997448], &unk_1F4D6C930, sub_1D1887C64);
  *(v0 + 1016) = v59;
  v60 = sub_1D187E65C((v0 + 592), v56, v115, MEMORY[0x1E6997460], &unk_1F4D6C8E0, sub_1D18879C4);
  *(v0 + 1024) = v60;
  v61 = sub_1D187E864((v0 + 592), v56, MEMORY[0x1E6997450], &unk_1F4D6C890, sub_1D1887884);
  *(v0 + 1032) = v61;
  sub_1D17419CC(v0 + 592, v0 + 752);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A88, &qword_1D1E7B9B0);
  v62 = swift_allocObject();
  *(v0 + 1040) = v62;
  swift_unknownObjectWeakInit();
  v105 = v62;
  sub_1D16EEE20((v0 + 752), v62 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v103 = sub_1D187EA38((v0 + 672), v56, MEMORY[0x1E6997418], &unk_1F4D6C840, sub_1D1887850);
  *(v0 + 1048) = v103;
  v102 = sub_1D187EA38((v0 + 672), v56, MEMORY[0x1E6997420], &unk_1F4D6C7F0, sub_1D18876B4);
  *(v0 + 1056) = v102;
  v101 = sub_1D187EA38((v0 + 672), v56, MEMORY[0x1E6997428], &unk_1F4D6C7A0, sub_1D1887590);
  *(v0 + 1064) = v101;
  v100 = sub_1D187EC0C((v0 + 672), v56, v115, MEMORY[0x1E6997430], &unk_1F4D6C750, sub_1D1887058);
  *(v0 + 1072) = v100;
  v104 = sub_1D187EC0C((v0 + 672), v56, v115, MEMORY[0x1E6997440], &unk_1F4D6C700, sub_1D1886DD8);
  *(v0 + 1080) = v104;
  v106 = v61;
  swift_unknownObjectRelease();
  v107 = v60;
  swift_unknownObjectRelease();
  v108 = v59;
  swift_unknownObjectRelease();
  v109 = v58;
  swift_unknownObjectRelease();
  v112 = v57;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D17419CC(v0 + 672, v0 + 792);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A90, &qword_1D1E7B9B8);
  v63 = swift_allocObject();
  *(v0 + 1088) = v63;
  swift_unknownObjectWeakInit();
  sub_1D16EEE20((v0 + 792), v63 + 16);
  (*(v95 + 16))(v98, v56, v96);

  sub_1D1741C70(v117);
  v64 = sub_1D1E6707C();
  v65 = sub_1D1E6835C();

  sub_1D1757B18(v117);
  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v0 + 944);
  v68 = *(v0 + 936);
  v69 = *(v0 + 928);
  if (v66)
  {
    v70 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v120[0] = v116;
    *v70 = 136315650;
    v71 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v72 = MEMORY[0x1D3891260](v4, v71);
    v97 = v65;
    v74 = v73;

    v75 = sub_1D1B1312C(v72, v74, v120);

    *(v70 + 4) = v75;
    *(v70 + 12) = 2080;
    sub_1D1886B8C();
    v76 = sub_1D1E68FAC();
    v78 = v77;
    (*(v68 + 8))(v67, v69);
    v79 = sub_1D1B1312C(v76, v78, v120);

    *(v70 + 14) = v79;
    *(v70 + 22) = 2112;
    sub_1D1886BE4();
    swift_allocError();
    v80 = v117;
    *v81 = v117;
    sub_1D1741C70(v117);
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v70 + 24) = v82;
    *v99 = v82;
    _os_log_impl(&dword_1D16EC000, v64, v97, "start listening to %s for %s with error: %@", v70, 0x20u);
    sub_1D1741A30(v99, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v99, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v116, -1, -1);
    MEMORY[0x1D3893640](v70, -1, -1);
  }

  else
  {

    (*(v68 + 8))(v67, v69);
    v80 = v117;
  }

  v118 = *(v0 + 896);
  swift_beginAccess();
  sub_1D1741C70(v80);
  sub_1D1741C70(v80);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v88 = *(v111 + v110);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120[0] = *(v111 + v110);
  *(v111 + v110) = 0x8000000000000000;
  v119[0] = v103;
  v119[1] = v102;
  v119[2] = v101;
  v119[3] = v100;
  v119[4] = v104;
  v119[5] = 0;
  v119[6] = v63;
  v119[7] = v114;
  v119[8] = v112;
  v119[9] = v109;
  v119[10] = v108;
  v119[11] = v107;
  v119[12] = v106;
  v119[13] = v105;
  v119[14] = v80;
  v119[15] = v80;
  sub_1D17544A0(v119, v118, isUniquelyReferenced_nonNull_native);
  *(v111 + v110) = v120[0];
  swift_endAccess();
  v90 = swift_task_alloc();
  *(v0 + 1096) = v90;
  *v90 = v0;
  v90[1] = sub_1D187DB90;

  return sub_1D188631C(v0 + 592, v115);
}

uint64_t sub_1D187DB90(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1096);
  v8 = *v1;
  *(v3 + 1120) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1104) = v5;
  *v5 = v8;
  v5[1] = sub_1D187DCE4;
  v6 = *(v2 + 976);

  return sub_1D188671C(v3 + 672, v6);
}

uint64_t sub_1D187DCE4(char a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 1104);
  v6 = *(*v1 + 1120);
  v7 = *v1;

  v8 = swift_task_alloc();
  *(v4 + 1112) = v8;
  *v8 = v7;
  v8[1] = sub_1D187DE54;
  v9 = *(v3 + 920);
  v10 = *(v3 + 896);

  return sub_1D187EE14(v10, v6, a1 & 1);
}

uint64_t sub_1D187DE54()
{
  v1 = *v0;
  v2 = *(*v0 + 1112);
  v6 = *v0;

  v3 = *(v1 + 968);
  v4 = *(v1 + 960);

  return MEMORY[0x1EEE6DFA0](sub_1D187DF74, v4, v3);
}

uint64_t sub_1D187DF74()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[129];
  v9 = v0[128];
  v14 = v0[127];
  v15 = v0[126];
  v16 = v0[125];
  v17 = v0[124];
  v18 = v0[123];
  v19 = v0[122];
  v10 = v0[119];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D1757B18(v18);

  __swift_destroy_boxed_opaque_existential_1(v0 + 84);
  __swift_destroy_boxed_opaque_existential_1(v0 + 74);
  sub_1D1741A30((v0 + 64), &qword_1EC6459C0, &qword_1D1E7B920);
  sub_1D1741A30((v0 + 54), &qword_1EC6459D0, &qword_1D1E7B6A8);
  v11 = v0[118];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D187E0FC(id *a1, uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - v11;
  v71 = *a1;
  v13 = [v71 uniqueIdentifier];
  sub_1D1E66A5C();

  v14 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v15 = *(a2 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_9;
  }

  v16 = *(a2 + v14);

  v17 = sub_1D1742188(v12);
  if ((v18 & 1) == 0)
  {

LABEL_9:
    v34 = *(v6 + 8);
    v34(v12, v5);
    goto LABEL_10;
  }

  v57 = v2;
  v59 = v10;
  v19 = (*(v15 + 56) + (v17 << 7));
  v21 = v19[2];
  v20 = v19[3];
  v22 = v19[1];
  v61 = *v19;
  v62 = v22;
  v63 = v21;
  v64 = v20;
  v23 = v19[4];
  v24 = v19[5];
  v25 = v19[7];
  v67 = v19[6];
  v68 = v25;
  v65 = v23;
  v66 = v24;
  sub_1D1741C08(&v61, v60, &qword_1EC642C30, &qword_1D1E6E980);
  v55 = *(v6 + 8);
  v56 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v12, v5);

  v69[10] = v61;
  v69[11] = v62;
  v69[12] = v63;
  v70 = v64;
  sub_1D18789E8();
  v26 = *(&v64 + 1);
  v27 = v65;
  v58 = v5;
  v28 = *(&v65 + 1);
  v53 = v66;
  v29 = *(&v67 + 1);
  v54 = v67;
  sub_1D187958C();
  sub_1D1879184(v26, (v29 + 16));
  sub_1D1879184(v27, (v29 + 16));
  v30 = v28;
  v5 = v58;
  sub_1D1879184(v30, (v29 + 16));
  sub_1D1879184(v53, (v29 + 16));
  sub_1D1879184(*(&v53 + 1), (v29 + 16));
  sub_1D1879184(v54, (v29 + 16));
  v31 = v71;
  v32 = [v71 uniqueIdentifier];
  v33 = v59;
  sub_1D1E66A5C();

  swift_beginAccess();
  v34 = v55;
  v35 = sub_1D174EEB0(v33, v60);
  (v34)(v33, v5, v35);
  v69[4] = v60[4];
  v69[5] = v60[5];
  v69[6] = v60[6];
  v69[7] = v60[7];
  v69[0] = v60[0];
  v69[1] = v60[1];
  v69[2] = v60[2];
  v69[3] = v60[3];
  swift_endAccess();
  sub_1D1741A30(v69, &qword_1EC645A68, &qword_1D1E7B998);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v36 = sub_1D1E6709C();
  __swift_project_value_buffer(v36, qword_1EC6459E8);
  v37 = v31;
  v38 = sub_1D1E6707C();
  v39 = sub_1D1E6835C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v60[0] = v54;
    *v40 = 136315138;
    v41 = [v37 description];
    v42 = v34;
    v43 = sub_1D1E6781C();
    v45 = v44;

    v46 = v43;
    v34 = v42;
    v47 = sub_1D1B1312C(v46, v45, v60);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_1D16EC000, v38, v39, "unregistering for %s", v40, 0xCu);
    v48 = v54;
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1D3893640](v48, -1, -1);
    v49 = v40;
    v5 = v58;
    MEMORY[0x1D3893640](v49, -1, -1);
  }

  sub_1D1741A30(&v61, &qword_1EC642C30, &qword_1D1E6E980);
  v10 = v59;
LABEL_10:
  v50 = [v71 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  sub_1D1AA5984(v10);
  swift_endAccess();

  swift_beginAccess();
  sub_1D1AA59B0(v10);
  swift_endAccess();

  return (v34)(v10, v5);
}

uint64_t sub_1D187E65C(void *a1, uint64_t a2, void *a3, void **a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31 = a6;
  v27 = a5;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = a1[4];
  v29 = a1[3];
  v28 = __swift_project_boxed_opaque_existential_1(a1, v29);
  v14 = *a4;
  v26 = *(v6 + OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_incomingCoordinationMessagesQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D17419CC(a1, v32);
  (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v16 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  sub_1D16EEE20(v32, v18 + 24);
  (*(v11 + 32))(v18 + v16, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = v30;
  *(v18 + v17) = v30;
  v20 = *(v13 + 48);
  v21 = v14;

  v22 = v19;
  v23 = v20(v21, v26, v31, v18, v29, v13);

  return v23;
}

uint64_t sub_1D187E864(void *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v7 = v5;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = a1[4];
  v24 = a1[3];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v24);
  v14 = *a3;
  v15 = *(v7 + OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_incomingCoordinationMessagesQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v11 + 32))(v18 + v17, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = *(v13 + 48);
  v20 = v14;

  v21 = v19(v20, v15, v26, v18, v24, v13);

  return v21;
}

uint64_t sub_1D187EA38(void *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v7 = v5;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = a1[4];
  v24 = a1[3];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v24);
  v14 = *a3;
  v15 = *(v7 + OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_incomingCoordinationMessagesQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v11 + 32))(v18 + v17, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = *(v13 + 64);
  v20 = v14;

  v21 = v19(v20, v15, v26, v18, v24, v13);

  return v21;
}

uint64_t sub_1D187EC0C(void *a1, uint64_t a2, void *a3, void **a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31 = a6;
  v27 = a5;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = a1[4];
  v29 = a1[3];
  v28 = __swift_project_boxed_opaque_existential_1(a1, v29);
  v14 = *a4;
  v26 = *(v6 + OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_incomingCoordinationMessagesQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D17419CC(a1, v32);
  (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v16 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  sub_1D16EEE20(v32, v18 + 24);
  (*(v11 + 32))(v18 + v16, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v19 = v30;
  *(v18 + v17) = v30;
  v20 = *(v13 + 64);
  v21 = v14;

  v22 = v19;
  v23 = v20(v21, v26, v31, v18, v29, v13);

  return v23;
}

uint64_t sub_1D187EE14(uint64_t a1, char a2, char a3)
{
  *(v4 + 688) = v3;
  *(v4 + 761) = a3;
  *(v4 + 760) = a2;
  *(v4 + 680) = a1;
  sub_1D1E67E1C();
  *(v4 + 696) = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  *(v4 + 704) = v6;
  *(v4 + 712) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D187EEBC, v6, v5);
}

uint64_t sub_1D187EEBC()
{
  v1 = *(v0 + 688);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  *(v0 + 720) = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    v24 = *(v0 + 696);

LABEL_14:
    v29 = *(v0 + 8);

    return v29();
  }

  v4 = *(v0 + 680);

  v5 = sub_1D1742188(v4);
  if ((v6 & 1) == 0)
  {
    v25 = *(v0 + 696);

    goto LABEL_14;
  }

  v7 = *(v0 + 688);
  v8 = *(v0 + 680);
  v9 = (*(v3 + 56) + (v5 << 7));
  v10 = v9[3];
  v12 = *v9;
  v11 = v9[1];
  *(v0 + 48) = v9[2];
  *(v0 + 64) = v10;
  *(v0 + 16) = v12;
  *(v0 + 32) = v11;
  v13 = v9[7];
  v15 = v9[4];
  v14 = v9[5];
  *(v0 + 112) = v9[6];
  *(v0 + 128) = v13;
  *(v0 + 80) = v15;
  *(v0 + 96) = v14;
  sub_1D1741C08(v0 + 16, v0 + 144, &qword_1EC642C30, &qword_1D1E6E980);

  v16 = sub_1D187845C(v8);
  if (v16 >> 62)
  {
    v26 = v16;
    v27 = sub_1D1E6873C();
    v16 = v26;
    if (v27)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    v28 = *(v0 + 696);

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    goto LABEL_14;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D3891EF0](0, v16);

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v17)
    {
      __break(1u);
      return result;
    }
  }

  v19 = *(v0 + 128);
  *(v0 + 728) = v19;
  *(v0 + 656) = v19;
  v20 = swift_task_alloc();
  *(v0 + 736) = v20;
  *v20 = v0;
  v20[1] = sub_1D187F118;
  v21 = *(v0 + 688);
  v22 = *(v0 + 680);
  v23 = *(v0 + 761);

  return sub_1D187F988(v0 + 648, v22, v23, (v0 + 656));
}

uint64_t sub_1D187F118()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  v3 = *v0;

  v4 = *(v1 + 136);
  *(v1 + 744) = v4;
  *(v1 + 672) = v4;
  v5 = swift_task_alloc();
  *(v1 + 752) = v5;
  *v5 = v3;
  v5[1] = sub_1D187F298;
  v6 = *(v1 + 688);
  v7 = *(v1 + 680);
  v8 = *(v1 + 760);

  return sub_1D187F988(v1 + 664, v7, v8, (v1 + 672));
}

uint64_t sub_1D187F298()
{
  v1 = *v0;
  v2 = *(*v0 + 752);
  v6 = *v0;

  v3 = *(v1 + 712);
  v4 = *(v1 + 704);

  return MEMORY[0x1EEE6DFA0](sub_1D187F3B8, v4, v3);
}

uint64_t sub_1D187F3B8()
{
  v54 = v0;
  v1 = *(v0 + 696);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = (v0 + 648);
  v3 = (v0 + 664);
  v4 = qword_1EE07DC60;
  v5 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 && ([v6 hasOptedToHH2] & 1) == 0)
  {
    sub_1D1757B18(*v3);
    sub_1D1757B18(*v2);
    v8 = 5;
    *v3 = 5;
    *v2 = 5;
    v7 = 5;
  }

  else
  {
    v7 = *v2;
    v8 = *v3;
  }

  v51 = v7;
  v52 = v8;
  sub_1D1741C70(v8);
  sub_1D1741C70(v7);
  if (_s13HomeDataModel012CoordinationbC0C6ErrorsO2eeoiySbAE_AEtFZ_0(&v51, &v52))
  {
    goto LABEL_8;
  }

  if (v7 == 4)
  {
    sub_1D1757B18(4);
    sub_1D1757B18(4);
    sub_1D1757B18(v8);
    sub_1D1757B18(*v3);
    v9 = *v2;
    v8 = 4;
  }

  else
  {
    sub_1D1741C70(v7);
    sub_1D1757B18(v7);
    sub_1D1757B18(4);
    if (v8 != 4)
    {
      sub_1D1741C70(v8);
      sub_1D1757B18(v8);
      sub_1D1757B18(4);
LABEL_8:
      sub_1D1757B18(*v3);
      v9 = *v2;
      goto LABEL_13;
    }

    sub_1D1757B18(4);
    sub_1D1757B18(4);
    sub_1D1757B18(*v3);
    sub_1D1757B18(*v2);
    sub_1D1757B18(v7);
    v9 = 4;
    v7 = 4;
  }

LABEL_13:
  sub_1D1757B18(v9);
  *v3 = v8;
  *v2 = v7;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC6459E8);
  v11 = *v2;
  v12 = *v3;
  sub_1D1741C70(*v2);
  sub_1D1741C70(v12);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  sub_1D1757B18(v11);
  sub_1D1757B18(v12);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    sub_1D1886BE4();
    swift_allocError();
    *v17 = v11;
    sub_1D1741C70(v11);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2112;
    swift_allocError();
    *v19 = v12;
    sub_1D1741C70(v12);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    v16[1] = v20;
    _os_log_impl(&dword_1D16EC000, v13, v14, "updated alarm connection error state %@ timer connection error state %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v21 = *(v0 + 744);
  v22 = *(v0 + 728);
  v36 = v21;
  v37 = v22;
  v46 = *(v0 + 688);
  v47 = *(v0 + 720);
  v48 = *(v0 + 680);

  sub_1D1741C08(v0 + 16, v0 + 272, &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D1757B18(v21);
  sub_1D1757B18(v22);
  v23 = *(v0 + 16);
  v24 = *(v0 + 24);
  v38 = *(v0 + 40);
  v49 = *(v0 + 32);
  v50 = *(v0 + 48);
  v39 = *(v0 + 56);
  v40 = *(v0 + 64);
  v25 = *(v0 + 80);
  v43 = v25;
  v44 = *(v0 + 72);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v41 = v27;
  v42 = *(v0 + 88);
  v28 = *(v0 + 112);
  v45 = *(v0 + 120);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D1741C08(v0 + 16, v0 + 400, &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D1757B18(v36);
  sub_1D1757B18(v37);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v29 = *(v0 + 648);
  swift_beginAccess();
  v30 = *(v0 + 664);
  swift_beginAccess();
  sub_1D1741C70(v29);
  sub_1D1741C70(v30);
  v31 = *(v46 + v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v46 + v47);
  *(v46 + v47) = 0x8000000000000000;
  v52 = v33;
  v53[0] = v23;
  v53[1] = v24;
  v53[2] = v49;
  v53[3] = v38;
  v53[4] = v50;
  v53[5] = v39;
  v53[6] = v40;
  v53[7] = v44;
  v53[8] = v43;
  v53[9] = v42;
  v53[10] = v41;
  v53[11] = v26;
  v53[12] = v28;
  v53[13] = v45;
  v53[14] = v29;
  v53[15] = v30;
  sub_1D17544A0(v53, v48, isUniquelyReferenced_nonNull_native);
  *(v46 + v47) = v52;
  swift_endAccess();
  sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D1757B18(*(v0 + 664));
  sub_1D1757B18(*(v0 + 648));
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D187F988(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  *(v5 + 104) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = *a4;
  *(v5 + 80) = v4;
  *(v5 + 88) = v6;
  sub_1D1E67E1C();
  *(v5 + 96) = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D187FA2C, v8, v7);
}

uint64_t sub_1D187FA2C()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  v5 = sub_1D187845C(v3);
  if (v5 >> 62)
  {
    goto LABEL_30;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    v31 = *(v0 + 64);

    *v31 = 0;
    goto LABEL_88;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1D3891EF0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 siriEndpointProfile];
  if (!v8)
  {
    goto LABEL_51;
  }

  v9 = v8;
  if ([v8 isNeedsOnboarding])
  {
    v10 = *(v0 + 64);

    *v10 = v9;
    goto LABEL_88;
  }

  v11 = *(v0 + 80);
  v12 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v13 = *(v11 + v12);
  if (v13)
  {
    v74 = v9;
    v75 = v7;
    v76 = v0;
    v14 = [v13 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v1 = sub_1D1E67C1C();

    v78 = MEMORY[0x1E69E7CC0];
    if (!(v1 >> 62))
    {
      v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_35;
      }

LABEL_12:
      v16 = 0;
      v77 = (v1 & 0xC000000000000001);
      v17 = *MEMORY[0x1E696C9B0];
      while (1)
      {
        if (v77)
        {
          v5 = MEMORY[0x1D3891EF0](v16, v1);
        }

        else
        {
          if (v16 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v5 = *(v1 + 8 * v16 + 32);
        }

        v19 = v5;
        v0 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v29 = v5;
          v30 = sub_1D1E6873C();
          v5 = v29;
          if (!v30)
          {
            goto LABEL_31;
          }

          goto LABEL_3;
        }

        v20 = [v5 category];
        v21 = [v20 categoryType];

        v22 = sub_1D1E6781C();
        v24 = v23;

        if (v22 == sub_1D1E6781C() && v24 == v25)
        {
        }

        else
        {
          v27 = sub_1D1E6904C();

          if ((v27 & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        sub_1D1E6896C();
        v18 = *(v78 + 16);
        sub_1D1E689AC();
        sub_1D1E689BC();
        v5 = sub_1D1E6897C();
LABEL_15:
        ++v16;
        if (v0 == v15)
        {
          v28 = v78;
          goto LABEL_36;
        }
      }
    }

LABEL_34:
    v5 = sub_1D1E6873C();
    v15 = v5;
    if (!v5)
    {
LABEL_35:
      v28 = MEMORY[0x1E69E7CC0];
LABEL_36:

      if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
      {
        v32 = sub_1D1E6873C();
      }

      else
      {
        v32 = *(v28 + 16);
      }

      v33 = 0;
      v34 = v28 & 0xC000000000000001;
      v35 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      while (1)
      {
        if (v32 == v33)
        {

          v7 = v75;
          v0 = v76;
          v9 = v74;
          goto LABEL_50;
        }

        if (v34)
        {
          v36 = MEMORY[0x1D3891EF0](v33, v28);
        }

        else
        {
          if (v33 >= *(v28 + 16))
          {
            goto LABEL_92;
          }

          v36 = *(v28 + 8 * v33 + 32);
        }

        v37 = v36;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v38 = [v36 softwareVersion];
        if (!v38)
        {

LABEL_70:
          v0 = v76;
          v60 = *(v76 + 64);

          *v60 = 4;
          goto LABEL_88;
        }

        v39 = v38;
        v40 = [v38 majorVersion];

        ++v33;
        if (v40 < 18)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    goto LABEL_12;
  }

LABEL_50:

LABEL_51:
  v41 = *(v0 + 80);
  v42 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v43 = *(v41 + v42);
  if (!v43)
  {
    goto LABEL_72;
  }

  v44 = *(v0 + 72);
  v45 = [v43 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v46 = sub_1D1E67C1C();

  v47 = swift_task_alloc();
  *(v47 + 16) = v44;
  v48 = sub_1D174A6C4(sub_1D188823C, v47, v46);

  if (!v48)
  {
    goto LABEL_72;
  }

  v49 = [v48 components];
  sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
  v35 = sub_1D1E67C1C();

  v75 = v7;
  v76 = v0;
  v77 = v48;
  v34 = v35 & 0xFFFFFFFFFFFFFF8;
  if (!(v35 >> 62))
  {
    v50 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_55;
  }

LABEL_95:
  v50 = sub_1D1E6873C();
LABEL_55:
  v51 = 0;
  while (v50 != v51)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x1D3891EF0](v51, v35);
    }

    else
    {
      if (v51 >= *(v34 + 16))
      {
        goto LABEL_94;
      }

      v52 = *(v35 + 8 * v51 + 32);
    }

    v53 = v52;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_93;
    }

    v54 = [v52 mediaProfile];
    if (!v54 || (v55 = v54, v56 = [v54 accessory], v55, !v56) || (v57 = objc_msgSend(v56, sel_softwareVersion), v56, !v57))
    {

LABEL_68:

      v0 = v76;
      v59 = *(v76 + 64);

      goto LABEL_75;
    }

    v58 = [v57 majorVersion];

    ++v51;
    if (v58 < 18)
    {
      goto LABEL_68;
    }
  }

  v7 = v75;
  v0 = v76;
LABEL_72:
  v61 = [v7 softwareVersion];
  if (!v61 || (v62 = v61, v63 = [v61 majorVersion], v62, v63 > 17))
  {
    v64 = *(v0 + 104);
    if (v64 == 2)
    {
LABEL_79:
      v66 = *(v0 + 88);
      v67 = *(v0 + 64);

      *v67 = v66;
      sub_1D1741C70(v66);
      goto LABEL_88;
    }

    v65 = *(v0 + 88);
    if (v65 == 2)
    {
      sub_1D1757B18(2);
      sub_1D1757B18(2);
      goto LABEL_79;
    }

    sub_1D1741C70(*(v0 + 88));
    sub_1D1757B18(v65);
    sub_1D1757B18(2);
    if (v64)
    {

      v68 = 0;
LABEL_87:
      **(v0 + 64) = v68;
      goto LABEL_88;
    }

    v69 = [v7 siriEndpointProfile];
    if (v69)
    {
      v70 = v69;
      v71 = [v69 isNeedsOnboarding];

      if (v71)
      {
        v68 = 0;
        goto LABEL_87;
      }
    }

    else
    {
    }

    v68 = 3;
    goto LABEL_87;
  }

  v59 = *(v0 + 64);

LABEL_75:
  *v59 = 4;
LABEL_88:
  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1D18801EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D188020C, 0, 0);
}

uint64_t sub_1D188020C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *v2 = (*(v4 + 104))(v3, v4) & 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D18802A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D18802C4, 0, 0);
}

uint64_t sub_1D18802C4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *v2 = (*(v4 + 88))(v3, v4) & 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D188035C(id *a1)
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

uint64_t sub_1D1880468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v52 - v9;
  v10 = sub_1D1E66A7C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v12;
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v52 - v15;
  v16 = sub_1D1E6604C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  (*(v17 + 16))(v20, a1, v16);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53 = v10;
    v27 = v26;
    v64 = v26;
    *v25 = 136315138;
    v28 = sub_1D1E6601C();
    v30 = v29;
    (*(v17 + 8))(v20, v16);
    v31 = sub_1D1B1312C(v28, v30, &v64);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D16EC000, v22, v23, "Received new timer %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v32 = v27;
    v10 = v53;
    MEMORY[0x1D3893640](v32, -1, -1);
    v33 = v25;
    v3 = v52;
    MEMORY[0x1D3893640](v33, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = v63;
  result = sub_1D1887320(a1, v63, MEMORY[0x1E69B1FD0], &qword_1EC645AB0, &qword_1D1E7BA50);
  if (result)
  {
    v36 = result;
    v37 = sub_1D1E67E7C();
    v38 = v54;
    (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    v39 = v58;
    v40 = v56;
    v52 = *(v58 + 16);
    v53 = v58 + 16;
    v52(v56, v34, v10);
    sub_1D1E67E1C();

    v41 = v3;
    v42 = sub_1D1E67E0C();
    v43 = (*(v39 + 80) + 56) & ~*(v39 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 16) = v42;
    *(v44 + 24) = v45;
    *(v44 + 32) = 0;
    *(v44 + 40) = v36;
    *(v44 + 48) = v41;
    (*(v39 + 32))(v44 + v43, v40, v10);
    sub_1D17C6EF0(0, 0, v38, &unk_1D1E7BA88, v44);

    MEMORY[0x1EEE9AC00](v46);
    *(&v52 - 2) = v34;
    v47 = sub_1D1788104(sub_1D1888224, (&v52 - 4), v36);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v48, qword_1EE07B210);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
    v50 = v62;
    v52(v62, v34, v10);
    *&v50[v49] = v47;
    swift_storeEnumTagMultiPayload();
    v51 = v59;
    sub_1D1E67ECC();
    return (*(v60 + 8))(v51, v61);
  }

  return result;
}

uint64_t sub_1D1880AC0(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v3 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v51 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = v11;
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = &v51 - v14;
  v15 = sub_1D1E6604C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6709C();
  __swift_project_value_buffer(v20, qword_1EC6459E8);
  (*(v16 + 16))(v19, a1, v15);
  v21 = sub_1D1E6707C();
  v22 = sub_1D1E6835C();
  v23 = os_log_type_enabled(v21, v22);
  v58 = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v53 = v9;
    v26 = v25;
    v65 = v25;
    *v24 = 136315138;
    v27 = sub_1D1E6601C();
    v29 = v28;
    (*(v16 + 8))(v19, v15);
    v30 = sub_1D1B1312C(v27, v29, &v65);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1D16EC000, v21, v22, "Received timer removal %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    v9 = v53;
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v32 = v64;
  result = sub_1D1887320(a1, v64, MEMORY[0x1E69B1FD0], &qword_1EC645AB0, &qword_1D1E7BA50);
  if (result)
  {
    v34 = result;
    v35 = sub_1D1E67E7C();
    v36 = v55;
    (*(*(v35 - 8) + 56))(v55, 1, 1, v35);
    v37 = v9;
    v38 = v57;
    v39 = v58;
    v52 = *(v9 + 16);
    v53 = v9 + 16;
    v52(v57, v32, v58);
    sub_1D1E67E1C();

    v40 = v54;
    v41 = sub_1D1E67E0C();
    v42 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v43 = swift_allocObject();
    v44 = MEMORY[0x1E69E85E0];
    *(v43 + 16) = v41;
    *(v43 + 24) = v44;
    *(v43 + 32) = 1;
    *(v43 + 40) = v34;
    *(v43 + 48) = v40;
    (*(v37 + 32))(v43 + v42, v38, v39);
    sub_1D17C6EF0(0, 0, v36, &unk_1D1E7BA80, v43);

    MEMORY[0x1EEE9AC00](v45);
    *(&v51 - 2) = v32;
    v46 = sub_1D1788104(sub_1D1888224, (&v51 - 4), v34);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v47, qword_1EE07B210);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
    v49 = v62;
    v52(v62, v32, v39);
    *&v49[v48] = v46;
    swift_storeEnumTagMultiPayload();
    v50 = v59;
    sub_1D1E67ECC();
    return (*(v60 + 8))(v50, v61);
  }

  return result;
}

uint64_t sub_1D188111C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v52 - v9;
  v10 = sub_1D1E66A7C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v12;
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v52 - v15;
  v16 = sub_1D1E6604C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  (*(v17 + 16))(v20, a1, v16);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53 = v10;
    v27 = v26;
    v64 = v26;
    *v25 = 136315138;
    v28 = sub_1D1E6601C();
    v30 = v29;
    (*(v17 + 8))(v20, v16);
    v31 = sub_1D1B1312C(v28, v30, &v64);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D16EC000, v22, v23, "Received firing timer state dismissed. Removing %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v32 = v27;
    v10 = v53;
    MEMORY[0x1D3893640](v32, -1, -1);
    v33 = v25;
    v3 = v52;
    MEMORY[0x1D3893640](v33, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = v63;
  result = sub_1D1887320(a1, v63, MEMORY[0x1E69B1FD0], &qword_1EC645AB0, &qword_1D1E7BA50);
  if (result)
  {
    v36 = result;
    v37 = sub_1D1E67E7C();
    v38 = v54;
    (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    v39 = v58;
    v40 = v56;
    v52 = *(v58 + 16);
    v53 = v58 + 16;
    v52(v56, v34, v10);
    sub_1D1E67E1C();

    v41 = v3;
    v42 = sub_1D1E67E0C();
    v43 = (*(v39 + 80) + 56) & ~*(v39 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 16) = v42;
    *(v44 + 24) = v45;
    *(v44 + 32) = 0;
    *(v44 + 40) = v36;
    *(v44 + 48) = v41;
    (*(v39 + 32))(v44 + v43, v40, v10);
    sub_1D17C6EF0(0, 0, v38, &unk_1D1E7BA48, v44);

    MEMORY[0x1EEE9AC00](v46);
    *(&v52 - 2) = v34;
    v47 = sub_1D1788104(sub_1D18879A8, (&v52 - 4), v36);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v48, qword_1EE07B210);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
    v50 = v62;
    v52(v62, v34, v10);
    *&v50[v49] = v47;
    swift_storeEnumTagMultiPayload();
    v51 = v59;
    sub_1D1E67ECC();
    return (*(v60 + 8))(v51, v61);
  }

  return result;
}

uint64_t sub_1D1881774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v52 - v9;
  v10 = sub_1D1E66A7C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v12;
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v52 - v15;
  v16 = sub_1D1E6604C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  (*(v17 + 16))(v20, a1, v16);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53 = v10;
    v27 = v26;
    v64 = v26;
    *v25 = 136315138;
    v28 = sub_1D1E6601C();
    v30 = v29;
    (*(v17 + 8))(v20, v16);
    v31 = sub_1D1B1312C(v28, v30, &v64);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D16EC000, v22, v23, "Received updated timer %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v32 = v27;
    v10 = v53;
    MEMORY[0x1D3893640](v32, -1, -1);
    v33 = v25;
    v3 = v52;
    MEMORY[0x1D3893640](v33, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = v63;
  result = sub_1D1887320(a1, v63, MEMORY[0x1E69B1FD0], &qword_1EC645AB0, &qword_1D1E7BA50);
  if (result)
  {
    v36 = result;
    v37 = sub_1D1E67E7C();
    v38 = v54;
    (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    v39 = v58;
    v40 = v56;
    v52 = *(v58 + 16);
    v53 = v58 + 16;
    v52(v56, v34, v10);
    sub_1D1E67E1C();

    v41 = v3;
    v42 = sub_1D1E67E0C();
    v43 = (*(v39 + 80) + 56) & ~*(v39 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 16) = v42;
    *(v44 + 24) = v45;
    *(v44 + 32) = 0;
    *(v44 + 40) = v36;
    *(v44 + 48) = v41;
    (*(v39 + 32))(v44 + v43, v40, v10);
    sub_1D17C6EF0(0, 0, v38, &unk_1D1E7BA78, v44);

    MEMORY[0x1EEE9AC00](v46);
    *(&v52 - 2) = v34;
    v47 = sub_1D1788104(sub_1D1888224, (&v52 - 4), v36);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v48, qword_1EE07B210);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
    v50 = v62;
    v52(v62, v34, v10);
    *&v50[v49] = v47;
    swift_storeEnumTagMultiPayload();
    v51 = v59;
    sub_1D1E67ECC();
    return (*(v60 + 8))(v51, v61);
  }

  return result;
}

uint64_t sub_1D1881DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v52 - v9;
  v10 = sub_1D1E66A7C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v12;
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v52 - v15;
  v16 = sub_1D1E6604C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  (*(v17 + 16))(v20, a1, v16);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53 = v10;
    v27 = v26;
    v64 = v26;
    *v25 = 136315138;
    v28 = sub_1D1E6601C();
    v30 = v29;
    (*(v17 + 8))(v20, v16);
    v31 = sub_1D1B1312C(v28, v30, &v64);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D16EC000, v22, v23, "Received new alarm %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v32 = v27;
    v10 = v53;
    MEMORY[0x1D3893640](v32, -1, -1);
    v33 = v25;
    v3 = v52;
    MEMORY[0x1D3893640](v33, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = v63;
  result = sub_1D1887320(a1, v63, MEMORY[0x1E69B1FB8], &qword_1EC645AA8, &qword_1D1E7BA30);
  if (result)
  {
    v36 = result;
    v37 = sub_1D1E67E7C();
    v38 = v54;
    (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    v39 = v58;
    v40 = v56;
    v52 = *(v58 + 16);
    v53 = v58 + 16;
    v52(v56, v34, v10);
    sub_1D1E67E1C();

    v41 = v3;
    v42 = sub_1D1E67E0C();
    v43 = (*(v39 + 80) + 56) & ~*(v39 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 16) = v42;
    *(v44 + 24) = v45;
    *(v44 + 32) = 0;
    *(v44 + 40) = v36;
    *(v44 + 48) = v41;
    (*(v39 + 32))(v44 + v43, v40, v10);
    sub_1D17C6EF0(0, 0, v38, &unk_1D1E7BA40, v44);

    MEMORY[0x1EEE9AC00](v46);
    *(&v52 - 2) = v34;
    v47 = sub_1D17883C8(sub_1D1887868, (&v52 - 4), v36);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v48, qword_1EE07B210);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
    v50 = v62;
    v52(v62, v34, v10);
    *&v50[v49] = v47;
    swift_storeEnumTagMultiPayload();
    v51 = v59;
    sub_1D1E67ECC();
    return (*(v60 + 8))(v51, v61);
  }

  return result;
}

uint64_t sub_1D1882424(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v3 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v51 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = v11;
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v55 = &v51 - v14;
  v15 = sub_1D1E6604C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6709C();
  __swift_project_value_buffer(v20, qword_1EC6459E8);
  (*(v16 + 16))(v19, a1, v15);
  v21 = sub_1D1E6707C();
  v22 = sub_1D1E6835C();
  v23 = os_log_type_enabled(v21, v22);
  v58 = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v53 = v9;
    v26 = v25;
    v65 = v25;
    *v24 = 136315138;
    v27 = sub_1D1E6601C();
    v29 = v28;
    (*(v16 + 8))(v19, v15);
    v30 = sub_1D1B1312C(v27, v29, &v65);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1D16EC000, v21, v22, "Received alarm removal %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    v9 = v53;
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v32 = v64;
  result = sub_1D1887320(a1, v64, MEMORY[0x1E69B1FB8], &qword_1EC645AA8, &qword_1D1E7BA30);
  if (result)
  {
    v34 = result;
    v35 = sub_1D1E67E7C();
    v36 = v55;
    (*(*(v35 - 8) + 56))(v55, 1, 1, v35);
    v37 = v9;
    v38 = v57;
    v39 = v58;
    v52 = *(v9 + 16);
    v53 = v9 + 16;
    v52(v57, v32, v58);
    sub_1D1E67E1C();

    v40 = v54;
    v41 = sub_1D1E67E0C();
    v42 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v43 = swift_allocObject();
    v44 = MEMORY[0x1E69E85E0];
    *(v43 + 16) = v41;
    *(v43 + 24) = v44;
    *(v43 + 32) = 1;
    *(v43 + 40) = v34;
    *(v43 + 48) = v40;
    (*(v37 + 32))(v43 + v42, v38, v39);
    sub_1D17C6EF0(0, 0, v36, &unk_1D1E7BA38, v43);

    MEMORY[0x1EEE9AC00](v45);
    *(&v51 - 2) = v32;
    v46 = sub_1D17883C8(sub_1D188820C, (&v51 - 4), v34);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v47, qword_1EE07B210);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
    v49 = v62;
    v52(v62, v32, v39);
    *&v49[v48] = v46;
    swift_storeEnumTagMultiPayload();
    v50 = v59;
    sub_1D1E67ECC();
    return (*(v60 + 8))(v50, v61);
  }

  return result;
}

void sub_1D1882A80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a1, a3);
  }
}

uint64_t sub_1D1882AF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v52 - v9;
  v10 = sub_1D1E66A7C();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v12;
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v52 - v15;
  v16 = sub_1D1E6604C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  (*(v17 + 16))(v20, a1, v16);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v53 = v10;
    v27 = v26;
    v64 = v26;
    *v25 = 136315138;
    v28 = sub_1D1E6601C();
    v30 = v29;
    (*(v17 + 8))(v20, v16);
    v31 = sub_1D1B1312C(v28, v30, &v64);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D16EC000, v22, v23, "Received updated alarm %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v32 = v27;
    v10 = v53;
    MEMORY[0x1D3893640](v32, -1, -1);
    v33 = v25;
    v3 = v52;
    MEMORY[0x1D3893640](v33, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = v63;
  result = sub_1D1887320(a1, v63, MEMORY[0x1E69B1FB8], &qword_1EC645AA8, &qword_1D1E7BA30);
  if (result)
  {
    v36 = result;
    v37 = sub_1D1E67E7C();
    v38 = v54;
    (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    v39 = v58;
    v40 = v56;
    v52 = *(v58 + 16);
    v53 = v58 + 16;
    v52(v56, v34, v10);
    sub_1D1E67E1C();

    v41 = v3;
    v42 = sub_1D1E67E0C();
    v43 = (*(v39 + 80) + 56) & ~*(v39 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 16) = v42;
    *(v44 + 24) = v45;
    *(v44 + 32) = 0;
    *(v44 + 40) = v36;
    *(v44 + 48) = v41;
    (*(v39 + 32))(v44 + v43, v40, v10);
    sub_1D17C6EF0(0, 0, v38, &unk_1D1E7BA28, v44);

    MEMORY[0x1EEE9AC00](v46);
    *(&v52 - 2) = v34;
    v47 = sub_1D17883C8(sub_1D188820C, (&v52 - 4), v36);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v48, qword_1EE07B210);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
    v50 = v62;
    v52(v62, v34, v10);
    *&v50[v49] = v47;
    swift_storeEnumTagMultiPayload();
    v51 = v59;
    sub_1D1E67ECC();
    return (*(v60 + 8))(v51, v61);
  }

  return result;
}

void sub_1D1883150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(_BYTE *, char *), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_1D18831F8(a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1D18831F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(_BYTE *, char *), uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v36 = a4;
  v37 = a5;
  v34 = a3;
  v35 = a2;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v8 = sub_1D1E66A7C();
  v29 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E6604C();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  v33 = &v28 - v16;
  v18 = sub_1D1E67E7C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v12 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v11);
  (*(v9 + 16))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v8);
  sub_1D17419CC(v35, v41);
  sub_1D1E67E1C();
  v19 = v7;
  v36 = v36;
  v20 = sub_1D1E67E0C();
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v13 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 2) = v20;
  *(v25 + 3) = v26;
  *(v25 + 4) = v19;
  (*(v12 + 32))(&v25[v21], v30, v28);
  (*(v9 + 32))(&v25[v22], v31, v29);
  *&v25[v23] = v36;
  v39(v41, &v25[v24]);
  *&v25[(v24 + 47) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  sub_1D17C6EF0(0, 0, v33, v40, v25);
}

void sub_1D1883538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(_BYTE *, char *), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1D18835D8(a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1D18835D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(_BYTE *, char *), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v11 = sub_1D1E66A7C();
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - v17;
  v19 = sub_1D1E67E7C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v14, a2, v11);
  sub_1D17419CC(a1, v35);
  sub_1D1E67E1C();
  v20 = v7;
  v29 = a3;
  v21 = sub_1D1E67E0C();
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 2) = v21;
  *(v25 + 3) = v26;
  *(v25 + 4) = v20;
  (*(v12 + 32))(&v25[v22], v14, v30);
  v33(v35, &v25[v23]);
  *&v25[v24] = v29;
  *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  sub_1D17C6EF0(0, 0, v18, v34, v25);
}

uint64_t sub_1D1883844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v8[7] = updated;
  v10 = *(*(updated - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v8[9] = v11;
  v12 = *(v11 - 8);
  v8[10] = v12;
  v13 = *(v12 + 64) + 15;
  v8[11] = swift_task_alloc();
  sub_1D1E67E1C();
  v8[12] = sub_1D1E67E0C();
  v15 = sub_1D1E67D4C();
  v8[13] = v15;
  v8[14] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D1883980, v15, v14);
}

uint64_t sub_1D1883980()
{
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC6459E8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Received timer CanDispatchDidUpdate change", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  v7 = sub_1D1887444(v6, v5);
  if (v7 == 2 || (v8 = v7, (v9 = [v0[5] siriEndpointProfile]) != 0) && (v10 = v9, v11 = objc_msgSend(v9, sel_isNeedsOnboarding), v10, (v11 & 1) != 0))
  {
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_1D1883CC4;
    v13 = v0[5];
    v14 = v0[6];

    return sub_1D188631C(v14, v13);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_1D1883BA4;
    v17 = v0[4];
    v18 = v0[2];

    return sub_1D187EE14(v17, v8 & 1, 2);
  }
}

uint64_t sub_1D1883BA4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D1888204, v4, v3);
}

uint64_t sub_1D1883CC4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v5;
  v6[1] = sub_1D1883E30;
  v7 = v3[2];
  v8 = v3[4];

  return sub_1D187EE14(v8, a1 & 1, 2);
}

uint64_t sub_1D1883E30()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D1888204, v4, v3);
}

uint64_t sub_1D1883F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v7[6] = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v7[8] = v10;
  v11 = *(v10 - 8);
  v7[9] = v11;
  v12 = *(v11 + 64) + 15;
  v7[10] = swift_task_alloc();
  sub_1D1E67E1C();
  v7[11] = sub_1D1E67E0C();
  v14 = sub_1D1E67D4C();
  v7[12] = v14;
  v7[13] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D1884084, v14, v13);
}

uint64_t sub_1D1884084()
{
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC6459E8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Received timer state reset change", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1D18841D4;
  v7 = v0[4];
  v6 = v0[5];

  return sub_1D188631C(v7, v6);
}

uint64_t sub_1D18841D4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[15] = v6;
  *v6 = v5;
  v6[1] = sub_1D1884340;
  v7 = v3[2];
  v8 = v3[3];

  return sub_1D187EE14(v8, a1 & 1, 2);
}

uint64_t sub_1D1884340()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1888208, v4, v3);
}

uint64_t sub_1D1884460@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E669FC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v18 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  (*(v11 + 16))(v14, a2, v10);
  j___s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  return sub_1D186EF48(v20, v14, v9, v15, v16, a3);
}

uint64_t sub_1D1884650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  (*(v7 + 16))(v10, a2, v6);
  sub_1D1869A54(v16, v10, v11, v12, a3);
  v18 = type metadata accessor for StaticAlarm();
  return (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
}

uint64_t sub_1D1884828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v8[7] = updated;
  v10 = *(*(updated - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v8[9] = v11;
  v12 = *(v11 - 8);
  v8[10] = v12;
  v13 = *(v12 + 64) + 15;
  v8[11] = swift_task_alloc();
  sub_1D1E67E1C();
  v8[12] = sub_1D1E67E0C();
  v15 = sub_1D1E67D4C();
  v8[13] = v15;
  v8[14] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D1884964, v15, v14);
}

uint64_t sub_1D1884964()
{
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC6459E8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Received alarm CanDispatchDidUpdate change", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  v7 = sub_1D1887444(v6, v5);
  if (v7 == 2 || (v8 = v7, (v9 = [v0[5] siriEndpointProfile]) != 0) && (v10 = v9, v11 = objc_msgSend(v9, sel_isNeedsOnboarding), v10, (v11 & 1) != 0))
  {
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_1D1884E94;
    v13 = v0[5];
    v14 = v0[6];

    return sub_1D188671C(v14, v13);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_1D1884B88;
    v17 = v0[4];
    v18 = v0[2];

    return sub_1D187EE14(v17, 2, v8 & 1);
  }
}

uint64_t sub_1D1884B88()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D1884CA8, v4, v3);
}

uint64_t sub_1D1884CA8()
{
  v1 = v0[12];

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v14 = v0[7];
  v15 = v0[9];
  v5 = v0[4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v6, qword_1EE07B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E739C0;
  (*(v8 + 16))(v11 + v10, v5, v7);
  *v4 = v11;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v3 + 8))(v2, v15);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1884E94(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v5;
  v6[1] = sub_1D1883E30;
  v7 = v3[2];
  v8 = v3[4];

  return sub_1D187EE14(v8, 2, a1 & 1);
}

uint64_t sub_1D1885000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v7[6] = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v7[8] = v10;
  v11 = *(v10 - 8);
  v7[9] = v11;
  v12 = *(v11 + 64) + 15;
  v7[10] = swift_task_alloc();
  sub_1D1E67E1C();
  v7[11] = sub_1D1E67E0C();
  v14 = sub_1D1E67D4C();
  v7[12] = v14;
  v7[13] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D1885134, v14, v13);
}

uint64_t sub_1D1885134()
{
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC6459E8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Received alarm state reset change", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1D1885284;
  v7 = v0[4];
  v6 = v0[5];

  return sub_1D188671C(v7, v6);
}

uint64_t sub_1D1885284(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[15] = v6;
  *v6 = v5;
  v6[1] = sub_1D18853F0;
  v7 = v3[2];
  v8 = v3[3];

  return sub_1D187EE14(v8, 2, a1 & 1);
}

uint64_t sub_1D18853F0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1885510, v4, v3);
}

uint64_t sub_1D1885510()
{
  v1 = v0[11];

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v14 = v0[6];
  v15 = v0[8];
  v5 = v0[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v6, qword_1EE07B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E739C0;
  (*(v8 + 16))(v11 + v10, v5, v7);
  *v4 = v11;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v3 + 8))(v2, v15);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D18856FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1885778(v6);
  return sub_1D1E6897C();
}

void sub_1D1885778(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D1E68F9C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v6 = sub_1D1E67C8C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D1885988(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D188588C(0, v2, 1, a1);
  }
}

void sub_1D188588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v17 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      if (![v11 isControllable])
      {

LABEL_5:
        ++v4;
        v6 = v17 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v13 = [v12 isControllable];

      if (v13)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D1885988(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_131:
      v9 = sub_1D1E0BE44(v9);
    }

    v11 = *(v9 + 2);
    if (v11 >= 2)
    {
      do
      {
        v12 = *v6;
        if (!*v6)
        {
          goto LABEL_135;
        }

        v6 = (v11 - 1);
        v13 = *&v9[16 * v11];
        v14 = *&v9[16 * v11 + 24];
        sub_1D1886044((v12 + 8 * v13), (v12 + 8 * *&v9[16 * v11 + 16]), (v12 + 8 * v14), v7);
        if (v5)
        {
          break;
        }

        if (v14 < v13)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D1E0BE44(v9);
        }

        if (v11 - 2 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v15 = &v9[16 * v11];
        *v15 = v13;
        *(v15 + 1) = v14;
        sub_1D1E0BDB8(v11 - 1);
        v11 = *(v9 + 2);
        v6 = a3;
      }

      while (v11 > 1);
    }

LABEL_109:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  while (1)
  {
    v16 = v8;
    v17 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v18 = *v6;
      v19 = *(*v6 + 8 * v17);
      v98 = v8;
      v20 = *(*v6 + 8 * v8);
      v21 = v19;
      v22 = v20;
      if ([v21 v10[263]])
      {
        v23 = [v22 v10[263]];

        v103 = v23 ^ 1;
        v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      }

      else
      {

        v103 = 0;
      }

      v16 = v98;
      v17 = v98 + 2;
      if (v98 + 2 < v7)
      {
        v24 = (v18 + 8 * v98 + 16);
        do
        {
          v27 = *(v24 - 1);
          v28 = *v24;
          v29 = v27;
          if ([v28 v10[263]])
          {
            v25 = [v29 v10[263]];

            v26 = v103 == v25;
            v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = a3;
            if (v26)
            {
              goto LABEL_28;
            }
          }

          else
          {

            v6 = a3;
            if (v103)
            {
              v16 = v98;
              goto LABEL_30;
            }
          }

          ++v17;
          ++v24;
        }

        while (v7 != v17);
        v17 = v7;
LABEL_28:
        v16 = v98;
      }

      if (v103)
      {
LABEL_30:
        if (v17 < v16)
        {
          goto LABEL_128;
        }

        if (v16 < v17)
        {
          v30 = 8 * v17 - 8;
          v31 = 8 * v16;
          v32 = v17;
          v33 = v16;
          do
          {
            if (v33 != --v17)
            {
              v34 = *v6;
              if (!*v6)
              {
                goto LABEL_134;
              }

              v35 = *(v34 + v31);
              *(v34 + v31) = *(v34 + v30);
              *(v34 + v30) = v35;
            }

            ++v33;
            v30 -= 8;
            v31 += 8;
          }

          while (v33 < v17);
          v17 = v32;
        }
      }
    }

    v36 = v6[1];
    if (v17 < v36)
    {
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_127;
      }

      if (v17 - v16 < a4)
      {
        v37 = v16 + a4;
        if (__OFADD__(v16, a4))
        {
          goto LABEL_129;
        }

        if (v37 >= v36)
        {
          v37 = v6[1];
        }

        if (v37 < v16)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v17 != v37)
        {
          break;
        }
      }
    }

    if (v17 < v16)
    {
      goto LABEL_126;
    }

LABEL_58:
    v105 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D177D070(0, *(v9 + 2) + 1, 1, v9);
    }

    v50 = *(v9 + 2);
    v49 = *(v9 + 3);
    v51 = v50 + 1;
    v8 = v105;
    if (v50 >= v49 >> 1)
    {
      v95 = sub_1D177D070((v49 > 1), v50 + 1, 1, v9);
      v8 = v105;
      v9 = v95;
    }

    *(v9 + 2) = v51;
    v52 = &v9[16 * v50];
    *(v52 + 4) = v16;
    *(v52 + 5) = v8;
    v53 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v9 + 4);
          v56 = *(v9 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_77:
          if (v58)
          {
            goto LABEL_115;
          }

          v71 = &v9[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_118;
          }

          v77 = &v9[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_122;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v81 = &v9[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_91:
        if (v76)
        {
          goto LABEL_117;
        }

        v84 = &v9[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_120;
        }

        if (v87 < v75)
        {
          v8 = v105;
          goto LABEL_15;
        }

LABEL_98:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_130;
        }

        if (!*v6)
        {
          goto LABEL_133;
        }

        v93 = *&v9[16 * v92 + 32];
        v7 = *&v9[16 * v54 + 40];
        sub_1D1886044((*v6 + 8 * v93), (*v6 + 8 * *&v9[16 * v54 + 32]), (*v6 + 8 * v7), v53);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v7 < v93)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D1E0BE44(v9);
        }

        if (v92 >= *(v9 + 2))
        {
          goto LABEL_112;
        }

        v94 = &v9[16 * v92];
        *(v94 + 4) = v93;
        *(v94 + 5) = v7;
        sub_1D1E0BDB8(v54);
        v51 = *(v9 + 2);
        v8 = v105;
        if (v51 <= 1)
        {
          goto LABEL_15;
        }
      }

      v59 = &v9[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_113;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_114;
      }

      v66 = &v9[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_116;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_119;
      }

      if (v70 >= v62)
      {
        v88 = &v9[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_123;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_15:
    v7 = v6[1];
    v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    if (v8 >= v7)
    {
      goto LABEL_4;
    }
  }

  v96 = v5;
  v38 = *v6;
  v39 = *v6 + 8 * v17 - 8;
  v99 = v16;
  v40 = v16 - v17;
  v101 = v37;
LABEL_49:
  v104 = v17;
  v41 = *(v38 + 8 * v17);
  v42 = v40;
  v7 = v39;
  while (1)
  {
    v43 = *v7;
    v44 = v41;
    v45 = v43;
    if (![v44 v10[263]])
    {

LABEL_48:
      v17 = v104 + 1;
      v39 += 8;
      --v40;
      if (v104 + 1 != v101)
      {
        goto LABEL_49;
      }

      v17 = v101;
      v5 = v96;
      v6 = a3;
      v16 = v99;
      if (v101 < v99)
      {
        goto LABEL_126;
      }

      goto LABEL_58;
    }

    v46 = [v45 v10[263]];

    if (v46)
    {
      v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      goto LABEL_48;
    }

    if (!v38)
    {
      break;
    }

    v47 = *v7;
    v41 = *(v7 + 8);
    *v7 = v41;
    *(v7 + 8) = v47;
    v7 -= 8;
    v48 = __CFADD__(v42++, 1);
    v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    if (v48)
    {
      goto LABEL_48;
    }
  }

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
}

uint64_t sub_1D1886044(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      if (![v16 isControllable])
      {
        break;
      }

      v18 = [v17 isControllable];

      if (v18)
      {
        goto LABEL_17;
      }

      v19 = v6;
      v20 = v7 == v6++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }
    }

LABEL_17:
    v19 = v4;
    v20 = v7 == v4++;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    memmove(__dst, a2, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    do
    {
      v30 = v6;
      v22 = v6 - 1;
      --v5;
      v23 = v14;
      while (1)
      {
        v24 = *--v23;
        v6 = v22;
        v25 = *v22;
        v26 = v24;
        v27 = v25;
        if (![v26 v21[263]])
        {

          goto LABEL_34;
        }

        v28 = [v27 v21[263]];

        if ((v28 & 1) == 0)
        {
          break;
        }

LABEL_34:
        v22 = v6;
        if (v5 + 1 != v14)
        {
          *v5 = *v23;
        }

        --v5;
        v14 = v23;
        v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        if (v23 <= v4)
        {
          v14 = v23;
          v6 = v30;
          goto LABEL_43;
        }
      }

      if (v5 + 1 != v30)
      {
        *v5 = *v6;
      }

      v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_43:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1D188631C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_1D1E67E1C();
  v2[10] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D18863EC, v5, v4);
}

uint64_t sub_1D18863EC()
{
  v1 = [*(v0 + 64) siriEndpointProfile];
  if (v1 && (v2 = v1, v3 = [v1 isNeedsOnboarding], v2, v3))
  {
    v4 = *(v0 + 80);

    v5 = *(v0 + 72);

    v6 = *(v0 + 8);

    return v6(1);
  }

  else
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    sub_1D1E67E5C();
    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    sub_1D17419CC(v9, v0 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    sub_1D16EEE20((v0 + 16), v11 + 32);
    v12 = sub_1D1B1E270(0, 0, v8, &unk_1D1E7B9F8, v11);
    *(v0 + 104) = v12;
    sub_1D1741A30(v8, &unk_1EC6442C0, &qword_1D1E741A0);
    v13 = *(MEMORY[0x1E69E86C0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_1D18865D8;
    v15 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DA40](v0 + 120, v12, v15);
  }
}

uint64_t sub_1D18865D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D18881FC, v5, v4);
}

uint64_t sub_1D188671C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_1D1E67E1C();
  v2[10] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D18867EC, v5, v4);
}

uint64_t sub_1D18867EC()
{
  v1 = [*(v0 + 64) siriEndpointProfile];
  if (v1 && (v2 = v1, v3 = [v1 isNeedsOnboarding], v2, v3))
  {
    v4 = *(v0 + 80);

    v5 = *(v0 + 72);

    v6 = *(v0 + 8);

    return v6(1);
  }

  else
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    sub_1D1E67E5C();
    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    sub_1D17419CC(v9, v0 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    sub_1D16EEE20((v0 + 16), v11 + 32);
    v12 = sub_1D1B1E270(0, 0, v8, &unk_1D1E7B9E8, v11);
    *(v0 + 104) = v12;
    sub_1D1741A30(v8, &unk_1EC6442C0, &qword_1D1E741A0);
    v13 = *(MEMORY[0x1E69E86C0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_1D18869D8;
    v15 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DA40](v0 + 120, v12, v15);
  }
}

uint64_t sub_1D18869D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1886B1C, v5, v4);
}

uint64_t sub_1D1886B1C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 120);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4(v2);
}

unint64_t sub_1D1886B8C()
{
  result = qword_1EE07B250;
  if (!qword_1EE07B250)
  {
    sub_1D1E66A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07B250);
  }

  return result;
}

unint64_t sub_1D1886BE4()
{
  result = qword_1EC645A98;
  if (!qword_1EC645A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645A98);
  }

  return result;
}

uint64_t sub_1D1886C38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D18801EC(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D1886D28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D18802A4(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D1886E20(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D17C4CF0;

  return sub_1D1885000(a1, v9, v10, v11, v1 + v6, v1 + v7, v12);
}

uint64_t objectdestroy_24Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D18870A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, unint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(sub_1D1E66A7C() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  return a5(a1, *(v5 + 16), v5 + 24, v5 + v12, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

uint64_t sub_1D1887168(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1D1E6604C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1D1E66A7C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v9);
  v15 = *(v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D17C4CF0;

  return sub_1D1884828(a1, v11, v12, v13, v1 + v5, v1 + v8, v14, v1 + v10);
}

uint64_t sub_1D1887320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_1D1E6603C();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = *a3;
  sub_1D1E6781C();
  sub_1D1E687DC();
  if (!*(v9 + 16) || (v11 = sub_1D171D804(v14), (v12 & 1) == 0))
  {

    sub_1D1741BB4(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  sub_1D1741970(*(v9 + 56) + 32 * v11, &v15);
  sub_1D1741BB4(v14);

  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_1D1741A30(&v15, &qword_1EC649700, &qword_1D1E6E910);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    result = v14[0];
    if (*(v14[0] + 16))
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1D1887444(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E6603C();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = *MEMORY[0x1E6997410];
  sub_1D1E6781C();
  sub_1D1E687DC();
  if (!*(v4 + 16) || (v6 = sub_1D171D804(v13), (v7 & 1) == 0))
  {

    sub_1D1741BB4(v13);
LABEL_10:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_11;
  }

  sub_1D1741970(*(v4 + 56) + 32 * v6, &v14);
  sub_1D1741BB4(v13);

  if (!*(&v15 + 1))
  {
LABEL_11:
    sub_1D1741A30(&v14, &qword_1EC649700, &qword_1D1E6E910);
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AA0, &qword_1D1E7BA20);
  if (swift_dynamicCast())
  {
    v8 = v13[0];
    if (*(v13[0] + 16))
    {
      v9 = sub_1D1742188(a2);
      if (v10)
      {
        v11 = *(*(v8 + 56) + v9);

        return v11;
      }
    }
  }

  return 2;
}

uint64_t sub_1D18875A8(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D18759D4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1D1887744(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4BFC;

  return sub_1D18759D4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1D188789C(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1876198(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D1887B0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D17C4CF0;

  return sub_1D1883F50(a1, v9, v10, v11, v1 + v6, v1 + v7, v12);
}

uint64_t objectdestroy_37Tm()
{
  v1 = sub_1D1E6604C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v14 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + v11));

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v14 | 7);
}

uint64_t sub_1D1887E40(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1D1E6604C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1D1E66A7C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v9);
  v15 = *(v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D17C4CF0;

  return sub_1D1883844(a1, v11, v12, v13, v1 + v5, v1 + v8, v14, v1 + v10);
}

uint64_t objectdestroy_45Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1888258(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1888278, 0, 0);
}

uint64_t sub_1D1888278()
{
  v42 = v0;
  v1 = *(v0 + 280);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EC6459E8);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBB440, &v41);
      _os_log_impl(&dword_1D16EC000, v5, v6, "cancel old %s fetch", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D3893640](v8, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    [v3 cancel];
    swift_unknownObjectWeakAssign();
  }

  v9 = *(v0 + 280);
  sub_1D17419CC(v9 + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20((v0 + 96), v0 + 16);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC6459E8);
    sub_1D17419CC(v0 + 16, v0 + 216);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 136315138;
      v16 = *(v0 + 240);
      v15 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v16);
      v17 = (*(v15 + 80))(v16, v15);
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1((v0 + 216));
      v20 = sub_1D1B1312C(v17, v19, &v41);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v11, v12, "start alarm fetch for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 216));
    }

    v32 = swift_task_alloc();
    *(v0 + 288) = v32;
    v32[1] = vextq_s8(*(v0 + 272), *(v0 + 272), 8uLL);
    v32[2].i64[0] = v0 + 16;
    v33 = *(MEMORY[0x1E69E88D0] + 4);
    v34 = swift_task_alloc();
    *(v0 + 296) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AB0, &qword_1D1E7BA50);
    *v34 = v0;
    v34[1] = sub_1D1888914;
    v36 = sub_1D1892010;
    v37 = v0 + 264;
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_1D1741A30(v0 + 96, &qword_1EC6459C0, &qword_1D1E7B920);
    sub_1D17419CC(v9 + 16, v0 + 136);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EC6459E8);
    sub_1D17419CC(v0 + 136, v0 + 176);
    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6835C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v26 = *(v0 + 200);
      v27 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v26);
      v28 = (*(v27 + 64))(v26, v27);
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      v31 = sub_1D1B1312C(v28, v30, &v41);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_1D16EC000, v22, v23, "start timer fetch for %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D3893640](v25, -1, -1);
      MEMORY[0x1D3893640](v24, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    }

    v32 = swift_task_alloc();
    *(v0 + 304) = v32;
    v32[1] = vextq_s8(*(v0 + 272), *(v0 + 272), 8uLL);
    v32[2].i64[0] = v0 + 136;
    v38 = *(MEMORY[0x1E69E88D0] + 4);
    v39 = swift_task_alloc();
    *(v0 + 312) = v39;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AB0, &qword_1D1E7BA50);
    *v39 = v0;
    v39[1] = sub_1D1888A94;
    v36 = sub_1D1892004;
    v37 = v0 + 256;
  }

  return MEMORY[0x1EEE6DDE0](v37, 0, 0, 0x6F66286863746566, 0xEB00000000293A72, v36, v32, v35);
}

uint64_t sub_1D1888914()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1888A2C, 0, 0);
}

uint64_t sub_1D1888A2C()
{
  v1 = v0[33];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D1888A94()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1888BAC, 0, 0);
}

uint64_t sub_1D1888BAC()
{
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D1888C14(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1888C34, 0, 0);
}

uint64_t sub_1D1888C34()
{
  v26 = v0;
  v1 = *(v0 + 112);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EC6459E8);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBB460, &v25);
      _os_log_impl(&dword_1D16EC000, v5, v6, "cancel old %s fetch", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D3893640](v8, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    [v3 cancel];
    swift_unknownObjectWeakAssign();
  }

  sub_1D17419CC(*(v0 + 112) + 16, v0 + 16);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC6459E8);
  sub_1D17419CC(v0 + 16, v0 + 56);
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v14);
    v16 = (*(v15 + 80))(v14, v15);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v19 = sub_1D1B1312C(v16, v18, &v25);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1D16EC000, v10, v11, "start alarm fetch for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  v20[1] = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);
  v20[2].i64[0] = v0 + 16;
  v21 = *(MEMORY[0x1E69E88D0] + 4);
  v22 = swift_task_alloc();
  *(v0 + 128) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AA8, &qword_1D1E7BA30);
  *v22 = v0;
  v22[1] = sub_1D1889014;

  return MEMORY[0x1EEE6DDE0](v0 + 96, 0, 0, 0x6F66286863746566, 0xEB00000000293A72, sub_1D1891FB8, v20, v23);
}

uint64_t sub_1D1889014()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D188912C, 0, 0);
}

uint64_t sub_1D188912C()
{
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

void sub_1D1889194(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AE0, &unk_1D1E7BBD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = a4[3];
  v14 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v13);
  v15 = (*(v14 + 88))(a3, v13, v14);
  swift_unknownObjectWeakAssign();
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_1D189201C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1819E6C;
  aBlock[3] = &block_descriptor_26_0;
  v18 = _Block_copy(aBlock);

  v19 = [v15 addCompletionBlock_];
  _Block_release(v18);
}

void sub_1D18893BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD0, &qword_1D1E7BBC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = a4[3];
  v14 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v13);
  v15 = (*(v14 + 88))(a3, v13, v14);
  swift_unknownObjectWeakAssign();
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_1D1891FC4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1819E6C;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);

  v19 = [v15 addCompletionBlock_];
  _Block_release(v18);
}

uint64_t sub_1D18895E4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD8, &qword_1D1E7BBC8);
    v2 = v1;
  }

  else
  {
    v2 = 0;
    v18[1] = 0;
    v18[2] = 0;
  }

  v18[0] = v2;
  v18[3] = a1;
  v3 = v1;
  sub_1D188DFC4(v18);
  v5 = v4;
  sub_1D1741A30(v18, &qword_1EC649700, &qword_1D1E6E910);
  v6 = sub_1D1A05518(v5);

  if (!v6)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC6459E8);

  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6835C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315138;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
    v13 = MEMORY[0x1D3891260](v6, v12);
    v15 = v14;

    v16 = sub_1D1B1312C(v13, v15, v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1D16EC000, v8, v9, "got alarm update result. Alarms: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
  }

  v18[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AE0, &unk_1D1E7BBD0);
  return sub_1D1E67D6C();
}

uint64_t sub_1D1889818(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD8, &qword_1D1E7BBC8);
    v2 = v1;
  }

  else
  {
    v2 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v2;
  v17[3] = a1;
  v3 = v1;
  sub_1D188DFC4(v17);
  v5 = v4;
  sub_1D1741A30(v17, &qword_1EC649700, &qword_1D1E6E910);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EC6459E8);

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
    v12 = MEMORY[0x1D3891260](v5, v11);
    v14 = v13;

    v15 = sub_1D1B1312C(v12, v14, v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v7, v8, "got alarm update result. Alarms: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v17[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD0, &qword_1D1E7BBC0);
  return sub_1D1E67D6C();
}

void sub_1D1889A28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AE0, &unk_1D1E7BBD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = a4[3];
  v14 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v13);
  v15 = (*(v14 + 72))(a3, v13, v14);
  swift_unknownObjectWeakAssign();
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_1D1892104;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1819E6C;
  aBlock[3] = &block_descriptor_32_0;
  v18 = _Block_copy(aBlock);

  v19 = [v15 addCompletionBlock_];
  _Block_release(v18);
}

uint64_t sub_1D1889C50(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD8, &qword_1D1E7BBC8);
    v2 = v1;
  }

  else
  {
    v2 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v2;
  v17[3] = a1;
  v3 = v1;
  sub_1D188E494(v17);
  v5 = v4;
  sub_1D1741A30(v17, &qword_1EC649700, &qword_1D1E6E910);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EC6459E8);

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
    v12 = MEMORY[0x1D3891260](v5, v11);
    v14 = v13;

    v15 = sub_1D1B1312C(v12, v14, v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v7, v8, "got timer update result. Timers: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v17[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AE0, &unk_1D1E7BBD0);
  return sub_1D1E67D6C();
}

uint64_t sub_1D1889E60(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v2[18] = updated;
  v4 = *(*(updated - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_1D1E67E1C();
  v2[21] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v2[22] = v6;
  v2[23] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1889F34, v6, v5);
}

uint64_t sub_1D1889F34()
{
  v1 = v0[18];
  sub_1D18921C8(v0[16], v0[20], type metadata accessor for CoordinationSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v3 = v0[20];
    v2 = v0[21];

    byte_1EC6459D8 = (*v3 & 1) == 0;
LABEL_9:
    v20 = v0[19];
    v19 = v0[20];

    v21 = v0[1];

    return v21();
  }

  sub_1D1878390(v0[20]);
  if (byte_1EC6459D8 != 1 || (v4 = v0[17], v5 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome, swift_beginAccess(), v6 = *(v4 + v5), (v0[24] = v6) == 0))
  {
    v18 = v0[21];

    goto LABEL_9;
  }

  v7 = v0[18];
  sub_1D18921C8(v0[16], v0[19], type metadata accessor for CoordinationSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23 = v0[17];
    v24 = *v0[19];
    v25 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
    swift_beginAccess();
    v26 = *(v23 + v25);
    v27 = v6;

    v29 = sub_1D1891C08(v28, v24);
    v0[27] = v29;
    swift_bridgeObjectRelease_n();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D1E6711C();

    v0[13] = v0[12];
    v13 = v0 + 13;
    v30 = swift_task_alloc();
    v0[28] = v30;
    *v30 = v0;
    v30[1] = sub_1D188A544;
    v31 = v0[17];
    v16 = v0[16];
    v17 = v29;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v9 = v0[17];
    v10 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
    swift_beginAccess();
    v11 = *(v9 + v10);
    v0[25] = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v6;

    sub_1D1E6711C();

    v0[15] = v0[14];
    v13 = v0 + 15;
    v14 = swift_task_alloc();
    v0[26] = v14;
    *v14 = v0;
    v14[1] = sub_1D188A370;
    v15 = v0[17];
    v16 = v0[16];
    v17 = v11;
LABEL_13:

    return sub_1D188E964(v16, v17, v13);
  }

  v32 = qword_1EC642200;
  v33 = v6;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = swift_task_alloc();
  v0[29] = v34;
  *v34 = v0;
  v34[1] = sub_1D188A6A0;
  v35 = v0[16];

  return sub_1D18A2E60((v0 + 11), v35, 0);
}

uint64_t sub_1D188A370()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v8 = *v0;

  v4 = v1[15];

  v5 = v1[23];
  v6 = v1[22];

  return MEMORY[0x1EEE6DFA0](sub_1D188A4CC, v6, v5);
}

uint64_t sub_1D188A4CC()
{
  v1 = v0[24];
  v2 = v0[21];

  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D188A544()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v8 = *v0;

  v4 = v1[13];

  v5 = v1[23];
  v6 = v1[22];

  return MEMORY[0x1EEE6DFA0](sub_1D18922D8, v6, v5);
}

uint64_t sub_1D188A6A0()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v7 = *v0;

  v3 = v1[11];

  v4 = v1[23];
  v5 = v1[22];

  return MEMORY[0x1EEE6DFA0](sub_1D188A7D8, v5, v4);
}

uint64_t sub_1D188A7D8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];

  sub_1D1878390(v3);
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D188A85C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  (*(v7 + 16))(v10, a2, v6);
  return sub_1D1869A54(v16, v10, v11, v12, a3);
}

uint64_t sub_1D188A9F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E669FC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v18 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  (*(v11 + 16))(v14, a2, v10);
  j___s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  return sub_1D186EF48(v20, v14, v9, v15, v16, a3);
}

uint64_t sub_1D188ABE4()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms);

  v4 = *(v0 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers);

  sub_1D1757B18(*(v0 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError));
  sub_1D1757B18(*(v0 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _CoordinationClassObject()
{
  result = qword_1EC645AB8;
  if (!qword_1EC645AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D188AD14()
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D188ADF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17798F8(*(v2 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms), *(v3 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers);
  v5 = *(v3 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers);

  return sub_1D1779BD4(v4, v5);
}

uint64_t sub_1D188AE78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t *sub_1D188AEF4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D1891808(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1D188AF90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AE8, &qword_1D1E7BC10);
  result = sub_1D1E68BCC();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 16 * v16);
    v19 = v18[1];
    v32 = *v18;
    v20 = *(v9 + 40);
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v17);
    result = sub_1D1E6926C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v17;
    v29 = (*(v9 + 56) + 16 * v24);
    *v29 = v32;
    v29[1] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1D188B1C8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticService(0);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v56 = sub_1D1E66A7C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
  result = sub_1D1E68BCC();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = v13 + 16;
  v47 = a1;
  v54 = v13 + 32;
  v22 = result + 64;
  v44 = v13;
  v45 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v53 = *(v13 + 72);
    v28 = v48;
    v29 = v56;
    (*(v13 + 16))(v48, v27 + v53 * v26, v56);
    v30 = a4[7];
    v52 = *(v50 + 72);
    v31 = v30 + v52 * v26;
    v32 = v49;
    sub_1D18921C8(v31, v49, type metadata accessor for StaticService);
    v33 = *(v13 + 32);
    v33(v55, v28, v29);
    sub_1D1892230(v32, v57, type metadata accessor for StaticService);
    v34 = *(v19 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v47;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v19 + 48) + v38 * v53), v55, v56);
    result = sub_1D1892230(v57, *(v19 + 56) + v38 * v52, type metadata accessor for StaticService);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v44;
    a4 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
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

uint64_t sub_1D188B630(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticServiceGroup();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v56 = sub_1D1E66A7C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A88, &qword_1D1E6E7D8);
  result = sub_1D1E68BCC();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = v13 + 16;
  v47 = a1;
  v54 = v13 + 32;
  v22 = result + 64;
  v44 = v13;
  v45 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v53 = *(v13 + 72);
    v28 = v48;
    v29 = v56;
    (*(v13 + 16))(v48, v27 + v53 * v26, v56);
    v30 = a4[7];
    v52 = *(v50 + 72);
    v31 = v30 + v52 * v26;
    v32 = v49;
    sub_1D18921C8(v31, v49, type metadata accessor for StaticServiceGroup);
    v33 = *(v13 + 32);
    v33(v55, v28, v29);
    sub_1D1892230(v32, v57, type metadata accessor for StaticServiceGroup);
    v34 = *(v19 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v47;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v19 + 48) + v38 * v53), v55, v56);
    result = sub_1D1892230(v57, *(v19 + 56) + v38 * v52, type metadata accessor for StaticServiceGroup);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v44;
    a4 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
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

uint64_t sub_1D188BA98(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticMediaProfile();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v56 = sub_1D1E66A7C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF8, &unk_1D1E6E840);
  result = sub_1D1E68BCC();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = v13 + 16;
  v47 = a1;
  v54 = v13 + 32;
  v22 = result + 64;
  v44 = v13;
  v45 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v53 = *(v13 + 72);
    v28 = v48;
    v29 = v56;
    (*(v13 + 16))(v48, v27 + v53 * v26, v56);
    v30 = a4[7];
    v52 = *(v50 + 72);
    v31 = v30 + v52 * v26;
    v32 = v49;
    sub_1D18921C8(v31, v49, type metadata accessor for StaticMediaProfile);
    v33 = *(v13 + 32);
    v33(v55, v28, v29);
    sub_1D1892230(v32, v57, type metadata accessor for StaticMediaProfile);
    v34 = *(v19 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v47;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v19 + 48) + v38 * v53), v55, v56);
    result = sub_1D1892230(v57, *(v19 + 56) + v38 * v52, type metadata accessor for StaticMediaProfile);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v44;
    a4 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
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

uint64_t sub_1D188BF00(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticMediaSystem();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v56 = sub_1D1E66A7C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B00, &unk_1D1E7BBF0);
  result = sub_1D1E68BCC();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = v13 + 16;
  v47 = a1;
  v54 = v13 + 32;
  v22 = result + 64;
  v44 = v13;
  v45 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v53 = *(v13 + 72);
    v28 = v48;
    v29 = v56;
    (*(v13 + 16))(v48, v27 + v53 * v26, v56);
    v30 = a4[7];
    v52 = *(v50 + 72);
    v31 = v30 + v52 * v26;
    v32 = v49;
    sub_1D18921C8(v31, v49, type metadata accessor for StaticMediaSystem);
    v33 = *(v13 + 32);
    v33(v55, v28, v29);
    sub_1D1892230(v32, v57, type metadata accessor for StaticMediaSystem);
    v34 = *(v19 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v47;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v19 + 48) + v38 * v53), v55, v56);
    result = sub_1D1892230(v57, *(v19 + 56) + v38 * v52, type metadata accessor for StaticMediaSystem);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v44;
    a4 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
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

uint64_t sub_1D188C368(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticCameraProfile();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v56 = sub_1D1E66A7C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B30, &qword_1D1E6E878);
  result = sub_1D1E68BCC();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = v13 + 16;
  v47 = a1;
  v54 = v13 + 32;
  v22 = result + 64;
  v44 = v13;
  v45 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v53 = *(v13 + 72);
    v28 = v48;
    v29 = v56;
    (*(v13 + 16))(v48, v27 + v53 * v26, v56);
    v30 = a4[7];
    v52 = *(v50 + 72);
    v31 = v30 + v52 * v26;
    v32 = v49;
    sub_1D18921C8(v31, v49, type metadata accessor for StaticCameraProfile);
    v33 = *(v13 + 32);
    v33(v55, v28, v29);
    sub_1D1892230(v32, v57, type metadata accessor for StaticCameraProfile);
    v34 = *(v19 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v47;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v19 + 48) + v38 * v53), v55, v56);
    result = sub_1D1892230(v57, *(v19 + 56) + v38 * v52, type metadata accessor for StaticCameraProfile);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v44;
    a4 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
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

uint64_t sub_1D188C7D0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticActionSet();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v56 = sub_1D1E66A7C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
  result = sub_1D1E68BCC();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = v13 + 16;
  v47 = a1;
  v54 = v13 + 32;
  v22 = result + 64;
  v44 = v13;
  v45 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v53 = *(v13 + 72);
    v28 = v48;
    v29 = v56;
    (*(v13 + 16))(v48, v27 + v53 * v26, v56);
    v30 = a4[7];
    v52 = *(v50 + 72);
    v31 = v30 + v52 * v26;
    v32 = v49;
    sub_1D18921C8(v31, v49, type metadata accessor for StaticActionSet);
    v33 = *(v13 + 32);
    v33(v55, v28, v29);
    sub_1D1892230(v32, v57, type metadata accessor for StaticActionSet);
    v34 = *(v19 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v47;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v19 + 48) + v38 * v53), v55, v56);
    result = sub_1D1892230(v57, *(v19 + 56) + v38 * v52, type metadata accessor for StaticActionSet);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v44;
    a4 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
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

uint64_t sub_1D188CC38(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticAccessory(0);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v56 = sub_1D1E66A7C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
  result = sub_1D1E68BCC();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46 = v13 + 16;
  v47 = a1;
  v54 = v13 + 32;
  v22 = result + 64;
  v44 = v13;
  v45 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v51 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v53 = *(v13 + 72);
    v28 = v48;
    v29 = v56;
    (*(v13 + 16))(v48, v27 + v53 * v26, v56);
    v30 = a4[7];
    v52 = *(v50 + 72);
    v31 = v30 + v52 * v26;
    v32 = v49;
    sub_1D18921C8(v31, v49, type metadata accessor for StaticAccessory);
    v33 = *(v13 + 32);
    v33(v55, v28, v29);
    sub_1D1892230(v32, v57, type metadata accessor for StaticAccessory);
    v34 = *(v19 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v35 = -1 << *(v19 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v47;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v22 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
LABEL_26:
    *(v22 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v19 + 48) + v38 * v53), v55, v56);
    result = sub_1D1892230(v57, *(v19 + 56) + v38 * v52, type metadata accessor for StaticAccessory);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v44;
    a4 = v45;
    v20 = v51;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v51 = (v25 - 1) & v25;
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

uint64_t sub_1D188D0A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v64 = sub_1D1E66A7C();
  v61 = *(v64 - 8);
  v8 = *(v61 + 64);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v53 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C28, &unk_1D1E7BBE0);
  result = sub_1D1E68BCC();
  v63 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v55 = v61 + 16;
  v56 = a1;
  v62 = v61 + 32;
  v16 = v63 + 64;
  v54 = a4;
  v57 = v11;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v59 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v22 = v61;
    v60 = *(v61 + 72);
    v23 = v58;
    v24 = v64;
    (*(v61 + 16))(v58, v21 + v60 * v20, v64);
    v25 = (a4[7] + (v20 << 7));
    v26 = v25[3];
    v28 = *v25;
    v27 = v25[1];
    v68 = v25[2];
    v69 = v26;
    v66 = v28;
    v67 = v27;
    v29 = v25[7];
    v31 = v25[4];
    v30 = v25[5];
    v72 = v25[6];
    v73 = v29;
    v70 = v31;
    v71 = v30;
    v32 = *(v22 + 32);
    v33 = v57;
    v32(v57, v23, v24);
    v34 = v63;
    v35 = *(v63 + 40);
    sub_1D1741C08(&v66, &v65, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v36 = -1 << *(v34 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v16 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      a1 = v56;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v16 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v16 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a1 = v56;
LABEL_26:
    *(v16 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v44 = v63;
    result = (v32)(*(v63 + 48) + v39 * v60, v33, v64);
    v45 = (*(v44 + 56) + (v39 << 7));
    v47 = v72;
    v46 = v73;
    v48 = v71;
    v45[4] = v70;
    v45[5] = v48;
    v45[6] = v47;
    v45[7] = v46;
    v50 = v68;
    v49 = v69;
    v51 = v67;
    *v45 = v66;
    v45[1] = v51;
    v45[2] = v50;
    v45[3] = v49;
    ++*(v44 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v54;
    v14 = v59;
    if (!a3)
    {
      return v63;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v63;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v59 = (v19 - 1) & v19;
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

uint64_t sub_1D188D47C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D1E66A7C();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642968, &qword_1D1E6E6C8);
  result = sub_1D1E68BCC();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v45 = v52 + 16;
  v46 = result;
  v18 = v52 + 32;
  v19 = result + 64;
  v47 = a1;
  v43 = a4;
  v44 = a2;
  while (v16)
  {
    v20 = v18;
    v21 = v12;
    v22 = __clz(__rbit64(v16));
    v49 = (v16 - 1) & v16;
LABEL_16:
    v25 = v22 | (v17 << 6);
    v26 = a4[6];
    v28 = v52;
    v27 = v53;
    v51 = *(v52 + 72);
    v29 = v48;
    (*(v52 + 16))(v48, v26 + v51 * v25, v53);
    v50 = *(a4[7] + 8 * v25);
    v30 = *(v28 + 32);
    v12 = v21;
    v31 = v21;
    v18 = v20;
    v30(v31, v29, v27);
    v15 = v46;
    v32 = *(v46 + 40);
    sub_1D174A5FC(qword_1EE07DD78);
    result = sub_1D1E676DC();
    v33 = -1 << *(v15 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      a1 = v47;
      a2 = v44;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v19 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    a1 = v47;
    a2 = v44;
LABEL_26:
    *(v19 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    result = (v30)(*(v15 + 48) + v36 * v51, v12, v53);
    *(*(v15 + 56) + 8 * v36) = v50;
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43;
    v16 = v49;
    if (!a3)
    {
      return v15;
    }
  }

  v23 = v17;
  while (1)
  {
    v17 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v24 = a1[v17];
    ++v23;
    if (v24)
    {
      v20 = v18;
      v21 = v12;
      v22 = __clz(__rbit64(v24));
      v49 = (v24 - 1) & v24;
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

uint64_t sub_1D188D804(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticMatterDevice();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B98, &unk_1D1E6E8E0);
  result = sub_1D1E68BCC();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v36 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v37;
    v25 = *(v38 + 72);
    sub_1D18921C8(v22 + v25 * v21, v37, type metadata accessor for StaticMatterDevice);
    sub_1D1892230(v24, v39, type metadata accessor for StaticMatterDevice);
    v26 = *(v14 + 40);
    result = sub_1D1E691FC();
    v27 = -1 << *(v14 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v17 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v14 + 48) + 8 * v30) = v23;
    result = sub_1D1892230(v39, *(v14 + 56) + v30 * v25, type metadata accessor for StaticMatterDevice);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
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

uint64_t sub_1D188DB08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642978, &unk_1D1E7BC00);
  result = sub_1D1E68BCC();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v34 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(v4 + 56) + 24 * v15;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v8 + 40);
    v22 = v16;
    sub_1D1741830(v19, v18, v20);
    result = sub_1D1E684EC();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 8 * v26) = v22;
    v31 = *(v8 + 56) + 24 * v26;
    *v31 = v19;
    *(v31 + 8) = v18;
    *(v31 + 16) = v20;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v9 = v35;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
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

uint64_t sub_1D188DD5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429D0, &qword_1D1E7E660);
  result = sub_1D1E68BCC();
  v8 = a2;
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
  v12 = result + 64;
  v36 = a2;
  v37 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 32 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v9 + 40);
    v24 = v17;
    sub_1D17418FC(v20, v19, v21, v22);
    result = sub_1D1E684EC();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v9 + 48) + 8 * v28) = v24;
    v33 = *(v9 + 56) + 32 * v28;
    *v33 = v20;
    *(v33 + 8) = v19;
    *(v33 + 16) = v21;
    *(v33 + 24) = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v10 = v38;
    v8 = v36;
    if (!v5)
    {
      return v9;
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

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
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