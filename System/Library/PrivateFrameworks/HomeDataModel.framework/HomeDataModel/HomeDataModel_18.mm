uint64_t sub_1D1860410(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v11 << 6);
    v15 = *(*(a2 + 48) + 8 * v14);
    v16 = *(*(a2 + 56) + 2 * v14);
    v17 = v15;
    if (!v15)
    {
LABEL_16:

      return MEMORY[0x1D3892850](v10);
    }

    v18 = v17;
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];
    sub_1D1E6850C();

    if (v16 >> 14)
    {
      if (v16 >> 14 == 1)
      {
        v12 = v16;
        MEMORY[0x1D3892850](2);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = v16 >> 8;
      MEMORY[0x1D3892850](1);
      sub_1D1E6922C();
    }

    v7 &= v7 - 1;
    MEMORY[0x1D3892850](v12);
    result = sub_1D1E6926C();
    v10 ^= result;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      goto LABEL_16;
    }

    v7 = *(v4 + 8 * v13);
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D186058C(__int128 *a1, uint64_t a2)
{
  v42 = a1;
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 16;
  v31 = v5;
  v14 = (v5 + 8);
  v43 = a2;

  v16 = 0;
  v17 = 0;
  v38 = "17-A590-755E1AAC02AE";
  v39 = "00-8000-0026BB765291";
  v36 = "60-AD68-D91053B75F44";
  v37 = "73-8FBD-0E8978A33403";
  v35 = "7E-BE63-1D00B1500545";
  v34 = "73-A058-C5E64BC487B2";
  v33 = "CE-986D-63B28F62C9E3";
  v32 = "13-AA62-01754F256DD5";
  v40 = v12;
  v41 = a2 + 64;
  while (v11)
  {
LABEL_10:
    v19 = __clz(__rbit64(v11)) | (v17 << 6);
    v20 = *(*(v43 + 48) + v19);
    v21 = *(*(v43 + 56) + 8 * v19);

    if (!v47)
    {
LABEL_15:

      return MEMORY[0x1D3892850](v16);
    }

    v46 = v16;
    v44 = v17;
    v45 = (v11 - 1) & v11;
    v22 = v42[3];
    v50 = v42[2];
    v51 = v22;
    v52 = *(v42 + 8);
    v23 = v42[1];
    v48 = *v42;
    v49 = v23;
    sub_1D1E678EC();

    v24 = v47;
    MEMORY[0x1D3892850](*(v47 + 16));
    v25 = *(v24 + 16);
    v26 = v13;
    if (v25)
    {
      v27 = v47 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v28 = *(v31 + 72);
      v29 = *(v31 + 16);
      do
      {
        v29(v7, v27, v3);
        sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        sub_1D1E676EC();
        (*v14)(v7, v3);
        v27 += v28;
        --v25;
      }

      while (v25);
    }

    result = sub_1D1E6926C();
    v16 = result ^ v46;
    v12 = v40;
    v8 = v41;
    v13 = v26;
    v17 = v44;
    v11 = v45;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v12)
    {
      goto LABEL_15;
    }

    v11 = *(v8 + 8 * v18);
    ++v17;
    if (v11)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel20CoordinationSnapshotV10UpdateTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v86 = v4;
  v87 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v82 = &v79 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v81 = &v79 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v79 - v13;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v15 = *(*(updated - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](updated);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v85 = &v79 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v84 = &v79 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v79 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (&v79 - v30);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v79 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455D0, &qword_1D1E79B80);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = (&v79 + *(v36 + 56) - v37);
  v39 = a1;
  v40 = &v79 - v37;
  sub_1D186155C(v39, &v79 - v37, type metadata accessor for CoordinationSnapshot.UpdateType);
  sub_1D186155C(a2, v38, type metadata accessor for CoordinationSnapshot.UpdateType);
  v88 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D186155C(v88, v31, type metadata accessor for CoordinationSnapshot.UpdateType);
        v42 = *v31;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1D186155C(v88, v33, type metadata accessor for CoordinationSnapshot.UpdateType);
        v42 = *v33;
        if (swift_getEnumCaseMultiPayload())
        {
LABEL_5:

LABEL_34:
          sub_1D1741A30(v88, &qword_1EC6455D0, &qword_1D1E79B80);
LABEL_35:
          v60 = 0;
          return v60 & 1;
        }
      }

      v60 = sub_1D17796E4(v42, *v38);

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1D186155C(v88, v25, type metadata accessor for CoordinationSnapshot.UpdateType);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
      v68 = *&v25[v67];
      v69 = swift_getEnumCaseMultiPayload();
      v71 = v86;
      v70 = v87;
      if (v69 != 3)
      {

        (*(v70 + 8))(v25, v71);
        goto LABEL_34;
      }

      v72 = *(v38 + v67);
      v73 = v81;
      (*(v87 + 32))(v81, v38, v86);
      v74 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v75 = *(v70 + 8);
      v75(v25, v71);
      if (v74)
      {
        v60 = sub_1D17798F8(v68, v72);

        v75(v73, v71);
        goto LABEL_27;
      }

      v75(v73, v71);
LABEL_40:

      sub_1D18615C4(v88, type metadata accessor for CoordinationSnapshot.UpdateType);
      goto LABEL_35;
    }

    sub_1D186155C(v88, v28, type metadata accessor for CoordinationSnapshot.UpdateType);
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
    v52 = *&v28[v51];
    v53 = swift_getEnumCaseMultiPayload();
    v55 = v86;
    v54 = v87;
    if (v53 != 2)
    {

      (*(v54 + 8))(v28, v55);
      goto LABEL_34;
    }

    v56 = *(v38 + v51);
    v57 = v80;
    (*(v87 + 32))(v80, v38, v86);
    v58 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v59 = *(v54 + 8);
    v59(v28, v55);
    if (v58)
    {
      v60 = sub_1D17798F8(v52, v56);

      v61 = v57;
      v62 = v55;
LABEL_23:
      v59(v61, v62);
LABEL_27:
      sub_1D18615C4(v88, type metadata accessor for CoordinationSnapshot.UpdateType);
      return v60 & 1;
    }

    v76 = v57;
    v77 = v55;
LABEL_38:
    v59(v76, v77);
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v43 = v84;
      sub_1D186155C(v88, v84, type metadata accessor for CoordinationSnapshot.UpdateType);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
      v45 = *(v43 + v44);
      v46 = swift_getEnumCaseMultiPayload();
      v48 = v86;
      v47 = v87;
      if (v46 == 4)
      {
        v49 = *(v38 + v44);
        v50 = v82;
        (*(v87 + 32))(v82, v38, v86);
LABEL_21:
        v66 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v59 = *(v47 + 8);
        v59(v43, v48);
        if (v66)
        {
          v60 = sub_1D1779BD4(v45, v49);

          v61 = v50;
          v62 = v48;
          goto LABEL_23;
        }

        v76 = v50;
        v77 = v48;
        goto LABEL_38;
      }
    }

    else
    {
      v43 = v85;
      sub_1D186155C(v88, v85, type metadata accessor for CoordinationSnapshot.UpdateType);
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
      v45 = *(v43 + v64);
      v65 = swift_getEnumCaseMultiPayload();
      v48 = v86;
      v47 = v87;
      if (v65 == 5)
      {
        v49 = *(v38 + v64);
        v50 = v83;
        (*(v87 + 32))(v83, v38, v86);
        goto LABEL_21;
      }
    }

    (*(v47 + 8))(v43, v48);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_1D186155C(v88, v18, type metadata accessor for CoordinationSnapshot.UpdateType);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_34;
    }

    v63 = *v18 ^ *v38;
    sub_1D18615C4(v88, type metadata accessor for CoordinationSnapshot.UpdateType);
    v60 = v63 ^ 1;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_34;
    }

    sub_1D18615C4(v88, type metadata accessor for CoordinationSnapshot.UpdateType);
    v60 = 1;
  }

  return v60 & 1;
}

unint64_t sub_1D186119C()
{
  result = qword_1EC6453F8;
  if (!qword_1EC6453F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6453F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetManager(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WidgetManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D1861284()
{
  sub_1D1861350();
  if (v0 <= 0x3F)
  {
    sub_1D18613A8(319, &unk_1EE07B240, &qword_1EC645400, &qword_1D1E79970);
    if (v1 <= 0x3F)
    {
      sub_1D18613A8(319, &qword_1EE07B238, &qword_1EC645408, &qword_1D1E79978);
      if (v2 <= 0x3F)
      {
        sub_1D186142C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1861350()
{
  if (!qword_1EE07B750)
  {
    sub_1D1E66A7C();
    v0 = sub_1D1E67D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B750);
    }
  }
}

void sub_1D18613A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1D1E66A7C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D186142C()
{
  result = qword_1EE07B6F8;
  if (!qword_1EE07B6F8)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE07B6F8);
  }

  return result;
}

uint64_t sub_1D186145C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1D1861470(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1D1861484(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D18614CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D18614E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D18614F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D186155C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18615C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void MTAlarm.alarmRepeatSchedule.getter(void *a1@<X8>)
{
  v3 = [v1 repeatSchedule];
  type metadata accessor for MTAlarmRepeatSchedule(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTAlarmRepeatSchedule;
  *a1 = v3;
}

double MTAlarm.mutableCopy()@<D0>(uint64_t a1@<X8>)
{
  v3.super_class = MEMORY[0x1E69B1FD8];
  objc_msgSendSuper2(&v3, sel_mutableCopy);
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E8, &unk_1D1E79C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D186172C()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D1E6781C();

  return v3;
}

void sub_1D18617B8()
{
  v1 = [*v0 alarmID];
  sub_1D1E66A5C();
}

uint64_t sub_1D1861818()
{
  v1 = [*v0 description];
  v2 = sub_1D1E6781C();

  return v2;
}

void sub_1D1861870(void *a1@<X8>)
{
  v3 = [*v1 repeatSchedule];
  type metadata accessor for MTAlarmRepeatSchedule(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTAlarmRepeatSchedule;
  *a1 = v3;
}

double sub_1D18618BC@<D0>(uint64_t a1@<X8>)
{
  v4.receiver = *v1;
  v4.super_class = MEMORY[0x1E69B1FD8];
  objc_msgSendSuper2(&v4, sel_mutableCopy);
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E8, &unk_1D1E79C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id (*sub_1D1861970(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 hour];
  return sub_1D18619C4;
}

id (*sub_1D18619EC(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 minute];
  return sub_1D1861A40;
}

void sub_1D1861A54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_1D1E677EC();
  }

  else
  {
    v4 = 0;
  }

  [v3 setTitle_];
}

void (*sub_1D1861AC4(uint64_t **a1))(void *a1)
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
  v3[4] = sub_1D1861B80(v3);
  return sub_1D1861B38;
}

void sub_1D1861B38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1D1861B80(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D1E6781C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1D1861C08;
}

void sub_1D1861C08(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = a1[1];

      v7 = sub_1D1E677EC();
    }

    else
    {
      v7 = 0;
    }

    [a1[2] setTitle_];
  }

  else if (v3)
  {
    v6 = *a1;
    v7 = sub_1D1E677EC();

    [a1[2] setTitle_];
  }

  else
  {
    v7 = 0;
    [a1[2] setTitle_];
  }
}

id (*sub_1D1861CF4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 isEnabled];
  return sub_1D1861D48;
}

uint64_t sub_1D1861D6C(uint64_t a1)
{
  result = sub_1D174A5B8(&qword_1EC6455F0, &qword_1EC6455F8, 0x1E69B1FD8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D1861DC0(uint64_t a1)
{
  result = sub_1D174A5B8(&qword_1EC645600, &qword_1EC645608, 0x1E69B1FE8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1861F7C()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 7);

  v3 = OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID;
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockAlarm()
{
  result = qword_1EC645610;
  if (!qword_1EC645610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D186207C()
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

uint64_t sub_1D186213C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 32) = a1;
  return result;
}

uint64_t (*sub_1D1862180())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D18621D4(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 40) = a1;
  return result;
}

uint64_t (*sub_1D1862218())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D186226C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 56);
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
}

uint64_t (*sub_1D18622C4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D1862318(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 72) = a1;
  return result;
}

uint64_t (*sub_1D186235C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D18623B0()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D1E6920C();
  (*(v2 + 16))(v5, v6 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v1);
  sub_1D1862A44(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  (*(v2 + 8))(v5, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18624F4()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v1);
  sub_1D1862A44(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D186262C()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v1);
  sub_1D1862A44(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  (*(v2 + 8))(v5, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D186277C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1D18627BC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_1D18627FC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

uint64_t sub_1D186284C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_1D186288C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D1862908()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

void sub_1D186293C(void *a1@<X8>)
{
  v2 = *(*v1 + 64);
  a1[3] = &type metadata for MockAlarmRepeatSchedule;
  a1[4] = &off_1F4D6BA40;
  *a1 = v2;
}

uint64_t sub_1D1862960@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for MockAlarm();
  a1[4] = sub_1D1862A44(&qword_1EC645638, type metadata accessor for MockAlarm);
  *a1 = v3;
}

uint64_t sub_1D18629EC(uint64_t a1)
{
  result = sub_1D1862A44(&qword_1EC645620, type metadata accessor for MockAlarm);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D1862A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1862AD4(uint64_t a1)
{
  result = sub_1D1862A44(&qword_1EC645630, type metadata accessor for MockAlarm);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1D1862B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-v10];
  v12 = v5[2];
  v12(&v22[-v10], a1 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v4);
  v12(v9, a2 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v4);
  v13 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v14 = v5[1];
  v14(v9, v4);
  v14(v11, v4);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 32);
  swift_beginAccess();
  if (v15 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  swift_beginAccess();
  if (v16 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  swift_beginAccess();
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19 || (v17 != *(a2 + 48) || v18 != v19) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 72);
  swift_beginAccess();
  if (v20 == *(a2 + 72))
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  return 0;
}

unint64_t sub_1D1862DD0()
{
  result = qword_1EC645640;
  if (!qword_1EC645640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645640);
  }

  return result;
}

id sub_1D1862E44(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741B10(0, &qword_1EC6455F8, 0x1E69B1FD8);
  swift_dynamicCast();
  v9 = v13;
  v10 = [v4 *a4];

  return v10;
}

id sub_1D1862F64()
{
  v1 = [*v0 alarms];

  return v1;
}

id sub_1D1862F9C(char a1)
{
  v2 = [*v1 alarmsIncludingSleepAlarm_];

  return v2;
}

id sub_1D1863060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *v5;
  v8 = sub_1D1E677EC();
  v9 = [v7 *a5];

  return v9;
}

id sub_1D18630B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D1866368;
  v11[3] = &block_descriptor_6;
  v8 = _Block_copy(v11);

  v9 = [v7 addObserverForName:a1 queue:a2 usingBlock:v8];
  _Block_release(v8);

  return v9;
}

id sub_1D18631AC()
{
  v1 = *v0;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v2 = sub_1D1E67BFC();
  v3 = [v1 alarmsForAccessories_];

  return v3;
}

id sub_1D1863220(uint64_t a1)
{
  v2 = [*v1 alarmsForAccessory_];

  return v2;
}

uint64_t sub_1D1863280@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_getObjectType();
  v6 = sub_1D1864C1C(a1, a2);

  result = swift_unknownObjectRelease();
  *a3 = v6;
  return result;
}

uint64_t sub_1D18633F8()
{
  v1 = [*(v0 + 24) keyEnumerator];
  v2 = [v1 allObjects];

  v3 = sub_1D1E67C1C();
  if (*(v3 + 16))
  {
    sub_1D1741970(v3 + 32, v6);

    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

id sub_1D18634E0(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
  v4 = result;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = [objc_opt_self() futureWithResult_];

    return v11;
  }

  result = sub_1D1E6873C();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(v1 + 24);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      ++v6;
      v10 = [v7 objectForKey_];
      [v4 setObject:v10 forKey:v9];
    }

    while (v5 != v6);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1863624()
{
  v1 = v0;
  v2 = sub_1D18633F8();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 40);
    if (*(v4 + 16) && (v5 = sub_1D174218C(0), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      MEMORY[0x1EEE9AC00](v5);

      sub_1D174767C(sub_1D18651CC, v7, &v20);

      if (*(&v21 + 1))
      {
        sub_1D18650EC(&v20);
        sub_1D1865178();
        v8 = swift_allocError();
        *v9 = 0xD000000000000010;
        v9[1] = 0x80000001D1EBB1D0;
        v10 = sub_1D1E6655C();
        v11 = [objc_opt_self() futureWithError_];

        return v11;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    sub_1D18650EC(&v20);
    v12 = *(v1 + 24);
    v13 = v3;
    v14 = [v12 objectForKey_];
    if (!v14)
    {
      sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
      v14 = MEMORY[0x1D3891AD0](MEMORY[0x1E69E7CC0]);
    }

    v15 = [v14 arrayByAddingObject_];
    result = swift_unknownObjectRelease();
    if (v15)
    {
      [v12 setObject:v15 forKey:v13];

      v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v11 = [objc_opt_self() futureWithResult_];

      return v11;
    }

    __break(1u);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v19 = [objc_opt_self() futureWithResult_];

    return v19;
  }

  return result;
}

id sub_1D1863904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(1u), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D186523C, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D18650EC(&v32);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB1B0;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D18650EC(&v32);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D1865220, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

id sub_1D1863BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(2u), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D186523C, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D18650EC(&v32);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB190;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D18650EC(&v32);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D1865154, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

uint64_t sub_1D1863EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D17419CC(v8, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
  swift_dynamicCast();
  v11 = *(*(a4 + 16) + 8);
  LOBYTE(a4) = sub_1D1E6775C();
  (*(v6 + 8))(v10, a3);
  return a4 & 1;
}

BOOL sub_1D1864014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-1] - v12;
  sub_1D1741970(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
  swift_dynamicCast();
  v15 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v14 + 56))(v15, v14);
  (*(a4 + 56))(v18, a4);
  sub_1D1797998();
  LOBYTE(v14) = sub_1D1E6775C();
  v16 = *(v7 + 8);
  v16(v11, v6);
  v16(v13, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return (v14 & 1) == 0;
}

unint64_t sub_1D18641FC()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1D1E6884C();

  v18 = 0xD00000000000001FLL;
  v19 = 0x80000001D1EBB170;
  v7 = sub_1D18633F8();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 uniqueIdentifier];

    sub_1D1E66A5C();
    v10 = sub_1D1E66A1C();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v12 = 0xE100000000000000;
    v10 = 63;
  }

  MEMORY[0x1D3890F70](v10, v12);

  MEMORY[0x1D3890F70](0x746144656B616620, 0xEA00000000003A61);
  v13 = [*(v1 + 24) description];
  v14 = sub_1D1E6781C();
  v16 = v15;

  MEMORY[0x1D3890F70](v14, v16);

  return v18;
}

