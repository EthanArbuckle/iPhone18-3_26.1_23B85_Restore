uint64_t sub_1E4778B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E477AAB4(a1, a2, type metadata accessor for ColorBarView.Styling);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for ColorBarView(0);
  *(a2 + *(v5 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();

  v8 = a2 + *(v5 + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1E4778C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = *(v78 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v71 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v74 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v71 - v21;
  sub_1E4878D2C();
  v73 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_1E4775568();
  v72 = v22;
  if (v23)
  {
    v71 = sub_1E487874C();
    v24 = a2;
    v25 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v26 = a3;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v28 = *MEMORY[0x1E69816D0];
    v29 = sub_1E487877C();
    v30 = v25 + v27;
    a3 = v26;
    (*(*(v29 - 8) + 104))(v30, v28, v29);
    *v25 = swift_getKeyPath();
    a2 = v24;
    *v16 = v71;
    v31 = sub_1E4773DE4();
    KeyPath = swift_getKeyPath();
    v33 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v33 = KeyPath;
    v33[1] = v31;
    v34 = sub_1E487864C();
    v35 = swift_getKeyPath();
    v36 = (v16 + *(v12 + 36));
    *v36 = v35;
    v36[1] = v34;
    sub_1E477372C(v16, v22, &qword_1ECF7B920, &unk_1E487DCF0);
    (*(v13 + 56))(v22, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v22, 1, 1, v12);
  }

  v80 = a2;
  v81 = a3;
  sub_1E477A374();

  v37 = sub_1E487848C();
  v39 = v38;
  v41 = v40;
  v42 = a1;
  sub_1E4775D1C();
  v43 = sub_1E48783EC();
  v45 = v44;
  v47 = v46;
  sub_1E477A3C8(v37, v39, v41 & 1);

  sub_1E4773DE4();
  v48 = sub_1E487842C();
  v50 = v49;
  LOBYTE(v37) = v51;

  sub_1E477A3C8(v43, v45, v47 & 1);

  sub_1E47740F4();
  v52 = sub_1E48783FC();
  v54 = v53;
  LOBYTE(v45) = v55;
  v57 = v56;

  sub_1E477A3C8(v48, v50, v37 & 1);

  v58 = swift_getKeyPath();
  v80 = v52;
  v81 = v54;
  v82 = v45 & 1;
  v83 = v57;
  v84 = v58;
  v85 = 1;
  v86 = 0;
  v59 = *(*v42 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v60 = v75;
  sub_1E487855C();
  sub_1E477A3C8(v52, v54, v45 & 1);

  v61 = v72;
  v62 = v74;
  sub_1E4773850(v72, v74, &qword_1ECF7B9D0, &qword_1E487AC00);
  v64 = v78;
  v63 = v79;
  v65 = *(v78 + 16);
  v66 = v76;
  v65(v76, v60, v79);
  v67 = v77;
  sub_1E4773850(v62, v77, &qword_1ECF7B9D0, &qword_1E487AC00);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D8, &qword_1E487AC08);
  v65((v67 + *(v68 + 48)), v66, v63);
  v69 = *(v64 + 8);
  v69(v60, v63);
  sub_1E47738B8(v61, &qword_1ECF7B9D0, &qword_1E487AC00);
  v69(v66, v63);
  sub_1E47738B8(v62, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47792A0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B858, &qword_1E487A898);
  v2 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v41 = &v40 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B860, &qword_1E487A8A0);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v40 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B868, &qword_1E487A8A8);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v40 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B870, &qword_1E487A8B0);
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v40 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B878, &qword_1E487A8B8);
  v11 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B880, &unk_1E487A8C0);
  v42 = *(v14 - 8);
  v15 = *(v42 + 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v40 - v20;
  v22 = sub_1E487725C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v40 - v28;
  sub_1E47758A8(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v42 = v13;
    sub_1E47738B8(v21, &unk_1ECF7B688, &qword_1E487C160);
    v30 = *(sub_1E47747B4() + 16);

    if (v30 || (v31 = *(sub_1E4774A4C() + 16), , v31) || (v32 = *(sub_1E4774D18() + 16), , v32 != 1))
    {
      v33 = v41;
      sub_1E4776F78(v41);
      v34 = &qword_1ECF7B858;
      v35 = &qword_1E487A898;
      sub_1E4773850(v33, v6, &qword_1ECF7B858, &qword_1E487A898);
    }

    else
    {
      v33 = v40;
      sub_1E4775FBC(v40);
      v34 = &qword_1ECF7B868;
      v35 = &qword_1E487A8A8;
      sub_1E4773850(v33, v6, &qword_1ECF7B868, &qword_1E487A8A8);
    }

    swift_storeEnumTagMultiPayload();
    sub_1E4779C7C();
    sub_1E4779F28();
    v39 = v45;
    sub_1E487803C();
    sub_1E47738B8(v33, v34, v35);
    sub_1E4773850(v39, v42, &qword_1ECF7B870, &qword_1E487A8B0);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1068, &qword_1ECF7B880, &unk_1E487A8C0);
    sub_1E477A2E0();
    sub_1E487803C();
    return sub_1E47738B8(v39, &qword_1ECF7B870, &qword_1E487A8B0);
  }

  else
  {
    (*(v23 + 32))(v29, v21, v22);
    v36 = (*(v23 + 16))(v27, v29, v22);
    MEMORY[0x1EEE9AC00](v36);
    *(&v40 - 2) = v1;
    sub_1E477A2E0();
    sub_1E487831C();
    v37 = v42;
    (*(v42 + 2))(v13, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1068, &qword_1ECF7B880, &unk_1E487A8C0);
    sub_1E487803C();
    (*(v37 + 8))(v17, v14);
    return (*(v23 + 8))(v29, v22);
  }
}

uint64_t sub_1E4779934@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B858, &qword_1E487A898);
  v1 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B860, &qword_1E487A8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B868, &qword_1E487A8A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B870, &qword_1E487A8B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(sub_1E47747B4() + 16);

  if (v16 || (v17 = *(sub_1E4774A4C() + 16), , v17) || (v18 = *(sub_1E4774D18() + 16), , v18 != 1))
  {
    sub_1E4776F78(v3);
    sub_1E4773850(v3, v7, &qword_1ECF7B858, &qword_1E487A898);
    swift_storeEnumTagMultiPayload();
    sub_1E4779C7C();
    sub_1E4779F28();
    sub_1E487803C();
    v19 = v3;
    v20 = &qword_1ECF7B858;
    v21 = &qword_1E487A898;
  }

  else
  {
    sub_1E4775FBC(v11);
    sub_1E4773850(v11, v7, &qword_1ECF7B868, &qword_1E487A8A8);
    swift_storeEnumTagMultiPayload();
    sub_1E4779C7C();
    sub_1E4779F28();
    sub_1E487803C();
    v19 = v11;
    v20 = &qword_1ECF7B868;
    v21 = &qword_1E487A8A8;
  }

  sub_1E47738B8(v19, v20, v21);
  sub_1E477372C(v15, v24, &qword_1ECF7B870, &qword_1E487A8B0);
}

unint64_t sub_1E4779C7C()
{
  result = qword_1EE2B11D0;
  if (!qword_1EE2B11D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B868, &qword_1E487A8A8);
    sub_1E477A00C(&qword_1EE2B12B0, &qword_1ECF7B888, &qword_1E487A8D0, sub_1E4779D60);
    sub_1E477A00C(&qword_1EE2B12E0, &qword_1ECF7B8B8, &qword_1E487A900, sub_1E4779E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11D0);
  }

  return result;
}

uint64_t sub_1E4779D90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4779E70()
{
  result = qword_1EE2B1488;
  if (!qword_1EE2B1488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B8A0, &qword_1E487A8E8);
    sub_1E4773680(&qword_1EE2B0FB0, &qword_1ECF7B8A8, &unk_1E487A8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1488);
  }

  return result;
}

unint64_t sub_1E4779F28()
{
  result = qword_1EE2B11C8;
  if (!qword_1EE2B11C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B858, &qword_1E487A898);
    sub_1E477A00C(&qword_1EE2B12A0, &qword_1ECF7B8C0, &qword_1E487A908, sub_1E477A0C0);
    sub_1E477A00C(&qword_1EE2B12C0, &qword_1ECF7B8F0, &qword_1E487A938, sub_1E477A0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11C8);
  }

  return result;
}

uint64_t sub_1E477A00C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E477AB7C(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E477A150(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E477A1D4()
{
  result = qword_1EE2B1598;
  if (!qword_1EE2B1598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B8E0, &qword_1E487A928);
    sub_1E4773680(&qword_1EE2B1650, &qword_1ECF7B8E8, &qword_1E487A930);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1598);
  }

  return result;
}

unint64_t sub_1E477A28C()
{
  result = qword_1EE2B2330[0];
  if (!qword_1EE2B2330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B2330);
  }

  return result;
}

unint64_t sub_1E477A2E0()
{
  result = qword_1EE2B1148;
  if (!qword_1EE2B1148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B870, &qword_1E487A8B0);
    sub_1E4779C7C();
    sub_1E4779F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1148);
  }

  return result;
}

unint64_t sub_1E477A374()
{
  result = qword_1EE2B5A40;
  if (!qword_1EE2B5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A40);
  }

  return result;
}

uint64_t sub_1E477A3C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1E477A3D8(uint64_t a1)
{
  v2 = *(sub_1E47747B4() + 16);

  if (v2 || (v3 = *(sub_1E4774A4C() + 16), , v3) || (v4 = *(sub_1E4774D18() + 16), , v5 = 1.0, v4 != 1))
  {
    v6 = *(sub_1E4775E6C() + 112);

    v5 = fmax(v6, 1.0);
  }

  v7 = sub_1E4773DE4();
  sub_1E487201C(v7, a1);
  v9 = v8;

  v10 = v5 * v9;
  v11 = *(sub_1E4775E6C() + 48);

  return v10 + v11;
}

uint64_t sub_1E477A484(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E477A490()
{
  result = qword_1EE2B4740[0];
  if (!qword_1EE2B4740[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B930, &qword_1E487C540);
    sub_1E4773680(&qword_1EE2B5A48, &qword_1ECF7B938, &qword_1E487AB40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B4740);
  }

  return result;
}

uint64_t sub_1E477A548(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1E4862224(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1E485807C(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1E485807C((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_1E477A6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for NarrowAllDayView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  v8 = sub_1E487732C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[6]);

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487894C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1E4877CCC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1E4877B3C();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  sub_1E477A484(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v19 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1E487893C();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  v22 = *(v5 + v1[13]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E477AA20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NarrowAllDayView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E477AAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E477AB1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E477AB7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E477ABC4()
{
  result = qword_1EE2B1198;
  if (!qword_1EE2B1198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA00, &unk_1E487AC30);
    sub_1E4773680(&qword_1EE2B1068, &qword_1ECF7B880, &unk_1E487A8C0);
    sub_1E477A2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1198);
  }

  return result;
}

void sub_1E477AC80()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE2BAF40;
  v1 = sub_1E48771EC();
  v3 = v2;

  qword_1EE2BAF18 = v1;
  unk_1EE2BAF20 = v3;
}

void sub_1E477AD50()
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE2BAF40;
  v1 = sub_1E48771EC();
  v3 = v2;

  qword_1EE2BAF28 = v1;
  unk_1EE2BAF30 = v3;
}

uint64_t CalendarNextEventComplication.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA08, &qword_1E487AC50);
  v38 = *(v1 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA10, &qword_1E487AC58);
  v39 = *(v41 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA18, &unk_1E487AC60);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v36 - v10;
  v11 = type metadata accessor for EventKitDataSource();
  v12 = swift_allocObject();
  v13 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  }

  type metadata accessor for NextEventComplicationConfigurationIntent();
  *(v12 + 16) = v13;
  v50 = v11;
  v51 = &off_1F5E7D4F8;
  v47 = v12;
  type metadata accessor for ListTimeline();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(&v47, v11);
  v16 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v14[5] = v11;
  v14[6] = &off_1F5E7D4F8;
  v14[2] = v20;
  v21 = MEMORY[0x1E69E7CC0];
  v14[7] = MEMORY[0x1E69E7CC0];
  v14[8] = v21;
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v47 = v14;
  type metadata accessor for CalendarNextEventComplication.WidgetView();
  sub_1E477CE64(qword_1EE2B4530, type metadata accessor for CalendarNextEventComplication.WidgetView);
  sub_1E477B6B8();
  sub_1E487898C();
  if (qword_1EE2B4490 != -1)
  {
    swift_once();
  }

  v47 = qword_1EE2BAF18;
  v48 = unk_1EE2BAF20;
  v37 = sub_1E4773680(&qword_1EE2B0E50, &qword_1ECF7BA08, &qword_1E487AC50);
  v22 = sub_1E477A374();
  sub_1E487800C();
  (*(v38 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v23 = sub_1E487894C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E487AC40;
  v28 = v27 + v26;
  v29 = v7;
  v30 = *(v24 + 104);
  v30(v28, *MEMORY[0x1E6985808], v23);
  v30(v28 + v25, *MEMORY[0x1E6985820], v23);
  v30(v28 + 2 * v25, *MEMORY[0x1E6985830], v23);
  v47 = v1;
  v48 = MEMORY[0x1E69E6158];
  v49 = v37;
  v50 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v40;
  v32 = v41;
  sub_1E4877FFC();

  (*(v39 + 8))(v29, v32);
  if (qword_1EE2B4498 != -1)
  {
    swift_once();
  }

  v47 = qword_1EE2BAF28;
  v48 = unk_1EE2BAF30;
  v45 = v32;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v43;
  sub_1E4877FEC();
  return (*(v42 + 8))(v33, v34);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1E477B568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E477CEAC(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for CalendarNextEventComplication.WidgetView() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CalendarNextEventComplication.WidgetView()
{
  result = qword_1EE2B4520;
  if (!qword_1EE2B4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E477B6B8()
{
  result = qword_1EE2B1E98[0];
  if (!qword_1EE2B1E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B1E98);
  }

  return result;
}

uint64_t sub_1E477B728@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  Event = type metadata accessor for CalendarNextEventComplication.WidgetView();
  sub_1E4773850(v1 + *(Event + 20), v11, &qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487894C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E477B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v95 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA38, &qword_1E487AD88);
  v2 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v77 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA40, &qword_1E487AD90);
  v4 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v81 = &v77 - v5;
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v6 = *(*(EventContentView - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentView);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for CircularNextEventContentView(0);
  v9 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA48, &qword_1E487AD98);
  v12 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v77 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA50, &qword_1E487ADA0);
  v14 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v77 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA58, &qword_1E487ADA8);
  v16 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v86 = &v77 - v17;
  v18 = sub_1E48782AC();
  v77 = *(v18 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for InlineNextEventContentView(0);
  v22 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v24 = (&v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1E487894C();
  v87 = *(v25 - 8);
  v26 = *(v87 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v77 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA60, &unk_1E487ADB0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v90 = &v77 - v34;
  sub_1E4878D2C();
  v89 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = v88;
  sub_1E477B728(v31);
  v36 = (*(v87 + 88))(v31, v25);
  if (v36 == *MEMORY[0x1E6985820])
  {
    v37 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v38 = *(v37 + 20);
    v39 = sub_1E487732C();
    (*(*(v39 - 8) + 16))(v11, v35 + v38, v39);
    v40 = *(v35 + *(v37 + 24));
    KeyPath = swift_getKeyPath();
    v42 = v85;
    *&v11[*(v85 + 24)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v43 = swift_getKeyPath();
    *&v11[v42[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v11[v42[5]] = v40;
    v44 = &v11[v42[7]];
    *v44 = v43;
    v44[8] = 0;
    sub_1E477CEAC(v11, v84, type metadata accessor for CircularNextEventContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CE64(&qword_1EE2B21F8, type metadata accessor for InlineNextEventContentView);
    sub_1E477CE64(qword_1EE2B1FE8, type metadata accessor for CircularNextEventContentView);

    v45 = v86;
    sub_1E487803C();
    sub_1E4773850(v45, v93, &qword_1ECF7BA58, &qword_1E487ADA8);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB94();
    sub_1E477CC80();
    v46 = v90;
    sub_1E487803C();
    sub_1E47738B8(v45, &qword_1ECF7BA58, &qword_1E487ADA8);
    v47 = type metadata accessor for CircularNextEventContentView;
    v48 = v11;
LABEL_11:
    sub_1E477CE04(v48, v47);
    sub_1E477CD3C(v46, v95);
  }

  if (v36 == *MEMORY[0x1E6985830])
  {
    v49 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v50 = *(v49 + 20);
    v51 = sub_1E487732C();
    (*(*(v51 - 8) + 16))(v8, v35 + v50, v51);
    v52 = *(v35 + *(v49 + 24));
    v53 = swift_getKeyPath();
    v54 = EventContentView;
    *&v8[*(EventContentView + 32)] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v8[v54[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v55 = swift_getKeyPath();
    *&v8[v54[5]] = v52;
    v56 = &v8[v54[6]];
    v57 = qword_1EE2B1B70;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = *&byte_1EE2BAD48;
    v97[2] = xmmword_1EE2BAD38;
    v97[3] = *&byte_1EE2BAD48;
    v59 = qword_1EE2BAD58;
    v98 = qword_1EE2BAD58;
    v61 = xmmword_1EE2BAD18;
    v60 = xmmword_1EE2BAD28;
    v97[0] = xmmword_1EE2BAD18;
    v97[1] = xmmword_1EE2BAD28;
    *(v56 + 2) = xmmword_1EE2BAD38;
    *(v56 + 3) = v58;
    *(v56 + 8) = v59;
    *v56 = v61;
    *(v56 + 1) = v60;
    v8[v54[7]] = 0;
    v62 = &v8[v54[10]];
    *v62 = v55;
    v62[8] = 0;
    sub_1E477CEAC(v8, v80, type metadata accessor for RectangularNextEventContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB38(v97, v96);
    sub_1E477CE64(&qword_1EE2B1B68, type metadata accessor for RectangularNextEventContentView);
    v63 = v81;
    sub_1E487803C();
    sub_1E4773850(v63, v93, &qword_1ECF7BA40, &qword_1E487AD90);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB94();
    sub_1E477CC80();
    v46 = v90;
    sub_1E487803C();
    sub_1E47738B8(v63, &qword_1ECF7BA40, &qword_1E487AD90);
    v47 = type metadata accessor for RectangularNextEventContentView;
    v48 = v8;
    goto LABEL_11;
  }

  if (v36 == *MEMORY[0x1E6985808])
  {
    v64 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v65 = *(v64 + 20);
    v66 = v83;
    v67 = *(v83 + 20);
    v68 = sub_1E487732C();
    (*(*(v68 - 8) + 16))(v24 + v67, v35 + v65, v68);
    v69 = *(v35 + *(v64 + 24));

    sub_1E48782BC();
    v70 = v77;
    (*(v77 + 104))(v21, *MEMORY[0x1E6980EA0], v18);
    v71 = sub_1E48782CC();

    (*(v70 + 8))(v21, v18);
    *v24 = v71;
    v72 = v66[9];
    *(v24 + v72) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v73 = v66[10];
    *(v24 + v73) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *(v24 + v66[6]) = v69;
    *(v24 + v66[7]) = 0;
    *(v24 + v66[8]) = 0;
    sub_1E477CEAC(v24, v84, type metadata accessor for InlineNextEventContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CE64(&qword_1EE2B21F8, type metadata accessor for InlineNextEventContentView);
    sub_1E477CE64(qword_1EE2B1FE8, type metadata accessor for CircularNextEventContentView);
    v74 = v86;
    sub_1E487803C();
    sub_1E4773850(v74, v93, &qword_1ECF7BA58, &qword_1E487ADA8);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB94();
    sub_1E477CC80();
    v46 = v90;
    sub_1E487803C();
    sub_1E47738B8(v74, &qword_1ECF7BA58, &qword_1E487ADA8);
    v47 = type metadata accessor for InlineNextEventContentView;
    v48 = v24;
    goto LABEL_11;
  }

  *&v97[0] = 0;
  *(&v97[0] + 1) = 0xE000000000000000;
  sub_1E4878F9C();
  MEMORY[0x1E69192D0](0xD00000000000001BLL, 0x80000001E48A64A0);
  sub_1E477B728(v29);
  sub_1E477CE64(&qword_1EE2B4700, MEMORY[0x1E6985840]);
  v76 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v76);

  (*(v87 + 8))(v29, v25);
  MEMORY[0x1E69192D0](0xD00000000000001CLL, 0x80000001E48A64C0);
  result = sub_1E487903C();
  __break(1u);
  return result;
}

uint64_t sub_1E477C798@<X0>(uint64_t a1@<X8>)
{
  sub_1E477B930(v1, a1);
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA28, &qword_1E487AD78) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80) + 28);
  result = sub_1E4877A7C();
  *v4 = KeyPath;
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNextEventComplication(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CalendarNextEventComplication(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_1E477C934()
{
  type metadata accessor for CalendarEventsTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_1E477C9B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E477C9B8()
{
  if (!qword_1EE2B1690)
  {
    sub_1E487894C();
    v0 = sub_1E4877B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B1690);
    }
  }
}

uint64_t sub_1E477CA2C()
{
  sub_1E4877E9C();
  sub_1E477CE64(&qword_1EE2B1280, MEMORY[0x1E6985528]);
  sub_1E4877F2C();
  return v1;
}

uint64_t sub_1E477CAA8@<X0>(_BYTE *a1@<X8>)
{
  sub_1E4877E9C();
  sub_1E477CE64(&qword_1EE2B1280, MEMORY[0x1E6985528]);
  result = sub_1E4877F2C();
  *a1 = v3;
  return result;
}

unint64_t sub_1E477CB94()
{
  result = qword_1EE2B1260;
  if (!qword_1EE2B1260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA58, &qword_1E487ADA8);
    sub_1E477CE64(&qword_1EE2B21F8, type metadata accessor for InlineNextEventContentView);
    sub_1E477CE64(qword_1EE2B1FE8, type metadata accessor for CircularNextEventContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1260);
  }

  return result;
}

unint64_t sub_1E477CC80()
{
  result = qword_1EE2B1250;
  if (!qword_1EE2B1250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA40, &qword_1E487AD90);
    sub_1E477CE64(&qword_1EE2B1B68, type metadata accessor for RectangularNextEventContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1250);
  }

  return result;
}

uint64_t sub_1E477CD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA60, &unk_1E487ADB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E477CDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877EAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E477CE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E477CE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E477CEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E477CF14()
{
  result = qword_1EE2B14F0;
  if (!qword_1EE2B14F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA28, &qword_1E487AD78);
    sub_1E477CFCC();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14F0);
  }

  return result;
}

unint64_t sub_1E477CFCC()
{
  result = qword_1EE2B1040;
  if (!qword_1EE2B1040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA68, &qword_1E487AE88);
    sub_1E477D050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1040);
  }

  return result;
}

unint64_t sub_1E477D050()
{
  result = qword_1EE2B1168;
  if (!qword_1EE2B1168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA60, &unk_1E487ADB0);
    sub_1E477CB94();
    sub_1E477CC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1168);
  }

  return result;
}

uint64_t type metadata accessor for EventBackgroundView()
{
  result = qword_1EE2B2DD0;
  if (!qword_1EE2B2DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E477D150()
{
  sub_1E477D38C(319, &qword_1EE2B48A8, type metadata accessor for Event, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E477D33C();
    if (v1 <= 0x3F)
    {
      sub_1E477D38C(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E477D38C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E477D38C(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            sub_1E477D38C(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
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

void sub_1E477D33C()
{
  if (!qword_1EE2B16B0)
  {
    v0 = sub_1E4877B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B16B0);
    }
  }
}

void sub_1E477D38C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EventBackgroundView.DisplayOpacity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventBackgroundView.DisplayOpacity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E477D550()
{
  result = qword_1ECF7BA70;
  if (!qword_1ECF7BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BA70);
  }

  return result;
}

double sub_1E477D5A4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for EventBackgroundView() + 28));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC();

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_1E477D700@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for EventBackgroundView();
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E477D908@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for EventBackgroundView();
  sub_1E4773850(v1 + *(v12 + 36), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E477DB10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for EventBackgroundView();
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E477DD18()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for EventBackgroundView() + 44));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E477DE9C@<X0>(uint64_t a1@<X8>)
{
  v151 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA78, &qword_1E487AF90);
  v123 = *(v142 - 8);
  v2 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v121 = &v114 - v3;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA80, &qword_1E487AF98);
  v4 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v140 = &v114 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA88, &qword_1E487AFA0);
  v6 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v115 = &v114 - v7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA90, &qword_1E487AFA8);
  v118 = *(v136 - 8);
  v8 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v117 = &v114 - v9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA98, &qword_1E487AFB0);
  v10 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v139 = &v114 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAA0, &qword_1E487AFB8);
  v12 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v114 - v13;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAA8, &qword_1E487AFC0);
  v124 = *(v141 - 8);
  v14 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v122 = &v114 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAB0, &qword_1E487AFC8);
  v16 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v138 = &v114 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAB8, &qword_1E487AFD0);
  v18 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v116 = &v114 - v19;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAC0, &qword_1E487AFD8);
  v120 = *(v135 - 8);
  v20 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v119 = &v114 - v21;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAC8, &qword_1E487AFE0);
  v22 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v137 = &v114 - v23;
  v130 = sub_1E487893C();
  v129 = *(v130 - 8);
  v24 = *(v129 + 64);
  v25 = MEMORY[0x1EEE9AC00](v130);
  v128 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v114 - v27;
  v126 = sub_1E487875C();
  v125 = *(v126 - 8);
  v28 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E4877B3C();
  v143 = *(v31 - 8);
  v32 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAD0, &qword_1E487AFE8);
  v149 = *(v35 - 8);
  v150 = v35;
  v36 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v144 = &v114 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v114 - v40;
  v42 = type metadata accessor for Event();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v114 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4773850(v1, v41, &qword_1ECF7B950, &unk_1E487AE90);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_1E47738B8(v41, &qword_1ECF7B950, &unk_1E487AE90);
    v47 = 1;
    v48 = v151;
  }

  else
  {
    sub_1E4770850(v41, v46);
    v49 = v46[*(v42 + 56)];
    v50 = v46;
    if ((v49 - 1) > 1)
    {
      v55 = v144;
      if (v46[*(v42 + 48)] == 1)
      {
        v56 = *MEMORY[0x1E697F470];
        v57 = sub_1E4877F7C();
        v58 = v115;
        (*(*(v57 - 8) + 104))(v115, v56, v57);
        sub_1E477D700(v34);
        v59 = sub_1E476E19C(v46, v34);
        (*(v143 + 8))(v34, v31);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAF8, &qword_1E487B010);
        *(v58 + *(v60 + 52)) = v59;
        *(v58 + *(v60 + 56)) = 256;
        v61 = sub_1E477F15C();
        v62 = v133;
        *(v58 + *(v133 + 36)) = v61;
        v63 = sub_1E477F53C();
        v64 = v117;
        sub_1E48784AC();
        sub_1E47738B8(v58, &qword_1ECF7BA88, &qword_1E487AFA0);
        v65 = v118;
        v66 = v136;
        (*(v118 + 16))(v140, v64, v136);
        swift_storeEnumTagMultiPayload();
        *&v154 = v62;
        *(&v154 + 1) = v63;
        swift_getOpaqueTypeConformance2();
        v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
        v68 = sub_1E477F3CC();
        *&v154 = v67;
        *(&v154 + 1) = v68;
        swift_getOpaqueTypeConformance2();
        v101 = v139;
        sub_1E487803C();
        (*(v65 + 8))(v64, v66);
      }

      else
      {
        sub_1E477D700(v34);
        v91 = sub_1E476E19C(v46, v34);
        (*(v143 + 8))(v34, v31);
        v92 = sub_1E477F15C();
        v93 = *(sub_1E477DD18() + 56);

        v94 = *(v1 + *(type metadata accessor for EventBackgroundView() + 20));
        *&v152 = v91;
        WORD4(v152) = 256;
        *v153 = v92;
        *&v153[8] = v93;
        *&v153[16] = v94;
        *&v153[24] = 256;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
        v96 = sub_1E477F3CC();
        v143 = v46;
        v97 = v121;
        sub_1E48784AC();
        v154 = v152;
        *v155 = *v153;
        *&v155[10] = *&v153[10];
        sub_1E47738B8(&v154, &qword_1ECF7BAD8, &unk_1E487AFF0);
        v98 = v123;
        v99 = v142;
        (*(v123 + 16))(v140, v97, v142);
        swift_storeEnumTagMultiPayload();
        v100 = sub_1E477F53C();
        *&v152 = v133;
        *(&v152 + 1) = v100;
        swift_getOpaqueTypeConformance2();
        *&v152 = v95;
        *(&v152 + 1) = v96;
        swift_getOpaqueTypeConformance2();
        v101 = v139;
        sub_1E487803C();
        v102 = v97;
        v50 = v143;
        (*(v98 + 8))(v102, v99);
      }

      v103 = &qword_1ECF7BA98;
      v104 = &qword_1E487AFB0;
      sub_1E4773850(v101, v147, &qword_1ECF7BA98, &qword_1E487AFB0);
      swift_storeEnumTagMultiPayload();
      sub_1E477F5F4();
      sub_1E477F8E8();
      sub_1E487803C();
    }

    else
    {
      sub_1E477D5A4();
      sub_1E477D700(v34);
      v51 = (v143 + 8);
      LODWORD(v142) = v49;
      if (v49 == 2)
      {
        v52 = sub_1E476F76C(v46, v34);
        v53 = *v51;
        (*v51)(v34, v31);
        sub_1E477D700(v34);
        v54 = sub_1E476FE00(v46, v34);
      }

      else
      {
        v52 = sub_1E47711F0(v34);
        v53 = *v51;
        (*v51)(v34, v31);
        sub_1E477D700(v34);
        v54 = sub_1E4771208(v34);
      }

      v69 = v54;
      v53(v34, v31);
      CUIKCreateStripedImage();
      sub_1E487873C();

      v70 = v125;
      v71 = v126;
      (*(v125 + 104))(v30, *MEMORY[0x1E6981628], v126);
      v143 = sub_1E487878C();

      (*(v70 + 8))(v30, v71);
      v72 = v127;
      sub_1E477DB10(v127);
      v73 = v128;
      sub_1E487891C();
      v74 = sub_1E48788FC();
      v75 = *(v129 + 8);
      v76 = v73;
      v77 = v130;
      v75(v76, v130);
      v75(v72, v77);
      v78 = *MEMORY[0x1E6993338];
      if (v74)
      {
        v79 = 0.15;
      }

      else
      {
        v79 = *MEMORY[0x1E6993338];
      }

      v50 = v46;
      v101 = v137;
      if (v46[*(v42 + 48)] == 1)
      {
        v80 = v131;
        v81 = v116;
        v82 = &v116[*(v131 + 36)];
        v83 = *MEMORY[0x1E697F470];
        v84 = sub_1E4877F7C();
        (*(*(v84 - 8) + 104))(v82, v83, v84);
        *&v82[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB08, &qword_1E487B020) + 36)] = 256;
        *v81 = v143;
        *(v81 + 8) = v79;
        v85 = sub_1E477F6F4();

        v86 = v119;
        sub_1E48784AC();
        sub_1E47738B8(v81, &qword_1ECF7BAB8, &qword_1E487AFD0);
        v87 = v120;
        v88 = v135;
        (*(v120 + 16))(v138, v86, v135);
        swift_storeEnumTagMultiPayload();
        *&v154 = v80;
        *(&v154 + 1) = v85;
        swift_getOpaqueTypeConformance2();
        v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB10, &unk_1E487B028);
        v90 = sub_1E477F830();
        *&v154 = v89;
        *(&v154 + 1) = v90;
        swift_getOpaqueTypeConformance2();
        sub_1E487803C();
        (*(v87 + 8))(v86, v88);
      }

      else
      {
        v105 = *(sub_1E477DD18() + 56);

        v106 = *(v1 + *(type metadata accessor for EventBackgroundView() + 20));
        *&v154 = v143;
        *(&v154 + 1) = v79;
        *v155 = v105;
        *&v155[8] = v106;
        *&v155[16] = 256;
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB10, &unk_1E487B028);
        v108 = sub_1E477F830();
        v109 = v122;
        sub_1E48784AC();
        v110 = v124;
        v111 = v141;
        (*(v124 + 16))(v138, v109, v141);
        swift_storeEnumTagMultiPayload();
        v112 = sub_1E477F6F4();
        *&v154 = v131;
        *(&v154 + 1) = v112;
        swift_getOpaqueTypeConformance2();
        *&v154 = v107;
        *(&v154 + 1) = v108;
        swift_getOpaqueTypeConformance2();
        sub_1E487803C();
        (*(v110 + 8))(v109, v111);
      }

      v55 = v144;
      v103 = &qword_1ECF7BAC8;
      v104 = &qword_1E487AFE0;
      sub_1E4773850(v101, v147, &qword_1ECF7BAC8, &qword_1E487AFE0);
      swift_storeEnumTagMultiPayload();
      sub_1E477F5F4();
      sub_1E477F8E8();
      sub_1E487803C();
    }

    sub_1E47738B8(v101, v103, v104);
    sub_1E47710AC(v50);
    v48 = v151;
    sub_1E475EF10(v55, v151);
    v47 = 0;
  }

  return (*(v149 + 56))(v48, v47, 1, v150);
}