uint64_t sub_1D18643D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_1D1864440()
{
  v1 = [*(*v0 + 24) objectEnumerator];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 allObjects];

    sub_1D1E67C1C();
  }

  v4 = sub_1D1E67BFC();

  v5 = [objc_opt_self() futureWithResult_];

  return v5;
}

id sub_1D1864580()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v1 = [objc_opt_self() futureWithResult_];

  return v1;
}

uint64_t sub_1D1864614()
{
  type metadata accessor for MockObserver();
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *v0;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v3 = sub_1D1864E5C((v2 + 32));
    result = swift_unknownObjectRelease();
    v4 = *(v2 + 32);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v6 = *(v2 + 32);
      }

      result = sub_1D1E6873C();
      v5 = result;
      if (result >= v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= v3)
      {
LABEL_4:
        sub_1D1CBFB68(v3, v5);
        return swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1D1864734(uint64_t a1)
{
  v2 = [*(*v1 + 24) objectForKey_];
  if (!v2)
  {
    sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
    v2 = MEMORY[0x1D3891AD0](MEMORY[0x1E69E7CC0]);
  }

  v3 = [objc_opt_self() futureWithResult_];

  return v3;
}

uint64_t sub_1D18647DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MockAlarmManager();
  swift_allocObject();
  v4 = sub_1D1864C6C(a1);

  result = swift_unknownObjectRelease();
  *a2 = v4;
  return result;
}

id sub_1D186486C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MockObserver()
{
  result = qword_1EC645650;
  if (!qword_1EC645650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1864978()
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

unint64_t sub_1D1864A28()
{
  result = qword_1EC645660;
  if (!qword_1EC645660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645660);
  }

  return result;
}

uint64_t sub_1D1864A7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D1E6873C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1D1E688CC();
}

unint64_t sub_1D1864B08(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_1D1E6873C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D3891EF0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v7 = sub_1D1E684FC();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_1D1864C1C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initForAccessory:a1 withConnectionProvider:a2];
}

void *sub_1D1864C6C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v2[4] = MEMORY[0x1E69E7CC0];
  v2[5] = sub_1D18D9328(v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
  v2[3] = v5;
  sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
  v6 = v5;
  v7 = MEMORY[0x1D3891AD0](v4);
  [v6 setObject:v7 forKey:a1];

  return v2;
}

id sub_1D1864D34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MockObserver();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13HomeDataModel12MockObserver_block];
  *v8 = 0;
  v8[1] = 0;
  sub_1D1E66A6C();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  sub_1D17169C0(v9);
  v15.receiver = v7;
  v15.super_class = v6;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  swift_beginAccess();
  v12 = v11;
  MEMORY[0x1D3891220]();
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D1E67C5C();
  }

  sub_1D1E67CAC();
  swift_endAccess();
  return v12;
}

unint64_t sub_1D1864E5C(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1D1864B08(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_1D1E6873C();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1EE07B260;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_1D1E6873C())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1D3891EF0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_1D1741B10(0, v8, 0x1E69E58C0);
    v12 = sub_1D1E684FC();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1D3891EF0](v6, v3);
          v14 = MEMORY[0x1D3891EF0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1D1864A7C(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_1D1864A7C(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1D1E6873C();
}

uint64_t sub_1D18650EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645670, &qword_1D1E7B950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1865178()
{
  result = qword_1EC645678;
  if (!qword_1EC645678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645678);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MTTimer.update<A>(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 timerByUpdatingWithState_];

  return v4;
}

void MTTimer.timerState.getter(void *a1@<X8>)
{
  v3 = [v1 state];
  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

void MTTimer.toggle()(uint64_t *a1@<X8>)
{
  if ([v1 state] == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

void sub_1D1865380(void *a1@<X8>)
{
  v3 = [*v1 state];
  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

void sub_1D18653F0()
{
  v1 = [*v0 timerID];
  sub_1D1E66A5C();
}

void sub_1D1865474(uint64_t *a1@<X8>)
{
  if ([*v1 state] == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

id sub_1D18654C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *v4;
  result = MTTimer.update<A>(state:)(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1D18654F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[3];
  v13 = (*(a3 + 8))(a2, a3);
  sub_1D1E66A6C();
  v14 = type metadata accessor for MockTimer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v12;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = v13;
  *(v17 + 56) = 0;
  (*(v8 + 16))(v17 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v11, v7);
  *(v17 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_currentTimer) = 0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EBB280);
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](0x696E69616D657220, 0xEB000000003A676ELL);
  sub_1D1E6811C();
  v18 = v22;
  v19 = v23;
  (*(v8 + 8))(v11, v7);
  v20 = (v17 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_description);
  *v20 = v18;
  v20[1] = v19;
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1D1865744()
{
  v1 = *(v0 + 5);

  v2 = OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID;
  v3 = sub_1D1E66A7C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC13HomeDataModel9MockTimer_description + 8];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1865814()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

void sub_1D1865848(void *a1@<X8>)
{
  v2 = *(*v1 + 48);
  a1[3] = &type metadata for MockTimerState;
  a1[4] = &off_1F4D6BDA8;
  *a1 = v2;
}

uint64_t sub_1D1865878@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D18658F4()
{
  v1 = (*v0 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_description);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_1D1865948(uint64_t *a1@<X8>)
{
  v2 = 2;
  if (*(*v1 + 48) == 2)
  {
    v2 = 3;
  }

  a1[3] = &type metadata for MockTimerState;
  a1[4] = &off_1F4D6BDA8;
  *a1 = v2;
}

uint64_t sub_1D1865978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *v4;
  result = sub_1D18654F4(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1D18659A4()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D1E6920C();
  (*(v2 + 16))(v5, v6 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v1);
  sub_1D18660B4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  (*(v2 + 8))(v5, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1865AE8()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v1);
  sub_1D18660B4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D1865C20()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  (*(v2 + 16))(v5, *v0 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v1);
  sub_1D18660B4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  (*(v2 + 8))(v5, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1865D7C(uint64_t a1)
{
  result = sub_1D18660B4(&qword_1EC645680, sub_1D1865DD4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1865DD4()
{
  result = qword_1EC645688;
  if (!qword_1EC645688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC645688);
  }

  return result;
}

uint64_t type metadata accessor for MockTimer()
{
  result = qword_1EC645690;
  if (!qword_1EC645690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1865F50()
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

uint64_t sub_1D186605C(uint64_t a1)
{
  result = sub_1D18660B4(&qword_1EC6456A8, type metadata accessor for MockTimer);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D18660B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D18660FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = v5[2];
  v12(&v19 - v10, a1 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v4);
  v12(v9, a2 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v4);
  v13 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v14 = v5[1];
  v14(v9, v4);
  v14(v11, v4);
  if ((v13 & 1) == 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_13;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (!v16 || (*(a1 + 32) != *(a2 + 32) || v15 != v16) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v16)
  {
    goto LABEL_13;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    v17 = *(a1 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_currentTimer) ^ *(a2 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_currentTimer) ^ 1;
    return v17 & 1;
  }

LABEL_13:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1D1866314()
{
  result = qword_1EC6456B0;
  if (!qword_1EC6456B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456B0);
  }

  return result;
}

uint64_t sub_1D1866368(uint64_t a1)
{
  v2 = sub_1D1E6604C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1D1E6602C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D1866504(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(BOOL, uint64_t, uint64_t))
{
  v39 = a6;
  v43 = a1;
  v44 = a2;
  v9 = a4(0);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v37 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = 0;
  v46 = a3;
  v21 = *(a3 + 64);
  v20 = a3 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v26 = v18;
    if (!v24)
    {
      break;
    }

LABEL_8:
    v27 = *(v45 + 72);
    v28 = v42;
    sub_1D1868934(*(v46 + 56) + v27 * (__clz(__rbit64(v24)) | (v18 << 6)), v42, a5);
    sub_1D186899C(v28, v17, a5);
    v29 = v43(v17);
    if (v6)
    {
      sub_1D1868A04(v17, a5);
      v36 = v41;

      return v36;
    }

    v24 &= v24 - 1;
    if (v29)
    {
      sub_1D186899C(v17, v40, a5);
      v30 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39(0, *(v30 + 16) + 1, 1);
        v30 = v47;
      }

      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v41 = v33 + 1;
        v38 = v33;
        v39(v32 > 1, v33 + 1, 1);
        v34 = v41;
        v33 = v38;
        v30 = v47;
      }

      *(v30 + 16) = v34;
      v35 = *(v45 + 80);
      v41 = v30;
      result = sub_1D186899C(v40, v30 + ((v35 + 32) & ~v35) + v33 * v27, a5);
    }

    else
    {
      result = sub_1D1868A04(v17, a5);
    }
  }

  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v25)
    {

      return v41;
    }

    v24 = *(v20 + 8 * v18);
    ++v26;
    if (v24)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18667F4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for StaticAccessory(0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  v15 = 0;
  v40 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v36 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

LABEL_8:
    v24 = *(v39 + 72);
    sub_1D1868934(*(v40 + 48) + v24 * (__clz(__rbit64(v21)) | (v15 << 6)), v11, type metadata accessor for StaticAccessory);
    sub_1D186899C(v11, v14, type metadata accessor for StaticAccessory);
    v25 = v37(v14);
    if (v3)
    {
      sub_1D1868A04(v14, type metadata accessor for StaticAccessory);
      v32 = v36;

      return v32;
    }

    v21 &= v21 - 1;
    if (v25)
    {
      sub_1D186899C(v14, v35, type metadata accessor for StaticAccessory);
      v26 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178CEB8(0, *(v26 + 16) + 1, 1);
        v26 = v41;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v36 = v29 + 1;
        v34 = v29;
        sub_1D178CEB8(v28 > 1, v29 + 1, 1);
        v30 = v36;
        v29 = v34;
        v26 = v41;
      }

      *(v26 + 16) = v30;
      v31 = *(v39 + 80);
      v36 = v26;
      result = sub_1D186899C(v35, v26 + ((v31 + 32) & ~v31) + v29 * v24, type metadata accessor for StaticAccessory);
    }

    else
    {
      result = sub_1D1868A04(v14, type metadata accessor for StaticAccessory);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v36;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1866B14(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = sub_1D1E666DC();
  v16[0] = *(v6 - 8);
  v7 = *(v16[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E684AC();

  sub_1D18688B0(&qword_1EC6456C8, MEMORY[0x1E6968EB0]);
  sub_1D1E685CC();
  if (v18)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v16[1] = a2;
    while (1)
    {
      sub_1D1742194(&v17, v19);
      v11 = a1(v19);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        sub_1D1742194(v19, &v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CFF0(0, *(v10 + 16) + 1, 1);
          v10 = v20;
        }

        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D178CFF0((v13 > 1), v14 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v14 + 1;
        sub_1D1742194(&v17, (v10 + 32 * v14 + 32));
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      sub_1D1E685CC();
      if (!v18)
      {
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    (*(v16[0] + 8))(v9, v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_13:
    (*(v16[0] + 8))(v9, v6);
    sub_1D1741A30(&v17, &qword_1EC649700, &qword_1D1E6E910);
  }

  return v10;
}

id sub_1D1866DAC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741B10(0, &qword_1EC645688, 0x1E69B1FF0);
  swift_dynamicCast();
  v9 = v13;
  v10 = [v4 *a4];

  return v10;
}

Swift::String __swiftcall COTimerManager.description()()
{
  v7.super_class = MEMORY[0x1E6997488];
  v0 = objc_msgSendSuper2(&v7, sel_description);
  v1 = sub_1D1E6781C();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

id sub_1D1866F38()
{
  v1 = [*v0 timers];

  return v1;
}

id sub_1D1866FDC()
{
  v1 = *v0;
  v2 = sub_1D1E677EC();
  v3 = [v1 dismissTimerWithIdentifier_];

  return v3;
}

id sub_1D186702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D1866368;
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);

  v9 = [v7 addObserverForName:a1 queue:a2 usingBlock:v8];
  _Block_release(v8);

  return v9;
}

uint64_t sub_1D186710C(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v2 removeObserver_];

  return swift_unknownObjectRelease();
}

id sub_1D186716C()
{
  v1 = *v0;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v2 = sub_1D1E67BFC();
  v3 = [v1 timersForAccessories_];

  return v3;
}

id sub_1D18671E0(uint64_t a1)
{
  v2 = [*v1 timersForAccessory_];

  return v2;
}

uint64_t sub_1D186730C()
{
  v1 = v0;
  v2 = sub_1D18633F8();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 40);
    if (*(v4 + 16) && (v5 = sub_1D174218C(0), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      MEMORY[0x1EEE9AC00](v5);

      sub_1D174767C(sub_1D18688F8, v7, &v20);

      if (*(&v21 + 1))
      {
        sub_1D1741A30(&v20, &qword_1EC6456C0, &unk_1D1E7A3F0);
        sub_1D1865178();
        v8 = swift_allocError();
        *v9 = 0xD000000000000010;
        v9[1] = 0x80000001D1EBB1D0;
        v10 = sub_1D1E6655C();
        v11 = [objc_opt_self() futureWithError_];

        return v11;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    sub_1D1741A30(&v20, &qword_1EC6456C0, &unk_1D1E7A3F0);
    v12 = *(v1 + 24);
    v13 = v3;
    v14 = [v12 objectForKey_];
    if (!v14)
    {
      sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
      v14 = MEMORY[0x1D3891AD0](MEMORY[0x1E69E7CC0]);
    }

    v15 = [v14 arrayByAddingObject_];
    result = swift_unknownObjectRelease();
    if (v15)
    {
      [v12 setObject:v15 forKey:v13];

      v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v11 = [objc_opt_self() futureWithResult_];

      return v11;
    }

    __break(1u);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v19 = [objc_opt_self() futureWithResult_];

    return v19;
  }

  return result;
}

id sub_1D186760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(1u), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D1868A80, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB1B0;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D1868A64, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

id sub_1D1867924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(2u), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D1868A80, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB190;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D186888C, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

uint64_t sub_1D1867C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D17419CC(v8, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
  swift_dynamicCast();
  v11 = *(*(a4 + 16) + 8);
  LOBYTE(a4) = sub_1D1E6775C();
  (*(v6 + 8))(v10, a3);
  return a4 & 1;
}

BOOL sub_1D1867D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-1] - v12;
  sub_1D1741970(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
  swift_dynamicCast();
  v15 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v14 + 64))(v15, v14);
  (*(a4 + 64))(v18, a4);
  sub_1D18688B0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  LOBYTE(v14) = sub_1D1E6775C();
  v16 = *(v7 + 8);
  v16(v11, v6);
  v16(v13, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return (v14 & 1) == 0;
}

void sub_1D1867F74(uint64_t a1)
{
  sub_1D1741970(a1, v8);
  type metadata accessor for MockObserver();
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    v2 = v7;
    v3 = sub_1D18685FC((v1 + 32));

    v4 = *(v1 + 32);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v6 = *(v1 + 32);
      }

      v5 = sub_1D1E6873C();
      if (v5 >= v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= v3)
      {
LABEL_4:
        sub_1D1CBFB68(v3, v5);
        swift_endAccess();

        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1D1868060()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1D1E6884C();

  v18 = 0xD00000000000001FLL;
  v19 = 0x80000001D1EBB2D0;
  v7 = sub_1D18633F8();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 uniqueIdentifier];

    sub_1D1E66A5C();
    v10 = sub_1D1E66A1C();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v12 = 0xE100000000000000;
    v10 = 63;
  }

  MEMORY[0x1D3890F70](v10, v12);

  MEMORY[0x1D3890F70](0x746144656B616620, 0xEA00000000003A61);
  v13 = [*(v1 + 24) description];
  v14 = sub_1D1E6781C();
  v16 = v15;

  MEMORY[0x1D3890F70](v14, v16);

  return v18;
}

unint64_t sub_1D1868270()
{
  result = qword_1EC6456B8;
  if (!qword_1EC6456B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456B8);
  }

  return result;
}

uint64_t sub_1D18683A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MockTimerManager();
  swift_allocObject();
  v4 = sub_1D1868404(a1);

  result = swift_unknownObjectRelease();
  *a2 = v4;
  return result;
}

void *sub_1D1868404(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v2[4] = MEMORY[0x1E69E7CC0];
  v2[5] = sub_1D18D9350(v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
  v2[3] = v5;
  sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
  v6 = v5;
  v7 = MEMORY[0x1D3891AD0](v4);
  [v6 setObject:v7 forKey:a1];

  return v2;
}

id sub_1D18684CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MockObserver();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13HomeDataModel12MockObserver_block];
  *v8 = 0;
  v8[1] = 0;
  sub_1D1E66A6C();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  sub_1D17169C0(v9);
  v15.receiver = v7;
  v15.super_class = v6;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  swift_beginAccess();
  v12 = v11;
  MEMORY[0x1D3891220]();
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D1E67C5C();
  }

  sub_1D1E67CAC();
  swift_endAccess();
  return v12;
}

unint64_t sub_1D18685FC(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1D1864B08(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_1D1E6873C();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1EE07B260;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_1D1E6873C())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1D3891EF0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_1D1741B10(0, v8, 0x1E69E58C0);
    v12 = sub_1D1E684FC();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1D3891EF0](v6, v3);
          v14 = MEMORY[0x1D3891EF0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1D186521C(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_1D186521C(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
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
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1D1E6873C();
}

uint64_t sub_1D18688B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1868934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D186899C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1868A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticAlarm.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StaticAlarm.repeatSchedule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t StaticAlarm.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticAlarm() + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StaticAlarm()
{
  result = qword_1EE07ADC8;
  if (!qword_1EE07ADC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticAlarm.parentContainerUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticAlarm() + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

_DWORD *static StaticAlarm.RepeatSchedule.== infix(_:_:)(_DWORD *result, _DWORD *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return (result[2] == a2[2]);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return (result[2] == a2[2]);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1868CB0()
{
  v1 = *v0;
  v2 = 1920298856;
  v3 = 25705;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6353746165706572;
  if (v1 != 3)
  {
    v4 = 0x656C62616E457369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574756E696DLL;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_1D1868D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D186DE70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1868DAC(uint64_t a1)
{
  v2 = sub_1D186CBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1868DE8(uint64_t a1)
{
  v2 = sub_1D186CBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAlarm.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6456D0, &qword_1D1E7A410);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186CBF4();
  sub_1D1E6930C();
  v11 = *v3;
  LOBYTE(v21) = 0;
  sub_1D1E68EFC();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v21) = 1;
    sub_1D1E68EFC();
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v21) = 2;
    sub_1D1E68E0C();
    v15 = *(v3 + 10);
    v21 = v3[4];
    v22 = v15;
    v23 = 3;
    sub_1D186CC48();

    sub_1D1E68F1C();

    v16 = *(v3 + 44);
    LOBYTE(v21) = 4;
    sub_1D1E68EDC();
    v17 = type metadata accessor for StaticAlarm();
    v18 = *(v17 + 36);
    LOBYTE(v21) = 5;
    sub_1D1E66A7C();
    sub_1D186D318(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1E68F1C();
    v19 = *(v17 + 40);
    LOBYTE(v21) = 6;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticAlarm.hash(into:)()
{
  v1 = v0;
  MEMORY[0x1D3892850](*v0);
  MEMORY[0x1D3892850](*(v0 + 8));
  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  MEMORY[0x1D3892850](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1D3892850](v7);
      --v5;
    }

    while (v5);
  }

  sub_1D1E6924C();
  v8 = *(v0 + 44);
  sub_1D1E6922C();
  v9 = type metadata accessor for StaticAlarm();
  v10 = *(v9 + 36);
  sub_1D1E66A7C();
  sub_1D186D318(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v11 = v1 + *(v9 + 40);
  return sub_1D1E676EC();
}

uint64_t StaticAlarm.hashValue.getter()
{
  sub_1D1E6920C();
  StaticAlarm.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticAlarm.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1D1E66A7C();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6456E8, &qword_1D1E7A418);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v35 - v12;
  v14 = type metadata accessor for StaticAlarm();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D186CBF4();
  v20 = v13;
  v21 = v42;
  sub_1D1E692FC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v22 = v9;
  v42 = v7;
  v23 = v39;
  v24 = v40;
  v25 = v37;
  v26 = v38;
  LOBYTE(v44) = 0;
  *v17 = sub_1D1E68D5C();
  LOBYTE(v44) = 1;
  *(v17 + 1) = sub_1D1E68D5C();
  LOBYTE(v44) = 2;
  *(v17 + 2) = sub_1D1E68C6C();
  *(v17 + 3) = v27;
  v46 = 3;
  sub_1D186CC9C();
  sub_1D1E68D7C();
  v28 = v45;
  *(v17 + 4) = v44;
  *(v17 + 10) = v28;
  LOBYTE(v44) = 4;
  v36 = 0;
  v17[44] = sub_1D1E68D3C() & 1;
  LOBYTE(v44) = 5;
  v35[1] = sub_1D186D318(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v29 = *(v14 + 36);
  v30 = *(v25 + 32);
  v36 = v17;
  v31 = v22;
  v32 = v30;
  v30(&v17[v29], v31, v26);
  LOBYTE(v44) = 6;
  sub_1D1E68D7C();
  (*(v24 + 8))(v20, v41);
  v33 = v36;
  v32(&v36[*(v14 + 40)], v42, v26);
  sub_1D186CCF0(v33, v23);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1D186CD54(v33);
}

uint64_t sub_1D1869798()
{
  sub_1D1E6920C();
  StaticAlarm.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D18697DC()
{
  sub_1D1E6920C();
  StaticAlarm.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1869848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_1D18698BC(void *a1, void *a2, uint64_t a3)
{
  v4 = __OFSUB__(*a1, *a2);
  v3 = (*a1 - *a2) < 0;
  if (*a1 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    v4 = __OFSUB__(v5, v6);
    v3 = v5 - v6 < 0;
    if (v5 == v6)
    {
      v7 = *(a3 + 36);
      JUMPOUT(0x1D3890070);
    }
  }

  return v3 != v4;
}

BOOL static StaticAlarm.< infix(_:_:)(void *a1, void *a2)
{
  v3 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v4 = a1[1];
    v5 = a2[1];
    v3 = v4 < v5;
    if (v4 == v5)
    {
      v6 = *(type metadata accessor for StaticAlarm() + 36);

      JUMPOUT(0x1D3890070);
    }
  }

  return v3;
}

BOOL sub_1D1869964(void *a1, void *a2, uint64_t a3)
{
  v3 = *a2 < *a1;
  if (*a2 == *a1 && (v4 = a2[1], v5 = a1[1], v3 = v4 < v5, v4 == v5))
  {
    v6 = MEMORY[0x1D3890070](a2 + *(a3 + 36), a1 + *(a3 + 36));
  }

  else
  {
    v6 = v3;
  }

  return (v6 & 1) == 0;
}

BOOL sub_1D18699C0(void *a1, void *a2, uint64_t a3)
{
  v3 = *a1 < *a2;
  if (*a1 == *a2 && (v4 = a1[1], v5 = a2[1], v3 = v4 < v5, v4 == v5))
  {
    v6 = MEMORY[0x1D3890070](a1 + *(a3 + 36), a2 + *(a3 + 36));
  }

  else
  {
    v6 = v3;
  }

  return (v6 & 1) == 0;
}

BOOL sub_1D1869A18(void *a1, void *a2, uint64_t a3)
{
  v4 = __OFSUB__(*a2, *a1);
  v3 = (*a2 - *a1) < 0;
  if (*a2 == *a1)
  {
    v5 = a2[1];
    v6 = a1[1];
    v4 = __OFSUB__(v5, v6);
    v3 = v5 - v6 < 0;
    if (v5 == v6)
    {
      v7 = *(a3 + 36);
      JUMPOUT(0x1D3890070);
    }
  }

  return v3 != v4;
}

uint64_t sub_1D1869A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = (*(a4 + 24))(a3, a4);
  *(a5 + 8) = (*(a4 + 32))(a3, a4);
  *(a5 + 16) = (*(a4 + 40))(a3, a4);
  *(a5 + 24) = v10;
  (*(a4 + 72))(v19, a3, a4);
  sub_1D1869C10(v19, &v20);
  v11 = v21;
  *(a5 + 32) = v20;
  *(a5 + 40) = v11;
  *(a5 + 44) = (*(a4 + 48))(a3, a4) & 1;
  v12 = *(a4 + 56);
  v13 = type metadata accessor for StaticAlarm();
  v14 = a5 + *(v13 + 36);
  v12(a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  v15 = *(v13 + 40);
  v16 = sub_1D1E66A7C();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a2, v16);
}

uint64_t sub_1D1869C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D186E308(a1, &v37);
  if (!v38)
  {
    sub_1D186E378(a1);
    result = sub_1D186E378(&v37);
    LODWORD(v5) = 0;
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  sub_1D16EEE20(&v37, v39);
  v5 = v40;
  v6 = v41;
  v7 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v8 = (*(v6 + 1))(v5, v6);
  v9 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
    __break(1u);
LABEL_48:
    v6 = sub_1D177DC90((v9 > 1), v7, 1, v6);
    goto LABEL_5;
  }

  LODWORD(v5) = v8;
  v10 = v40;
  v11 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if (((*(v11 + 2))(1, v10, v11) & 1) == 0)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v6 = sub_1D177DC90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v6 + 2);
  v9 = *(v6 + 3);
  v7 = (v2 + 1);
  if (v2 >= v9 >> 1)
  {
    goto LABEL_48;
  }

LABEL_5:
  *(v6 + 2) = v7;
  v6[v2 + 32] = 0;
LABEL_8:
  v13 = v40;
  v14 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v14 + 2))(2, v13, v14))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1D177DC90((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    v6[v16 + 32] = 1;
  }

  v17 = v40;
  v18 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v18 + 2))(4, v17, v18))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v20 = *(v6 + 2);
    v19 = *(v6 + 3);
    if (v20 >= v19 >> 1)
    {
      v6 = sub_1D177DC90((v19 > 1), v20 + 1, 1, v6);
    }

    *(v6 + 2) = v20 + 1;
    v6[v20 + 32] = 2;
  }

  v21 = v40;
  v22 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v22 + 2))(8, v21, v22))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v24 = *(v6 + 2);
    v23 = *(v6 + 3);
    if (v24 >= v23 >> 1)
    {
      v6 = sub_1D177DC90((v23 > 1), v24 + 1, 1, v6);
    }

    *(v6 + 2) = v24 + 1;
    v6[v24 + 32] = 3;
  }

  v25 = v40;
  v26 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v26 + 2))(16, v25, v26))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v28 = *(v6 + 2);
    v27 = *(v6 + 3);
    if (v28 >= v27 >> 1)
    {
      v6 = sub_1D177DC90((v27 > 1), v28 + 1, 1, v6);
    }

    *(v6 + 2) = v28 + 1;
    v6[v28 + 32] = 4;
  }

  v29 = v40;
  v30 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v30 + 2))(32, v29, v30))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v32 = *(v6 + 2);
    v31 = *(v6 + 3);
    if (v32 >= v31 >> 1)
    {
      v6 = sub_1D177DC90((v31 > 1), v32 + 1, 1, v6);
    }

    *(v6 + 2) = v32 + 1;
    v6[v32 + 32] = 5;
  }

  v33 = v40;
  v34 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v34 + 2))(64, v33, v34))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v36 = *(v6 + 2);
    v35 = *(v6 + 3);
    if (v36 >= v35 >> 1)
    {
      v6 = sub_1D177DC90((v35 > 1), v36 + 1, 1, v6);
    }

    sub_1D186E378(a1);
    *(v6 + 2) = v36 + 1;
    v6[v36 + 32] = 6;
  }

  else
  {
    sub_1D186E378(a1);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_46:
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t StaticAlarm.time.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = sub_1D1E669FC();
  v27 = *(v29 - 8);
  v1 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E66BBC();
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D1E662EC();
  v26 = *(v28 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66B4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643938, &qword_1D1E7A420);
  v11 = sub_1D1E66BAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D1E7A400;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E6969A88], v11);
  v17(v16 + v13, *MEMORY[0x1E6969A58], v11);
  v17(v16 + 2 * v13, *MEMORY[0x1E6969AB0], v11);
  v17(v16 + 3 * v13, *MEMORY[0x1E6969A30], v11);
  v17(v16 + 4 * v13, *MEMORY[0x1E6969A78], v11);
  v17(v16 + 5 * v13, *MEMORY[0x1E6969A68], v11);
  sub_1D179C3D0(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E66B1C();

  (*(v27 + 8))(v3, v29);
  v18 = v25;
  v19 = *(v24 + 8);
  v19(v7, v25);
  v20 = v30;
  v21 = *v30;
  sub_1D1E6625C();
  v22 = v20[1];
  sub_1D1E6628C();
  sub_1D1E66B4C();
  sub_1D1E66B5C();
  v19(v7, v18);
  return (*(v26 + 8))(v10, v28);
}