double sub_1E477F15C()
{
  v1 = sub_1E4877CCC();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = sub_1E487893C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = v0;
  sub_1E477DB10(&v23 - v14);
  sub_1E487891C();
  v17 = sub_1E48788FC();
  v18 = *(v9 + 8);
  v18(v13, v8);
  v18(v15, v8);
  if (v17)
  {
    return 0.15;
  }

  sub_1E477D908(v7);
  sub_1E4877CAC();
  sub_1E477F9E8();
  v20 = sub_1E4878EAC();
  v21 = *(v24 + 8);
  v21(v5, v1);
  v21(v7, v1);
  if (v20)
  {
    return 0.3;
  }

  v22 = type metadata accessor for EventBackgroundView();
  result = 0.5;
  if (*(v16 + *(v22 + 24)))
  {
    return 1.0;
  }

  return result;
}

unint64_t sub_1E477F3CC()
{
  result = qword_1EE2B1420;
  if (!qword_1EE2B1420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
    sub_1E477F484();
    sub_1E4773680(&qword_1EE2B1668, &qword_1ECF7BAF0, &qword_1E487B008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1420);
  }

  return result;
}

unint64_t sub_1E477F484()
{
  result = qword_1EE2B15A0;
  if (!qword_1EE2B15A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAE0, &unk_1E48803E0);
    sub_1E4773680(&qword_1EE2B16C8, &qword_1ECF7BAE8, &qword_1E487B000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15A0);
  }

  return result;
}

unint64_t sub_1E477F53C()
{
  result = qword_1EE2B15A8;
  if (!qword_1EE2B15A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA88, &qword_1E487AFA0);
    sub_1E4773680(&unk_1EE2B16D8, &qword_1ECF7BAF8, &qword_1E487B010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15A8);
  }

  return result;
}

unint64_t sub_1E477F5F4()
{
  result = qword_1EE2B1188;
  if (!qword_1EE2B1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAC8, &qword_1E487AFE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAB8, &qword_1E487AFD0);
    sub_1E477F6F4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB10, &unk_1E487B028);
    sub_1E477F830();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1188);
  }

  return result;
}

unint64_t sub_1E477F6F4()
{
  result = qword_1EE2B13B0;
  if (!qword_1EE2B13B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAB8, &qword_1E487AFD0);
    sub_1E477F7AC();
    sub_1E4773680(&qword_1EE2B1660, &qword_1ECF7BB08, &qword_1E487B020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13B0);
  }

  return result;
}

unint64_t sub_1E477F7AC()
{
  result = qword_1EE2B14E8;
  if (!qword_1EE2B14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB00, &qword_1E487B018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14E8);
  }

  return result;
}

unint64_t sub_1E477F830()
{
  result = qword_1EE2B13B8;
  if (!qword_1EE2B13B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB10, &unk_1E487B028);
    sub_1E477F7AC();
    sub_1E4773680(&qword_1EE2B1668, &qword_1ECF7BAF0, &qword_1E487B008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13B8);
  }

  return result;
}

unint64_t sub_1E477F8E8()
{
  result = qword_1EE2B1190;
  if (!qword_1EE2B1190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA98, &qword_1E487AFB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA88, &qword_1E487AFA0);
    sub_1E477F53C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD8, &unk_1E487AFF0);
    sub_1E477F3CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1190);
  }

  return result;
}

unint64_t sub_1E477F9E8()
{
  result = qword_1EE2B5A60;
  if (!qword_1EE2B5A60)
  {
    sub_1E4877CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A60);
  }

  return result;
}

unint64_t sub_1E477FA40()
{
  result = qword_1EE2B1138;
  if (!qword_1EE2B1138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB18, &qword_1E487B038);
    sub_1E477FAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1138);
  }

  return result;
}

unint64_t sub_1E477FAC4()
{
  result = qword_1EE2B1140;
  if (!qword_1EE2B1140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BAD0, &qword_1E487AFE8);
    sub_1E477F5F4();
    sub_1E477F8E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1140);
  }

  return result;
}

uint64_t type metadata accessor for Location()
{
  result = qword_1EE2B17A8;
  if (!qword_1EE2B17A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E477FBC4()
{
  sub_1E487719C();
  if (v0 <= 0x3F)
  {
    sub_1E477FC48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E477FC48()
{
  if (!qword_1EE2B0E20)
  {
    v0 = sub_1E4878E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B0E20);
    }
  }
}

uint64_t sub_1E477FC98(uint64_t a1)
{
  sub_1E487914C();
  sub_1E487719C();
  sub_1E477FFDC(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = *v3;
    sub_1E487916C();
    sub_1E4878C0C();
  }

  else
  {
    sub_1E487916C();
  }

  return sub_1E487917C();
}

uint64_t sub_1E477FD6C(uint64_t a1, uint64_t a2)
{
  sub_1E487719C();
  sub_1E477FFDC(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v4 = (v2 + *(a2 + 20));
  if (!v4[1])
  {
    return sub_1E487916C();
  }

  v5 = *v4;
  sub_1E487916C();

  return sub_1E4878C0C();
}

uint64_t sub_1E477FE40(uint64_t a1, uint64_t a2)
{
  sub_1E487914C();
  sub_1E487719C();
  sub_1E477FFDC(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_1E487916C();
    sub_1E4878C0C();
  }

  else
  {
    sub_1E487916C();
  }

  return sub_1E487917C();
}

uint64_t sub_1E477FF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E487715C())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_1E48790EC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E477FFDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NarrowEventTitleText()
{
  result = qword_1EE2B5608;
  if (!qword_1EE2B5608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4780098()
{
  type metadata accessor for Event();
  if (v0 <= 0x3F)
  {
    sub_1E4780174(319, &qword_1EE2B0DA0);
    if (v1 <= 0x3F)
    {
      sub_1E4780174(319, &qword_1EE2B1060);
      if (v2 <= 0x3F)
      {
        sub_1E47801C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E4780174(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E4878E5C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1E47801C0()
{
  if (!qword_1EE2B1688)
  {
    sub_1E4877B3C();
    v0 = sub_1E4877B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B1688);
    }
  }
}

uint64_t sub_1E4780234@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowEventTitleText();
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E478043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v89 = sub_1E4877B3C();
  v88 = *(v89 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1E487846C();
  v92 = *(v94 - 8);
  v5 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB30, &qword_1E487B130);
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v86 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB38, &qword_1E487B138);
  v12 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v99 = &v86 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB40, &qword_1E487B140);
  v14 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v86 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148);
  v16 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v91 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB50, &qword_1E487B150);
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = *(v104 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v103 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v86 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v86 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v97 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v86 - v32;
  sub_1E4878D2C();
  v93 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = *(a1 + *(type metadata accessor for Event() + 56));
  v107 = a1;
  if (v33 == 1)
  {
    v34 = sub_1E487874C();
    v35 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v37 = *MEMORY[0x1E69816D0];
    v38 = sub_1E487877C();
    v39 = v35 + v36;
    v40 = v107;
    (*(*(v38 - 8) + 104))(v39, v37, v38);
    *v35 = swift_getKeyPath();
    *v27 = v34;
    v41 = *(v40 + *(type metadata accessor for NarrowEventTitleText() + 20));
    KeyPath = swift_getKeyPath();
    v43 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v43 = KeyPath;
    v43[1] = v41;

    v44 = sub_1E487864C();
    v45 = swift_getKeyPath();
    v46 = (v27 + *(v23 + 36));
    *v46 = v45;
    v46[1] = v44;
    v47 = v108;
    sub_1E47811C4(v27, v108);
    (*(v24 + 56))(v47, 0, 1, v23);
  }

  else
  {
    (*(v24 + 56))(v108, 1, 1, v23);
  }

  v109 = sub_1E47CC708();
  v110 = v48;
  sub_1E477A374();
  v49 = sub_1E487848C();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = swift_getKeyPath();
  v109 = v49;
  v110 = v51;
  v111 = v53 & 1;
  v112 = v55;
  v113 = v56;
  v114 = 0;
  sub_1E487845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB58, &unk_1E487F1D0);
  sub_1E4780E40();
  v57 = v107;
  sub_1E487853C();
  (*(v92 + 8))(v7, v94);
  sub_1E477A3C8(v49, v51, v53 & 1);

  v58 = type metadata accessor for NarrowEventTitleText();
  v59 = *(v57 + v58[5]);
  v60 = swift_getKeyPath();
  v61 = v99;
  (*(v95 + 32))(v99, v11, v96);
  v62 = (v61 + *(v90 + 36));
  *v62 = v60;
  v62[1] = v59;
  v63 = *(v57 + v58[7]);

  v64 = v63;
  if (!v63)
  {
    v65 = v87;
    sub_1E4780234(v87);
    v64 = sub_1E476EA20(v57, v65);
    (*(v88 + 8))(v65, v89);
  }

  v66 = swift_getKeyPath();
  v67 = v100;
  sub_1E477372C(v61, v100, &qword_1ECF7BB38, &qword_1E487B138);
  v68 = (v67 + *(v98 + 36));
  *v68 = v66;
  v68[1] = v64;
  v69 = v57 + v58[6];
  v70 = *v69;
  v71 = *(v69 + 8);
  v72 = swift_getKeyPath();
  v73 = v91;
  sub_1E477372C(v67, v91, &qword_1ECF7BB40, &qword_1E487B140);
  v74 = v73 + *(v101 + 36);
  *v74 = v72;
  *(v74 + 8) = v70;
  *(v74 + 16) = v71;
  sub_1E4780EF8();

  v75 = v102;
  sub_1E487855C();
  sub_1E475F38C(v73);
  v76 = v108;
  v77 = v97;
  sub_1E4773850(v108, v97, &qword_1ECF7B9D0, &qword_1E487AC00);
  v79 = v103;
  v78 = v104;
  v80 = *(v104 + 16);
  v81 = v105;
  v80(v103, v75, v105);
  v82 = v106;
  sub_1E4773850(v77, v106, &qword_1ECF7B9D0, &qword_1E487AC00);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB78, &qword_1E487B240);
  v80((v82 + *(v83 + 48)), v79, v81);
  v84 = *(v78 + 8);
  v84(v75, v81);
  sub_1E478115C(v76);
  v84(v79, v81);
  sub_1E478115C(v77);
}

uint64_t sub_1E4780DEC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4877F4C();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB28, &qword_1E487B128);
  return sub_1E478043C(v1, a1 + *(v3 + 44));
}

unint64_t sub_1E4780E40()
{
  result = qword_1EE2B1568;
  if (!qword_1EE2B1568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB58, &unk_1E487F1D0);
    sub_1E4773680(&qword_1EE2B10C0, &qword_1ECF7BB60, &qword_1E487B190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1568);
  }

  return result;
}

unint64_t sub_1E4780EF8()
{
  result = qword_1EE2B1318;
  if (!qword_1EE2B1318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB48, &qword_1E487B148);
    sub_1E4780FB0();
    sub_1E4773680(&qword_1EE2B5A48, &qword_1ECF7B938, &qword_1E487AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1318);
  }

  return result;
}

unint64_t sub_1E4780FB0()
{
  result = qword_1EE2B13E8;
  if (!qword_1EE2B13E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB40, &qword_1E487B140);
    sub_1E4781068();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13E8);
  }

  return result;
}

unint64_t sub_1E4781068()
{
  result = qword_1EE2B1540;
  if (!qword_1EE2B1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB38, &qword_1E487B138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB58, &unk_1E487F1D0);
    sub_1E4780E40();
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1540);
  }

  return result;
}