uint64_t sub_1D186A59C()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D186A668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D186E0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D186A690(uint64_t a1)
{
  v2 = sub_1D186CDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A6CC(uint64_t a1)
{
  v2 = sub_1D186CDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A708(uint64_t a1)
{
  v2 = sub_1D186CEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A744(uint64_t a1)
{
  v2 = sub_1D186CEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A780(uint64_t a1)
{
  v2 = sub_1D186CFFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A7BC(uint64_t a1)
{
  v2 = sub_1D186CFFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A7F8(uint64_t a1)
{
  v2 = sub_1D186CE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A834(uint64_t a1)
{
  v2 = sub_1D186CE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A870(uint64_t a1)
{
  v2 = sub_1D186CE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A8AC(uint64_t a1)
{
  v2 = sub_1D186CE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A8E8(uint64_t a1)
{
  v2 = sub_1D186CF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A924(uint64_t a1)
{
  v2 = sub_1D186CF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A960(uint64_t a1)
{
  v2 = sub_1D186CFA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A99C(uint64_t a1)
{
  v2 = sub_1D186CFA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A9D8(uint64_t a1)
{
  v2 = sub_1D186CF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186AA14(uint64_t a1)
{
  v2 = sub_1D186CF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAlarm.RepeatSchedule.Day.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6456F8, &qword_1D1E7A428);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645700, &qword_1D1E7A430);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645708, &qword_1D1E7A438);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645710, &qword_1D1E7A440);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645718, &qword_1D1E7A448);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645720, &qword_1D1E7A450);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645728, &qword_1D1E7A458);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645730, &qword_1D1E7A460);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186CDB0();
  v65 = v28;
  sub_1D1E6930C();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        sub_1D186CFA8();
        v42 = v65;
        v41 = v66;
        sub_1D1E68DFC();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        sub_1D186CF54();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        sub_1D1E68DFC();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      sub_1D186CFFC();
      v43 = v65;
      v44 = v66;
      sub_1D1E68DFC();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        sub_1D186CE58();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        sub_1D1E68DFC();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        sub_1D186CE04();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        sub_1D1E68DFC();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      sub_1D186CF00();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      sub_1D1E68DFC();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      sub_1D186CEAC();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      sub_1D1E68DFC();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

uint64_t StaticAlarm.RepeatSchedule.Day.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticAlarm.RepeatSchedule.Day.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645778, &qword_1D1E7A468);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645780, &qword_1D1E7A470);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645788, &qword_1D1E7A478);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645790, &qword_1D1E7A480);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645798, &qword_1D1E7A488);
  v62 = *(v63 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457A0, &qword_1D1E7A490);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457A8, &qword_1D1E7A498);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457B0, &unk_1D1E7A4A0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D186CDB0();
  v31 = v79;
  sub_1D1E692FC();
  if (!v31)
  {
    v32 = v23;
    v57 = v20;
    v58 = v19;
    v33 = v75;
    v34 = v76;
    v35 = v77;
    v79 = v25;
    v36 = sub_1D1E68DDC();
    v37 = (2 * *(v36 + 16)) | 1;
    v80 = v36;
    v81 = v36 + 32;
    v82 = 0;
    v83 = v37;
    v38 = sub_1D18085C4();
    v39 = v28;
    if (v38 != 7 && v82 == v83 >> 1)
    {
      v84 = v38;
      if (v38 > 2u)
      {
        if (v38 > 4u)
        {
          v42 = v74;
          v53 = v79;
          if (v38 == 5)
          {
            v85 = 5;
            sub_1D186CE58();
            v54 = v72;
            sub_1D1E68C4C();
            (*(v68 + 8))(v54, v69);
          }

          else
          {
            v85 = 6;
            sub_1D186CE04();
            sub_1D1E68C4C();
            (*(v70 + 8))(v35, v71);
          }

          (*(v53 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v78;
        }

        else
        {
          v40 = v78;
          v41 = v79;
          v42 = v74;
          if (v38 == 3)
          {
            v85 = 3;
            sub_1D186CF00();
            sub_1D1E68C4C();
            (*(v64 + 8))(v33, v65);
          }

          else
          {
            v85 = 4;
            sub_1D186CEAC();
            sub_1D1E68C4C();
            (*(v66 + 8))(v34, v67);
          }

          (*(v41 + 8))(v39, v24);
          swift_unknownObjectRelease();
          v47 = v40;
        }

        goto LABEL_24;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          v85 = 2;
          sub_1D186CF54();
          v56 = v73;
          sub_1D1E68C4C();
          v50 = *(v62 + 8);
          v51 = v56;
          v55 = v63;
          goto LABEL_19;
        }

        v85 = 1;
        sub_1D186CFA8();
        v49 = v58;
        sub_1D1E68C4C();
        v50 = *(v60 + 8);
        v51 = v49;
        v52 = &v87;
      }

      else
      {
        v85 = 0;
        sub_1D186CFFC();
        sub_1D1E68C4C();
        v50 = *(v59 + 8);
        v51 = v32;
        v52 = &v86;
      }

      v55 = *(v52 - 32);
LABEL_19:
      v50(v51, v55);
      (*(v79 + 8))(v39, v24);
      swift_unknownObjectRelease();
      v47 = v78;
      v42 = v74;
LABEL_24:
      *v42 = v84;
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v43 = sub_1D1E688EC();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v45 = &type metadata for StaticAlarm.RepeatSchedule.Day;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v79 + 8))(v39, v24);
    swift_unknownObjectRelease();
  }

  v47 = v78;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

id StaticAlarm.RepeatSchedule.detailDescription.getter()
{
  v1 = *(v0 + 8);
  result = DetailDateMaskToString();
  if (result)
  {
    v3 = result;
    v4 = sub_1D1E6781C();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D186BB98()
{
  if (*v0)
  {
    result = 0x65756C6156776172;
  }

  else
  {
    result = 1937334628;
  }

  *v0;
  return result;
}

uint64_t sub_1D186BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

uint64_t sub_1D186BCA8(uint64_t a1)
{
  v2 = sub_1D186D050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186BCE4(uint64_t a1)
{
  v2 = sub_1D186D050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAlarm.RepeatSchedule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457B8, &qword_1D1E7A4B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[2] = *(v1 + 2);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186D050();

  sub_1D1E6930C();
  v15 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457C8, &qword_1D1E7A4B8);
  sub_1D186D0F8(&qword_1EC6457D0, sub_1D186D0A4);
  sub_1D1E68F1C();

  if (!v2)
  {
    v13 = 1;
    sub_1D1E68F5C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StaticAlarm.RepeatSchedule.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  MEMORY[0x1D3892850](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  return sub_1D1E6924C();
}

uint64_t StaticAlarm.RepeatSchedule.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t StaticAlarm.RepeatSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457E0, &unk_1D1E7A4C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186D050();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457C8, &qword_1D1E7A4B8);
  v14[15] = 0;
  sub_1D186D0F8(&qword_1EC6457E8, sub_1D186D170);
  sub_1D1E68D7C();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_1D1E68DBC();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D186C1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D177A25C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1D186C248()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  sub_1D1E6924C();
  return sub_1D1E6926C();
}

Swift::Void __swiftcall StaticAlarm.setEnable(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for StaticAlarm();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1D1E67E7C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D186CCF0(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1D186D1C4(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1D17C7504(0, 0, v8, &unk_1D1E7A4D8, v11);
}

uint64_t sub_1D186C48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D186C4AC, 0, 0);
}

uint64_t sub_1D186C4AC()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C544, v2, v1);
}

uint64_t sub_1D186C544()
{
  v1 = *(v0 + 40);

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D186C5DC, 0, 0);
}

uint64_t sub_1D186C5DC()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C668, v3, v2);
}

uint64_t sub_1D186C668()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = type metadata accessor for StaticAlarm();
  v4 = *(v3 + 36);
  v5 = *(v3 + 40);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D186E3E4;
  v7 = v0[2];

  return CoordinationDataModel.toggleAlarm(staticAlarmID:parentContainerID:)(v7, v2 + v4, v2 + v5);
}

uint64_t StaticAlarm.delete()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D186C750, 0, 0);
}

uint64_t sub_1D186C750()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C7E8, v2, v1);
}

uint64_t sub_1D186C7E8()
{
  v1 = *(v0 + 40);

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D186C880, 0, 0);
}

uint64_t sub_1D186C880()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C90C, v3, v2);
}

uint64_t sub_1D186C90C()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = type metadata accessor for StaticAlarm();
  v4 = *(v3 + 36);
  v5 = *(v3 + 40);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D186C9D4;
  v7 = v0[2];

  return CoordinationDataModel.deleteAlarm(_:parentContainerID:)(v7, v2 + v4, v2 + v5);
}

uint64_t sub_1D186C9D4()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s13HomeDataModel11StaticAlarmV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v2 != v3)
    {
      v4 = a1;
      v5 = *(a1 + 16);
      v6 = a2;
      v7 = sub_1D1E6904C();
      a2 = v6;
      v8 = v7;
      a1 = v4;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  v11 = a1;
  v12 = a2;
  if ((sub_1D177A25C(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (v9 != v10)
  {
    return 0;
  }

  if (*(v11 + 44) != *(v12 + 44))
  {
    return 0;
  }

  v13 = type metadata accessor for StaticAlarm();
  v14 = *(v13 + 36);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v13 + 40);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D186CBF4()
{
  result = qword_1EC6456D8;
  if (!qword_1EC6456D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456D8);
  }

  return result;
}

unint64_t sub_1D186CC48()
{
  result = qword_1EC6456E0;
  if (!qword_1EC6456E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456E0);
  }

  return result;
}

unint64_t sub_1D186CC9C()
{
  result = qword_1EC6456F0;
  if (!qword_1EC6456F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456F0);
  }

  return result;
}

uint64_t sub_1D186CCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAlarm();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D186CD54(uint64_t a1)
{
  v2 = type metadata accessor for StaticAlarm();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D186CDB0()
{
  result = qword_1EC645738;
  if (!qword_1EC645738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645738);
  }

  return result;
}

unint64_t sub_1D186CE04()
{
  result = qword_1EC645740;
  if (!qword_1EC645740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645740);
  }

  return result;
}

unint64_t sub_1D186CE58()
{
  result = qword_1EC645748;
  if (!qword_1EC645748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645748);
  }

  return result;
}

unint64_t sub_1D186CEAC()
{
  result = qword_1EC645750;
  if (!qword_1EC645750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645750);
  }

  return result;
}

unint64_t sub_1D186CF00()
{
  result = qword_1EC645758;
  if (!qword_1EC645758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645758);
  }

  return result;
}

unint64_t sub_1D186CF54()
{
  result = qword_1EC645760;
  if (!qword_1EC645760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645760);
  }

  return result;
}

unint64_t sub_1D186CFA8()
{
  result = qword_1EC645768;
  if (!qword_1EC645768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645768);
  }

  return result;
}

unint64_t sub_1D186CFFC()
{
  result = qword_1EC645770;
  if (!qword_1EC645770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645770);
  }

  return result;
}

unint64_t sub_1D186D050()
{
  result = qword_1EC6457C0;
  if (!qword_1EC6457C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6457C0);
  }

  return result;
}

unint64_t sub_1D186D0A4()
{
  result = qword_1EC6457D8;
  if (!qword_1EC6457D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6457D8);
  }

  return result;
}

uint64_t sub_1D186D0F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6457C8, &qword_1D1E7A4B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D186D170()
{
  result = qword_1EC6457F0;
  if (!qword_1EC6457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6457F0);
  }

  return result;
}

uint64_t sub_1D186D1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAlarm();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D186D228(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticAlarm() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D186C48C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D186D318(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D186D3AC()
{
  result = qword_1EC645800;
  if (!qword_1EC645800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645800);
  }

  return result;
}

unint64_t sub_1D186D404()
{
  result = qword_1EC645808;
  if (!qword_1EC645808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645808);
  }

  return result;
}

void sub_1D186D480()
{
  sub_1D17786E4();
  if (v0 <= 0x3F)
  {
    sub_1D1E66A7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D186D540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1D186D588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D186D68C()
{
  result = qword_1EC645810;
  if (!qword_1EC645810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645810);
  }

  return result;
}

unint64_t sub_1D186D6E4()
{
  result = qword_1EC645818;
  if (!qword_1EC645818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645818);
  }

  return result;
}

unint64_t sub_1D186D73C()
{
  result = qword_1EC645820;
  if (!qword_1EC645820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645820);
  }

  return result;
}

unint64_t sub_1D186D794()
{
  result = qword_1EC645828;
  if (!qword_1EC645828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645828);
  }

  return result;
}

unint64_t sub_1D186D7EC()
{
  result = qword_1EC645830;
  if (!qword_1EC645830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645830);
  }

  return result;
}

unint64_t sub_1D186D844()
{
  result = qword_1EC645838;
  if (!qword_1EC645838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645838);
  }

  return result;
}

unint64_t sub_1D186D89C()
{
  result = qword_1EC645840;
  if (!qword_1EC645840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645840);
  }

  return result;
}

unint64_t sub_1D186D8F4()
{
  result = qword_1EC645848;
  if (!qword_1EC645848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645848);
  }

  return result;
}

unint64_t sub_1D186D94C()
{
  result = qword_1EC645850;
  if (!qword_1EC645850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645850);
  }

  return result;
}

unint64_t sub_1D186D9A4()
{
  result = qword_1EC645858;
  if (!qword_1EC645858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645858);
  }

  return result;
}

unint64_t sub_1D186D9FC()
{
  result = qword_1EC645860;
  if (!qword_1EC645860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645860);
  }

  return result;
}

unint64_t sub_1D186DA54()
{
  result = qword_1EC645868;
  if (!qword_1EC645868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645868);
  }

  return result;
}

unint64_t sub_1D186DAAC()
{
  result = qword_1EC645870;
  if (!qword_1EC645870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645870);
  }

  return result;
}

unint64_t sub_1D186DB04()
{
  result = qword_1EC645878;
  if (!qword_1EC645878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645878);
  }

  return result;
}

unint64_t sub_1D186DB5C()
{
  result = qword_1EC645880;
  if (!qword_1EC645880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645880);
  }

  return result;
}

unint64_t sub_1D186DBB4()
{
  result = qword_1EC645888;
  if (!qword_1EC645888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645888);
  }

  return result;
}

unint64_t sub_1D186DC0C()
{
  result = qword_1EC645890;
  if (!qword_1EC645890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645890);
  }

  return result;
}

unint64_t sub_1D186DC64()
{
  result = qword_1EC645898;
  if (!qword_1EC645898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645898);
  }

  return result;
}

unint64_t sub_1D186DCBC()
{
  result = qword_1EC6458A0;
  if (!qword_1EC6458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458A0);
  }

  return result;
}

unint64_t sub_1D186DD14()
{
  result = qword_1EC6458A8;
  if (!qword_1EC6458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458A8);
  }

  return result;
}

unint64_t sub_1D186DD6C()
{
  result = qword_1EC6458B0;
  if (!qword_1EC6458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458B0);
  }

  return result;
}

unint64_t sub_1D186DDC4()
{
  result = qword_1EC6458B8;
  if (!qword_1EC6458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458B8);
  }

  return result;
}

unint64_t sub_1D186DE1C()
{
  result = qword_1EC6458C0;
  if (!qword_1EC6458C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458C0);
  }

  return result;
}

uint64_t sub_1D186DE70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6353746165706572 && a2 == 0xEE00656C75646568 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBB2F0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D186E0C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7961646E6F6DLL && a2 == 0xE600000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616473657574 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616473656E646577 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961647372756874 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796164697266 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961647275746173 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7961646E7573 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D186E308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458C8, &unk_1D1E7B090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D186E378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458C8, &unk_1D1E7B090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id StaticCoordinationData.alarmError.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D1741C70(v2);
}

id StaticCoordinationData.timerError.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D1741C70(v2);
}

uint64_t sub_1D186E41C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2 > 5)
  {
    sub_1D1741C70(*(v0 + 16));
  }

  else if (v2 == 2)
  {
    v3 = 1;
    goto LABEL_12;
  }

  sub_1D1741C70(v2);
  sub_1D1741C70(v2);
  sub_1D1741C70(v2);
  sub_1D1757B18(v2);
  sub_1D1757B18(2);
  v3 = 1;
  if (v2 == 3)
  {
LABEL_12:
    v1 = v2;
    goto LABEL_13;
  }

  if (v2 == 4)
  {
    v4 = 3;
    v1 = 4;
    v5 = 4;
    goto LABEL_8;
  }

  if (v2 != 5)
  {
    sub_1D1757B18(v2);
    sub_1D1757B18(3);
    sub_1D1757B18(v2);
    sub_1D1757B18(4);
    sub_1D1757B18(v2);
    sub_1D1757B18(5);
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    sub_1D1741C70(v1);
    sub_1D1741C70(v1);
    sub_1D1757B18(v1);
    sub_1D1757B18(2);
    if (v1 > 2)
    {
      switch(v1)
      {
        case 3:
          v2 = 3;
          goto LABEL_13;
        case 4:
          v4 = 3;
          v2 = 4;
          v5 = 4;
          goto LABEL_8;
        case 5:
          v2 = 5;
          sub_1D1757B18(5);
          sub_1D1757B18(3);
          v4 = 4;
          v5 = 5;
          goto LABEL_8;
      }

LABEL_27:
      v7 = v1;
      sub_1D1757B18(v1);
      sub_1D1757B18(3);
      v8 = v7;
      v3 = 0;
      v5 = 5;
      v4 = 4;
      v2 = v1;
      goto LABEL_8;
    }

    if (v1)
    {
      if (v1 != 1)
      {
        goto LABEL_27;
      }

      v2 = 1;
      sub_1D1757B18(1);
      sub_1D1757B18(3);
    }

    else
    {
      sub_1D1757B18(0);
      sub_1D1757B18(3);
      v2 = 0;
    }

    v3 = 0;
    v5 = 5;
    v4 = 4;
    goto LABEL_8;
  }

  sub_1D1757B18(5);
  sub_1D1757B18(3);
  v4 = 4;
  v1 = 5;
  v5 = 5;
LABEL_8:
  sub_1D1757B18(v2);
  sub_1D1757B18(v4);
  v2 = v1;
  v1 = v5;
LABEL_13:
  sub_1D1757B18(v2);
  sub_1D1757B18(v1);
  return v3;
}

uint64_t StaticCoordinationData.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D176FB98(a1, *v1);
  sub_1D176F8E4(a1, v3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 5;
        break;
      case 5:
        v6 = 6;
        break;
      default:
        goto LABEL_12;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 2;
        goto LABEL_20;
      }

LABEL_12:
      MEMORY[0x1D3892850](4);
      sub_1D1E6850C();
      if (v4 <= 2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_20:
  MEMORY[0x1D3892850](v6);
  if (v4 <= 2)
  {
LABEL_21:
    switch(v4)
    {
      case 0:
        v7 = 0;
        return MEMORY[0x1D3892850](v7);
      case 1:
        v7 = 1;
        return MEMORY[0x1D3892850](v7);
      case 2:
        v7 = 2;
        return MEMORY[0x1D3892850](v7);
    }

LABEL_26:
    MEMORY[0x1D3892850](4);
    return sub_1D1E6850C();
  }

LABEL_13:
  switch(v4)
  {
    case 3:
      v7 = 3;
      break;
    case 4:
      v7 = 5;
      return MEMORY[0x1D3892850](v7);
    case 5:
      v7 = 6;
      break;
    default:
      goto LABEL_26;
  }

  return MEMORY[0x1D3892850](v7);
}

uint64_t StaticCoordinationData.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D176FB98(v8, v1);
  sub_1D176F8E4(v8, v2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = 3;
        break;
      case 4:
        v5 = 5;
        break;
      case 5:
        v5 = 6;
        break;
      default:
        goto LABEL_12;
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = 2;
        goto LABEL_20;
      }

LABEL_12:
      MEMORY[0x1D3892850](4);
      sub_1D1E6850C();
      if (v3 <= 2)
      {
        goto LABEL_21;
      }

LABEL_13:
      switch(v3)
      {
        case 3:
          v6 = 3;
          break;
        case 4:
          v6 = 5;
          break;
        case 5:
          v6 = 6;
          break;
        default:
          goto LABEL_26;
      }

LABEL_29:
      MEMORY[0x1D3892850](v6);
      return sub_1D1E6926C();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

LABEL_20:
  MEMORY[0x1D3892850](v5);
  if (v3 > 2)
  {
    goto LABEL_13;
  }

LABEL_21:
  switch(v3)
  {
    case 0:
      v6 = 0;
      goto LABEL_29;
    case 1:
      v6 = 1;
      goto LABEL_29;
    case 2:
      v6 = 2;
      goto LABEL_29;
  }

LABEL_26:
  MEMORY[0x1D3892850](4);
  sub_1D1E6850C();
  return sub_1D1E6926C();
}

uint64_t sub_1D186E93C(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D176FB98(a1, *v1);
  sub_1D176F8E4(a1, v3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 5;
        break;
      case 5:
        v6 = 6;
        break;
      default:
        goto LABEL_12;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 2;
        goto LABEL_20;
      }

LABEL_12:
      MEMORY[0x1D3892850](4);
      sub_1D1E6850C();
      if (v4 <= 2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_20:
  MEMORY[0x1D3892850](v6);
  if (v4 <= 2)
  {
LABEL_21:
    switch(v4)
    {
      case 0:
        v7 = 0;
        return MEMORY[0x1D3892850](v7);
      case 1:
        v7 = 1;
        return MEMORY[0x1D3892850](v7);
      case 2:
        v7 = 2;
        return MEMORY[0x1D3892850](v7);
    }

LABEL_26:
    MEMORY[0x1D3892850](4);
    return sub_1D1E6850C();
  }

LABEL_13:
  switch(v4)
  {
    case 3:
      v7 = 3;
      break;
    case 4:
      v7 = 5;
      return MEMORY[0x1D3892850](v7);
    case 5:
      v7 = 6;
      break;
    default:
      goto LABEL_26;
  }

  return MEMORY[0x1D3892850](v7);
}

uint64_t sub_1D186EA90()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StaticCoordinationData.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel018StaticCoordinationB0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (sub_1D17798F8(*a1, *a2) & 1) != 0 && (sub_1D1779BD4(v2, v5) & 1) != 0 && (v11 = v7, v12 = v4, sub_1D1741C70(v4), sub_1D1741C70(v7), v8 = _s13HomeDataModel012CoordinationbC0C6ErrorsO2eeoiySbAE_AEtFZ_0(&v12, &v11), sub_1D1757B18(v11), sub_1D1757B18(v12), (v8))
  {
    v11 = v6;
    v12 = v3;
    sub_1D1741C70(v3);
    sub_1D1741C70(v6);
    v9 = _s13HomeDataModel012CoordinationbC0C6ErrorsO2eeoiySbAE_AEtFZ_0(&v12, &v11);
    sub_1D1757B18(v11);
    sub_1D1757B18(v12);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1D186EBB8()
{
  result = qword_1EC6458D0;
  if (!qword_1EC6458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel012CoordinationbC0C6ErrorsO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D186EC24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D186EC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StaticTimer.creationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTimer() + 20);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StaticTimer()
{
  result = qword_1EE07AD20;
  if (!qword_1EE07AD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticTimer.title.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticTimer() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticTimer.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticTimer();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StaticTimer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTimer() + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticTimer.parentContainerUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTimer() + 44);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D186EF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for StaticTimer();
  v30 = *(v12 - 1);
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a5 + 80))(a4, a5))
  {
    v16 = sub_1D1E669FC();
    (*(*(v16 - 8) + 8))(a3, v16);
    v17 = sub_1D1E66A7C();
    (*(*(v17 - 8) + 8))(a2, v17);
    (*(*(a4 - 8) + 8))(a1, a4);
    v18 = *(v30 + 56);

    return v18(a6, 1, 1, v12);
  }

  else
  {
    *v15 = (*(a5 + 24))(a4, a5);
    v29 = a2;
    v20 = v12[5];
    v21 = sub_1D1E669FC();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v15 + v20, a3, v21);
    *(v15 + v12[6]) = (*(a5 + 32))(a4, a5);
    v23 = (*(a5 + 40))(a4, a5);
    v24 = (v15 + v12[7]);
    *v24 = v23;
    v24[1] = v25;
    (*(a5 + 48))(v31, a4, a5);
    sub_1D186F330(v31, &v32);
    *(v15 + v12[8]) = v32;
    *(v15 + v12[9]) = (*(a5 + 56))(a4, a5) & 1;
    v26 = v15 + v12[10];
    (*(a5 + 64))(a4, a5);
    (*(v22 + 8))(a3, v21);
    (*(*(a4 - 8) + 8))(a1, a4);
    v27 = v12[11];
    v28 = sub_1D1E66A7C();
    (*(*(v28 - 8) + 32))(v15 + v27, v29, v28);
    sub_1D187149C(v15, a6);
    return (*(v30 + 56))(a6, 0, 1, v12);
  }
}

uint64_t sub_1D186F330@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D1871500(a1, &v8);
  if (v9)
  {
    sub_1D16EEE20(&v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 8))(v4, v5);
    sub_1D1871570(a1);
    if (v6 != 2 && v6 != 3)
    {
      LOBYTE(v6) = v6 == 1;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1D1871570(a1);
    result = sub_1D1871570(&v8);
    LOBYTE(v6) = 0;
  }

  *a2 = v6;
  return result;
}

BOOL static StaticTimer.< infix(_:_:)()
{
  v0 = StaticTimer.calculatedRemainingTime()();
  v1 = StaticTimer.calculatedRemainingTime()();
  if (v0 == v1)
  {
    v2 = *(type metadata accessor for StaticTimer() + 40);

    JUMPOUT(0x1D3890070);
  }

  return v0 < v1;
}

Swift::Double __swiftcall StaticTimer.calculatedRemainingTime()()
{
  v1 = type metadata accessor for StaticTimer();
  v2 = *(v0 + v1[8]);
  if (v2 == 1)
  {
    return *(v0 + v1[6]);
  }

  if (v2 == 2)
  {
    return *v0;
  }

  result = 0.0;
  if (v2 == 3)
  {
    v4 = *v0;
    v5 = v0 + v1[5];
    sub_1D1E6697C();
    return v4 + v6;
  }

  return result;
}