uint64_t sub_1E478115C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E47811C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E478127C()
{
  sub_1E4771D30();
  if (v0 <= 0x3F)
  {
    sub_1E487736C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E478138C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47813C4()
{
  type metadata accessor for ColorBarView.Styling(319);
  if (v0 <= 0x3F)
  {
    sub_1E4781498(319, &qword_1EE2B1680, MEMORY[0x1E697EA50]);
    if (v1 <= 0x3F)
    {
      sub_1E4781498(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4781498(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E4781508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1E487862C();
}

uint64_t sub_1E4781514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E487736C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_1E4781588()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 16) & 1) == 0)
  {
    return *(v0 + 8);
  }

  v6 = (v0 + *(type metadata accessor for ColorBarView(0) + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 64);

  return v10;
}

double sub_1E47816FC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v6 = (v0 + *(type metadata accessor for ColorBarView(0) + 24));
    v7 = *v6;
    v8 = *(v6 + 8);

    if ((v8 & 1) == 0)
    {
      sub_1E4878DDC();
      v9 = sub_1E48780FC();
      sub_1E4877AAC();

      sub_1E4877F0C();
      swift_getAtKeyPath();

      (*(v2 + 8))(v5, v1);
      v7 = v12[1];
    }

    v10 = *(v7 + 64);
  }

  else
  {
    v10 = *(v0 + 8);
  }

  return v10 * 0.5;
}

uint64_t sub_1E4781874@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ColorBarView(0);
  sub_1E4773850(v1 + *(v12 + 20), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4781A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorBarView(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E4877CCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  sub_1E4781874(&v31 - v12);
  sub_1E4877CAC();
  sub_1E4782894(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v14 = sub_1E4878EAC();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14 & 1) != 0 && (*(v2 + 48))
  {
    v16 = 0.16;
  }

  else
  {
    v16 = 1.0;
  }

  sub_1E47828DC(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v18 = swift_allocObject();
  sub_1E4782940(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_1E4781588();
  sub_1E487889C();
  sub_1E4877BCC();
  v19 = v34;
  v20 = v36;
  v21 = v38;
  v22 = v39;
  v33 = v35;
  v32 = v37;
  LOBYTE(v17) = sub_1E487819C();
  v23 = *(v2 + 40);
  result = sub_1E4877B0C();
  v25 = v33;
  v26 = v32;
  *a1 = sub_1E47829A4;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v25;
  *(a1 + 32) = v20;
  *(a1 + 40) = v26;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v17;
  *(a1 + 72) = v27;
  *(a1 + 80) = v28;
  *(a1 + 88) = v29;
  *(a1 + 96) = v30;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1E4781D6C(double a1, uint64_t a2, double *a3)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1E4877FAC();
  v9 = 0;
  sub_1E4781F4C(a3, __src, a1);
  memcpy(__dst, __src, 0x12AuLL);
  memcpy(v11, __src, 0x12AuLL);
  sub_1E4773850(__dst, v7, &qword_1ECF7BBA0, &qword_1E487B3F8);
  sub_1E47738B8(v11, &qword_1ECF7BBA0, &qword_1E487B3F8);
  memcpy(&v8[7], __dst, 0x12AuLL);
  v7[0] = v5;
  v7[1] = 0;
  LOBYTE(v7[2]) = v9;
  memcpy(&v7[2] + 1, v8, 0x131uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBA8, &qword_1E487B400);
  sub_1E4773680(&qword_1EE2B0EE0, &qword_1ECF7BBA8, &qword_1E487B400);
  sub_1E48784AC();
  memcpy(__src, v7, 0x142uLL);
  sub_1E47738B8(__src, &qword_1ECF7BBA8, &qword_1E487B400);
}

uint64_t sub_1E4781F4C@<X0>(double *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  sub_1E4781588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBB0, &qword_1E487B408);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E487A7F0;
  *(v5 + 32) = 0;
  v6 = sub_1E4781588();
  *(v5 + 40) = v6 + v6;
  sub_1E4877BEC();
  v7 = a1[4];
  sub_1E47816FC();
  sub_1E4877B5C();
  v8 = *(&v83 + 1);
  v26 = v83;
  v9 = v84;
  v10 = v85;

  v11 = sub_1E487889C();
  v25 = v12;
  sub_1E4781588();
  sub_1E487889C();
  sub_1E4877BCC();
  v13 = sub_1E47816FC();
  v14 = *(a1 + 3);
  sub_1E4781588();
  sub_1E4877B5C();
  v15 = v86;
  v23 = HIDWORD(v86);
  v24 = DWORD2(v86);
  v22 = v87;
  v16 = v88;

  v17 = sub_1E487889C();
  v21 = v18;
  sub_1E4781588();
  sub_1E4877BEC();
  sub_1E487889C();
  sub_1E4877BCC();
  v19 = sub_1E47816FC();
  v36[0] = v83;
  v36[1] = v84;
  *&v37 = v85;
  *(&v37 + 1) = v4;
  LOWORD(v38) = 256;
  *(&v38 + 1) = v11;
  *&v39 = v25;
  *(&v39 + 1) = a3;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  *&v43 = v13;
  *(&v43 + 1) = v14 & 1;
  __src[7] = v35;
  __src[8] = v43;
  __src[5] = v33;
  __src[6] = v34;
  __src[0] = v83;
  __src[1] = v84;
  __src[3] = v38;
  __src[4] = v39;
  __src[2] = v37;
  v45[0] = v86;
  v45[1] = v87;
  *&v46 = v88;
  *(&v46 + 1) = v4;
  LOWORD(v47) = 256;
  *(&v47 + 1) = v17;
  *&v48 = v21;
  v49 = v30;
  v50 = v31;
  v51 = v32;
  *(&v48 + 1) = a3;
  *&v52 = v19;
  *(&v52 + 1) = v14 | (v7 > 0.0);
  *(&__src[16] + 8) = v32;
  *(&__src[17] + 8) = v52;
  *(&__src[10] + 8) = v87;
  *(&__src[13] + 8) = v48;
  *(&__src[12] + 8) = v47;
  v44 = 256;
  LOWORD(__src[9]) = 256;
  v53 = 256;
  *(&__src[11] + 8) = v46;
  WORD4(__src[18]) = 256;
  *(&__src[9] + 8) = v86;
  *(&__src[14] + 8) = v30;
  *(&__src[15] + 8) = v31;
  memcpy(a2, __src, 0x12AuLL);
  v54 = v15;
  v55 = v24;
  v56 = v23;
  v57 = v22;
  v58 = v16;
  v59 = v4;
  v60 = 256;
  v61 = v17;
  v62 = v21;
  v63 = a3;
  v64 = v30;
  v65 = v31;
  v66 = v32;
  v67 = v19;
  v68 = v14 | (v7 > 0.0);
  v69 = 256;
  sub_1E4773850(v36, v70, &qword_1ECF7BBB8, &qword_1E487B410);
  sub_1E4773850(v45, v70, &qword_1ECF7BBB8, &qword_1E487B410);
  sub_1E47738B8(&v54, &qword_1ECF7BBB8, &qword_1E487B410);
  v70[0] = __PAIR128__(v8, v26);
  v70[1] = v9;
  v71 = v10;
  v72 = v4;
  v73 = 256;
  v74 = v11;
  v75 = v25;
  v77 = v33;
  v78 = v34;
  v79 = v35;
  v76 = a3;
  v80 = v13;
  v81 = v14 & 1;
  v82 = 256;
  sub_1E47738B8(v70, &qword_1ECF7BBB8, &qword_1E487B410);
}

double sub_1E4782498@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E487835C();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxY(v15);
  sub_1E487833C();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_1E487834C();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_1E4782598(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1E4877AEC();
  return sub_1E4782620;
}

void sub_1E4782620(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E478266C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4782E34();

  return MEMORY[0x1EEDE4448](a1, a2, a3, v6);
}

uint64_t sub_1E47826D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4782E34();

  return MEMORY[0x1EEDE43E8](a1, a2, a3, v6);
}

uint64_t sub_1E4782734(uint64_t a1)
{
  v2 = sub_1E4782E34();

  return MEMORY[0x1EEDE4408](a1, v2);
}

uint64_t sub_1E47827A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E487814C();
  sub_1E4877B0C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB88, &qword_1E487B3D8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB90, &qword_1E487B3E0) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB98, &unk_1E487B3E8);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1E4782894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47828DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorBarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4782940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorBarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47829A4(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorBarView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4781D6C(v5, a1, (v1 + v4));
}

unint64_t sub_1E4782A60()
{
  result = qword_1EE2B1428;
  if (!qword_1EE2B1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB98, &unk_1E487B3E8);
    sub_1E4782AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1428);
  }

  return result;
}

unint64_t sub_1E4782AEC()
{
  result = qword_1EE2B15B0;
  if (!qword_1EE2B15B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BB90, &qword_1E487B3E0);
    sub_1E4773680(&qword_1EE2B1100, &qword_1ECF7BB88, &qword_1E487B3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15B0);
  }

  return result;
}

unint64_t sub_1E4782BA4()
{
  result = qword_1EE2B1408;
  if (!qword_1EE2B1408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BBC0, &qword_1E487B428);
    sub_1E4782C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1408);
  }

  return result;
}

unint64_t sub_1E4782C30()
{
  result = qword_1EE2B1580;
  if (!qword_1EE2B1580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BBC8, &qword_1E487B430);
    sub_1E4773680(&qword_1EE2B1630, &qword_1ECF7BBD0, &qword_1E487B438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1580);
  }

  return result;
}

unint64_t sub_1E4782D30()
{
  result = qword_1ECF7BBE8;
  if (!qword_1ECF7BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BBE8);
  }

  return result;
}

unint64_t sub_1E4782D88()
{
  result = qword_1EE2B3D30[0];
  if (!qword_1EE2B3D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B3D30);
  }

  return result;
}

unint64_t sub_1E4782DE0()
{
  result = qword_1EE2B3D28;
  if (!qword_1EE2B3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3D28);
  }

  return result;
}

unint64_t sub_1E4782E34()
{
  result = qword_1ECF7BBF0;
  if (!qword_1ECF7BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BBF0);
  }

  return result;
}

uint64_t type metadata accessor for ExtraLargeSpatialContentView()
{
  result = qword_1EE2B1F30;
  if (!qword_1EE2B1F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4782F00()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47830AC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E47830AC(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E478305C();
        if (v3 <= 0x3F)
        {
          sub_1E47830AC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E478305C()
{
  if (!qword_1EE2B1670)
  {
    v0 = sub_1E4877B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B1670);
    }
  }
}

void sub_1E47830AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E478312C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ExtraLargeSpatialContentView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E4783284()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for ExtraLargeSpatialContentView() + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E47833D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MultiDaySpatialView(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC00, &qword_1E487B5C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = sub_1E487732C();
  (*(*(v12 - 8) + 16))(v7, v1, v12);
  v13 = *(v1 + *(type metadata accessor for ExtraLargeSpatialContentView() + 20));
  *&v7[v4[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v7[v4[7]] = v13;
  *&v7[v4[8]] = 4;
  v7[v4[9]] = 1;
  v15 = &v7[v4[11]];
  *v15 = KeyPath;
  v15[8] = 0;

  v16 = sub_1E487813C();
  if (sub_1E478312C())
  {
    v17 = *(sub_1E4783284() + 16);
  }

  sub_1E4877B0C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1E47836C4(v7, v11);
  v26 = &v11[*(v8 + 36)];
  *v26 = v16;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = *MEMORY[0x1E697F638];
  v28 = sub_1E4877F9C();
  v29 = *(v28 - 8);
  (*(v29 + 104))(a1, v27, v28);
  (*(v29 + 56))(a1, 0, 1, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC08, &qword_1E487FE80);
  sub_1E4783728(v11, a1 + *(v30 + 36));
  *(a1 + *(v30 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E47836C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiDaySpatialView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4783728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC00, &qword_1E487B5C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4783798()
{
  result = qword_1ECF7BC18;
  if (!qword_1ECF7BC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BC08, &qword_1E487FE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BC18);
  }

  return result;
}

void sub_1E4783844()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47889A4(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E47889A4(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E47889A4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E47839BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MultiDaySpatialView(0);
  sub_1E4773850(v1 + *(v12 + 32), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_1E4783BC4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MultiDaySpatialView(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 32);

  return v10;
}

uint64_t sub_1E4783D28()
{
  v4 = sub_1E487753C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DayEvents();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MultiDaySpatialView(0);
  v15 = *(v1 + *(v14 + 20));
  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v1 + *(v14 + 24));
  v2 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  sub_1E4784E18(v15 + v2, v13, type metadata accessor for DayEvents);
  sub_1E47839BC(v8);
  v10 = sub_1E4842D5C(v1, v13, v8);
  v0 = *(v5 + 8);
  v0(v8, v4);
  sub_1E4788C7C(v13, type metadata accessor for DayEvents);
  v13 = *(v10 + 16);

  if (__OFSUB__(v3, v13))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = sub_1E47F8C54(v3 - v13, v15, v15 + v2, *(v15 + 16) != 0, (2 * *(v15 + 16)) | 1);
  v10 = v16;
  v2 = v17;
  v3 = v18;
  if ((v18 & 1) == 0)
  {

LABEL_5:
    sub_1E4860ED0(v13, v10, v2, v3);
    v20 = v19;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v26 = v4;
  sub_1E487910C();
  swift_unknownObjectRetain_n();

  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_16;
  }

  if (v22 != (v3 >> 1) - v2)
  {
LABEL_17:
    swift_unknownObjectRelease();
    v4 = v26;
    goto LABEL_5;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v4 = v26;
  if (!v20)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  sub_1E47839BC(v8);
  v23 = sub_1E483F168(v20, v8);

  v0(v8, v4);
  return v23;
}

void sub_1E478403C()
{
  v1 = sub_1E487753C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DayEvents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultiDaySpatialView(0);
  v12 = *(v0 + *(v11 + 20));
  if (!*(v12 + 16))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v11;
  sub_1E4784E18(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v10, type metadata accessor for DayEvents);
  sub_1E47839BC(v5);
  v14 = sub_1E4842D5C(v0, v10, v5);
  (*(v2 + 8))(v5, v1);
  sub_1E4788C7C(v10, type metadata accessor for DayEvents);
  v15 = *(v14 + 16);

  v16 = *(v0 + *(v13 + 24));
  if (v15 != v16)
  {
    sub_1E4783BC4();
  }

  if (v15 == 1 && *(v0 + *(v13 + 28)) == 1 && __OFSUB__(v16, 1))
  {
    goto LABEL_10;
  }
}

uint64_t sub_1E4784270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E4783BC4();
  *a3 = sub_1E4877F6C();
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC20, &qword_1E487B6F0);
  sub_1E4784364(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1E4784364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v69 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC28, &qword_1E487B6F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = v63 - v8;
  v9 = sub_1E487753C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DayEvents();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC30, &qword_1E487B700);
  v65 = *(v71 - 8);
  v18 = *(v65 + 64);
  v19 = MEMORY[0x1EEE9AC00](v71);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v63 - v22;
  sub_1E4878D2C();
  v67 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_1E487732C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v63[1] = v25 + 16;
  v26(v23, a1, v24);
  result = type metadata accessor for MultiDaySpatialView(0);
  v28 = *(a1 + *(result + 20));
  if (*(v28 + 16))
  {
    v29 = result;
    v63[0] = v26;
    sub_1E4784E18(v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v17, type metadata accessor for DayEvents);
    sub_1E47839BC(v13);
    v30 = sub_1E4842D5C(a1, v17, v13);
    (*(v10 + 8))(v13, v9);
    sub_1E4788C7C(v17, type metadata accessor for DayEvents);
    v31 = *(a1 + *(v29 + 24));
    KeyPath = swift_getKeyPath();
    v33 = swift_getKeyPath();
    v34 = type metadata accessor for DayGroup(0);
    *&v23[v34[5]] = v30;
    v23[v34[6]] = 0;
    v35 = v34[7];
    LODWORD(v64) = v31 > 2;
    v23[v35] = v64;
    *&v23[v34[8]] = v31;
    v36 = &v23[v34[9]];
    *v36 = KeyPath;
    v36[8] = 0;
    v37 = &v23[v34[10]];
    *v37 = v33;
    v37[8] = 0;
    v38 = &v23[v34[11]];
    *&v73 = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC38, &qword_1E487B760);
    sub_1E48787FC();
    v39 = *(&v76 + 1);
    *v38 = v76;
    *(v38 + 1) = v39;
    v40 = &v23[v34[12]];
    *&v73 = 0;
    sub_1E48787FC();
    v41 = *(&v76 + 1);
    *v40 = v76;
    *(v40 + 1) = v41;
    sub_1E4877BEC();
    sub_1E478403C();
    sub_1E487889C();
    v42 = 1;
    sub_1E4877BCC();
    v43 = v71;
    v44 = &v23[*(v71 + 36)];
    v45 = v74;
    *v44 = v73;
    *(v44 + 1) = v45;
    *(v44 + 2) = v75;
    v46 = *(sub_1E4783D28() + 16);

    if (v46)
    {
      (v63[0])(v21, a1, v24);
      v47 = sub_1E4783D28();
      v48 = *(sub_1E4783D28() + 16);

      v49 = swift_getKeyPath();
      v50 = swift_getKeyPath();
      *&v21[v34[5]] = v47;
      v21[v34[6]] = 1;
      v21[v34[7]] = v64;
      *&v21[v34[8]] = v48;
      v43 = v71;
      v51 = &v21[v34[9]];
      *v51 = v49;
      v51[8] = 0;
      v52 = &v21[v34[10]];
      *v52 = v50;
      v52[8] = 0;
      v53 = &v21[v34[11]];
      v72 = MEMORY[0x1E69E7CC8];
      sub_1E48787FC();
      v54 = *(&v76 + 1);
      *v53 = v76;
      *(v53 + 1) = v54;
      v55 = &v21[v34[12]];
      v72 = 0;
      sub_1E48787FC();
      v56 = *(&v76 + 1);
      *v55 = v76;
      *(v55 + 1) = v56;
      sub_1E4877BEC();
      sub_1E4783BC4();
      sub_1E4877BEC();
      sub_1E478403C();
      sub_1E487889C();
      sub_1E4877BCC();
      v57 = &v21[*(v43 + 36)];
      v58 = v77;
      *v57 = v76;
      *(v57 + 1) = v58;
      *(v57 + 2) = v78;
      v59 = v68;
      sub_1E477372C(v21, v68, &qword_1ECF7BC30, &qword_1E487B700);
      v42 = 0;
    }

    else
    {
      v59 = v68;
    }

    (*(v65 + 56))(v59, v42, 1, v43);
    sub_1E4773850(v23, v21, &qword_1ECF7BC30, &qword_1E487B700);
    v60 = v70;
    sub_1E4773850(v59, v70, &qword_1ECF7BC28, &qword_1E487B6F8);
    v61 = v69;
    sub_1E4773850(v21, v69, &qword_1ECF7BC30, &qword_1E487B700);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC40, &qword_1E487B768);
    sub_1E4773850(v60, v61 + *(v62 + 48), &qword_1ECF7BC28, &qword_1E487B6F8);
    sub_1E47738B8(v59, &qword_1ECF7BC28, &qword_1E487B6F8);
    sub_1E47738B8(v23, &qword_1ECF7BC30, &qword_1E487B700);
    sub_1E47738B8(v60, &qword_1ECF7BC28, &qword_1E487B6F8);
    sub_1E47738B8(v21, &qword_1ECF7BC30, &qword_1E487B700);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1E4784B28()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for DayGroup(0) + 36));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_1E4878DDC();
  v9 = sub_1E48780FC();
  sub_1E4877AAC();

  sub_1E4877F0C();
  swift_getAtKeyPath();
  sub_1E477A484(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_1E4784C84@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1E4784E18(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultiDaySpatialView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1E4788B44(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MultiDaySpatialView);
  *a2 = sub_1E4784D98;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E4784D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultiDaySpatialView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4784270(a1, v6, a2);
}

uint64_t sub_1E4784E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1E4784E80()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for DayGroup(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v7 = v12[1];
  }

  v10 = *(v7 + 32);

  return v10;
}

uint64_t sub_1E4784FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC70, &qword_1E487B850);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v42[0] = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC78, &qword_1E487B858);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC80, &qword_1E487B860);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v43 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v42 - v20;
  sub_1E4878D2C();
  v42[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v21 = sub_1E4877F6C();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC88, &qword_1E487B868);
  sub_1E478543C(a1, &v21[*(v22 + 44)]);
  v23 = sub_1E487816C();
  sub_1E4877B0C();
  v24 = &v21[*(v16 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  *v15 = sub_1E4877F6C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC90, &qword_1E487B870);
  sub_1E4785F24(a1, &v15[*(v29 + 44)]);
  v30 = sub_1E487816C();
  sub_1E4877B0C();
  v31 = &v15[*(v9 + 36)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  *v8 = sub_1E4877F6C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC98, &qword_1E487B878);
  sub_1E478729C(a1, &v8[*(v36 + 44)]);
  v37 = v43;
  sub_1E4773850(v21, v43, &qword_1ECF7BC80, &qword_1E487B860);
  sub_1E4773850(v15, v13, &qword_1ECF7BC78, &qword_1E487B858);
  v38 = v42[0];
  sub_1E4773850(v8, v42[0], &qword_1ECF7BC70, &qword_1E487B850);
  v39 = v44;
  sub_1E4773850(v37, v44, &qword_1ECF7BC80, &qword_1E487B860);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCA0, &qword_1E487B880);
  sub_1E4773850(v13, v39 + *(v40 + 48), &qword_1ECF7BC78, &qword_1E487B858);
  sub_1E4773850(v38, v39 + *(v40 + 64), &qword_1ECF7BC70, &qword_1E487B850);
  sub_1E47738B8(v8, &qword_1ECF7BC70, &qword_1E487B850);
  sub_1E47738B8(v15, &qword_1ECF7BC78, &qword_1E487B858);
  sub_1E47738B8(v21, &qword_1ECF7BC80, &qword_1E487B860);
  sub_1E47738B8(v38, &qword_1ECF7BC70, &qword_1E487B850);
  sub_1E47738B8(v13, &qword_1ECF7BC78, &qword_1E487B858);
  sub_1E47738B8(v37, &qword_1ECF7BC80, &qword_1E487B860);
}

uint64_t sub_1E478543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD80, &qword_1E487BA78);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - v9);
  sub_1E4878D2C();
  v28 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for DayGroup(0);
  if (*(a1 + v11[6]) == 1 && *(*(a1 + v11[5]) + 16) >= 2uLL)
  {
    v12 = (a1 + v11[12]);
    v13 = *v12;
    v14 = v12[1];
    v33 = v13;
    v34 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
    sub_1E487880C();
    sub_1E487889C();
    sub_1E4877BCC();
    v26 = 0;
    v27 = v33;
    v15 = v38;
    v24 = v37;
    v25 = v35;
    v32 = 0;
    v31 = v34;
    v30 = v36;
    v16 = v34;
    v17 = v36;
    LOBYTE(v29) = 0;
  }

  else
  {
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v26 = 1;
  }

  v18 = sub_1E4877F5C();
  v19 = sub_1E4784E80();
  *v10 = v18;
  v10[1] = v19;
  *(v10 + 16) = 0;
  v20 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD88, &qword_1E487BA80) + 44);
  sub_1E4785718(a1);
  sub_1E4773850(v10, v8, &qword_1ECF7BD80, &qword_1E487BA78);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v27;
  *(a2 + 24) = v16;
  v21 = v24;
  *(a2 + 32) = v25;
  *(a2 + 40) = v17;
  *(a2 + 48) = v21;
  *(a2 + 56) = v15;
  *(a2 + 64) = v26;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD90, &qword_1E487BA88);
  sub_1E4773850(v8, a2 + *(v22 + 48), &qword_1ECF7BD80, &qword_1E487BA78);
  sub_1E47738B8(v10, &qword_1ECF7BD80, &qword_1E487BA78);
  sub_1E47738B8(v8, &qword_1ECF7BD80, &qword_1E487BA78);
}

uint64_t sub_1E4785718(uint64_t a1)
{
  v2 = type metadata accessor for DayGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(v2 + 20));
  v11[1] = sub_1E4788220(0, *(v6 + 16), v6);
  swift_getKeyPath();
  sub_1E4784E18(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DayGroup);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1E4788B44(v5, v8 + v7, type metadata accessor for DayGroup);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4789258;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC8, &qword_1E487B8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD98, &qword_1E487BA90);
  sub_1E4773680(&qword_1EE2B0DB8, &qword_1ECF7BCC8, &qword_1E487B8C8);
  sub_1E4788F70(&qword_1EE2B1438, &qword_1ECF7BD98, &qword_1E487BA90, sub_1E47892DC);
  sub_1E487885C();
}