unint64_t sub_1D186F508()
{
  v1 = *v0;
  v2 = 0x6E696E69616D6572;
  v3 = 25705;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x676E697269467369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461657263;
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

uint64_t sub_1D186F608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D18711B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D186F630(uint64_t a1)
{
  v2 = sub_1D1870CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186F66C(uint64_t a1)
{
  v2 = sub_1D1870CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458D8, &qword_1D1E7B1B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1870CF8();
  sub_1D1E6930C();
  v11 = *v3;
  v22[31] = 0;
  sub_1D1E68EEC();
  if (!v2)
  {
    v12 = type metadata accessor for StaticTimer();
    v13 = v12[5];
    v22[30] = 1;
    sub_1D1E669FC();
    sub_1D1870EB4(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68F1C();
    v14 = *(v3 + v12[6]);
    v22[29] = 2;
    sub_1D1E68EEC();
    v15 = (v3 + v12[7]);
    v16 = *v15;
    v17 = v15[1];
    v22[28] = 3;
    sub_1D1E68E0C();
    v22[27] = *(v3 + v12[8]);
    v22[26] = 4;
    sub_1D1870D4C();
    sub_1D1E68F1C();
    v18 = *(v3 + v12[9]);
    v22[25] = 5;
    sub_1D1E68EDC();
    v19 = v12[10];
    v22[24] = 6;
    sub_1D1E66A7C();
    sub_1D1870EB4(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1E68F1C();
    v20 = v12[11];
    v22[15] = 7;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticTimer.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3892890](*&v2);
  v3 = type metadata accessor for StaticTimer();
  v4 = v3[5];
  sub_1D1E669FC();
  sub_1D1870EB4(&qword_1EC642A50, MEMORY[0x1E6969530]);
  sub_1D1E676EC();
  v5 = *(v1 + v3[6]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1D3892890](*&v5);
  v6 = (v1 + v3[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  MEMORY[0x1D3892850](*(v1 + v3[8]));
  v8 = *(v1 + v3[9]);
  sub_1D1E6922C();
  v9 = v3[10];
  sub_1D1E66A7C();
  sub_1D1870EB4(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = v1 + v3[11];
  return sub_1D1E676EC();
}

uint64_t StaticTimer.hashValue.getter()
{
  sub_1D1E6920C();
  StaticTimer.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticTimer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1D1E66A7C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v34 - v7;
  v8 = sub_1D1E669FC();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458F0, &qword_1D1E7B1C0);
  v42 = *(v45 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v34 - v13;
  v15 = type metadata accessor for StaticTimer();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1870CF8();
  v44 = v14;
  v20 = v46;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v42;
  v46 = v15;
  v55 = 0;
  sub_1D1E68D4C();
  v36 = v18;
  *v18 = v22;
  v54 = 1;
  sub_1D1870EB4(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68D7C();
  (*(v41 + 32))(&v36[v46[5]], v11, v8);
  v53 = 2;
  sub_1D1E68D4C();
  v23 = v46;
  *&v36[v46[6]] = v24;
  v52 = 3;
  v25 = sub_1D1E68C6C();
  v35 = a1;
  v26 = &v36[v23[7]];
  *v26 = v25;
  v26[1] = v27;
  v50 = 4;
  sub_1D1870DA0();
  sub_1D1E68D7C();
  v36[v23[8]] = v51;
  v49 = 5;
  v36[v23[9]] = sub_1D1E68D3C() & 1;
  v48 = 6;
  v28 = sub_1D1870EB4(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v29 = v40;
  v35 = v28;
  sub_1D1E68D7C();
  v30 = *(v39 + 32);
  v30(&v36[v23[10]], v43, v29);
  v47 = 7;
  v31 = v38;
  sub_1D1E68D7C();
  (*(v21 + 8))(v44, v45);
  v32 = v36;
  v30(&v36[v46[11]], v31, v40);
  sub_1D1870DF4(v32, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1870E58(v32);
}

uint64_t sub_1D1870250()
{
  sub_1D1E6920C();
  StaticTimer.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1870294()
{
  sub_1D1E6920C();
  StaticTimer.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1870300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_1D1870374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = StaticTimer.calculatedRemainingTime()();
  v5 = StaticTimer.calculatedRemainingTime()();
  if (v4 == v5)
  {
    v6 = *(a3 + 40);

    JUMPOUT(0x1D3890070);
  }

  return v4 < v5;
}

BOOL sub_1D18703FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = StaticTimer.calculatedRemainingTime()();
  v7 = StaticTimer.calculatedRemainingTime()();
  if (v6 == v7)
  {
    v8 = MEMORY[0x1D3890070](a2 + *(a3 + 40), a1 + *(a3 + 40));
  }

  else
  {
    v8 = v6 < v7;
  }

  return (v8 & 1) == 0;
}

BOOL sub_1D1870470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = StaticTimer.calculatedRemainingTime()();
  v7 = StaticTimer.calculatedRemainingTime()();
  if (v6 == v7)
  {
    v8 = MEMORY[0x1D3890070](a1 + *(a3 + 40), a2 + *(a3 + 40));
  }

  else
  {
    v8 = v6 < v7;
  }

  return (v8 & 1) == 0;
}

BOOL sub_1D18704E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = StaticTimer.calculatedRemainingTime()();
  v5 = StaticTimer.calculatedRemainingTime()();
  if (v4 == v5)
  {
    v6 = *(a3 + 40);

    JUMPOUT(0x1D3890070);
  }

  return v4 < v5;
}

uint64_t StaticTimer.shouldBeVisible.getter()
{
  v1 = type metadata accessor for StaticTimer();
  v2 = *(v0 + *(v1 + 32));
  if ((v2 - 2) < 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return *(v0 + *(v1 + 36));
  }

  return 0;
}

HomeDataModel::StaticTimer::State_optional __swiftcall StaticTimer.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StaticTimer.toggleState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D18706B0, 0, 0);
}

uint64_t sub_1D18706B0()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1870748, v2, v1);
}

uint64_t sub_1D1870748()
{
  v1 = *(v0 + 40);

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18707E0, 0, 0);
}

uint64_t sub_1D18707E0()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D187086C, v3, v2);
}

uint64_t sub_1D187086C()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = type metadata accessor for StaticTimer();
  v4 = *(v3 + 40);
  v5 = *(v3 + 44);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D186C9D4;
  v7 = v0[2];

  return CoordinationDataModel.toggleTimerState(staticTimerID:parentContainerID:)(v7, v2 + v4, v2 + v5);
}

uint64_t StaticTimer.delete()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1870954, 0, 0);
}

uint64_t sub_1D1870954()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18709EC, v2, v1);
}

uint64_t sub_1D18709EC()
{
  v1 = *(v0 + 40);

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1870A84, 0, 0);
}

uint64_t sub_1D1870A84()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1870B10, v3, v2);
}

uint64_t sub_1D1870B10()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = type metadata accessor for StaticTimer();
  v4 = *(v3 + 40);
  v5 = *(v3 + 44);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D186E3E4;
  v7 = v0[2];

  return CoordinationDataModel.deleteTimer(staticTimerID:parentContainerID:)(v7, v2 + v4, v2 + v5);
}

uint64_t _s13HomeDataModel11StaticTimerV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticTimer();
  v5 = v4[5];
  if ((sub_1D1E669AC() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  if (*(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v12 = v4[10];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v13 = v4[11];

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D1870CF8()
{
  result = qword_1EC6458E0;
  if (!qword_1EC6458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458E0);
  }

  return result;
}

unint64_t sub_1D1870D4C()
{
  result = qword_1EC6458E8;
  if (!qword_1EC6458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458E8);
  }

  return result;
}

unint64_t sub_1D1870DA0()
{
  result = qword_1EC6458F8;
  if (!qword_1EC6458F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458F8);
  }

  return result;
}

uint64_t sub_1D1870DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTimer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1870E58(uint64_t a1)
{
  v2 = type metadata accessor for StaticTimer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1870EB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1870F48()
{
  result = qword_1EC645908;
  if (!qword_1EC645908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645908);
  }

  return result;
}

void sub_1D1870FC4()
{
  sub_1D1E669FC();
  if (v0 <= 0x3F)
  {
    sub_1D17786E4();
    if (v1 <= 0x3F)
    {
      sub_1D1E66A7C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D18710AC()
{
  result = qword_1EC645910;
  if (!qword_1EC645910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645910);
  }

  return result;
}

unint64_t sub_1D1871104()
{
  result = qword_1EC645918;
  if (!qword_1EC645918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645918);
  }

  return result;
}

unint64_t sub_1D187115C()
{
  result = qword_1EC645920;
  if (!qword_1EC645920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645920);
  }

  return result;
}

uint64_t sub_1D18711B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697269467369 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBB2F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1D1871448()
{
  result = qword_1EC645928;
  if (!qword_1EC645928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645928);
  }

  return result;
}

uint64_t sub_1D187149C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTimer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1871500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC645930, &unk_1D1E7B580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1871570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC645930, &unk_1D1E7B580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18715DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D1871640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1871688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D18716F0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

id sub_1D187178C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v10);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = *(v3 + 48);
  v21 = *(v15 + 16);
  v21(&v36 - v22, v20 + *(*v20 + 88), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v41, v44);
    (*(v6 + 16))(v12, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v38, &v41);
      v23 = v45;
      v24 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v25 = *(&v42 + 1);
      v26 = v43;
      v27 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v28 = (*(v24 + 24))(v27, v25, v26, v23, v24);
LABEL_9:
      v34 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v41);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v34;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D1741A30(&v38, &qword_1EC645670, &qword_1D1E7B950);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D1741A30(&v41, &qword_1EC6459C0, &qword_1D1E7B920);
  }

  v21(v19, v20 + *(*v20 + 88), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v41, v44);
    (*(v6 + 16))(v37, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v38, &v41);
      v29 = v45;
      v30 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v31 = *(&v42 + 1);
      v32 = v43;
      v33 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v28 = (*(v30 + 16))(v33, v31, v32, v29, v30);
      goto LABEL_9;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D1741A30(&v38, &qword_1EC6456C0, &unk_1D1E7A3F0);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D1741A30(&v41, &qword_1EC6459D0, &qword_1D1E7B6A8);
  }

  return [objc_allocWithZone(MEMORY[0x1E69B3780]) init];
}

id sub_1D1871BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v10);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = *(v3 + 48);
  v21 = *(v15 + 16);
  v21(&v36 - v22, v20 + *(*v20 + 88), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v41, v44);
    (*(v6 + 16))(v12, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v38, &v41);
      v23 = v45;
      v24 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v25 = *(&v42 + 1);
      v26 = v43;
      v27 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v28 = (*(v24 + 32))(v27, v25, v26, v23, v24);
LABEL_9:
      v34 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v41);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v34;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D1741A30(&v38, &qword_1EC645670, &qword_1D1E7B950);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D1741A30(&v41, &qword_1EC6459C0, &qword_1D1E7B920);
  }

  v21(v19, v20 + *(*v20 + 88), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v41, v44);
    (*(v6 + 16))(v37, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v38, &v41);
      v29 = v45;
      v30 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v31 = *(&v42 + 1);
      v32 = v43;
      v33 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v28 = (*(v30 + 24))(v33, v31, v32, v29, v30);
      goto LABEL_9;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D1741A30(&v38, &qword_1EC6456C0, &unk_1D1E7A3F0);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D1741A30(&v41, &qword_1EC6459D0, &qword_1D1E7B6A8);
  }

  return [objc_allocWithZone(MEMORY[0x1E69B3780]) init];
}

id sub_1D1872064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v10);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = *(v3 + 48);
  v21 = *(v15 + 16);
  v21(&v36 - v22, v20 + *(*v20 + 88), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v41, v44);
    (*(v6 + 16))(v12, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v38, &v41);
      v23 = v45;
      v24 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v25 = *(&v42 + 1);
      v26 = v43;
      v27 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v28 = (*(v24 + 40))(v27, v25, v26, v23, v24);
LABEL_9:
      v34 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v41);
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v34;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D1741A30(&v38, &qword_1EC645670, &qword_1D1E7B950);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D1741A30(&v41, &qword_1EC6459C0, &qword_1D1E7B920);
  }

  v21(v19, v20 + *(*v20 + 88), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v41, v44);
    (*(v6 + 16))(v37, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v38, &v41);
      v29 = v45;
      v30 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v31 = *(&v42 + 1);
      v32 = v43;
      v33 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v28 = (*(v30 + 32))(v33, v31, v32, v29, v30);
      goto LABEL_9;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D1741A30(&v38, &qword_1EC6456C0, &unk_1D1E7A3F0);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D1741A30(&v41, &qword_1EC6459D0, &qword_1D1E7B6A8);
  }

  return [objc_allocWithZone(MEMORY[0x1E69B3780]) init];
}

uint64_t sub_1D18724D0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  MEMORY[0x1D3893750](v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_1D187255C()
{
  v0 = *sub_1D18724D0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D18725CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D1E6711C();

  *a2 = v5;
  return result;
}

uint64_t sub_1D187264C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_1D1E6712C();
}

uint64_t sub_1D18726C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D1E6711C();
}

uint64_t sub_1D187273C(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return sub_1D1E6712C();
}

void (*sub_1D18727A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D1E6710C();
  return sub_1D187284C;
}

void sub_1D187284C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1D18728B4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A00, &qword_1D1E7B6F8);
  sub_1D1E670EC();
  return swift_endAccess();
}

uint64_t sub_1D187292C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A08, &qword_1D1E7B700);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A00, &qword_1D1E7B6F8);
  sub_1D1E670FC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1D1872AB0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A00, &qword_1D1E7B6F8);
  sub_1D1E670EC();
  return swift_endAccess();
}

uint64_t sub_1D1872B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A08, &qword_1D1E7B700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A00, &qword_1D1E7B6F8);
  sub_1D1E670FC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1D1872C5C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A08, &qword_1D1E7B700);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel__currentStateSnapshot;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A00, &qword_1D1E7B6F8);
  sub_1D1E670EC();
  swift_endAccess();
  return sub_1D1872DCC;
}

void sub_1D1872DCC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_1D1E670FC();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_1D1E670FC();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_1D1872F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1D1872F9C()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D1872FE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D187315C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_1D18731C0();
}