uint64_t sub_1E47859CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v49[2] = a4;
  v6 = sub_1E48782AC();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E487732C();
  v13 = *(v56 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SpatialHeaderView();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDA0, &qword_1E487BA98);
  v21 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v23 = v49 - v22;
  sub_1E4878D2C();
  v49[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v13 + 16))(v16, a3, v56);
  v24 = v50;
  v50 = v12;
  sub_1E4784E18(v24, v12, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
  v25 = type metadata accessor for DayGroup(0);
  v26 = (a3 + v25[11]);
  v28 = *v26;
  v27 = v26[1];
  *&v58 = v28;
  *(&v58 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD18, &qword_1E487B918);
  sub_1E487880C();
  v29 = v57;
  v30 = *(v57 + 16);
  v55 = a1;
  v31 = a3;
  if (v30 && (v32 = sub_1E481DD30(a1), (v33 & 1) != 0))
  {
    v34 = 0;
    v35 = *(*(v29 + 56) + 8 * v32);
  }

  else
  {
    v35 = 0;
    v34 = 1;
  }

  v36 = *(v31 + v25[7]);
  (*(v13 + 32))(v20, v16, v56);
  sub_1E4788B44(v50, &v20[v17[5]], type metadata accessor for TimeScalingEngine.SpatialViewParameters);
  v37 = &v20[v17[6]];
  *v37 = v35;
  v37[8] = v34;
  v20[v17[7]] = v36;
  v38 = v17[8];
  sub_1E48782DC();
  v40 = v53;
  v39 = v54;
  v41 = v51;
  (*(v53 + 104))(v51, *MEMORY[0x1E6980EA0], v54);
  sub_1E48782CC();

  (*(v40 + 8))(v41, v39);
  v42 = sub_1E48781FC();

  *&v20[v38] = v42;
  sub_1E487889C();
  sub_1E4877CEC();
  result = sub_1E4788B44(v20, v23, type metadata accessor for SpatialHeaderView);
  v44 = &v23[*(v52 + 36)];
  v45 = v59;
  *v44 = v58;
  *(v44 + 1) = v45;
  v46 = v64;
  v47 = v62;
  *(v44 + 5) = v63;
  *(v44 + 6) = v46;
  v48 = v61;
  *(v44 + 2) = v60;
  *(v44 + 3) = v48;
  *(v44 + 4) = v47;
  if (__OFSUB__(*(v31 + v25[8]), v55))
  {
    __break(1u);
  }

  else
  {
    sub_1E47892DC();
    sub_1E48785BC();
    sub_1E47738B8(v23, &qword_1ECF7BDA0, &qword_1E487BA98);
  }

  return result;
}

uint64_t sub_1E4785F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD30, &unk_1E487B990);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&KeyPath - v7);
  v9 = type metadata accessor for DayGroup(0);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = v11;
  v55 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD38, &qword_1E48827C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &KeyPath - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD40, &qword_1E487B9A0);
  v16 = *(v56 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v19 = &KeyPath - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD48, &qword_1E487B9A8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &KeyPath - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &KeyPath - v25;
  sub_1E4878D2C();
  v57 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(v9 + 24)) == 1 && (v27 = *(a1 + *(v9 + 20)), *(v27 + 16) >= 2uLL))
  {
    v28 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
    v29 = *(v28 - 8);
    v28 -= 8;
    v30 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v31 = *(v30 + *(v28 + 28));
    v51 = *(v30 + *(v28 + 32));
    v52 = v31;
    KeyPath = swift_getKeyPath();
    v32 = swift_getKeyPath();
    v33 = type metadata accessor for TimelineHoursView(0);
    *&v19[v33[7]] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v19[v33[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v34 = v51;
    *v19 = v52;
    *(v19 + 1) = v34;
    *(v19 + 2) = KeyPath;
    v19[24] = 0;
    v35 = v33[9];
    v36 = sub_1E487821C();
    (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
    sub_1E487828C();
    sub_1E47738B8(v15, &qword_1ECF7BD38, &qword_1E48827C0);
    v37 = sub_1E48781FC();

    *&v19[v35] = v37;
    v38 = v55;
    sub_1E4784E18(a1, v55, type metadata accessor for DayGroup);
    v39 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v40 = swift_allocObject();
    sub_1E4788B44(v38, v40 + v39, type metadata accessor for DayGroup);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1E4788E18;
    *(v41 + 24) = v40;
    v42 = v56;
    v43 = &v19[*(v56 + 36)];
    *v43 = sub_1E4872280;
    *(v43 + 1) = 0;
    *(v43 + 2) = sub_1E4788E90;
    *(v43 + 3) = v41;
    sub_1E477372C(v19, v26, &qword_1ECF7BD40, &qword_1E487B9A0);
    (*(v16 + 56))(v26, 0, 1, v42);
  }

  else
  {
    (*(v16 + 56))(v26, 1, 1, v56);
  }

  v44 = sub_1E4784E80();
  *v8 = sub_1E4877F6C();
  v8[1] = v44;
  *(v8 + 16) = 0;
  v45 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD50, &qword_1E487B9B0) + 44);
  sub_1E4786660(a1);
  sub_1E4773850(v26, v24, &qword_1ECF7BD48, &qword_1E487B9A8);
  v46 = v59;
  sub_1E4773850(v8, v59, &qword_1ECF7BD30, &unk_1E487B990);
  v47 = v58;
  sub_1E4773850(v24, v58, &qword_1ECF7BD48, &qword_1E487B9A8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD58, &qword_1E487B9B8);
  sub_1E4773850(v46, v47 + *(v48 + 48), &qword_1ECF7BD30, &unk_1E487B990);
  sub_1E47738B8(v8, &qword_1ECF7BD30, &unk_1E487B990);
  sub_1E47738B8(v26, &qword_1ECF7BD48, &qword_1E487B9A8);
  sub_1E47738B8(v46, &qword_1ECF7BD30, &unk_1E487B990);
  sub_1E47738B8(v24, &qword_1ECF7BD48, &qword_1E487B9A8);
}

uint64_t sub_1E47865D8(uint64_t a1)
{
  sub_1E4784B28();
  v2 = (a1 + *(type metadata accessor for DayGroup(0) + 48));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
  return sub_1E487881C();
}

uint64_t sub_1E4786660(uint64_t a1)
{
  v2 = type metadata accessor for DayGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(v2 + 20));
  v11[1] = sub_1E4788220(0, *(v6 + 16), v6);
  swift_getKeyPath();
  sub_1E4784E18(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DayGroup);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1E4788B44(v5, v8 + v7, type metadata accessor for DayGroup);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4788EBC;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC8, &qword_1E487B8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD60, &qword_1E487BA58);
  sub_1E4773680(&qword_1EE2B0DB8, &qword_1ECF7BCC8, &qword_1E487B8C8);
  sub_1E4788F70(&qword_1EE2B1338, &qword_1ECF7BD60, &qword_1E487BA58, sub_1E4789024);
  sub_1E487885C();
}

uint64_t sub_1E4786914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a1;
  v55[2] = a4;
  v66 = type metadata accessor for DayGroup(0);
  v60 = *(v66 - 1);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v7;
  v63 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DayEvents();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E487732C();
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SpatialDayView();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD70, &qword_1E487BA68);
  v20 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = v55 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD68, &qword_1E487BA60);
  v22 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v24 = v55 - v23;
  sub_1E4878D2C();
  v55[1] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v15, a3, v65);
  v57 = v11;
  sub_1E4784E18(a2, v11, type metadata accessor for DayEvents);
  v25 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  v26 = *(a2 + *(v25 + 20));
  v27 = *(a2 + *(v25 + 24));
  v28 = *(a3 + v66[6]);
  v29 = a3;
  v30 = 1;
  if (v28)
  {
    v30 = *(*(v29 + v66[5]) + 16) < 2uLL && v64 == 0;
  }

  v56 = v29;
  *&v19[v16[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v19[v16[11]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v33 = swift_getKeyPath();
  (*(v12 + 32))(v19, v15, v65);
  sub_1E4788B44(v57, &v19[v16[5]], type metadata accessor for DayEvents);
  *&v19[v16[6]] = v26;
  *&v19[v16[7]] = v27;
  v19[v16[8]] = v30;
  v34 = &v19[v16[10]];
  *v34 = KeyPath;
  v34[8] = 0;
  v35 = &v19[v16[12]];
  *v35 = v33;
  v35[8] = 0;
  v36 = &v19[v16[13]];
  type metadata accessor for CGRect(0);
  v67 = 0u;
  v68 = 0u;
  sub_1E48787FC();
  v37 = v71;
  v38 = v70;
  *v36 = v69;
  *(v36 + 1) = v38;
  *(v36 + 4) = v37;
  v39 = &v19[v16[14]];
  *&v67 = 0;
  sub_1E48787FC();
  v40 = *(&v69 + 1);
  *v39 = v69;
  *(v39 + 1) = v40;
  v41 = &v19[v16[15]];
  sub_1E48783CC();
  v42 = v56;
  v43 = v63;
  sub_1E4784E18(v56, v63, type metadata accessor for DayGroup);
  v44 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v45 = (v61 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_1E4788B44(v43, v46 + v44, type metadata accessor for DayGroup);
  v47 = v64;
  *(v46 + v45) = v64;
  v48 = v59;
  sub_1E4788B44(v19, v59, type metadata accessor for SpatialDayView);
  v49 = (v48 + *(v58 + 36));
  *v49 = sub_1E4789198;
  v49[1] = v46;
  sub_1E487889C();
  sub_1E4877CEC();
  result = sub_1E477372C(v48, v24, &qword_1ECF7BD70, &qword_1E487BA68);
  v51 = &v24[*(v62 + 36)];
  v52 = v70;
  *v51 = v69;
  *(v51 + 1) = v52;
  v53 = v75;
  *(v51 + 5) = v74;
  *(v51 + 6) = v53;
  v54 = v73;
  *(v51 + 3) = v72;
  *(v51 + 4) = v54;
  *(v51 + 2) = v71;
  if (__OFSUB__(*(v42 + v66[8]), v47))
  {
    __break(1u);
  }

  else
  {
    sub_1E4789024();
    sub_1E48785BC();
    sub_1E47738B8(v24, &qword_1ECF7BD68, &qword_1E487BA60);
  }

  return result;
}

uint64_t sub_1E4787038(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v8[2] = a2;
  v8[3] = v5;
  v8[4] = a3;
  sub_1E4822780(sub_1E4789234, v8);
}

uint64_t sub_1E4787144(uint64_t a1, uint64_t a2, double a3)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E4784B28();
  v7 = round(v6 * a3) / v6;
  v8 = (a1 + *(type metadata accessor for DayGroup(0) + 44));
  v9 = *v8;
  v10 = v8[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD18, &qword_1E487B918);
  sub_1E487880C();
  sub_1E47880D4(a2, v7);
  sub_1E487881C();
}

uint64_t sub_1E478729C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCA8, &qword_1E487B888);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v23 - v9);
  sub_1E4878D2C();
  v27 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for DayGroup(0);
  if (*(a1 + v11[6]) == 1 && *(*(a1 + v11[5]) + 16) >= 2uLL)
  {
    v12 = (a1 + v11[12]);
    v13 = *v12;
    v14 = v12[1];
    v32 = v13;
    v33 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC0, &qword_1E487B8A0);
    sub_1E487880C();
    sub_1E487889C();
    sub_1E4877BCC();
    v25 = 0;
    v26 = v32;
    v24 = v34;
    v16 = v36;
    v15 = v37;
    v31 = 0;
    v30 = v33;
    v29 = v35;
    v17 = v33;
    v18 = v35;
    LOBYTE(v28) = 0;
  }

  else
  {
    v26 = 0;
    v24 = 0;
    v16 = 0;
    v15 = 0;
    v18 = 0;
    v17 = 0;
    v25 = 1;
  }

  v19 = sub_1E4784E80();
  *v10 = sub_1E4877F6C();
  v10[1] = v19;
  *(v10 + 16) = 0;
  v20 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCB0, &qword_1E487B890) + 44);
  sub_1E4787584(a1);
  sub_1E4773850(v10, v8, &qword_1ECF7BCA8, &qword_1E487B888);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v26;
  *(a2 + 24) = v17;
  *(a2 + 32) = v24;
  *(a2 + 40) = v18;
  *(a2 + 48) = v16;
  *(a2 + 56) = v15;
  *(a2 + 64) = v25;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCB8, &qword_1E487B898);
  sub_1E4773850(v8, a2 + *(v21 + 48), &qword_1ECF7BCA8, &qword_1E487B888);
  sub_1E47738B8(v10, &qword_1ECF7BCA8, &qword_1E487B888);
  sub_1E47738B8(v8, &qword_1ECF7BCA8, &qword_1E487B888);
}

uint64_t sub_1E4787584(uint64_t a1)
{
  v2 = type metadata accessor for DayGroup(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(v2 + 20));
  v11[1] = sub_1E4788220(0, *(v6 + 16), v6);
  swift_getKeyPath();
  sub_1E4784E18(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DayGroup);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1E4788B44(v5, v8 + v7, type metadata accessor for DayGroup);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E4788BAC;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCC8, &qword_1E487B8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCD0, &qword_1E487B8D0);
  sub_1E4773680(&qword_1EE2B0DB8, &qword_1ECF7BCC8, &qword_1E487B8C8);
  sub_1E4788F70(&qword_1EE2B1348, &qword_1ECF7BCD0, &qword_1E487B8D0, sub_1E4788BC4);
  sub_1E487885C();
}

uint64_t sub_1E4787838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCE0, &qword_1E487B8E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCD8, &qword_1E487B8D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCF0, &qword_1E487B8F0);
  sub_1E4787AB4(a2, a3, a1, &v9[*(v14 + 44)]);
  sub_1E487889C();
  sub_1E4877CEC();
  sub_1E477372C(v9, v13, &qword_1ECF7BCE0, &qword_1E487B8E0);
  v15 = &v13[*(v10 + 36)];
  v16 = v20[5];
  *(v15 + 4) = v20[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v20[6];
  v17 = v20[1];
  *v15 = v20[0];
  *(v15 + 1) = v17;
  v18 = v20[3];
  *(v15 + 2) = v20[2];
  *(v15 + 3) = v18;
  result = type metadata accessor for DayGroup(0);
  if (__OFSUB__(*(a3 + *(result + 32)), a1))
  {
    __break(1u);
  }

  else
  {
    sub_1E4788BC4();
    sub_1E48785BC();
    sub_1E47738B8(v13, &qword_1ECF7BCD8, &qword_1E487B8D8);
  }

  return result;
}

uint64_t sub_1E4787AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v42 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCF8, &qword_1E487B8F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD00, &qword_1E487B900);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD08, &qword_1E487B908);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v40 - v19;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(*(a1 + *(type metadata accessor for TimeScalingEngine.SpatialViewParameters() + 28)) + 16))
  {
    *v8 = sub_1E4877F6C();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD10, &qword_1E487B910);
    sub_1E4787E40(a1, &v8[*(v21 + 44)]);
    v22 = sub_1E487817C();
    v23 = (v41 + *(type metadata accessor for DayGroup(0) + 44));
    v25 = *v23;
    v24 = v23[1];
    v44 = v25;
    v45 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD18, &qword_1E487B918);
    sub_1E487880C();
    v26 = v43;
    if (*(v43 + 16))
    {
      v27 = sub_1E481DD30(v40);
      if (v28)
      {
        v29 = *(*(v26 + 56) + 8 * v27);
      }
    }

    sub_1E4877B0C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_1E477372C(v8, v14, &qword_1ECF7BCF8, &qword_1E487B8F8);
    v38 = &v14[*(v9 + 36)];
    *v38 = v22;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    sub_1E477372C(v14, v16, &qword_1ECF7BD00, &qword_1E487B900);
    sub_1E477372C(v16, v20, &qword_1ECF7BD00, &qword_1E487B900);
    (*(v10 + 56))(v20, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v20, 1, 1, v9);
  }

  sub_1E477372C(v20, v42, &qword_1ECF7BD08, &qword_1E487B908);
}

uint64_t sub_1E4787E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NarrowXMoreView();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + *(type metadata accessor for TimeScalingEngine.SpatialViewParameters() + 28));
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *&v10[*(v4 + 32)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v10 = v11;
  v10[8] = 0;
  *(v10 + 2) = KeyPath;
  v10[24] = 0;
  *(v10 + 4) = v13;
  v10[40] = 0;
  sub_1E4784E18(v10, v8, type metadata accessor for NarrowXMoreView);
  sub_1E4784E18(v8, a2, type metadata accessor for NarrowXMoreView);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD20, &qword_1E487B980) + 48);
  *v14 = 0;
  *(v14 + 8) = 0;

  sub_1E4788C7C(v10, type metadata accessor for NarrowXMoreView);
  sub_1E4788C7C(v8, type metadata accessor for NarrowXMoreView);
}

uint64_t sub_1E4788058@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4877FAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC68, &qword_1E487B848);
  return sub_1E4784FE4(v1, a1 + *(v3 + 44));
}

uint64_t sub_1E47880A8@<X0>(void *a1@<X8>)
{
  result = sub_1E4877D6C();
  *a1 = v3;
  return result;
}

unint64_t sub_1E47880D4(uint64_t a1, double a2)
{
  v4 = v2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  result = sub_1E481DD30(a1);
  v12 = v9[2];
  v13 = __OFADD__(v12, (v11 ^ 1) & 1);
  v14 = v12 + ((v11 ^ 1) & 1);
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v11;
  if (v9[3] < v14)
  {
    sub_1E48612C0(v14, isUniquelyReferenced_nonNull_native);
    result = sub_1E481DD30(a1);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1E487912C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_1E4861C50();
    result = v19;
    v16 = v9;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v16 = v9;
  if (v3)
  {
LABEL_7:
    v17 = v16[7];
    v18 = *(v17 + 8 * result);
    *(v17 + 8 * result) = a2;
LABEL_12:
    *v4 = v16;
    return v18;
  }

LABEL_10:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a1;
  *(v16[7] + 8 * result) = a2;
  v20 = v16[2];
  v21 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    v18 = 0;
    v16[2] = v21;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4788220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCE8, &qword_1E487B8E8);
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v67 - v13);
  result = MEMORY[0x1EEE9AC00](v12);
  v73 = &v67 - v16;
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v18 = *(a3 + 16);
  if (v18 >= v17)
  {
    v19 = a2 - a1;
  }

  else
  {
    v19 = *(a3 + 16);
  }

  v75 = a1;
  v70 = v14;
  if (!v19)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (v19 <= 0)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_15:

LABEL_16:
    v24 = *(v78 + 80);
    v25 = v22[3];

    if ((v17 & 0x8000000000000000) == 0)
    {
      v68 = (v24 + 32) & ~v24;
      v69 = v24;
      v26 = v22 + v68;
      v27 = v25 >> 1;
      v72 = a3;
      v74 = a2;
      v76 = v18;
      if (!v19)
      {
        v39 = a2;
        v40 = v75;
        v41 = v75;
        if (v75 != a2)
        {
          goto LABEL_32;
        }

LABEL_27:
        v42 = v22;
LABEL_28:
        v43 = v42[3];
        if (v43 >= 2)
        {
          v44 = v43 >> 1;
          v45 = __OFSUB__(v44, v27);
          v46 = v44 - v27;
          if (v45)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v42[2] = v46;
        }

        return v42;
      }

      v28 = v75;
      if (a2 >= v75)
      {
        v29 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
        v30 = 0;
        v31 = *(v29 - 8);
        result = v29 - 8;
        v32 = v31;
        v33 = a3 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v27 -= v19;
        v34 = v28 - a2;
        do
        {
          if (!(v34 + v30))
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v35 = v75 + v30;
          if (v75 + v30 >= v74)
          {
            goto LABEL_65;
          }

          if (v76 == v30)
          {
            goto LABEL_66;
          }

          v36 = v30 + 1;
          v37 = v33 + *(v32 + 72) * v30;
          v38 = *(v77 + 48);
          *v11 = v35;
          sub_1E4784E18(v37, v11 + v38, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
          result = sub_1E477372C(v11, v26, &qword_1ECF7BCE8, &qword_1E487B8E8);
          v26 += *(v78 + 72);
          v30 = v36;
        }

        while (v19 != v36);
        v39 = v74;
        v40 = v75;
        v41 = v75 + v36;
        v14 = v70;
        if (v75 + v36 == v74)
        {
          goto LABEL_27;
        }

LABEL_32:
        if (v39 >= v40)
        {
          v47 = v39;
          if (v41 > v39)
          {
            v39 = v41;
          }

          v71 = v39;
          v48 = v41;
          while (1)
          {
            if (v41 < v40)
            {
              goto LABEL_67;
            }

            if (v71 == v48)
            {
              goto LABEL_68;
            }

            if (v76 == v19)
            {
              goto LABEL_27;
            }

            if (v19 >= v76)
            {
              goto LABEL_69;
            }

            v49 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
            v51 = *(v49 - 8);
            result = v49 - 8;
            v50 = v51;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_70;
            }

            v52 = v72 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v19;
            v53 = *(v77 + 48);
            *v14 = v48;
            sub_1E4784E18(v52, v14 + v53, type metadata accessor for TimeScalingEngine.SpatialViewParameters);
            result = sub_1E477372C(v14, v73, &qword_1ECF7BCE8, &qword_1E487B8E8);
            if (v27)
            {
              v42 = v22;
              v45 = __OFSUB__(v27--, 1);
              if (v45)
              {
                goto LABEL_63;
              }

              goto LABEL_37;
            }

            v54 = v22[3];
            if (((v54 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_71;
            }

            v55 = v54 & 0xFFFFFFFFFFFFFFFELL;
            if (v55 <= 1)
            {
              v56 = 1;
            }

            else
            {
              v56 = v55;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD28, &qword_1E487B988);
            v57 = *(v78 + 72);
            v58 = v68;
            v42 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v42);
            if (!v57)
            {
              goto LABEL_72;
            }

            v59 = result - v58;
            if (result - v58 == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_73;
            }

            v61 = v59 / v57;
            v42[2] = v56;
            v42[3] = 2 * (v59 / v57);
            v62 = v42 + v58;
            v63 = v22[3] >> 1;
            v64 = v63 * v57;
            v14 = v70;
            if (v22[2])
            {
              break;
            }

LABEL_61:
            v26 = &v62[v64];
            v66 = (v61 & 0x7FFFFFFFFFFFFFFFLL) - v63;

            v47 = v74;
            v40 = v75;
            v45 = __OFSUB__(v66, 1);
            v27 = v66 - 1;
            if (v45)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_37:
            ++v48;
            result = sub_1E477372C(v73, v26, &qword_1ECF7BCE8, &qword_1E487B8E8);
            v26 += *(v78 + 72);
            ++v19;
            v22 = v42;
            if (v47 == v48)
            {
              goto LABEL_28;
            }
          }

          if (v42 < v22 || v62 >= v22 + v58 + v64)
          {
            v65 = v64;
            swift_arrayInitWithTakeFrontToBack();
LABEL_59:
            v64 = v65;
          }

          else if (v42 != v22)
          {
            v65 = v64;
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_59;
          }

          v22[2] = 0;
          goto LABEL_61;
        }

        goto LABEL_77;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BD28, &qword_1E487B988);
  v20 = *(v78 + 72);
  v21 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v22 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v22);
  if (v20)
  {
    if (result - v21 == 0x8000000000000000 && v20 == -1)
    {
      goto LABEL_80;
    }

    v22[2] = v19;
    v22[3] = 2 * ((result - v21) / v20);
    v14 = v70;
    goto LABEL_15;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

void sub_1E478880C()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47889A4(319, &qword_1ECF7BC48, type metadata accessor for TimeScalingEngine.SpatialViewParameters, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E4788A6C(319, &qword_1EE2B16B0, MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E47889A4(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E4788A08();
          if (v4 <= 0x3F)
          {
            sub_1E4788A6C(319, &unk_1ECF7C830, MEMORY[0x1E6981788]);
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

void sub_1E47889A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E4788A08()
{
  if (!qword_1ECF7BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BC38, &qword_1E487B760);
    v0 = sub_1E487882C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF7BC50);
    }
  }
}

void sub_1E4788A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E4788AD4()
{
  result = qword_1ECF7BC60;
  if (!qword_1ECF7BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BC60);
  }

  return result;
}

uint64_t sub_1E4788B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4788BC4()
{
  result = qword_1EE2B1460;
  if (!qword_1EE2B1460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BCD8, &qword_1E487B8D8);
    sub_1E4773680(&qword_1EE2B0F28, &qword_1ECF7BCE0, &qword_1E487B8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1460);
  }

  return result;
}

uint64_t sub_1E4788C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for DayGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  sub_1E477A484(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));
  v7 = *(v0 + v3 + v1[12]);

  v8 = (v0 + v3 + v1[13]);
  v9 = *v8;

  v10 = v8[1];

  v11 = *(v0 + v3 + v1[14] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4788E18()
{
  v1 = *(type metadata accessor for DayGroup(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E47865D8(v2);
}

uint64_t sub_1E4788E90(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1E4788ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DayGroup(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1E4788F70(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E4789398(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4789024()
{
  result = qword_1EE2B1440;
  if (!qword_1EE2B1440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BD68, &qword_1E487BA60);
    sub_1E47890B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1440);
  }

  return result;
}

unint64_t sub_1E47890B0()
{
  result = qword_1EE2B15D0;
  if (!qword_1EE2B15D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BD70, &qword_1E487BA68);
    sub_1E4789398(&qword_1EE2B3C48, type metadata accessor for SpatialDayView);
    sub_1E4773680(&qword_1EE2B10D0, &qword_1ECF7BD78, &qword_1E487BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15D0);
  }

  return result;
}

uint64_t sub_1E4789198(uint64_t *a1)
{
  v3 = *(type metadata accessor for DayGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4787038(a1, v1 + v4, v5);
}

uint64_t sub_1E4789274(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BCE8, &qword_1E487B8E8);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_1E47892DC()
{
  result = qword_1EE2B15C8;
  if (!qword_1EE2B15C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BDA0, &qword_1E487BA98);
    sub_1E4789398(qword_1EE2B3528, type metadata accessor for SpatialHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B15C8);
  }

  return result;
}

uint64_t sub_1E4789398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PlatterView()
{
  result = qword_1ECF7BDB0;
  if (!qword_1ECF7BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4789460()
{
  sub_1E4789590(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
  if (v0 <= 0x3F)
  {
    sub_1E4789590(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
    if (v1 <= 0x3F)
    {
      sub_1E4789590(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Event();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E4789590(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E4789600@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1E4773850(v2, &v17 - v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E4789800()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for PlatterView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E4789950@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PlatterView();
  sub_1E4773850(v1 + *(v12 + 24), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4789B58@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDC8, &qword_1E487BB30);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v49 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDD0, &qword_1E487BB38);
  v6 = *(*(v53 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v53);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v49 - v9;
  sub_1E4878D2C();
  v56 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v52 = sub_1E4877F6C();
  v59 = 0;
  sub_1E478A0F0(a1, &v75);
  v68 = *&v76[112];
  v69 = *&v76[128];
  v64 = *&v76[48];
  v65 = *&v76[64];
  v66 = *&v76[80];
  v67 = *&v76[96];
  v60 = v75;
  v61 = *v76;
  v62 = *&v76[16];
  v63 = *&v76[32];
  v71[8] = *&v76[112];
  v71[9] = *&v76[128];
  v71[4] = *&v76[48];
  v71[5] = *&v76[64];
  v71[6] = *&v76[80];
  v71[7] = *&v76[96];
  v71[0] = v75;
  v71[1] = *v76;
  v70 = v76[144];
  v72 = v76[144];
  v71[2] = *&v76[16];
  v71[3] = *&v76[32];
  sub_1E4773850(&v60, &v73, &qword_1ECF7BDD8, &qword_1E487BB40);
  sub_1E47738B8(v71, &qword_1ECF7BDD8, &qword_1E487BB40);
  *&v58[119] = v67;
  *&v58[135] = v68;
  *&v58[151] = v69;
  *&v58[55] = v63;
  *&v58[71] = v64;
  *&v58[87] = v65;
  *&v58[103] = v66;
  *&v58[7] = v60;
  *&v58[23] = v61;
  v58[167] = v70;
  *&v58[39] = v62;
  v50 = v59;
  *v5 = sub_1E4877F6C();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDE0, &qword_1E487BB48);
  sub_1E478ADF8(a1, &v5[*(v10 + 44)]);
  v11 = type metadata accessor for PlatterView();
  v12 = a1 + v11[7];
  v13 = type metadata accessor for Event();
  *&v75 = sub_1E47CC9E8(*(v12 + *(v13 + 56)));
  *(&v75 + 1) = v14;
  sub_1E477A374();
  v15 = sub_1E487848C();
  v16 = v5;
  v49 = a1;
  v18 = v17;
  v20 = v19;
  sub_1E478B7C0();
  v21 = v57;
  sub_1E487857C();
  sub_1E477A3C8(v15, v18, v20 & 1);

  sub_1E47738B8(v16, &qword_1ECF7BDC8, &qword_1E487BB30);
  LOBYTE(v16) = sub_1E487813C();
  v22 = v49;
  v23 = *(v49 + v11[13]);
  sub_1E4877B0C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE00, &qword_1E487BB58) + 36);
  *v32 = v16;
  *(v32 + 8) = v25;
  *(v32 + 16) = v27;
  *(v32 + 24) = v29;
  *(v32 + 32) = v31;
  *(v32 + 40) = 0;
  LOBYTE(v16) = sub_1E487816C();
  v33 = *(v22 + v11[14]);
  sub_1E4877B0C();
  v34 = v21 + *(v53 + 36);
  *v34 = v16;
  *(v34 + 8) = v35;
  *(v34 + 16) = v36;
  *(v34 + 24) = v37;
  *(v34 + 32) = v38;
  *(v34 + 40) = 0;
  v39 = v55;
  sub_1E4773850(v21, v55, &qword_1ECF7BDD0, &qword_1E487BB38);
  *(&v74[7] + 1) = *&v58[112];
  *(&v74[8] + 1) = *&v58[128];
  *(&v74[9] + 1) = *&v58[144];
  *(&v74[3] + 1) = *&v58[48];
  *(&v74[4] + 1) = *&v58[64];
  *(&v74[5] + 1) = *&v58[80];
  *(&v74[6] + 1) = *&v58[96];
  *(v74 + 1) = *v58;
  v40 = v52;
  v73 = v52;
  LOBYTE(v21) = v50;
  LOBYTE(v74[0]) = v50;
  *(&v74[10] + 1) = *&v58[160];
  *(&v74[1] + 1) = *&v58[16];
  *(&v74[2] + 1) = *&v58[32];
  v41 = v74[8];
  v42 = v54;
  v54[8] = v74[7];
  v42[9] = v41;
  v42[10] = v74[9];
  *(v42 + 169) = *(&v74[9] + 9);
  v43 = v74[4];
  v42[4] = v74[3];
  v42[5] = v43;
  v44 = v74[6];
  v42[6] = v74[5];
  v42[7] = v44;
  v45 = v74[0];
  *v42 = v73;
  v42[1] = v45;
  v46 = v74[2];
  v42[2] = v74[1];
  v42[3] = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE08, &qword_1E487BB60);
  sub_1E4773850(v39, v42 + *(v47 + 48), &qword_1ECF7BDD0, &qword_1E487BB38);
  sub_1E4773850(&v73, &v75, &qword_1ECF7BE10, &qword_1E487BB68);
  sub_1E47738B8(v57, &qword_1ECF7BDD0, &qword_1E487BB38);
  sub_1E47738B8(v39, &qword_1ECF7BDD0, &qword_1E487BB38);
  *&v76[113] = *&v58[112];
  *&v76[129] = *&v58[128];
  *&v76[145] = *&v58[144];
  *&v76[49] = *&v58[48];
  *&v76[65] = *&v58[64];
  *&v76[81] = *&v58[80];
  *&v76[97] = *&v58[96];
  *&v76[1] = *v58;
  *&v76[17] = *&v58[16];
  v75 = v40;
  v76[0] = v21;
  v77 = *&v58[160];
  *&v76[33] = *&v58[32];
  sub_1E47738B8(&v75, &qword_1ECF7BE10, &qword_1E487BB68);
}

uint64_t sub_1E478A0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v62 = sub_1E478A4F8();
  *(&v62 + 1) = v3;
  sub_1E477A374();
  v4 = sub_1E487848C();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for PlatterView();
  v10 = *(a1 + v9[8]);
  v11 = sub_1E487842C();
  v13 = v12;
  v15 = v14;
  sub_1E477A3C8(v4, v6, v8 & 1);

  *&v62 = *(a1 + v9[9]);

  v16 = sub_1E487840C();
  v44 = v17;
  LOBYTE(v4) = v18;
  v20 = v19;
  sub_1E477A3C8(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v22 = sub_1E487813C();
  v23 = *(a1 + v9[13]);
  sub_1E4877B0C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v72[0]) = v4 & 1;
  LOBYTE(v52) = 0;
  v46[0] = 0;
  LOBYTE(v13) = sub_1E487815C();
  v32 = *(a1 + v9[14]);
  sub_1E4877B0C();
  *&v52 = v16;
  *(&v52 + 1) = v44;
  LOBYTE(v53) = v4 & 1;
  *(&v53 + 1) = *v49;
  DWORD1(v53) = *&v49[3];
  *(&v53 + 1) = v20;
  *&v54 = KeyPath;
  *(&v54 + 1) = 1;
  LOBYTE(v55) = 0;
  DWORD1(v55) = *&v48[3];
  v33 = *v48;
  *(&v55 + 1) = *v48;
  BYTE8(v55) = v22;
  HIDWORD(v55) = *&v47[3];
  *(&v55 + 9) = *v47;
  *&v56 = v25;
  *(&v56 + 1) = v27;
  *&v57 = v29;
  *(&v57 + 1) = v31;
  LOBYTE(v58) = 0;
  DWORD1(v58) = *&v51[3];
  *(&v58 + 1) = *v51;
  BYTE8(v58) = v13;
  HIDWORD(v58) = *&v50[3];
  *(&v58 + 9) = *v50;
  *&v59 = v34;
  *(&v59 + 1) = v35;
  *&v60 = v36;
  *(&v60 + 1) = v37;
  v61 = 0;
  LOBYTE(v71) = 0;
  v69 = v59;
  v70 = v60;
  v68 = v58;
  v62 = v52;
  v63 = v53;
  v66 = v56;
  v67 = v57;
  v64 = v54;
  v65 = v55;
  v46[152] = 0;
  v38 = v59;
  *(a2 + 96) = v58;
  *(a2 + 112) = v38;
  *(a2 + 128) = v70;
  v39 = v71;
  v40 = v65;
  *(a2 + 32) = v64;
  *(a2 + 48) = v40;
  v41 = v67;
  *(a2 + 64) = v66;
  *(a2 + 80) = v41;
  v42 = v63;
  *a2 = v62;
  *(a2 + 16) = v42;
  *(a2 + 144) = v39;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v72[0] = v16;
  v72[1] = v44;
  v73 = v4 & 1;
  *v74 = *v49;
  *&v74[3] = *&v49[3];
  v75 = v20;
  v76 = KeyPath;
  v77 = 1;
  v78 = 0;
  *v79 = v33;
  *&v79[3] = *&v48[3];
  v80 = v22;
  *&v81[3] = *&v47[3];
  *v81 = *v47;
  v82 = v25;
  v83 = v27;
  v84 = v29;
  v85 = v31;
  v86 = 0;
  *v87 = *v51;
  *&v87[3] = *&v51[3];
  v88 = v13;
  *v89 = *v50;
  *&v89[3] = *&v50[3];
  v90 = v34;
  v91 = v35;
  v92 = v36;
  v93 = v37;
  v94 = 0;
  sub_1E4773850(&v52, v46, &qword_1ECF7BE50, &qword_1E487BC60);
  sub_1E47738B8(v72, &qword_1ECF7BE50, &qword_1E487BC60);
}

uint64_t sub_1E478A4F8()
{
  v1 = v0;
  v2 = sub_1E487751C();
  v87 = *(v2 - 8);
  v88 = v2;
  v3 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v85 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1E487732C();
  v84 = *(v86 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v83 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487744C();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v82[1] = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4878B8C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82[0] = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = v82 - v15;
  v93 = sub_1E487757C();
  v16 = *(v93 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v19 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E487753C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v82 - v26;
  v28 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E4789600(v27);
  v29 = sub_1E487748C();
  v30 = *(v21 + 8);
  v30(v27, v20);
  [v28 setCalendar_];

  sub_1E4789600(v27);
  sub_1E487750C();
  v30(v27, v20);
  v31 = sub_1E487756C();
  (*(v16 + 8))(v19, v93);
  v93 = v28;
  [v28 setTimeZone_];

  v32 = v20;
  v33 = v90;
  v34 = v1;
  sub_1E4789600(v25);
  v35 = v89;
  sub_1E48774EC();
  v36 = v25;
  v37 = v91;
  v92 = v32;
  v38 = v30;
  v30(v36, v32);
  v39 = 0;
  if ((*(v33 + 48))(v35, 1, v37) != 1)
  {
    v39 = sub_1E48773DC();
    (*(v33 + 8))(v35, v37);
  }

  [v93 setLocale_];

  v40 = v34 + *(type metadata accessor for PlatterView() + 28);
  v41 = type metadata accessor for Event();
  v42 = v38;
  if (*(v40 + v41[12]) == 1 && (sub_1E4789600(v27), v44 = v41[5], v43 = v41[6], v45 = sub_1E48774CC(), v38(v27, v92), (v45 & 1) == 0))
  {
    v59 = sub_1E4878B9C();
    v60 = v93;
    [v93 setLocalizedDateFormatFromTemplate_];

    v61 = sub_1E48772BC();
    v62 = [v60 stringFromDate_];

    v63 = sub_1E4878BDC();
    v65 = v64;

    v94 = v63;
    v95 = v65;
    sub_1E477A374();
    v66 = MEMORY[0x1E69E6158];
    v67 = sub_1E4878E8C();
    v69 = v68;

    v70 = sub_1E48772BC();
    v71 = [v60 stringFromDate_];

    v72 = sub_1E4878BDC();
    v74 = v73;

    v94 = v72;
    v95 = v74;
    v75 = sub_1E4878E8C();
    v77 = v76;

    sub_1E4878B0C();
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    v78 = qword_1EE2BAF40;
    sub_1E48773EC();
    sub_1E4878BEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1E487A7F0;
    *(v79 + 56) = v66;
    v80 = sub_1E478B950();
    *(v79 + 32) = v67;
    *(v79 + 40) = v69;
    *(v79 + 96) = v66;
    *(v79 + 104) = v80;
    *(v79 + 64) = v80;
    *(v79 + 72) = v75;
    *(v79 + 80) = v77;
    v58 = sub_1E4878BAC();
  }

  else
  {
    sub_1E4789600(v27);
    v46 = v41[5];
    v47 = v83;
    sub_1E487730C();
    v49 = v87;
    v48 = v88;
    v50 = v85;
    (*(v87 + 104))(v85, *MEMORY[0x1E6969A68], v88);
    sub_1E48774DC();
    (*(v49 + 8))(v50, v48);
    (*(v84 + 8))(v47, v86);
    v42(v27, v92);
    v51 = sub_1E4878B9C();
    v52 = v93;
    [v93 setLocalizedDateFormatFromTemplate_];

    v53 = sub_1E48772BC();
    v54 = [v52 stringFromDate_];

    v55 = sub_1E4878BDC();
    v57 = v56;

    v94 = v55;
    v95 = v57;
    sub_1E477A374();
    v58 = sub_1E4878E8C();
  }

  return v58;
}

uint64_t sub_1E478ADF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE18, &qword_1E487BB70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_1E4877F6C();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE20, &qword_1E487BB78);
  sub_1E478AFB8(a1, &v10[*(v11 + 44)]);
  sub_1E4773850(v10, v8, &qword_1ECF7BE18, &qword_1E487BB70);
  sub_1E4773850(v8, a2, &qword_1ECF7BE18, &qword_1E487BB70);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE28, &qword_1E487BB80) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1E47738B8(v10, &qword_1ECF7BE18, &qword_1E487BB70);
  sub_1E47738B8(v8, &qword_1ECF7BE18, &qword_1E487BB70);
}

uint64_t sub_1E478AFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE30, &qword_1E487BB88);
  v3 = *(*(v38 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v38);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = sub_1E4877B3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ColorBarView(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  sub_1E4878D2C();
  v37 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(type metadata accessor for PlatterView() + 28);
  sub_1E4789950(v12);
  v21 = sub_1E4770A7C(a1 + v20, v12);
  (*(v9 + 8))(v12, v8);
  v22 = &v19[*(type metadata accessor for ColorBarView.Styling(0) + 40)];
  sub_1E487735C();
  v19[48] = 1;
  *v19 = v21;
  *(v19 + 1) = 0x4008000000000000;
  v19[16] = 0;
  *(v19 + 3) = 3;
  *(v19 + 2) = xmmword_1E487BAB0;
  *&v19[*(v13 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v24 = &v19[*(v13 + 24)];
  *v24 = KeyPath;
  v24[8] = 0;
  *v7 = sub_1E4877FBC();
  *(v7 + 1) = 0x3FF0000000000000;
  v7[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE38, &qword_1E487BBE8);
  sub_1E478B3E8(a1, &v7[*(v25 + 44)]);
  v26 = sub_1E487818C();
  v27 = *(sub_1E4789800() + 48);

  sub_1E4877B0C();
  v28 = &v7[*(v38 + 36)];
  *v28 = v26;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_1E478B878(v19, v17, type metadata accessor for ColorBarView);
  v33 = v40;
  sub_1E4773850(v7, v40, &qword_1ECF7BE30, &qword_1E487BB88);
  v34 = v39;
  sub_1E478B878(v17, v39, type metadata accessor for ColorBarView);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE40, &qword_1E487BBF0);
  sub_1E4773850(v33, v34 + *(v35 + 48), &qword_1ECF7BE30, &qword_1E487BB88);
  sub_1E47738B8(v7, &qword_1ECF7BE30, &qword_1E487BB88);
  sub_1E478B8F0(v19, type metadata accessor for ColorBarView);
  sub_1E47738B8(v33, &qword_1ECF7BE30, &qword_1E487BB88);
  sub_1E478B8F0(v17, type metadata accessor for ColorBarView);
}

uint64_t sub_1E478B3E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v41 = type metadata accessor for PlatterEventTimeText();
  v3 = *(*(v41 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v35 - v6;
  sub_1E4878D2C();
  v43 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for PlatterView();
  v39 = v7[7];
  v45 = sub_1E47CC708();
  v46 = v8;
  sub_1E477A374();
  v9 = sub_1E487848C();
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + v7[11]);
  v15 = sub_1E487842C();
  v17 = v16;
  v19 = v18;
  sub_1E477A3C8(v9, v11, v13 & 1);

  v35 = *(a1 + v7[12]);
  v20 = v35;
  v21 = sub_1E48783FC();
  v36 = v22;
  v37 = v23;
  v38 = v24;
  sub_1E477A3C8(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v26 = v42;
  sub_1E478B878(a1 + v39, v42, type metadata accessor for Event);
  v27 = *(a1 + v7[10]);
  v28 = swift_getKeyPath();
  v29 = v41;
  *(v26 + *(v41 + 28)) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  *(v26 + *(v29 + 20)) = v27;
  *(v26 + *(v29 + 24)) = v20;
  v30 = v44;
  sub_1E478B878(v26, v44, type metadata accessor for PlatterEventTimeText);
  v31 = v40;
  v32 = v36;
  *v40 = v21;
  v31[1] = v32;
  LOBYTE(v29) = v37 & 1;
  *(v31 + 16) = v37 & 1;
  v31[3] = v38;
  v31[4] = KeyPath;
  v31[5] = 1;
  *(v31 + 48) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE48, &qword_1E487BC58);
  sub_1E478B878(v30, v31 + *(v33 + 48), type metadata accessor for PlatterEventTimeText);

  sub_1E478B8E0(v21, v32, v29);

  sub_1E478B8F0(v26, type metadata accessor for PlatterEventTimeText);
  sub_1E478B8F0(v30, type metadata accessor for PlatterEventTimeText);
  sub_1E477A3C8(v21, v32, v29);
}

uint64_t sub_1E478B76C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4877FAC();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BDC0, &qword_1E487BB28);
  return sub_1E4789B58(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_1E478B7C0()
{
  result = qword_1ECF7BDE8;
  if (!qword_1ECF7BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BDC8, &qword_1E487BB30);
    sub_1E4773680(&qword_1ECF7BDF0, &qword_1ECF7BDF8, &qword_1E487BB50);
    sub_1E477A28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BDE8);
  }

  return result;
}

uint64_t sub_1E478B878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E478B8E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E478B8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E478B950()
{
  result = qword_1EE2B46F8;
  if (!qword_1EE2B46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B46F8);
  }

  return result;
}

uint64_t sub_1E478B9A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487894C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1E4878A3C();
  if ((*(v3 + 88))(v9, v2) == *MEMORY[0x1E69857E0])
  {
    type metadata accessor for FakeEvents();
    v10 = sub_1E480446C();
    sub_1E4806788(a1);
    v11 = type metadata accessor for CalendarEventsTimelineEntry(0);
    result = sub_1E4806788(a1 + v11[5]);
    *(a1 + v11[6]) = v10;
    *(a1 + v11[7]) = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1E4878F9C();

    v14 = 0xD00000000000001BLL;
    v15 = 0x80000001E48A64A0;
    sub_1E4878A3C();
    sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v13 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v13);

    (*(v3 + 8))(v7, v2);
    MEMORY[0x1E69192D0](0xD000000000000010, 0x80000001E48A67E0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

id sub_1E478BC18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v68 = a5;
  v61 = a4;
  v62 = a3;
  *&v67 = a1;
  v5 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487894C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487732C();
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (!result)
  {
    goto LABEL_10;
  }

  v20 = result;
  sub_1E48772FC();

  v21 = [objc_opt_self() shared];
  v58 = [v21 stopTimeDemoModeActive];

  sub_1E4878A3C();
  v63 = *(v9 + 8);
  v63(v12, v8);
  v64 = sub_1E4878DEC();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E487AC40;
  sub_1E478E7C4(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
  v65 = v13;
  v23 = sub_1E48790CC();
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1E478B950();
  v28 = MEMORY[0x1E69E6530];
  v29 = MEMORY[0x1E69E65A8];
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  *(v22 + 96) = v28;
  *(v22 + 104) = v29;
  *(v22 + 64) = v27;
  *(v22 + 72) = 8;
  sub_1E4878A3C();
  sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840]);
  v30 = sub_1E48790CC();
  v32 = v31;
  v63(v12, v8);
  *(v22 + 136) = v26;
  *(v22 + 144) = v27;
  v63 = v27;
  v33 = v18;
  *(v22 + 112) = v30;
  *(v22 + 120) = v32;
  sub_1E478E80C();
  v34 = sub_1E4878E4C();
  sub_1E4877AAC();

  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  v35 = v67;
  v36 = v68;
  sub_1E48587DC(v18, v67, v68);
  v37 = [v35 mirrorCalendarApp];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 BOOLValue];
  }

  else
  {
    v39 = 0;
  }

  v40 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  v67 = xmmword_1E487A7E0;
  *(v43 + 16) = xmmword_1E487A7E0;
  v44 = v65;
  (*(v40 + 16))(v43 + v42, v33, v65);
  v45 = v36[8];

  v46 = sub_1E47A5614(v43, v45, 8, v39);

  swift_setDeallocating();
  v47 = *(v40 + 8);
  v47(v43 + v42, v44);
  result = swift_deallocClassInstance();
  if (!*(v46 + 16))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v48 = v60;
  sub_1E478E8E4(v46 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v60, type metadata accessor for CalendarEventsTimelineEntry);

  if (v58)
  {
    v49 = v56;
    sub_1E487731C();
    (*(v40 + 40))(v48, v49, v44);
  }

  sub_1E4878DBC();
  v50 = swift_allocObject();
  *(v50 + 16) = v67;
  v51 = CalendarEventsTimelineEntry.description.getter();
  v52 = v63;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = v52;
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  v54 = sub_1E4878E4C();
  sub_1E4877AAC();

  v62(v48);
  v47(v33, v44);
  return sub_1E478E94C(v48, type metadata accessor for CalendarEventsTimelineEntry);
}

id sub_1E478C288(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v107 = a5;
  v98 = a4;
  v95 = a2;
  v96 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC8, &unk_1E487BF70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v83 - v9;
  v105 = sub_1E487894C();
  v11 = *(v105 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v105);
  v106 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v83 - v15;
  v17 = sub_1E48789CC();
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = *(v100 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v83 - v21;
  v108 = sub_1E487732C();
  v97 = *(v108 - 8);
  v23 = *(v97 + 64);
  v24 = MEMORY[0x1EEE9AC00](v108);
  v83 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v83 - v26;
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v29 = result;
    v93 = v6;
    v104 = v27;
    sub_1E48772FC();

    v30 = [objc_opt_self() shared];
    v31 = [v30 stopTimeDemoModeActive];

    sub_1E48789AC();
    v88 = v31;
    v94 = a3;
    v91 = v10;
    v92 = v7;
    v90 = v22;
    if (v31)
    {
      v32 = v99;
      sub_1E48789BC();
      v34 = v100;
      v33 = v101;
      (*(v100 + 8))(v22, v101);
      (*(v34 + 32))(v22, v32, v33);
      v35 = 1;
    }

    else
    {
      v35 = 20;
    }

    v103 = v35;
    sub_1E4878A3C();
    v36 = *(v11 + 8);
    v102 = v11 + 8;
    v37 = v105;
    v36(v16, v105);
    v84 = sub_1E4878DEC();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1E487BC70;
    sub_1E478E7C4(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
    v39 = v104;
    v40 = sub_1E48790CC();
    v42 = v41;
    v43 = MEMORY[0x1E69E6158];
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1E478B950();
    *(v38 + 32) = v40;
    *(v38 + 40) = v42;
    v45 = MEMORY[0x1E69E6530];
    v46 = MEMORY[0x1E69E65A8];
    *(v38 + 96) = MEMORY[0x1E69E6530];
    *(v38 + 104) = v46;
    v47 = v103;
    *(v38 + 64) = v44;
    *(v38 + 72) = v47;
    *(v38 + 136) = v45;
    *(v38 + 144) = v46;
    *(v38 + 112) = 8;
    sub_1E4878A3C();
    sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v48 = sub_1E48790CC();
    v50 = v49;
    v85 = v36;
    v36(v16, v37);
    *(v38 + 176) = v43;
    *(v38 + 184) = v44;
    v89 = v44;
    *(v38 + 152) = v48;
    *(v38 + 160) = v50;
    v51 = v39;
    v86 = sub_1E478E80C();
    v52 = sub_1E4878E4C();
    sub_1E4877AAC();

    sub_1E4878A3C();
    [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
    v53 = v39;
    v54 = v96;
    v55 = v107;
    sub_1E48587DC(v53, v96, v107);
    v56 = v55[7];

    v58 = sub_1E47A6300(v57, v51, v103);

    v59 = [v54 mirrorCalendarApp];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 BOOLValue];
    }

    else
    {
      v61 = 0;
    }

    v62 = v91;
    v63 = v97;
    v64 = v107[8];

    v65 = sub_1E47A5614(v58, v64, 8, v61);

    v85(v106, v105);
    v66 = v108;
    if (v88)
    {
      v67 = v83;
      v68 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v68);
      *(&v83 - 2) = v67;
      v69 = sub_1E48566E0(sub_1E478E858, (&v83 - 4), v65);

      (*(v63 + 8))(v67, v66);
      v65 = v69;
    }

    v70 = v63;
    sub_1E4878DEC();
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1E487A7F0;
    v72 = *(v65 + 16);
    *(v71 + 56) = MEMORY[0x1E69E6530];
    *(v71 + 64) = MEMORY[0x1E69E65A8];
    *(v71 + 32) = v72;
    v73 = *(type metadata accessor for CalendarEventsTimelineEntry(0) - 8);
    v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);

    v75 = sub_1E4878E9C();
    v77 = v76;

    v78 = v89;
    *(v71 + 96) = MEMORY[0x1E69E6158];
    *(v71 + 104) = v78;
    *(v71 + 72) = v75;
    *(v71 + 80) = v77;
    v79 = sub_1E4878E4C();
    sub_1E4877AAC();

    v80 = v100;
    v81 = v90;
    v82 = v101;
    (*(v100 + 16))(v99, v90, v101);
    sub_1E478E7C4(qword_1EE2B45D0, type metadata accessor for CalendarEventsTimelineEntry);
    sub_1E4878A5C();
    v94(v62);
    (*(v92 + 8))(v62, v93);
    (*(v80 + 8))(v81, v82);
    return (*(v70 + 8))(v104, v108);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E478CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E6985A60] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E478CC5C;

  return MEMORY[0x1EEDE8548](a1, a2, a3);
}