uint64_t sub_1D18731C0()
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
  v1 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v3 = &v61 - v2;
  v4 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v61 = v4;
  v62 = v0;
  v5 = *(v0 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v67 = v5;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v63 = v10;
  v64 = v6;
  v65 = v3;
  while (v9)
  {
LABEL_12:
    v16 = __clz(__rbit64(v9)) | (v12 << 6);
    v17 = v67;
    v18 = *(v67 + 48);
    v19 = sub_1D1E66A7C();
    (*(*(v19 - 8) + 16))(v3, v18 + *(*(v19 - 8) + 72) * v16, v19);
    v20 = (*(v17 + 56) + (v16 << 7));
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    v79 = v20[3];
    v24 = v20[4];
    v25 = v20[5];
    v26 = v20[7];
    v82 = v20[6];
    v83 = v26;
    v80 = v24;
    v81 = v25;
    v78[1] = v21;
    v78[2] = v23;
    v78[0] = v22;
    v27 = &v3[*(v66 + 48)];
    v28 = *(&v79 + 1);
    v29 = v24;
    v30 = v25;
    v68 = *(&v24 + 1);
    v69 = *(&v25 + 1);
    v31 = *(&v82 + 1);
    v70 = v82;
    memmove(v27, v20, 0x80uLL);
    v32 = *(v27 + 1);
    v84 = *v27;
    v85 = v32;
    v86 = *(v27 + 2);
    v87 = *(v27 + 6);
    sub_1D18783EC(v78, v75);
    sub_1D187958C();
    if (v28)
    {
      sub_1D17419CC((v31 + 2), v74);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20(&v71, v75);
        v34 = ObjectType;
        v33 = v77;
        __swift_project_boxed_opaque_existential_1(v75, ObjectType);
        (*(v33 + 72))(v28, v34, v33);
        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      else
      {
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
        sub_1D1741A30(&v71, &qword_1EC6459C0, &qword_1D1E7B920);
      }

      v35 = v31[5];
      v36 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v35);
      ObjectType = swift_getObjectType();
      v75[0] = v28;
      (*(v36 + 56))(v75, v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    v37 = v30;
    v38 = v68;
    if (v29)
    {
      sub_1D17419CC((v31 + 2), v74);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20(&v71, v75);
        v39 = ObjectType;
        v40 = v77;
        __swift_project_boxed_opaque_existential_1(v75, ObjectType);
        (*(v40 + 72))(v29, v39, v40);
        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      else
      {
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
        sub_1D1741A30(&v71, &qword_1EC6459C0, &qword_1D1E7B920);
      }

      v41 = v31[5];
      v42 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v41);
      ObjectType = swift_getObjectType();
      v75[0] = v29;
      (*(v42 + 56))(v75, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    if (v38)
    {
      sub_1D17419CC((v31 + 2), v74);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20(&v71, v75);
        v43 = ObjectType;
        v44 = v77;
        __swift_project_boxed_opaque_existential_1(v75, ObjectType);
        (*(v44 + 72))(v38, v43, v44);
        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      else
      {
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
        sub_1D1741A30(&v71, &qword_1EC6459C0, &qword_1D1E7B920);
      }

      v45 = v31[5];
      v46 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v45);
      ObjectType = swift_getObjectType();
      v75[0] = v38;
      (*(v46 + 56))(v75, v45, v46);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    v3 = v65;
    if (v37)
    {
      sub_1D17419CC((v31 + 2), v74);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20(&v71, v75);
        v47 = ObjectType;
        v48 = v77;
        __swift_project_boxed_opaque_existential_1(v75, ObjectType);
        (*(v48 + 72))(v37, v47, v48);
        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      else
      {
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
        sub_1D1741A30(&v71, &qword_1EC6459C0, &qword_1D1E7B920);
      }

      v49 = v31[5];
      v50 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v49);
      ObjectType = swift_getObjectType();
      v75[0] = v37;
      (*(v50 + 56))(v75, v49, v50);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    v51 = v69;
    if (v69)
    {
      sub_1D17419CC((v31 + 2), v74);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20(&v71, v75);
        v52 = ObjectType;
        v53 = v77;
        __swift_project_boxed_opaque_existential_1(v75, ObjectType);
        (*(v53 + 72))(v51, v52, v53);
        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      else
      {
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
        sub_1D1741A30(&v71, &qword_1EC6459C0, &qword_1D1E7B920);
      }

      v54 = v31[5];
      v55 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v54);
      ObjectType = swift_getObjectType();
      v75[0] = v51;
      (*(v55 + 56))(v75, v54, v55);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    v56 = v70;
    if (v70)
    {
      sub_1D17419CC((v31 + 2), v74);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20(&v71, v75);
        v57 = ObjectType;
        v58 = v77;
        __swift_project_boxed_opaque_existential_1(v75, ObjectType);
        (*(v58 + 72))(v56, v57, v58);
        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      else
      {
        v73 = 0;
        v71 = 0u;
        v72 = 0u;
        sub_1D1741A30(&v71, &qword_1EC6459C0, &qword_1D1E7B920);
      }

      v13 = v31[5];
      v14 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v13);
      ObjectType = swift_getObjectType();
      v75[0] = v56;
      (*(v14 + 56))(v75, v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    v9 &= v9 - 1;
    sub_1D18789E8();
    result = sub_1D1741A30(v3, &qword_1EC645A50, &unk_1D1E7B910);
    v10 = v63;
    v6 = v64;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      v59 = sub_1D18D9378(MEMORY[0x1E69E7CC0]);
      v60 = *(v62 + v61);
      *(v62 + v61) = v59;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1873AEC()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D1873B38(void *a1)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1D18731C0();
}

uint64_t (*sub_1D1873BA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1873C04;
}

uint64_t sub_1D1873C04(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1D18731C0();
  }

  return result;
}

id sub_1D1873C38()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A00, &qword_1D1E7B6F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel__currentStateSnapshot;
  if (qword_1EE07A758 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE081410;

  sub_1D1E670DC();
  (*(v7 + 32))(&v0[v11], v10, v6);
  v12 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  v13 = MEMORY[0x1E69E7CC0];
  *&v0[v12] = sub_1D18D9378(MEMORY[0x1E69E7CC0]);
  v14 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_homeAlarms;
  *&v0[v14] = sub_1D18D95B4(v13);
  v15 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_homeTimers;
  *&v0[v15] = sub_1D18D95D8(v13);
  *&v0[OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_currentHome] = 0;
  v16 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_incomingCoordinationMessagesQueue;
  v17 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v18 = sub_1D1E677EC();
  [v17 setName_];

  [v17 setMaxConcurrentOperationCount_];
  *&v0[v16] = v17;
  v19 = type metadata accessor for CoordinationDataModel();
  v28.receiver = v0;
  v28.super_class = v19;
  v20 = objc_msgSendSuper2(&v28, sel_init);
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 != 4)
  {
    v21 = sub_1D1E67E7C();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_1D1E67E1C();
    v22 = v20;
    v23 = sub_1D1E67E0C();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    v24[5] = ObjectType;
    sub_1D17C6EF0(0, 0, v5, &unk_1D1E7B8C8, v24);
  }

  return v20;
}

uint64_t sub_1D1873F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v4[3] = updated;
  v6 = *(updated - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A28, &qword_1D1E7B8D0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A30, &qword_1D1E7B8D8);
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = sub_1D1E67E1C();
  v4[16] = sub_1D1E67E0C();
  v13 = sub_1D1E67D4C();
  v4[17] = v13;
  v4[18] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D1874170, v13, v12);
}

uint64_t sub_1D1874170()
{
  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A10, &qword_1D1E7B708);
  __swift_project_value_buffer(v2, qword_1EE07B1F0);
  sub_1D1E67EFC();
  v3 = v0[15];
  v4 = sub_1D1E67E0C();
  v0[19] = v4;
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1D1874294;
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v8, v4, v10, v9);
}

uint64_t sub_1D1874294()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D18743D8, v5, v4);
}

uint64_t sub_1D18743D8()
{
  v59 = v0;
  v1 = v0[11];
  if ((*(v0[4] + 48))(v1, 1, v0[3]) == 1)
  {
    v2 = v0[16];
    v4 = v0[9];
    v3 = v0[10];
    v6 = v0[7];
    v5 = v0[8];
    v8 = v0[5];
    v7 = v0[6];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v9 = v0[1];

    return v9();
  }

  v12 = v0[9];
  v11 = v0[10];
  sub_1D18782C8(v1, v11);
  sub_1D187832C(v11, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[9];
  if (EnumCaseMultiPayload == 6)
  {
    v15 = *v14;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07B5D8);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6832C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v17, v18, "CoordinationDataModel received a snapshotStream update to disable: %{BOOL}d", v19, 8u);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

LABEL_11:
    v20 = swift_task_alloc();
    v0[21] = v20;
    *v20 = v0;
    v20[1] = sub_1D18749B0;
    v21 = v0[10];
    v22 = v0[2];

    return sub_1D1889E60(v21);
  }

  sub_1D1878390(v14);
  if (byte_1EC6459D8)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v23 = v0[10];
    v24 = v0[7];
    v25 = sub_1D1E6709C();
    __swift_project_value_buffer(v25, qword_1EE07B5D8);
    sub_1D187832C(v23, v24);
    v26 = sub_1D1E6707C();
    v27 = sub_1D1E6832C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[7];
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315138;
      updated = CoordinationSnapshot.UpdateType.description.getter();
      v34 = v33;
      sub_1D1878390(v29);
      v35 = sub_1D1B1312C(updated, v34, &v58);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1D16EC000, v26, v27, "CoordinationDataModel processing update %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D3893640](v31, -1, -1);
      MEMORY[0x1D3893640](v30, -1, -1);
    }

    else
    {

      sub_1D1878390(v29);
    }

    goto LABEL_11;
  }

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v36 = v0[10];
  v37 = v0[8];
  v38 = sub_1D1E6709C();
  __swift_project_value_buffer(v38, qword_1EE07B5D8);
  sub_1D187832C(v36, v37);
  v39 = sub_1D1E6707C();
  v40 = sub_1D1E6832C();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[10];
  v43 = v0[8];
  if (v41)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v44 = 136315138;
    v46 = CoordinationSnapshot.UpdateType.description.getter();
    v48 = v47;
    sub_1D1878390(v43);
    v49 = sub_1D1B1312C(v46, v48, &v58);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_1D16EC000, v39, v40, "CoordinationDataModel updates on streamTask are halted, skipping update: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1D3893640](v45, -1, -1);
    MEMORY[0x1D3893640](v44, -1, -1);
  }

  else
  {

    sub_1D1878390(v43);
  }

  sub_1D1878390(v42);
  v50 = v0[15];
  v51 = sub_1D1E67E0C();
  v0[19] = v51;
  v52 = *(MEMORY[0x1E69E8678] + 4);
  v53 = swift_task_alloc();
  v0[20] = v53;
  *v53 = v0;
  v53[1] = sub_1D1874294;
  v54 = v0[14];
  v55 = v0[11];
  v56 = v0[12];
  v57 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v55, v51, v57, v56);
}

uint64_t sub_1D18749B0()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D1874AD0, v4, v3);
}

uint64_t sub_1D1874AD0()
{
  v38 = v0;
  if ((byte_1EC6459D8 & 1) == 0)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v1 = v0[10];
    v2 = v0[6];
    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07B5D8);
    sub_1D187832C(v1, v2);
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6832C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[6];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37 = v9;
      *v8 = 136315138;
      updated = CoordinationSnapshot.UpdateType.description.getter();
      v12 = v11;
      sub_1D1878390(v7);
      v13 = sub_1D1B1312C(updated, v12, &v37);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1D16EC000, v4, v5, "CoordinationDataModel Calling streamUpdateCompleted for update: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    else
    {

      sub_1D1878390(v7);
    }
  }

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v14 = v0[10];
  v15 = v0[5];
  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE07B5D8);
  sub_1D187832C(v14, v15);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6832C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[10];
  v21 = v0[5];
  if (v19)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136315138;
    v24 = CoordinationSnapshot.UpdateType.description.getter();
    v26 = v25;
    sub_1D1878390(v21);
    v27 = sub_1D1B1312C(v24, v26, &v37);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1D16EC000, v17, v18, "CoordinationDataModel asyncStream update handling completed for update: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D3893640](v23, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  else
  {

    sub_1D1878390(v21);
  }

  sub_1D1878390(v20);
  v28 = v0[15];
  v29 = sub_1D1E67E0C();
  v0[19] = v29;
  v30 = *(MEMORY[0x1E69E8678] + 4);
  v31 = swift_task_alloc();
  v0[20] = v31;
  *v31 = v0;
  v31[1] = sub_1D1874294;
  v32 = v0[14];
  v33 = v0[11];
  v34 = v0[12];
  v35 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v33, v29, v35, v34);
}

id CoordinationDataModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoordinationDataModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1874F70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CoordinationDataModel();
  result = sub_1D1E670AC();
  *a1 = result;
  return result;
}

uint64_t sub_1D1874FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A10, &qword_1D1E7B708);
  __swift_allocate_value_buffer(v0, qword_1EE07B1F0);
  __swift_project_value_buffer(v0, qword_1EE07B1F0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_allocate_value_buffer(v1, qword_1EE07B210);
  __swift_project_value_buffer(v1, qword_1EE07B210);

  return sub_1D1875058();
}

uint64_t sub_1D1875058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A58, &qword_1D1E7B938);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - v3;
  type metadata accessor for CoordinationSnapshot.UpdateType();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8650], v0);
  sub_1D1E67E8C();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643370, &qword_1D1E7B940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E739C0;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x206D6165727473, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A10, &qword_1D1E7B708);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x657461647075202CLL, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  sub_1D1E68ABC();
  v6 = v9;
  v7 = v10;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1D1E691DC();
}

uint64_t sub_1D18752CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1EE07B1E8 != -1)
  {
    v10 = a1;
    v11 = a2;
    swift_once();
    a1 = v10;
    a2 = v11;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1D187538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_1D1E66A7C();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  sub_1D1E67E1C();
  v7[28] = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18754A8, v12, v11);
}

uint64_t sub_1D18754A8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[20];

  v57 = *(v4 + 16);
  v57(v2, v5, v3);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v0[23];
    v10 = v0[20];
    v58 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v7, 0);
    v8 = v58;
    v11 = v10 + 32;
    do
    {
      v12 = v0[25];
      sub_1D17419CC(v11, (v0 + 2));
      v13 = v0[5];
      v14 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
      (*(v14 + 56))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      v16 = *(v58 + 16);
      v15 = *(v58 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D178CEFC(v15 > 1, v16 + 1, 1);
      }

      v17 = v0[25];
      v18 = v0[22];
      *(v58 + 16) = v16 + 1;
      (*(v9 + 32))(v58 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v17, v18);
      v11 += 40;
      --v7;
    }

    while (v7);
  }

  v19 = v0[27];
  v20 = v0[22];
  v21 = v0[23];
  v22 = v0[20];
  v54 = v0[26];
  v55 = v0[21];
  v24 = v0[18];
  v23 = v0[19];

  v25 = sub_1D187591C(v8, v22, &qword_1EC6429A8, &qword_1D1E6E708, sub_1D1877764);
  v26 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_homeAlarms;
  swift_beginAccess();
  v27 = *(v24 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v24 + v26);
  *(v24 + v26) = 0x8000000000000000;
  sub_1D1754460(v25, v19, isUniquelyReferenced_nonNull_native);
  v56 = *(v21 + 8);
  v56(v19, v20);
  *(v24 + v26) = v59;
  swift_endAccess();
  v57(v54, v23, v20);
  v29 = *(v55 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = v0[23];
    v32 = v0[21];
    v60 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v29, 0);
    v30 = v60;
    v33 = v32 + 32;
    do
    {
      v34 = v0[24];
      sub_1D17419CC(v33, (v0 + 7));
      v35 = v0[10];
      v36 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v35);
      (*(v36 + 64))(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v38 = *(v60 + 16);
      v37 = *(v60 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D178CEFC(v37 > 1, v38 + 1, 1);
      }

      v39 = v0[24];
      v40 = v0[22];
      *(v60 + 16) = v38 + 1;
      (*(v31 + 32))(v60 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v38, v39, v40);
      v33 += 40;
      --v29;
    }

    while (v29);
  }

  v41 = v0[26];
  v42 = v0[27];
  v43 = v0[24];
  v44 = v0[25];
  v45 = v0[21];
  v46 = v0[22];
  v47 = v0[18];

  v48 = sub_1D187591C(v30, v45, &qword_1EC642998, &qword_1D1E6E6F8, sub_1D1877300);
  v49 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_homeTimers;
  swift_beginAccess();
  v50 = *(v47 + v49);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v47 + v49);
  *(v47 + v49) = 0x8000000000000000;
  sub_1D1754420(v48, v41, v51);
  v56(v41, v46);
  *(v47 + v49) = v61;
  swift_endAccess();

  v52 = v0[1];

  return v52();
}

uint64_t sub_1D187591C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v7)
  {
    v8 = a1;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1D1E68BCC();
    a2 = v9;
    v11 = v10;
    a1 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v14 = v11;
  a5(a1, a2, 1, &v14);
  v12 = v14;
  if (v5)
  {
  }

  return v12;
}

uint64_t sub_1D18759D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 312) = a6;
  *(v7 + 320) = a7;
  *(v7 + 304) = a5;
  *(v7 + 384) = a4;
  v8 = sub_1D1E66A7C();
  *(v7 + 328) = v8;
  v9 = *(v8 - 8);
  *(v7 + 336) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v7 + 376) = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1875AF4, v12, v11);
}

unint64_t sub_1D1875AF4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  v3 = *(v0 + 384);

  if (v3 == 1)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v0 + 240;
      v6 = (v0 + 272);
      v7 = *(v0 + 336);
      v8 = *(v0 + 304) + 32;
      v80 = v7;
      v84 = (v7 + 8);
      v85 = (v7 + 16);
      do
      {
        v11 = *(v0 + 368);
        v12 = *(v0 + 320);
        v13 = *(v0 + 328);
        v14 = *(v0 + 312);
        sub_1D17419CC(v8, v0 + 96);
        (*v85)(v11, v12, v13);
        v15 = sub_1D187309C();
        v17 = sub_1D1C77018(v6);
        if (*v16)
        {
          v18 = v16;
          v87 = v15;
          v19 = *(v0 + 360);
          v20 = *(v0 + 120);
          v21 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
          (*(v21 + 56))(v20, v21);
          v22 = *v18;
          v23 = sub_1D1742188(v19);
          if (v24)
          {
            v25 = v23;
            v26 = *v18;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v89 = *v18;
            *v18 = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D1738B8C();
            }

            v81 = *(v0 + 360);
            v28 = *(v0 + 328);
            v29 = *(v80 + 8);
            v29(*(v89 + 48) + *(v80 + 72) * v25, v28);
            sub_1D16EEE20((*(v89 + 56) + 40 * v25), v0 + 136);
            sub_1D1757DE4(v25, v89);
            v29(v81, v28);
            v30 = *v18;
            *v18 = v89;
          }

          else
          {
            v29 = *v84;
            (*v84)(*(v0 + 360), *(v0 + 328));
            *(v0 + 168) = 0;
            *(v0 + 152) = 0u;
            *(v0 + 136) = 0u;
          }

          v31 = *(v0 + 368);
          v32 = *(v0 + 328);
          sub_1D1741A30(v0 + 136, &qword_1EC645670, &qword_1D1E7B950);
          v6 = (v0 + 272);
          (v17)(v0 + 272, 0);
          v29(v31, v32);
          v5 = v0 + 240;
          (v87)(v0 + 240, 0);
        }

        else
        {
          v9 = *(v0 + 368);
          v10 = *(v0 + 328);
          (v17)(v6, 0);
          (*v84)(v9, v10);
          (v15)(v5, 0);
          *(v0 + 168) = 0;
          *(v0 + 152) = 0u;
          *(v0 + 136) = 0u;
          sub_1D1741A30(v0 + 136, &qword_1EC645670, &qword_1D1E7B950);
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        v8 += 40;
        --v4;
      }

      while (v4);
    }

    goto LABEL_29;
  }

  v33 = *(v2 + 16);
  if (!v33)
  {
LABEL_29:
    v75 = *(v0 + 360);
    v74 = *(v0 + 368);
    v77 = *(v0 + 344);
    v76 = *(v0 + 352);

    v78 = *(v0 + 8);

    return v78();
  }

  v34 = v0 + 176;
  v35 = (v0 + 208);
  v36 = *(v0 + 304) + 32;
  v37 = *(v0 + 336);
  v86 = (v37 + 16);
  v82 = v37;
  v83 = (v37 + 8);
  while (1)
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 320);
    v42 = *(v0 + 328);
    v43 = *(v0 + 312);
    sub_1D17419CC(v36, v0 + 16);
    v44 = *v86;
    (*v86)(v40, v41, v42);
    v88 = sub_1D187309C();
    v46 = sub_1D1C77018(v35);
    if (!*v45)
    {
      v38 = *(v0 + 352);
      v39 = *(v0 + 328);
      (v46)(v35, 0);
      (*v83)(v38, v39);
      goto LABEL_16;
    }

    v47 = v45;
    v48 = *(v0 + 344);
    v50 = *(v0 + 40);
    v49 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
    (*(v49 + 56))(v50, v49);
    sub_1D17419CC(v0 + 16, v0 + 56);
    v51 = *v47;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v47;
    v90 = *v47;
    *v47 = 0x8000000000000000;
    result = sub_1D1742188(v48);
    v56 = v53[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      if ((v52 & 1) == 0)
      {
        v73 = result;
        sub_1D1738B8C();
        result = v73;
      }

      goto LABEL_24;
    }

    v61 = *(v0 + 344);
    sub_1D1728028(v59, v52);
    result = sub_1D1742188(v61);
    if ((v60 & 1) != (v62 & 1))
    {
      break;
    }

LABEL_24:
    v63 = *(v0 + 344);
    v64 = *(v0 + 328);
    if (v60)
    {
      v65 = (v90[7] + 40 * result);
      __swift_destroy_boxed_opaque_existential_1(v65);
      sub_1D16EEE20((v0 + 56), v65);
      v66 = *v83;
      (*v83)(v63, v64);
    }

    else
    {
      v90[(result >> 6) + 8] |= 1 << result;
      v67 = result;
      v44(v90[6] + *(v82 + 72) * result, v63, v64);
      sub_1D16EEE20((v0 + 56), v90[7] + 40 * v67);
      v66 = *(v82 + 8);
      result = (v66)(v63, v64);
      v68 = v90[2];
      v58 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v58)
      {
        goto LABEL_36;
      }

      v90[2] = v69;
    }

    v70 = *(v0 + 352);
    v71 = *(v0 + 328);
    v72 = *v47;
    *v47 = v90;

    v35 = (v0 + 208);
    (v46)(v0 + 208, 0);
    v66(v70, v71);
    v34 = v0 + 176;
LABEL_16:
    (v88)(v34, 0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v36 += 40;
    if (!--v33)
    {
      goto LABEL_29;
    }
  }

  v79 = *(v0 + 328);

  return sub_1D1E690FC();
}

uint64_t sub_1D1876198(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 312) = a6;
  *(v7 + 320) = a7;
  *(v7 + 304) = a5;
  *(v7 + 384) = a4;
  v8 = sub_1D1E66A7C();
  *(v7 + 328) = v8;
  v9 = *(v8 - 8);
  *(v7 + 336) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v7 + 376) = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18762B8, v12, v11);
}

unint64_t sub_1D18762B8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  v3 = *(v0 + 384);

  if (v3 == 1)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v0 + 240;
      v6 = (v0 + 272);
      v7 = *(v0 + 336);
      v8 = *(v0 + 304) + 32;
      v80 = v7;
      v84 = (v7 + 8);
      v85 = (v7 + 16);
      do
      {
        v11 = *(v0 + 368);
        v12 = *(v0 + 320);
        v13 = *(v0 + 328);
        v14 = *(v0 + 312);
        sub_1D17419CC(v8, v0 + 96);
        (*v85)(v11, v12, v13);
        v15 = sub_1D18730FC();
        v17 = sub_1D1C77130(v6);
        if (*v16)
        {
          v18 = v16;
          v87 = v15;
          v19 = *(v0 + 360);
          v20 = *(v0 + 120);
          v21 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
          (*(v21 + 64))(v20, v21);
          v22 = *v18;
          v23 = sub_1D1742188(v19);
          if (v24)
          {
            v25 = v23;
            v26 = *v18;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v89 = *v18;
            *v18 = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D1738B50();
            }

            v81 = *(v0 + 360);
            v28 = *(v0 + 328);
            v29 = *(v80 + 8);
            v29(*(v89 + 48) + *(v80 + 72) * v25, v28);
            sub_1D16EEE20((*(v89 + 56) + 40 * v25), v0 + 136);
            sub_1D1757DE4(v25, v89);
            v29(v81, v28);
            v30 = *v18;
            *v18 = v89;
          }

          else
          {
            v29 = *v84;
            (*v84)(*(v0 + 360), *(v0 + 328));
            *(v0 + 168) = 0;
            *(v0 + 152) = 0u;
            *(v0 + 136) = 0u;
          }

          v31 = *(v0 + 368);
          v32 = *(v0 + 328);
          sub_1D1741A30(v0 + 136, &qword_1EC6456C0, &unk_1D1E7A3F0);
          v6 = (v0 + 272);
          (v17)(v0 + 272, 0);
          v29(v31, v32);
          v5 = v0 + 240;
          (v87)(v0 + 240, 0);
        }

        else
        {
          v9 = *(v0 + 368);
          v10 = *(v0 + 328);
          (v17)(v6, 0);
          (*v84)(v9, v10);
          (v15)(v5, 0);
          *(v0 + 168) = 0;
          *(v0 + 152) = 0u;
          *(v0 + 136) = 0u;
          sub_1D1741A30(v0 + 136, &qword_1EC6456C0, &unk_1D1E7A3F0);
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        v8 += 40;
        --v4;
      }

      while (v4);
    }

    goto LABEL_29;
  }

  v33 = *(v2 + 16);
  if (!v33)
  {
LABEL_29:
    v75 = *(v0 + 360);
    v74 = *(v0 + 368);
    v77 = *(v0 + 344);
    v76 = *(v0 + 352);

    v78 = *(v0 + 8);

    return v78();
  }

  v34 = v0 + 176;
  v35 = (v0 + 208);
  v36 = *(v0 + 304) + 32;
  v37 = *(v0 + 336);
  v86 = (v37 + 16);
  v82 = v37;
  v83 = (v37 + 8);
  while (1)
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 320);
    v42 = *(v0 + 328);
    v43 = *(v0 + 312);
    sub_1D17419CC(v36, v0 + 16);
    v44 = *v86;
    (*v86)(v40, v41, v42);
    v88 = sub_1D18730FC();
    v46 = sub_1D1C77130(v35);
    if (!*v45)
    {
      v38 = *(v0 + 352);
      v39 = *(v0 + 328);
      (v46)(v35, 0);
      (*v83)(v38, v39);
      goto LABEL_16;
    }

    v47 = v45;
    v48 = *(v0 + 344);
    v50 = *(v0 + 40);
    v49 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
    (*(v49 + 64))(v50, v49);
    sub_1D17419CC(v0 + 16, v0 + 56);
    v51 = *v47;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v47;
    v90 = *v47;
    *v47 = 0x8000000000000000;
    result = sub_1D1742188(v48);
    v56 = v53[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      if ((v52 & 1) == 0)
      {
        v73 = result;
        sub_1D1738B50();
        result = v73;
      }

      goto LABEL_24;
    }

    v61 = *(v0 + 344);
    sub_1D1727FEC(v59, v52);
    result = sub_1D1742188(v61);
    if ((v60 & 1) != (v62 & 1))
    {
      break;
    }

LABEL_24:
    v63 = *(v0 + 344);
    v64 = *(v0 + 328);
    if (v60)
    {
      v65 = (v90[7] + 40 * result);
      __swift_destroy_boxed_opaque_existential_1(v65);
      sub_1D16EEE20((v0 + 56), v65);
      v66 = *v83;
      (*v83)(v63, v64);
    }

    else
    {
      v90[(result >> 6) + 8] |= 1 << result;
      v67 = result;
      v44(v90[6] + *(v82 + 72) * result, v63, v64);
      sub_1D16EEE20((v0 + 56), v90[7] + 40 * v67);
      v66 = *(v82 + 8);
      result = (v66)(v63, v64);
      v68 = v90[2];
      v58 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v58)
      {
        goto LABEL_36;
      }

      v90[2] = v69;
    }

    v70 = *(v0 + 352);
    v71 = *(v0 + 328);
    v72 = *v47;
    *v47 = v90;

    v35 = (v0 + 208);
    (v46)(v0 + 208, 0);
    v66(v70, v71);
    v34 = v0 + 176;
LABEL_16:
    (v88)(v34, 0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v36 += 40;
    if (!--v33)
    {
      goto LABEL_29;
    }
  }

  v79 = *(v0 + 328);

  return sub_1D1E690FC();
}

double sub_1D1876974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_1D1742188(a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      if (*(v12 + 16))
      {
        v13 = sub_1D1742188(a1);
        if (v14)
        {
          sub_1D17419CC(*(v12 + 56) + 40 * v13, a4);

          return result;
        }
      }
    }
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1D1876A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a3;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = sub_1D1742188(a2);
  if ((v13 & 1) == 0 || (v14 = *(*(v11 + 56) + 8 * v12), , , !*(v14 + 16)) || (v15 = sub_1D1742188(a1), (v16 & 1) == 0))
  {

    return 0;
  }

  sub_1D17419CC(*(v14 + 56) + 40 * v15, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1D1877D48();
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t CoordinationDataModel.Errors.hash(into:)()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        return MEMORY[0x1D3892850](v2);
      case 4:
        v2 = 5;
        return MEMORY[0x1D3892850](v2);
      case 5:
        v2 = 6;
        return MEMORY[0x1D3892850](v2);
    }

LABEL_12:
    MEMORY[0x1D3892850](4);
    return sub_1D1E6850C();
  }

  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1D3892850](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1D3892850](v2);
  }

  if (v1 != 2)
  {
    goto LABEL_12;
  }

  v2 = 2;
  return MEMORY[0x1D3892850](v2);
}

uint64_t CoordinationDataModel.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        goto LABEL_15;
      case 4:
        v2 = 5;
        goto LABEL_15;
      case 5:
        v2 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_15;
      case 1:
        v2 = 1;
        goto LABEL_15;
      case 2:
        v2 = 2;
LABEL_15:
        MEMORY[0x1D3892850](v2);
        return sub_1D1E6926C();
    }
  }

  MEMORY[0x1D3892850](4);
  sub_1D1E6850C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1876D40()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        goto LABEL_15;
      case 4:
        v2 = 5;
        goto LABEL_15;
      case 5:
        v2 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_15;
      case 1:
        v2 = 1;
        goto LABEL_15;
      case 2:
        v2 = 2;
LABEL_15:
        MEMORY[0x1D3892850](v2);
        return sub_1D1E6926C();
    }
  }

  MEMORY[0x1D3892850](4);
  sub_1D1E6850C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1876E14()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        return MEMORY[0x1D3892850](v2);
      case 4:
        v2 = 5;
        return MEMORY[0x1D3892850](v2);
      case 5:
        v2 = 6;
        return MEMORY[0x1D3892850](v2);
    }

LABEL_12:
    MEMORY[0x1D3892850](4);
    return sub_1D1E6850C();
  }

  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1D3892850](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1D3892850](v2);
  }

  if (v1 != 2)
  {
    goto LABEL_12;
  }

  v2 = 2;
  return MEMORY[0x1D3892850](v2);
}

uint64_t sub_1D1876EC4()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        goto LABEL_15;
      case 4:
        v2 = 5;
        goto LABEL_15;
      case 5:
        v2 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_15;
      case 1:
        v2 = 1;
        goto LABEL_15;
      case 2:
        v2 = 2;
LABEL_15:
        MEMORY[0x1D3892850](v2);
        return sub_1D1E6926C();
    }
  }

  MEMORY[0x1D3892850](4);
  sub_1D1E6850C();
  return sub_1D1E6926C();
}