uint64_t sub_1E478CC5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E478CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E6985A68] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E478EC70;

  return MEMORY[0x1EEDE8558](a1, a2, a3);
}

uint64_t CalendarListWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE70, &qword_1E487BCD0);
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v43 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE78, &qword_1E487BCD8);
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v43 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE80, &qword_1E487BCE0);
  v47 = *(v50 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE88, &qword_1E487BCE8);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - v12;
  v13 = type metadata accessor for EventKitDataSource();
  v14 = swift_allocObject();
  v15 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (!v15)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  }

  type metadata accessor for EKUICalendarsIntent();
  *(v14 + 16) = v15;
  v59 = v13;
  v60 = &off_1F5E7D4F8;
  v56 = v14;
  type metadata accessor for ListTimeline();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(&v56, v13);
  v18 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v16[5] = v13;
  v16[6] = &off_1F5E7D4F8;
  v16[2] = v22;
  v23 = MEMORY[0x1E69E7CC0];
  v16[7] = MEMORY[0x1E69E7CC0];
  v16[8] = v23;
  __swift_destroy_boxed_opaque_existential_1(&v56);
  v56 = v16;
  type metadata accessor for CalendarListWidget.WidgetView();
  sub_1E478E7C4(qword_1EE2B43D0, type metadata accessor for CalendarListWidget.WidgetView);
  sub_1E478D700();
  sub_1E487898C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v56 = sub_1E48771EC();
  v57 = v24;
  v25 = sub_1E4773680(&qword_1EE2B0E60, &qword_1ECF7BE70, &qword_1E487BCD0);
  v26 = sub_1E477A374();
  v27 = v7;
  v28 = MEMORY[0x1E69E6158];
  sub_1E487800C();

  (*(v45 + 8))(v4, v1);
  v56 = v1;
  v57 = v28;
  v58 = v25;
  v59 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v44;
  v31 = v48;
  sub_1E487801C();
  (*(v46 + 8))(v27, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v32 = sub_1E487894C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E487A7E0;
  (*(v33 + 104))(v36 + v35, *MEMORY[0x1E69857E0], v32);
  v56 = v31;
  v57 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v39 = v49;
  v38 = v50;
  sub_1E4877FFC();

  (*(v47 + 8))(v30, v38);
  v56 = sub_1E48771EC();
  v57 = v40;
  v54 = v38;
  v55 = v37;
  swift_getOpaqueTypeConformance2();
  v41 = v52;
  sub_1E4877FEC();

  return (*(v51 + 8))(v39, v41);
}

uint64_t sub_1E478D5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E478E8E4(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for CalendarListWidget.WidgetView() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for CalendarListWidget.WidgetView()
{
  result = qword_1EE2B43C0;
  if (!qword_1EE2B43C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E478D700()
{
  result = qword_1EE2B22C0;
  if (!qword_1EE2B22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B22C0);
  }

  return result;
}

uint64_t sub_1E478D754@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CalendarListWidget.WidgetView();
  sub_1E478E754(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487894C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E478D944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1E48782AC();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = sub_1E48780DC();
  v6 = *(v40[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v40[0]);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE90, &unk_1E487BE80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - v12;
  sub_1E478DDC4(v2, v40 - v12);
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E478E558();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
  v14 = v44;
  sub_1E487859C();
  (*(v6 + 8))(v9, v40[0]);
  sub_1E478E698(v13);
  KeyPath = swift_getKeyPath();
  v16 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEA8, &unk_1E487BEC8) + 36));
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80) + 28);
  sub_1E4877A7C();
  *v16 = KeyPath;
  v18 = swift_getKeyPath();
  LOBYTE(v16) = *(v40[1] + *(type metadata accessor for CalendarEventsTimelineEntry(0) + 28));
  v19 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEB0, &qword_1E487BF00) + 36);
  *v19 = v18;
  *(v19 + 8) = v16;
  sub_1E48782EC();
  v20 = *MEMORY[0x1E6980EA0];
  v21 = v41;
  v22 = v42;
  v23 = *(v42 + 104);
  v24 = v43;
  v23(v41, v20, v43);
  sub_1E48782CC();

  v25 = *(v22 + 8);
  v25(v21, v24);
  v26 = sub_1E48781FC();

  sub_1E48782EC();
  v23(v21, v20, v24);
  v27 = sub_1E48782CC();

  v25(v21, v24);
  v28 = type metadata accessor for ViewMetrics();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  sub_1E487758C();
  *(v31 + 16) = xmmword_1E487BC80;
  *(v31 + 32) = xmmword_1E487BC90;
  *(v31 + 48) = xmmword_1E487BCA0;
  *(v31 + 64) = xmmword_1E487BCB0;
  *(v31 + 112) = 0x3FF0000000000000;
  *(v31 + 120) = 1;
  *(v31 + 128) = v26;
  *(v31 + 136) = v27;
  *(v31 + 144) = 1;
  *(v31 + 146) = 1;
  __asm { FMOV            V1.2D, #3.0 }

  *(v31 + 80) = xmmword_1E487BCC0;
  *(v31 + 96) = _Q1;
  v37 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEB8, &qword_1E487BF30);
  v39 = (v44 + *(result + 36));
  *v39 = v37;
  v39[1] = v31;
  return result;
}

uint64_t sub_1E478DDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEC0, &qword_1E487BF38);
  v3 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v26 - v4;
  v6 = type metadata accessor for LargeListContentView();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487894C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v27 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E478D754(v16);
  if ((*(v11 + 88))(v16, v10) == *MEMORY[0x1E69857E0])
  {
    v17 = type metadata accessor for CalendarEventsTimelineEntry(0);
    v18 = *(v17 + 20);
    v19 = sub_1E487732C();
    (*(*(v19 - 8) + 16))(v9, a1 + v18, v19);
    v20 = *(a1 + *(v17 + 24));
    *&v9[v6[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v9[v6[5]] = v20;
    v22 = &v9[v6[7]];
    *v22 = KeyPath;
    v22[8] = 0;
    sub_1E478E8E4(v9, v5, type metadata accessor for LargeListContentView);
    swift_storeEnumTagMultiPayload();
    sub_1E478E7C4(qword_1EE2B2AB8, type metadata accessor for LargeListContentView);

    sub_1E487803C();
    sub_1E478E94C(v9, type metadata accessor for LargeListContentView);
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1E4878F9C();

    v30 = 0xD00000000000001BLL;
    v31 = 0x80000001E48A64A0;
    v24 = v27;
    sub_1E478D754(v27);
    sub_1E478E7C4(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v25 = sub_1E48790CC();
    MEMORY[0x1E69192D0](v25);

    (*(v11 + 8))(v24, v10);
    MEMORY[0x1E69192D0](0xD000000000000010, 0x80000001E48A67E0);
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E478E25C@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

uint64_t sub_1E478E2EC@<X0>(_BYTE *a1@<X8>)
{
  sub_1E478E700();
  result = sub_1E4877F2C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E478E33C(char *a1)
{
  v2 = *a1;
  sub_1E478E700();
  return sub_1E4877F3C();
}

uint64_t sub_1E478E3C8(uint64_t a1)
{
  v2 = sub_1E4877F9C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877DAC();
}

unint64_t sub_1E478E558()
{
  result = qword_1EE2B1058;
  if (!qword_1EE2B1058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE90, &unk_1E487BE80);
    sub_1E478E5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1058);
  }

  return result;
}

unint64_t sub_1E478E5DC()
{
  result = qword_1EE2B1248;
  if (!qword_1EE2B1248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEA0, &qword_1E487BE90);
    sub_1E478E7C4(qword_1EE2B2AB8, type metadata accessor for LargeListContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1248);
  }

  return result;
}

uint64_t sub_1E478E698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE90, &unk_1E487BE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E478E700()
{
  result = qword_1EE2B2140;
  if (!qword_1EE2B2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B2140);
  }

  return result;
}

uint64_t sub_1E478E754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E478E7C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E478E80C()
{
  result = qword_1EE2B46B8;
  if (!qword_1EE2B46B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B46B8);
  }

  return result;
}

uint64_t sub_1E478E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1E478E8E4(a1, a2, type metadata accessor for CalendarEventsTimelineEntry);
  v5 = sub_1E487732C();
  return (*(*(v5 - 8) + 24))(a2, v4, v5);
}

uint64_t sub_1E478E8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E478E94C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E478E9AC()
{
  result = qword_1EE2B1310;
  if (!qword_1EE2B1310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEB8, &qword_1E487BF30);
    sub_1E478EA64();
    sub_1E4773680(&qword_1EE2B10C8, &qword_1ECF7BEE0, &unk_1E487BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1310);
  }

  return result;
}

unint64_t sub_1E478EA64()
{
  result = qword_1EE2B13E0;
  if (!qword_1EE2B13E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEB0, &qword_1E487BF00);
    sub_1E478EB1C();
    sub_1E4773680(&qword_1EE2B10B0, &qword_1ECF7BED8, &unk_1E4882140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13E0);
  }

  return result;
}

unint64_t sub_1E478EB1C()
{
  result = qword_1EE2B1538;
  if (!qword_1EE2B1538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BEA8, &unk_1E487BEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE90, &unk_1E487BE80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E478E558();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1538);
  }

  return result;
}

uint64_t sub_1E478EC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E487802C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E487803C();
}

uint64_t sub_1E478ED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E487802C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E487803C();
}

uint64_t sub_1E478EE64()
{
  v1 = v0;
  v2 = type metadata accessor for Event();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for RectangularNextEventContentViewModel(0);
  v8 = *(*(EventContentViewModel - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4799530(v1, v10, type metadata accessor for RectangularNextEventContentViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF10, &qword_1E487C180);
    v13 = *&v10[*(v12 + 48) + 8];

    v14 = *&v10[*(v12 + 64)];
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF18, &qword_1E487C188);
    v16 = *&v10[*(v15 + 48) + 8];

    sub_1E4799598(&v10[*(v15 + 64)], v6, type metadata accessor for Event);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
    v17 = *(v3 + 72);
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E487A7E0;
    sub_1E4799598(v6, v14 + v18, type metadata accessor for Event);
  }

  v19 = sub_1E487719C();
  (*(*(v19 - 8) + 8))(v10, v19);
  return v14;
}

double sub_1E478F0A8()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E48782FC();
  v5 = *MEMORY[0x1E6980EA0];
  v6 = v1[13];
  v6(v4, v5, v0);
  v7 = sub_1E48782CC();

  v8 = v1[1];
  v8(v4, v0);
  sub_1E48781EC();
  v6(v4, v5, v0);
  v9 = sub_1E48782CC();

  v8(v4, v0);
  *&xmmword_1EE2BAD18 = 0x4010000000000000;
  BYTE8(xmmword_1EE2BAD18) = 1;
  *(&xmmword_1EE2BAD18 + 9) = *v12;
  HIDWORD(xmmword_1EE2BAD18) = *&v12[3];
  result = 0.0;
  xmmword_1EE2BAD28 = xmmword_1E487BFD0;
  xmmword_1EE2BAD38 = xmmword_1E487BFE0;
  byte_1EE2BAD48 = 0;
  *algn_1EE2BAD49 = *&v11[2];
  dword_1EE2BAD4C = *&v11[5];
  qword_1EE2BAD50 = v7;
  qword_1EE2BAD58 = v9;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E478F28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E478F2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E478F37C()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E4799BBC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E4799BBC(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E4799BBC(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E478F528()
{
  result = qword_1ECF7BEE8;
  if (!qword_1ECF7BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7BEE8);
  }

  return result;
}

uint64_t sub_1E478F598@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 32), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E478F7A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 36), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E478F9A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v55 = type metadata accessor for Event();
  v52 = *(v55 - 8);
  v3 = *(v52 + 64);
  v4 = MEMORY[0x1EEE9AC00](v55);
  v53 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = v50 - v6;
  v57 = sub_1E487753C();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for RectangularNextEventContentViewModel(0);
  v12 = *(*(EventContentViewModel - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v56 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v50 - v15;
  v17 = sub_1E4877CCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v50 - v23;
  sub_1E478F7A0(v50 - v23);
  sub_1E4877CAC();
  sub_1E479978C(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v25 = sub_1E4878EAC();
  v26 = *(v18 + 8);
  v26(v22, v17);
  v26(v24, v17);
  if (v25)
  {
    v27 = sub_1E487725C();
    return (*(*(v27 - 8) + 56))(v58, 1, 1, v27);
  }

  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v30 = v2[EventContentView[7]];
  v31 = *&v2[EventContentView[5]];
  v32 = type metadata accessor for Utils();
  sub_1E478F598(v10);
  v33 = *&v2[EventContentView[6] + 56];
  v50[1] = v32;
  v51 = v31;
  sub_1E48595A8(v2, v31, v10, v33, v16);
  v34 = *(v7 + 8);
  v35 = v57;
  v34(v10);
  v36 = sub_1E478EE64();
  v37 = v16;
  if ((v30 & 1) == 0)
  {
    sub_1E476DFDC(v36, v58);
LABEL_11:

    v47 = type metadata accessor for RectangularNextEventContentViewModel;
    v48 = v37;
    return sub_1E4799600(v48, v47);
  }

  sub_1E4799600(v16, type metadata accessor for RectangularNextEventContentViewModel);
  v38 = *(v36 + 16);

  v39 = v38 == 1;
  v40 = v58;
  v41 = v35;
  if (!v39)
  {
LABEL_10:
    sub_1E478F598(v10);
    sub_1E48595A8(v2, v51, v10, v33, v37);
    (v34)(v10, v41);
    v49 = sub_1E478EE64();
    sub_1E476DFDC(v49, v40);
    goto LABEL_11;
  }

  sub_1E478F598(v10);
  v42 = v56;
  sub_1E48595A8(v2, v51, v10, v33, v56);
  (v34)(v10, v41);
  v43 = sub_1E478EE64();
  sub_1E4799600(v42, type metadata accessor for RectangularNextEventContentViewModel);
  if (!*(v43 + 16))
  {

    goto LABEL_10;
  }

  v44 = v53;
  sub_1E4799530(v43 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v53, type metadata accessor for Event);

  v45 = v44;
  v46 = v54;
  sub_1E4799598(v45, v54, type metadata accessor for Event);
  sub_1E4773850(v46 + *(v55 + 44), v40, &unk_1ECF7B688, &qword_1E487C160);
  v47 = type metadata accessor for Event;
  v48 = v46;
  return sub_1E4799600(v48, v47);
}

uint64_t sub_1E478FF44@<X0>(uint64_t a1@<X8>)
{
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v33 = *(EventContentView - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](EventContentView);
  v34 = v5;
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E4877F1C();
  v31 = *(v32 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEF0, &qword_1E487C128);
  v14 = v13[9];
  v15 = *(EventContentView + 36);
  v36 = v1;
  sub_1E4773850(v1 + v15, v12, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1E4877CCC();
    (*(*(v16 - 8) + 32))(a1 + v14, v12, v16);
  }

  else
  {
    v17 = *v12;
    sub_1E4878DDC();
    v18 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v31 + 8))(v8, v32);
  }

  v19 = v35;
  v20 = (v36 + *(EventContentView + 24));
  v21 = v20[3];
  v40 = v20[2];
  v41 = v21;
  v42 = *(v20 + 8);
  v22 = v20[1];
  v38 = *v20;
  v39 = v22;
  sub_1E4799530(v36, v35, type metadata accessor for RectangularNextEventContentView);
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  sub_1E4799598(v19, v24 + v23, type metadata accessor for RectangularNextEventContentView);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v25 = a1 + v13[10];
  v26 = v41;
  *(v25 + 32) = v40;
  *(v25 + 48) = v26;
  *(v25 + 64) = v42;
  v27 = v39;
  *v25 = v38;
  *(v25 + 16) = v27;
  v28 = (a1 + v13[11]);
  *v28 = sub_1E47994A0;
  v28[1] = v24;
  return sub_1E477CB38(&v38, v37);
}

uint64_t sub_1E47902EC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v23 - v5;
  v25 = sub_1E48780BC();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BEF8, &qword_1E487C168);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF00, &qword_1E487C170);
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v17 = &v23 - v16;
  *v13 = sub_1E4877FAC();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF08, &qword_1E487C178);
  sub_1E47905FC(a1, &v13[*(v18 + 44)]);
  sub_1E48780AC();
  v19 = sub_1E4773680(&qword_1EE2B0EC8, &qword_1ECF7BEF8, &qword_1E487C168);
  sub_1E48785AC();
  (*(v6 + 8))(v9, v25);
  sub_1E47738B8(v13, &qword_1ECF7BEF8, &qword_1E487C168);
  v20 = v24;
  sub_1E478F9A8(v24);
  v27 = v10;
  v28 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v23;
  sub_1E48784BC();
  sub_1E47738B8(v20, &unk_1ECF7B688, &qword_1E487C160);
  return (*(v14 + 8))(v17, v21);
}

uint64_t sub_1E47905FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF28, &qword_1E487C198);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_1E4877F6C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF30, &qword_1E487C1A0);
  sub_1E47907D0(a1, &v10[*(v11 + 44)]);
  v12 = a1[*(type metadata accessor for RectangularNextEventContentView(0) + 24) + 48];
  sub_1E4773850(v10, v8, &qword_1ECF7BF28, &qword_1E487C198);
  sub_1E4773850(v8, a2, &qword_1ECF7BF28, &qword_1E487C198);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF38, &qword_1E487C1A8) + 48);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 9) = v12;
  sub_1E47738B8(v10, &qword_1ECF7BF28, &qword_1E487C198);
  sub_1E47738B8(v8, &qword_1ECF7BF28, &qword_1E487C198);
}

uint64_t sub_1E47907D0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v106 = a1;
  v104 = type metadata accessor for NoEventsView();
  v2 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v89 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContent = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0);
  v4 = *(*(EventContent - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContent);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF40, &qword_1E487C1B0);
  v6 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v103 = &v87 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF48, &qword_1E487C1B8);
  v8 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v87 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF50, &qword_1E487C1C0);
  v10 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v87 - v11;
  v92 = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  v12 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Event();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1E487719C();
  v95 = *(v96 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v107 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E487753C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for RectangularNextEventContentViewModel(0);
  v25 = *(*(EventContentViewModel - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF58, &qword_1E487C1C8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v101 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v100 = &v87 - v32;
  sub_1E4878D2C();
  v99 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v34 = v106;
  v35 = *&v106[*(EventContentView + 20)];
  type metadata accessor for Utils();
  sub_1E478F598(v23);
  v36 = &v34[*(EventContentView + 24)];
  v37 = *(v36 + 7);
  sub_1E48595A8(v34, v35, v23, v37, v27);
  (*(v20 + 8))(v23, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v75 = *v27;
      v76 = sub_1E487732C();
      v77 = v89;
      (*(*(v76 - 8) + 16))(v89, v106, v76);
      v78 = *(v36 + 8);
      KeyPath = swift_getKeyPath();
      v80 = swift_getKeyPath();
      v81 = v104;
      *(v77 + *(v104 + 40)) = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      *(v77 + v81[11]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      *(v77 + v81[5]) = v75;
      *(v77 + v81[6]) = 0;
      *(v77 + v81[7]) = v37;
      *(v77 + v81[8]) = v78;
      v82 = v77 + v81[9];
      *v82 = KeyPath;
      *(v82 + 8) = 0;
      sub_1E4799530(v77, v103, type metadata accessor for NoEventsView);
      swift_storeEnumTagMultiPayload();
      sub_1E47996A0();
      sub_1E479978C(qword_1EE2B3DE0, type metadata accessor for NoEventsView);

      v57 = v100;
      sub_1E487803C();
      sub_1E4799600(v77, type metadata accessor for NoEventsView);
      goto LABEL_9;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF10, &qword_1E487C180);
    v40 = &v27[*(v39 + 48)];
    v41 = *v40;
    v42 = v40[1];
    v43 = *&v27[*(v39 + 64)];
    v44 = v95;
    v45 = v107;
    v46 = v96;
    (*(v95 + 32))(v107, v27, v96);
    v47 = EventContent;
    v48 = v90;
    (*(v44 + 16))(&v90[*(EventContent + 28)], v45, v46);
    v49 = *(v36 + 3);
    v111 = *(v36 + 2);
    v112 = v49;
    v113 = *(v36 + 8);
    v50 = *(v36 + 1);
    v109 = *v36;
    v110 = v50;
    v51 = swift_getKeyPath();
    *(v48 + v47[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v48 = v51;
    *(v48 + 8) = 0;
    *(v48 + v47[6]) = v43;
    v52 = (v48 + v47[8]);
    *v52 = v41;
    v52[1] = v42;
    v53 = v48 + v47[9];
    v54 = v112;
    *(v53 + 32) = v111;
    *(v53 + 48) = v54;
    *(v53 + 64) = v113;
    v55 = v110;
    *v53 = v109;
    *(v53 + 16) = v55;
    sub_1E4799530(v48, v93, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB38(&v109, v108);
    sub_1E479978C(qword_1EE2B1CA8, type metadata accessor for RectangularNextEventContentView.SingleEventView);
    sub_1E479978C(qword_1EE2B1D50, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView);
    v56 = v97;
    sub_1E487803C();
    sub_1E4773850(v56, v103, &qword_1ECF7BF50, &qword_1E487C1C0);
    swift_storeEnumTagMultiPayload();
    sub_1E47996A0();
    sub_1E479978C(qword_1EE2B3DE0, type metadata accessor for NoEventsView);
    v57 = v100;
    sub_1E487803C();
    sub_1E47738B8(v56, &qword_1ECF7BF50, &qword_1E487C1C0);
    v58 = type metadata accessor for RectangularNextEventContentView.ConflictingEventsView;
  }

  else
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF18, &qword_1E487C188);
    v60 = &v27[*(v59 + 48)];
    v61 = *v60;
    v62 = v60[1];
    v63 = *(v59 + 64);
    v44 = v95;
    v64 = v107;
    v46 = v96;
    (*(v95 + 32))(v107, v27, v96);
    v48 = v87;
    sub_1E4799598(&v27[v63], v87, type metadata accessor for Event);
    v65 = v92;
    v66 = v88;
    sub_1E4799530(v48, &v88[*(v92 + 24)], type metadata accessor for Event);
    (*(v44 + 16))(v66 + v65[7], v64, v46);
    v67 = *(v36 + 3);
    v111 = *(v36 + 2);
    v112 = v67;
    v113 = *(v36 + 8);
    v68 = *(v36 + 1);
    v109 = *v36;
    v110 = v68;
    v69 = swift_getKeyPath();
    *(v66 + v65[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v66 = v69;
    *(v66 + 8) = 0;
    v70 = (v66 + v65[8]);
    *v70 = v61;
    v70[1] = v62;
    v71 = v66 + v65[9];
    v72 = v112;
    *(v71 + 32) = v111;
    *(v71 + 48) = v72;
    *(v71 + 64) = v113;
    v73 = v110;
    *v71 = v109;
    *(v71 + 16) = v73;
    *(v66 + v65[10]) = 0;
    sub_1E4799530(v66, v93, type metadata accessor for RectangularNextEventContentView.SingleEventView);
    swift_storeEnumTagMultiPayload();
    sub_1E477CB38(&v109, v108);
    sub_1E479978C(qword_1EE2B1CA8, type metadata accessor for RectangularNextEventContentView.SingleEventView);
    sub_1E479978C(qword_1EE2B1D50, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView);
    v74 = v97;
    sub_1E487803C();
    sub_1E4773850(v74, v103, &qword_1ECF7BF50, &qword_1E487C1C0);
    swift_storeEnumTagMultiPayload();
    sub_1E47996A0();
    sub_1E479978C(qword_1EE2B3DE0, type metadata accessor for NoEventsView);
    v57 = v100;
    sub_1E487803C();
    sub_1E47738B8(v74, &qword_1ECF7BF50, &qword_1E487C1C0);
    sub_1E4799600(v66, type metadata accessor for RectangularNextEventContentView.SingleEventView);
    v58 = type metadata accessor for Event;
  }

  sub_1E4799600(v48, v58);
  (*(v44 + 8))(v107, v46);
LABEL_9:
  v83 = v101;
  sub_1E4773850(v57, v101, &qword_1ECF7BF58, &qword_1E487C1C8);
  v84 = v105;
  sub_1E4773850(v83, v105, &qword_1ECF7BF58, &qword_1E487C1C8);
  v85 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF60, &qword_1E487C238) + 48);
  *v85 = 0;
  *(v85 + 8) = 0;
  sub_1E47738B8(v57, &qword_1ECF7BF58, &qword_1E487C1C8);
  sub_1E47738B8(v83, &qword_1ECF7BF58, &qword_1E487C1C8);
}

uint64_t sub_1E47915D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v4 = *(a1 + 16);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v44 - v10;
  v47 = v9;
  v11 = v9 - 8;
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4877CCC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C168, &qword_1E487C710);
  v53 = v4;
  v19 = sub_1E487804C();
  v51 = *(v19 - 8);
  v20 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v44 - v21;
  v22 = *(v11 + 44);
  sub_1E4877CAC();
  sub_1E479978C(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v23 = v3;
  LOBYTE(v22) = sub_1E4878EAC();
  v24 = (*(v15 + 8))(v18, v14);
  v25 = v47;
  if (v22)
  {
    (*(v12 + 16))(v48, v23, v47);
    v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v27 = v26 + v13;
    v28 = (v26 + v13) & 0xFFFFFFFFFFFFFFF8;
    v46 = v19;
    v29 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = *(v25 + 24);
    *(v31 + 16) = v53;
    *(v31 + 24) = v32;
    (*(v12 + 32))(v31 + v26, v48, v25);
    *(v31 + v27) = 0;
    v33 = v31 + v28;
    *(v33 + 8) = 0xD000000000000022;
    *(v33 + 16) = 0x80000001E48A6B20;
    v34 = (v31 + v29);
    v19 = v46;
    *v34 = 0xD000000000000022;
    v34[1] = 0x80000001E48A6B20;
    v35 = (v31 + v30);
    *v35 = 0xD000000000000022;
    v35[1] = 0x80000001E48A6B20;
    v54[0] = sub_1E479A8B0;
    v54[1] = v31;
    sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710);
    v36 = v50;
    sub_1E478EC74(v54, v49);
  }

  else
  {
    v37 = v23 + *(v47 + 44);
    v38 = *(v37 + 8);
    (*v37)(v24);
    v32 = *(v25 + 24);
    v39 = v45;
    v40 = v53;
    sub_1E4822468(v8, v53, v32);
    v41 = *(v46 + 8);
    v41(v8, v40);
    sub_1E4822468(v39, v40, v32);
    sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710);
    v36 = v50;
    sub_1E478ED6C(v8, v49, v40);
    v41(v8, v40);
    v41(v39, v40);
  }

  v54[2] = sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710);
  v54[3] = v32;
  WitnessTable = swift_getWitnessTable();
  sub_1E4822468(v36, v19, WitnessTable);
  return (*(v51 + 8))(v36, v19);
}

uint64_t sub_1E4791B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a8 = sub_1E4877FAC();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C170, &qword_1E487C718);
  sub_1E4791C64(a2, a3 & 1, a4, a5, a6, a7, a9, a8 + *(v14 + 44), a1, a10);
}

uint64_t sub_1E4791C64@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + *(type metadata accessor for RectangularNextEventContentView.RedactionProvider() + 40) + 24);
  *a8 = sub_1E4877F6C();
  *(a8 + 8) = v14;
  *(a8 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C178, &qword_1E487C720);
  sub_1E4791DA0(a2 & 1, a1, a3, a4, a5, a6, a7, a8 + *(v15 + 44), a9, a10);
}

uint64_t sub_1E4791DA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v48 = a7;
  v49 = a3;
  v52 = a5;
  v53 = a6;
  v51 = a4;
  v56 = a8;
  v50 = a9;
  v12 = type metadata accessor for ColorBarView(0);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ColorBarView.Styling(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C180, &qword_1E487C728);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v54 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  sub_1E4878D2C();
  v55 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v26 = sub_1E487863C();
    v27 = (a2 + *(type metadata accessor for RectangularNextEventContentView.RedactionProvider() + 40));
    v45 = a10;
    v28 = v25;
    v29 = *v27;
    v30 = v27[4];
    v31 = &v19[*(v16 + 40)];
    sub_1E487735C();
    v19[48] = 0;
    *v19 = v26;
    *(v19 + 1) = v29;
    v25 = v28;
    v19[16] = 0;
    *(v19 + 3) = 3;
    *(v19 + 4) = 0;
    *(v19 + 5) = v30;
    KeyPath = swift_getKeyPath();
    v33 = v47;
    *&v15[*(v47 + 20)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v34 = swift_getKeyPath();
    sub_1E4799598(v19, v15, type metadata accessor for ColorBarView.Styling);
    v35 = &v15[*(v33 + 24)];
    *v35 = v34;
    v35[8] = 0;
    sub_1E4799598(v15, v28, type metadata accessor for ColorBarView);
    (*(v46 + 56))(v28, 0, 1, v33);
  }

  else
  {
    (*(v46 + 56))(v25, 1, 1, v47);
  }

  v36 = sub_1E4877FBC();
  v58 = 0;
  sub_1E47922A8(a2, v62);
  memcpy(v59, v62, sizeof(v59));
  memcpy(v60, v62, sizeof(v60));
  sub_1E4773850(v59, v61, &qword_1ECF7C188, &qword_1E487C730);
  sub_1E47738B8(v60, &qword_1ECF7C188, &qword_1E487C730);
  memcpy(&v57[7], v59, 0x138uLL);
  v37 = v58;
  v38 = v54;
  sub_1E4773850(v25, v54, &qword_1ECF7C180, &qword_1E487C728);
  v39 = v56;
  sub_1E4773850(v38, v56, &qword_1ECF7C180, &qword_1E487C728);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C190, &qword_1E487C738);
  v41 = v25;
  v42 = *(v40 + 48);
  v61[0] = v36;
  v61[1] = 0;
  LOBYTE(v61[2]) = v37;
  memcpy(&v61[2] + 1, v57, 0x13FuLL);
  memcpy((v39 + v42), v61, 0x150uLL);
  v43 = v39 + *(v40 + 64);
  *v43 = 0;
  *(v43 + 8) = 0;
  sub_1E4773850(v61, v62, &qword_1ECF7C198, &qword_1E487C740);
  sub_1E47738B8(v41, &qword_1ECF7C180, &qword_1E487C728);
  v62[0] = v36;
  v62[1] = 0;
  LOBYTE(v62[2]) = v37;
  memcpy(&v62[2] + 1, v57, 0x13FuLL);
  sub_1E47738B8(v62, &qword_1ECF7C198, &qword_1E487C740);
  sub_1E47738B8(v38, &qword_1ECF7C180, &qword_1E487C728);
}

uint64_t sub_1E47922A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1 + *(type metadata accessor for RectangularNextEventContentView.RedactionProvider() + 40);
  v4 = *(v3 + 56);
  sub_1E47925A8(&v23);
  v5 = *(v3 + 64);
  sub_1E47925A8(&v16);
  sub_1E4877BEC();
  sub_1E47925A8(&v9);
  v30[4] = v27;
  v30[5] = v28;
  v31 = v29;
  v30[0] = v23;
  v30[1] = v24;
  v30[2] = v25;
  v30[3] = v26;
  *__src = v23;
  *&__src[16] = v24;
  *&__src[32] = v25;
  *&__src[48] = v26;
  *&__src[64] = v27;
  *&__src[80] = v28;
  *&__src[96] = v29;
  v32[0] = v16;
  v32[1] = v17;
  v33 = v22;
  v32[4] = v20;
  v32[5] = v21;
  v32[2] = v18;
  v32[3] = v19;
  *&__src[120] = v17;
  *&__src[104] = v16;
  *&__src[136] = v18;
  *&__src[168] = v20;
  *&__src[152] = v19;
  *&__src[184] = v21;
  *&__src[200] = v22;
  v34[0] = v9;
  v34[1] = v10;
  v35 = v15;
  v34[4] = v13;
  v34[5] = v14;
  v34[2] = v11;
  v34[3] = v12;
  *&__src[208] = v9;
  *&__src[224] = v10;
  *&__src[304] = v15;
  *&__src[272] = v13;
  *&__src[288] = v14;
  *&__src[240] = v11;
  *&__src[256] = v12;
  memcpy(a2, __src, 0x138uLL);
  v36[4] = v13;
  v36[5] = v14;
  v37 = v15;
  v36[0] = v9;
  v36[1] = v10;
  v36[3] = v12;
  v36[2] = v11;
  sub_1E4773850(v30, v40, &qword_1ECF7C1A0, &qword_1E487C748);
  sub_1E4773850(v32, v40, &qword_1ECF7C1A0, &qword_1E487C748);
  sub_1E4773850(v34, v40, &qword_1ECF7C1A0, &qword_1E487C748);
  sub_1E47738B8(v36, &qword_1ECF7C1A0, &qword_1E487C748);
  v38[4] = v20;
  v38[5] = v21;
  v39 = v22;
  v38[0] = v16;
  v38[1] = v17;
  v38[3] = v19;
  v38[2] = v18;
  sub_1E47738B8(v38, &qword_1ECF7C1A0, &qword_1E487C748);
  v40[4] = v27;
  v40[5] = v28;
  v41 = v29;
  v40[0] = v23;
  v40[1] = v24;
  v40[2] = v25;
  v40[3] = v26;
  sub_1E47738B8(v40, &qword_1ECF7C1A0, &qword_1E487C748);
}

__n128 sub_1E47925A8@<Q0>(uint64_t a1@<X8>)
{

  v2 = sub_1E487842C();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  KeyPath = swift_getKeyPath();
  sub_1E487889C();
  sub_1E4877BCC();
  *&v11[7] = v12;
  *&v11[23] = v13;
  *&v11[39] = v14;
  *(a1 + 65) = *&v11[16];
  result = *&v11[32];
  *(a1 + 81) = *&v11[32];
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 49) = *v11;
  *(a1 + 96) = *(&v14 + 1);
  return result;
}

uint64_t sub_1E47926D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v189 = a2;
  v199 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF80, &qword_1E487C400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v157 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF88, &qword_1E487C408);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v159 = &v157 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF90, &qword_1E487C410);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v178 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v176 = (&v157 - v15);
  v16 = type metadata accessor for ColorBarView(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v177 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v175 = &v157 - v20;
  v21 = type metadata accessor for ColorBarView.Styling(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v173 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF98, &qword_1E487C418);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v157 - v26;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFA0, &qword_1E487C420);
  v28 = *(*(v179 - 8) + 64);
  MEMORY[0x1EEE9AC00](v179);
  v184 = &v157 - v29;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFA8, &qword_1E487C428);
  v30 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v180 = &v157 - v31;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFB0, &qword_1E487C430);
  v32 = *(*(v195 - 8) + 64);
  MEMORY[0x1EEE9AC00](v195);
  v197 = &v157 - v33;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFB8, &qword_1E487C438);
  v34 = *(*(v196 - 8) + 64);
  MEMORY[0x1EEE9AC00](v196);
  v174 = &v157 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFC0, &qword_1E487C440);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v167 = (&v157 - v38);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFC8, &qword_1E487C448);
  v39 = *(*(v165 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v165);
  v169 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v168 = &v157 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v172 = &v157 - v44;
  v164 = sub_1E487719C();
  v163 = *(v164 - 8);
  v45 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFD0, &qword_1E487C450);
  v170 = *(v171 - 8);
  v47 = *(v170 + 64);
  v48 = MEMORY[0x1EEE9AC00](v171);
  v166 = &v157 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v185 = &v157 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFD8, &qword_1E487C458);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v194 = &v157 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v157 - v55;
  v57 = sub_1E4878D2C();
  v193 = sub_1E4878D1C();
  v161 = v57;
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v201 = v56;
  EventContent = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  v59 = (a1 + EventContent[8]);
  v60 = v59[1];
  v183 = v7;
  v182 = v8;
  v181 = v4;
  v200 = v27;
  if (v60)
  {
    v157 = v21;
    v158 = v16;
    *&v206 = *v59;
    *(&v206 + 1) = v60;
    sub_1E477A374();

    v61 = sub_1E487848C();
    v63 = v62;
    v65 = v64;
    v66 = *(a1 + EventContent[9] + 56);
    v67 = sub_1E487842C();
    v69 = v68;
    v71 = v70;
    sub_1E477A3C8(v61, v63, v65 & 1);

    v160 = a1;
    if (sub_1E4794C88())
    {
      if (qword_1EE2B3C50 != -1)
      {
        swift_once();
      }
    }

    else
    {
      sub_1E48786FC();
    }

    v72 = sub_1E48783FC();
    v74 = v73;
    v76 = v75;
    v78 = v77;

    sub_1E477A3C8(v67, v69, v71 & 1);

    KeyPath = swift_getKeyPath();
    v192 = v72;
    v191 = v74;
    v187 = v76 & 1;
    sub_1E478B8E0(v72, v74, v76 & 1);
    v190 = v78;

    v188 = KeyPath;

    v186 = 1;
    a1 = v160;
    v27 = v200;
    v16 = v158;
    v21 = v157;
  }

  else
  {
    v192 = 0;
    v191 = 0;
    v187 = 0;
    v190 = 0;
    v188 = 0;
    v186 = 0;
  }

  v80 = a1 + EventContent[6];
  if ((*(v80 + *(type metadata accessor for Event() + 56)) & 0xFE) == 6)
  {
    (*(v163 + 16))(v162, a1 + EventContent[7], v164);
    v81 = sub_1E487847C();
    v83 = v82;
    v85 = v84;
    v200 = (a1 + EventContent[9]);
    v86 = *(v200 + 7);
    v87 = sub_1E487842C();
    v89 = v88;
    v90 = a1;
    v92 = v91;
    v94 = v93;
    sub_1E477A3C8(v81, v83, v85 & 1);

    v95 = swift_getKeyPath();
    sub_1E4794C88();
    v96 = swift_getKeyPath();
    v203 = v92 & 1;
    v202 = 0;
    *&v206 = v87;
    *(&v206 + 1) = v89;
    LOBYTE(v207) = v92 & 1;
    *(&v207 + 1) = v94;
    *&v208 = v95;
    *(&v208 + 1) = 1;
    LOBYTE(v209) = 0;
    v97 = v189;
    *(&v209 + 1) = v96;
    *&v210 = v189;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
    sub_1E479A240();
    v98 = v185;
    sub_1E48784AC();
    v204[2] = v208;
    v204[3] = v209;
    v205 = v210;
    v204[1] = v207;
    v204[0] = v206;
    sub_1E47738B8(v204, &qword_1ECF7C000, &unk_1E48825D0);
    v99 = sub_1E4877F6C();
    v100 = *(v200 + 3);
    v101 = v167;
    *v167 = v99;
    *(v101 + 8) = v100;
    *(v101 + 16) = 0;
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C008, &qword_1E487C548);
    sub_1E4793B5C(v90, v97, (v101 + *(v102 + 44)));
    sub_1E4794C88();
    sub_1E487889C();
    sub_1E4877CEC();
    v103 = v168;
    sub_1E477372C(v101, v168, &qword_1ECF7BFC0, &qword_1E487C440);
    v104 = (v103 + *(v165 + 36));
    v105 = v209;
    v106 = v211;
    v107 = v212;
    v104[4] = v210;
    v104[5] = v106;
    v104[6] = v107;
    v108 = v207;
    v109 = v208;
    *v104 = v206;
    v104[1] = v108;
    v104[2] = v109;
    v104[3] = v105;
    v110 = v172;
    sub_1E477372C(v103, v172, &qword_1ECF7BFC8, &qword_1E487C448);
    v111 = v170;
    v112 = *(v170 + 16);
    v113 = v166;
    v114 = v171;
    v112(v166, v98, v171);
    v115 = v169;
    sub_1E4773850(v110, v169, &qword_1ECF7BFC8, &qword_1E487C448);
    v116 = v174;
    v112(v174, v113, v114);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C010, &qword_1E487C550);
    sub_1E4773850(v115, v116 + *(v117 + 48), &qword_1ECF7BFC8, &qword_1E487C448);
    sub_1E47738B8(v115, &qword_1ECF7BFC8, &qword_1E487C448);
    v118 = *(v111 + 8);
    v118(v113, v114);
    sub_1E4773850(v116, v197, &qword_1ECF7BFB8, &qword_1E487C438);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0E98, &qword_1ECF7BFB8, &qword_1E487C438);
    sub_1E479A114();
    v119 = v201;
    sub_1E487803C();
    sub_1E47738B8(v116, &qword_1ECF7BFB8, &qword_1E487C438);
    sub_1E47738B8(v110, &qword_1ECF7BFC8, &qword_1E487C448);
    v118(v185, v114);
  }

  else
  {
    v120 = sub_1E4877F5C();
    v121 = (a1 + EventContent[9]);
    v122 = v121[3];
    *v27 = v120;
    *(v27 + 1) = v122;
    v27[16] = 0;
    v185 = sub_1E4878D1C();
    sub_1E4878D0C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v123 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFE0, &qword_1E487C460) + 44)];
    v124 = *v121;
    v125 = v121[4];
    v126 = v173;
    v127 = &v173[*(v21 + 40)];
    sub_1E487735C();
    *(v126 + 48) = 1;
    v128 = v189;
    *v126 = v189;
    *(v126 + 8) = v124;
    *(v126 + 16) = 0;
    *(v126 + 24) = 3;
    *(v126 + 32) = 0;
    *(v126 + 40) = v125;
    v129 = v175;
    sub_1E4799530(v126, v175, type metadata accessor for ColorBarView.Styling);
    *(v129 + *(v16 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v130 = swift_getKeyPath();
    v131 = v129 + *(v16 + 24);
    *v131 = v130;
    *(v131 + 8) = 0;

    v132 = sub_1E4877FBC();
    v133 = v121[2];
    v134 = v176;
    *v176 = v132;
    *(v134 + 8) = v133;
    *(v134 + 16) = 0;
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFE8, &qword_1E487C4C0);
    sub_1E47940FC(a1, v128, (v134 + *(v135 + 44)));
    v136 = v177;
    sub_1E4799530(v129, v177, type metadata accessor for ColorBarView);
    v137 = v178;
    sub_1E4773850(v134, v178, &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E4799530(v136, v123, type metadata accessor for ColorBarView);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFF0, &qword_1E487C4C8);
    sub_1E4773850(v137, v123 + *(v138 + 48), &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E47738B8(v134, &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E4799600(v129, type metadata accessor for ColorBarView);
    sub_1E4799600(v126, type metadata accessor for ColorBarView.Styling);
    sub_1E47738B8(v137, &qword_1ECF7BF90, &qword_1E487C410);
    sub_1E4799600(v136, type metadata accessor for ColorBarView);

    sub_1E4794C88();
    sub_1E487889C();
    sub_1E4877CEC();
    v139 = v184;
    sub_1E477372C(v200, v184, &qword_1ECF7BF98, &qword_1E487C418);
    v140 = (v139 + *(v179 + 36));
    v141 = v209;
    v142 = v211;
    v143 = v212;
    v140[4] = v210;
    v140[5] = v142;
    v140[6] = v143;
    v144 = v207;
    v145 = v208;
    *v140 = v206;
    v140[1] = v144;
    v140[2] = v145;
    v140[3] = v141;
    if (sub_1E4794C88())
    {
      sub_1E4773850(v139, v183, &qword_1ECF7BFA0, &qword_1E487C420);
      swift_storeEnumTagMultiPayload();
      sub_1E4799FD0();
      sub_1E479A05C();
      v146 = v180;
      sub_1E487803C();
    }

    else
    {
      v147 = v159;
      sub_1E4773850(v139, v159, &qword_1ECF7BFA0, &qword_1E487C420);
      sub_1E4773850(v147, v183, &qword_1ECF7BF88, &qword_1E487C408);
      swift_storeEnumTagMultiPayload();
      sub_1E4799FD0();
      sub_1E479A05C();
      v146 = v180;
      v139 = v184;
      sub_1E487803C();
      sub_1E47738B8(v147, &qword_1ECF7BF88, &qword_1E487C408);
    }

    v119 = v201;
    sub_1E47738B8(v139, &qword_1ECF7BFA0, &qword_1E487C420);
    sub_1E4773850(v146, v197, &qword_1ECF7BFA8, &qword_1E487C428);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0E98, &qword_1ECF7BFB8, &qword_1E487C438);
    sub_1E479A114();
    sub_1E487803C();
    sub_1E47738B8(v146, &qword_1ECF7BFA8, &qword_1E487C428);
  }

  v148 = v194;
  sub_1E4773850(v119, v194, &qword_1ECF7BFD8, &qword_1E487C458);
  v149 = v199;
  v150 = v192;
  v151 = v191;
  *v199 = v192;
  v149[1] = v151;
  v152 = v187;
  v153 = v190;
  v149[2] = v187;
  v149[3] = v153;
  v154 = v186;
  v149[4] = v188;
  v149[5] = v154;
  *(v149 + 48) = 0;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFF8, &qword_1E487C4D0);
  sub_1E4773850(v148, v149 + *(v155 + 48), &qword_1ECF7BFD8, &qword_1E487C458);
  sub_1E479A1A0(v150, v151, v152, v153);
  sub_1E479A1F0(v150, v151, v152, v153);
  sub_1E47738B8(v201, &qword_1ECF7BFD8, &qword_1E487C458);
  sub_1E47738B8(v148, &qword_1ECF7BFD8, &qword_1E487C458);
  sub_1E479A1F0(v150, v151, v152, v153);
}

uint64_t sub_1E4793B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C018, &qword_1E487C558);
  v56 = *(v57 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x1EEE9AC00](v57);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v50 - v8;
  sub_1E4878D2C();
  v55 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContent = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  v10 = a1 + *(EventContent + 24);
  if (*(v10 + *(type metadata accessor for Event() + 56)) == 6)
  {
    v11 = MEMORY[0x1E69932E0];
  }

  else
  {
    v11 = MEMORY[0x1E69932F8];
  }

  v12 = *v11;
  sub_1E4878BDC();
  v13 = sub_1E487874C();
  v58 = EventContent;
  v14 = *(a1 + *(EventContent + 36) + 64);
  sub_1E487822C();
  v15 = sub_1E487829C();
  KeyPath = swift_getKeyPath();
  sub_1E4794C88();
  v17 = swift_getKeyPath();
  v66 = v13;
  v67 = KeyPath;
  v68 = v15;
  v69 = v17;
  v70 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C020, &qword_1E487C590);
  sub_1E479A2F8();
  sub_1E48784AC();

  v66 = sub_1E47CC708();
  v67 = v18;
  sub_1E477A374();
  v19 = sub_1E487848C();
  v21 = v20;
  v23 = v22;
  v24 = sub_1E487842C();
  v26 = v25;
  v28 = v27;
  sub_1E477A3C8(v19, v21, v23 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v52 = sub_1E48783FC();
  v51 = v29;
  v31 = v30;
  v53 = v32;

  sub_1E477A3C8(v24, v26, v28 & 1);

  v33 = 1;
  if (!*(a1 + *(v58 + 32) + 8))
  {
    v33 = 2;
  }

  v58 = v33;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = v31 & 1;
  v79 = v36;
  v77 = 0;
  v37 = v56;
  v38 = *(v56 + 16);
  v39 = v59;
  v40 = v57;
  v38(v59, v60, v57);
  v41 = v54;
  v38(v54, v39, v40);
  v42 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C030, &qword_1E487C5D8) + 48)];
  v43 = v52;
  *&v61 = v52;
  v44 = v51;
  *(&v61 + 1) = v51;
  LOBYTE(v62) = v36;
  *(&v62 + 1) = *v78;
  DWORD1(v62) = *&v78[3];
  v45 = v53;
  *(&v62 + 1) = v53;
  *&v63 = v34;
  *(&v63 + 1) = v58;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = *v76;
  DWORD1(v64) = *&v76[3];
  *(&v64 + 1) = v35;
  v65 = 0xBFF0000000000000;
  *(v42 + 8) = 0xBFF0000000000000;
  v46 = v62;
  *v42 = v61;
  *(v42 + 1) = v46;
  v47 = v64;
  *(v42 + 2) = v63;
  *(v42 + 3) = v47;
  sub_1E4773850(&v61, &v66, &qword_1ECF7C038, &qword_1E487C5E0);
  v48 = *(v37 + 8);
  v48(v60, v40);
  v66 = v43;
  v67 = v44;
  LOBYTE(v68) = v36;
  *(&v68 + 1) = *v78;
  HIDWORD(v68) = *&v78[3];
  v69 = v45;
  v70 = v34;
  v71 = v58;
  v72 = 0;
  *v73 = *v76;
  *&v73[3] = *&v76[3];
  v74 = v35;
  v75 = 0xBFF0000000000000;
  sub_1E47738B8(&v66, &qword_1ECF7C038, &qword_1E487C5E0);
  v48(v59, v40);
}

uint64_t sub_1E47940FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v121 = a2;
  v119 = a3;
  v123 = type metadata accessor for Event();
  v4 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v109 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for LocationView();
  v115 = *(v120 - 8);
  v6 = *(v115 + 64);
  v7 = MEMORY[0x1EEE9AC00](v120);
  v108 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C040, &qword_1E487C5E8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v118 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v105 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = &v105 - v17;
  v18 = sub_1E487719C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BFD0, &qword_1E487C450);
  v116 = *(v23 - 8);
  v117 = v23;
  v24 = *(v116 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v124 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v105 - v27;
  sub_1E4878D2C();
  v114 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContent = type metadata accessor for RectangularNextEventContentView.SingleEventView(0);
  (*(v19 + 16))(v22, a1 + EventContent[7], v18);
  v29 = sub_1E487847C();
  v31 = v30;
  v33 = v32;
  v34 = *(a1 + EventContent[10]);
  v35 = sub_1E487844C();
  v37 = v36;
  v127 = a1;
  v39 = v38;
  sub_1E477A3C8(v29, v31, v33 & 1);

  v122 = v127 + EventContent[6];
  LODWORD(v111) = *(v122 + *(v123 + 56)) - 3 < 2;
  v40 = sub_1E48783EC();
  v42 = v41;
  v44 = v43;
  sub_1E477A3C8(v35, v37, v39 & 1);

  v112 = EventContent;
  v110 = v127 + EventContent[9];
  v45 = *(v110 + 56);
  v46 = sub_1E487842C();
  v48 = v47;
  LOBYTE(v35) = v49;
  v51 = v50;
  sub_1E477A3C8(v40, v42, v44 & 1);

  KeyPath = swift_getKeyPath();
  sub_1E4794C88();
  v53 = swift_getKeyPath();
  v145 = v35 & 1;
  v144 = 0;
  *&v137 = v46;
  *(&v137 + 1) = v48;
  LOBYTE(v138) = v35 & 1;
  *(&v138 + 1) = v51;
  *&v139 = KeyPath;
  *(&v139 + 1) = 1;
  LOBYTE(v140) = 0;
  *(&v140 + 1) = v53;
  v141 = v121;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C000, &unk_1E48825D0);
  sub_1E479A240();
  sub_1E48784AC();
  v142[1] = v138;
  v142[2] = v139;
  v142[3] = v140;
  v143 = v141;
  v142[0] = v137;
  sub_1E47738B8(v142, &qword_1ECF7C000, &unk_1E48825D0);
  *&v137 = sub_1E47CC708();
  *(&v137 + 1) = v54;
  sub_1E477A374();
  v55 = sub_1E487848C();
  v57 = v56;
  LOBYTE(v48) = v58;
  v59 = sub_1E48783EC();
  v61 = v60;
  LOBYTE(v31) = v62;
  sub_1E477A3C8(v55, v57, v48 & 1);

  v106 = *(v110 + 64);
  v63 = sub_1E487842C();
  v65 = v64;
  v67 = v66;
  v68 = v127;
  sub_1E477A3C8(v59, v61, v31 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v110 = sub_1E48783FC();
  v111 = v69;
  v121 = v70;
  v72 = v71;

  sub_1E477A3C8(v63, v65, v67 & 1);

  v73 = v122;
  v74 = v113;
  sub_1E4773850(v122 + *(v123 + 60), v113, &qword_1ECF7C048, &qword_1E487C5F0);
  v75 = type metadata accessor for Location();
  v76 = 1;
  v77 = (*(*(v75 - 8) + 48))(v74, 1, v75);
  sub_1E47738B8(v74, &qword_1ECF7C048, &qword_1E487C5F0);
  if (v77 == 1)
  {
    v78 = v112;
    if (*(v68 + *(v112 + 32) + 8))
    {
      v76 = 1;
    }

    else
    {
      v76 = 2;
    }

    v79 = v125;
    v80 = v120;
  }

  else
  {
    v79 = v125;
    v80 = v120;
    v78 = v112;
  }

  v113 = swift_getKeyPath();
  v112 = swift_getKeyPath();
  LODWORD(v120) = v72 & 1;
  v136 = v72 & 1;
  v134 = 0;
  v81 = *(v68 + *(v78 + 32) + 8);
  v123 = v76;
  if (v81)
  {
    v82 = 1;
  }

  else
  {
    sub_1E4799530(v73, v109, type metadata accessor for Event);
    v83 = v106;

    if (sub_1E4794C88())
    {
      if (qword_1EE2B3C50 != -1)
      {
        swift_once();
      }

      v84 = qword_1EE2B3C58;
    }

    else
    {
      v84 = sub_1E48786FC();
    }

    v85 = swift_getKeyPath();
    v86 = v108;
    *v108 = v85;
    *(v86 + 8) = 0;
    v87 = v80[11];
    *(v86 + v87) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    sub_1E4799598(v109, v86 + v80[5], type metadata accessor for Event);
    *(v86 + v80[6]) = v83;
    *(v86 + v80[7]) = 0;
    *(v86 + v80[8]) = v84;
    *(v86 + v80[9]) = 0;
    *(v86 + v80[10]) = 0;
    v88 = v107;
    sub_1E4799598(v86, v107, type metadata accessor for LocationView);
    sub_1E4799598(v88, v79, type metadata accessor for LocationView);
    v82 = 0;
  }

  (*(v115 + 56))(v79, v82, 1, v80);
  v90 = v116;
  v89 = v117;
  v91 = *(v116 + 16);
  v92 = v124;
  v91(v124, v126, v117);
  v93 = v118;
  sub_1E4773850(v79, v118, &qword_1ECF7C040, &qword_1E487C5E8);
  v94 = v119;
  v91(v119, v92, v89);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C050, &qword_1E487C5F8);
  v96 = &v94[*(v95 + 48)];
  v97 = v110;
  v98 = v111;
  *&v128 = v110;
  *(&v128 + 1) = v121;
  LOBYTE(v129) = v120;
  *(&v129 + 1) = *v135;
  DWORD1(v129) = *&v135[3];
  v99 = v112;
  v100 = v113;
  *(&v129 + 1) = v111;
  *&v130 = v113;
  *(&v130 + 1) = v123;
  LOBYTE(v131) = 0;
  *(&v131 + 1) = *v133;
  DWORD1(v131) = *&v133[3];
  *(&v131 + 1) = v112;
  v132 = 0xBFF0000000000000;
  *(v96 + 8) = 0xBFF0000000000000;
  v101 = v129;
  *v96 = v128;
  *(v96 + 1) = v101;
  v102 = v131;
  *(v96 + 2) = v130;
  *(v96 + 3) = v102;
  sub_1E4773850(v93, &v94[*(v95 + 64)], &qword_1ECF7C040, &qword_1E487C5E8);
  sub_1E4773850(&v128, &v137, &qword_1ECF7C038, &qword_1E487C5E0);
  sub_1E47738B8(v125, &qword_1ECF7C040, &qword_1E487C5E8);
  v103 = *(v90 + 8);
  v103(v126, v89);
  sub_1E47738B8(v93, &qword_1ECF7C040, &qword_1E487C5E8);
  *&v137 = v97;
  *(&v137 + 1) = v121;
  LOBYTE(v138) = v120;
  *(&v138 + 1) = *v135;
  DWORD1(v138) = *&v135[3];
  *(&v138 + 1) = v98;
  *&v139 = v100;
  *(&v139 + 1) = v123;
  LOBYTE(v140) = 0;
  *(&v140 + 1) = *v133;
  DWORD1(v140) = *&v133[3];
  *(&v140 + 1) = v99;
  v141 = 0xBFF0000000000000;
  sub_1E47738B8(&v137, &qword_1ECF7C038, &qword_1E487C5E0);
  v103(v124, v89);
}

uint64_t sub_1E4794C88()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E4794DD0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4877F1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - v12);
  v14 = a1(0);
  sub_1E4773850(v2 + *(v14 + 20), v13, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E4877B3C();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_1E4878DDC();
    v18 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1E4794FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4877B3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 24);
  sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.SingleEventView, v9);
  v11 = sub_1E4770A7C(v2 + v10, v9);
  (*(v6 + 8))(v9, v5);
  v12 = sub_1E4877FBC();
  v13 = *(v2 + *(a1 + 36) + 16);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF78, &qword_1E487C3F8);
  sub_1E47926D0(v2, v11, (a2 + *(v14 + 44)));
}

uint64_t sub_1E4795128()
{
  v1 = *(v0 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = type metadata accessor for Event();
    v4 = *(v3 - 8);
    v5 = v2 - 1;
    if (v2 == 1)
    {
      return 1;
    }

    v7 = v3;
    v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v9 = (v1 + *(v3 + 40) + v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v4 + 72);
    v13 = v1 + v12 + v8;
    while (1)
    {
      v14 = (v13 + *(v7 + 40));
      v15 = v14[1];
      if (!v15 || v11 == 0)
      {
        break;
      }

      v17 = v10 == *v14 && v11 == v15;
      if (!v17 && (sub_1E48790EC() & 1) == 0)
      {
        break;
      }

      v13 += v12;
      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E4795224()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Event();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1E4795128())
  {
    v16 = *(v0 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 24));
    if (*(v16 + 16))
    {
      sub_1E4799530(v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v15, type metadata accessor for Event);
      sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, v10);
      v17 = sub_1E4770A7C(v15, v10);
      (*(v7 + 8))(v10, v6);
      sub_1E4799600(v15, type metadata accessor for Event);
      return v17;
    }
  }

  v18 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = *v0;

    sub_1E4878DDC();
    v20 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v18, 0);
    (*(v2 + 8))(v5, v1);
    if (v22[15] != 1)
    {
      return 0;
    }
  }

  if (qword_1EE2B3C68 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2B3C70;

  return v17;
}

uint64_t sub_1E4795568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = type metadata accessor for ColorBarView(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v58 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - v9;
  v11 = sub_1E4877B3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v56 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a2;
  sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, v15);
  v17 = sub_1E4770A7C(a1, v15);
  v53[1] = a2;
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  v19 = (v16 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36));
  v20 = *v19;
  v54 = v19;
  v21 = v19[5];
  LODWORD(v16) = *(type metadata accessor for ColorBarView.Styling(0) + 40);

  sub_1E487735C();
  v10[48] = 1;
  v55 = v18;
  *v10 = v18;
  *(v10 + 1) = v20;
  v10[16] = 0;
  *(v10 + 3) = 3;
  *(v10 + 4) = 0;
  *(v10 + 5) = v21;
  *&v10[*(v5 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v5 + 24)];
  *v23 = KeyPath;
  v23[8] = 0;
  v59 = sub_1E47CC708();
  v60 = v24;
  sub_1E477A374();
  v25 = sub_1E487848C();
  v27 = v26;
  LOBYTE(v20) = v28;
  v29 = *(a1 + *(type metadata accessor for Event() + 56)) - 3;
  v30 = sub_1E48783EC();
  v32 = v31;
  v34 = v33;
  sub_1E477A3C8(v25, v27, v20 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v35 = sub_1E48783FC();
  v37 = v36;
  v39 = v38;

  sub_1E477A3C8(v30, v32, v34 & 1);

  v40 = v54[8];
  v41 = sub_1E487842C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1E477A3C8(v35, v37, v39 & 1);

  v48 = swift_getKeyPath();
  v49 = v58;
  sub_1E4799530(v10, v58, type metadata accessor for ColorBarView);
  v50 = v57;
  sub_1E4799530(v49, v57, type metadata accessor for ColorBarView);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C160, &qword_1E487C708) + 48);
  sub_1E478B8E0(v41, v43, v45 & 1);

  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45 & 1;
  *(v51 + 24) = v47;
  *(v51 + 32) = v48;
  *(v51 + 40) = 1;
  *(v51 + 48) = 0;
  sub_1E4799600(v10, type metadata accessor for ColorBarView);
  sub_1E477A3C8(v41, v43, v45 & 1);

  sub_1E4799600(v49, type metadata accessor for ColorBarView);
}

uint64_t sub_1E4795A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v43 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for Event() + 56)) == 6)
  {
    v11 = MEMORY[0x1E69932E0];
  }

  else
  {
    v11 = MEMORY[0x1E69932F8];
  }

  v12 = *v11;
  sub_1E4878BDC();
  v42 = sub_1E487874C();
  v13 = *(a2 + *(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView(0) + 36) + 64);
  sub_1E487822C();
  v41 = sub_1E487829C();
  KeyPath = swift_getKeyPath();
  sub_1E4794DD0(type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, v10);
  v39 = sub_1E4770A7C(a1, v10);
  (*(v7 + 8))(v10, v6);
  sub_1E4794C88();
  v38 = swift_getKeyPath();
  v44 = sub_1E47CC708();
  v45 = v14;
  sub_1E477A374();
  v15 = sub_1E487848C();
  v17 = v16;
  v19 = v18;
  v20 = sub_1E487842C();
  v22 = v21;
  v24 = v23;
  sub_1E477A3C8(v15, v17, v19 & 1);

  if (sub_1E4794C88())
  {
    if (qword_1EE2B3C68 != -1)
    {
      swift_once();
    }
  }

  v25 = sub_1E48783FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_1E477A3C8(v20, v22, v24 & 1);

  v32 = v29 & 1;
  LOBYTE(v44) = v29 & 1;
  v33 = v41;
  v35 = v39;
  v34 = KeyPath;
  *a3 = v42;
  *(a3 + 8) = v34;
  v36 = v38;
  *(a3 + 16) = v33;
  *(a3 + 24) = v36;
  *(a3 + 32) = v35;
  *(a3 + 40) = v25;
  *(a3 + 48) = v27;
  *(a3 + 56) = v32;
  *(a3 + 64) = v31;

  sub_1E478B8E0(v25, v27, v32);

  sub_1E477A3C8(v25, v27, v32);
}