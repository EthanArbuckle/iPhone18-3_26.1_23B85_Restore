void *sub_1B4B95894(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7920, &unk_1B4D1F260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29 - v4;
  v34 = type metadata accessor for WorkoutSplit();
  v32 = *(v34 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - v9;
  WorkoutState.events.getter();
  sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
  v10 = sub_1B4D183EC();

  v11 = FICustomSplits();

  v12 = sub_1B4D183FC();
  if (v12 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v13 = [objc_opt_self() miles];
    sub_1B4D187AC();

    WorkoutState.events.getter();
    v14 = sub_1B4D183EC();

    v15 = FISplitsForMeasuringSystemIdentifier();

    sub_1B4D183FC();
    goto LABEL_4;
  }

  while (1)
  {
LABEL_4:

    v35 = sub_1B49EE57C(v16);
    sub_1B49ECF74(&v35);

    v17 = v35;
    if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
    {
      v18 = *(v35 + 16);
      if (!v18)
      {
        break;
      }

      goto LABEL_7;
    }

    v18 = sub_1B4D18ABC();
    if (!v18)
    {
      break;
    }

LABEL_7:
    v19 = 0;
    v20 = (v32 + 48);
    v21 = MEMORY[0x1E69E7CC0];
    v30 = a1;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1B8C7CD90](v19, v17);
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_22;
        }

        v22 = *(v17 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_1B49E8FF0(v19, v22, a1, v5);

      if ((*v20)(v5, 1, v34) == 1)
      {
        sub_1B4975024(v5, &qword_1EB8A7920, &unk_1B4D1F260);
      }

      else
      {
        v25 = v31;
        sub_1B4B998D0(v5, v31, type metadata accessor for WorkoutSplit);
        sub_1B4B998D0(v25, v33, type metadata accessor for WorkoutSplit);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1B4A1D79C(0, v21[2] + 1, 1, v21);
        }

        v27 = v21[2];
        v26 = v21[3];
        if (v27 >= v26 >> 1)
        {
          v21 = sub_1B4A1D79C(v26 > 1, v27 + 1, 1, v21);
        }

        v21[2] = v27 + 1;
        sub_1B4B998D0(v33, v21 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for WorkoutSplit);
        a1 = v30;
      }

      ++v19;
      if (v24 == v18)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (!sub_1B4D18ABC())
    {
      goto LABEL_3;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v21;
}

uint64_t static WorkoutSplitFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for WorkoutState();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B95E28, 0, 0);
}

uint64_t sub_1B4B95E28()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1B4974FBC(v0[4], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[6], &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v4 = v0[9];
    v5 = v0[6];

    v6 = v0[1];
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }

  else
  {
    v9 = v0[9];
    v10 = v0[7];
    sub_1B4B998D0(v0[6], v9, type metadata accessor for WorkoutState);
    if (*(v9 + *(v10 + 20)) == 3)
    {
      v11 = swift_task_alloc();
      v0[10] = v11;
      *v11 = v0;
      v11[1] = sub_1B4B96028;
      v12 = v0[9];
      v13 = v0[5];
      v15 = v0[2];
      v14 = v0[3];

      return sub_1B4B9685C(v15, v14, v12);
    }

    else
    {
      v16 = swift_task_alloc();
      v0[12] = v16;
      *v16 = v0;
      v16[1] = sub_1B4B961B8;
      v17 = v0[9];
      v18 = v0[5];
      v20 = v0[2];
      v19 = v0[3];

      return sub_1B4B9811C(v20, v19, v17, v18);
    }
  }
}

uint64_t sub_1B4B96028(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4B96128, 0, 0);
}

uint64_t sub_1B4B96128()
{
  sub_1B4B99808(v0[9], type metadata accessor for WorkoutState);
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_1B4B961B8(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4B962B8, 0, 0);
}

uint64_t sub_1B4B962B8()
{
  sub_1B4B99808(v0[9], type metadata accessor for WorkoutState);
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4(v1);
}

uint64_t WorkoutSplitFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4B963BC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1B4B96410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutSplit();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 >= 4)
  {
    v37 = v14;
    v38 = v12;
    v40 = v11;
    v41 = v13;
    v39 = a2;
    v21 = *(v11 + 44);
    v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v23 = a1 + v22;
    v24 = *(v12 + 72);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = v22;
    do
    {
      sub_1B4B99868(v23, v17, type metadata accessor for WorkoutSplit);
      if (v17[v21] == 1)
      {
        sub_1B4B99808(v17, type metadata accessor for WorkoutSplit);
      }

      else
      {
        sub_1B4B998D0(v17, v8, type metadata accessor for WorkoutSplit);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1B4A1D79C(0, v25[2] + 1, 1, v25);
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v25 = sub_1B4A1D79C(v27 > 1, v28 + 1, 1, v25);
        }

        v25[2] = v28 + 1;
        v22 = v26;
        sub_1B4B998D0(v8, v25 + v26 + v28 * v24, type metadata accessor for WorkoutSplit);
      }

      v23 += v24;
      --v18;
    }

    while (v18);
    v29 = v25[2];
    if (v29)
    {
      result = sub_1B4B99868(v25 + v22, v41, type metadata accessor for WorkoutSplit);
      v30 = v37;
      if (v29 == 1)
      {
LABEL_16:

        v31 = v39;
        sub_1B4B998D0(v41, v39, type metadata accessor for WorkoutSplit);
        return (*(v38 + 56))(v31, 0, 1, v40);
      }

      else
      {
        v32 = v25 + v24 + v22;
        v33 = 1;
        while (v33 < v25[2])
        {
          sub_1B4B99868(v32, v30, type metadata accessor for WorkoutSplit);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
          v34 = *(v40 + 36);
          sub_1B4B9474C(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
          v35 = v41;
          if (sub_1B4D180FC())
          {
            sub_1B4B99808(v35, type metadata accessor for WorkoutSplit);
            result = sub_1B4B998D0(v30, v35, type metadata accessor for WorkoutSplit);
          }

          else
          {
            result = sub_1B4B99808(v30, type metadata accessor for WorkoutSplit);
          }

          ++v33;
          v32 += v24;
          if (v29 == v33)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }

    else
    {

      return (*(v38 + 56))(v39, 1, 1, v40);
    }
  }

  else
  {
    v19 = *(v12 + 56);

    return v19(a2, 1, 1, v15);
  }

  return result;
}

uint64_t sub_1B4B9685C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for WorkoutSplit();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7920, &unk_1B4D1F260) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutState();
  v3[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B96990, 0, 0);
}

uint64_t sub_1B4B96990()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[2];
  sub_1B4B99868(v0[3], v2, type metadata accessor for WorkoutState);
  v4 = *(v2 + *(v1 + 24));
  v5 = [v3 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v6 = [objc_opt_self() mileUnit];
  LOBYTE(v3) = sub_1B4D187AC();

  v7 = objc_opt_self();
  v8 = &selRef_miles;
  if ((v3 & 1) == 0)
  {
    v8 = &selRef_kilometers;
  }

  v9 = [v7 *v8];

  v10 = sub_1B4B95894(v9);
  if (!v10[2])
  {

    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v22 = sub_1B4D17F6C();
    __swift_project_value_buffer(v22, qword_1EDC36F00);
    v23 = sub_1B4D17F5C();
    v24 = sub_1B4D1873C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B4953000, v23, v24, "No Split Events found", v25, 2u);
      MEMORY[0x1B8C7DDA0](v25, -1, -1);
    }

    goto LABEL_15;
  }

  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[4];
  v13 = v0[5];
  sub_1B4B96410(v10, v11);

  sub_1B4974FBC(v11, v12, &qword_1EB8A7920, &unk_1B4D1F260);
  v15 = (*(v13 + 48))(v12, 1, v14);
  v16 = v0[7];
  if (v15 == 1)
  {
    sub_1B4975024(v16, &qword_1EB8A7920, &unk_1B4D1F260);
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v17 = sub_1B4D17F6C();
    __swift_project_value_buffer(v17, qword_1EDC36F00);
    v18 = sub_1B4D17F5C();
    v19 = sub_1B4D1871C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B4953000, v18, v19, "No fastest split", v20, 2u);
      MEMORY[0x1B8C7DDA0](v20, -1, -1);
    }

    v21 = v0[8];

    sub_1B4975024(v21, &qword_1EB8A7920, &unk_1B4D1F260);
LABEL_15:
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v27 = v0[6];
  sub_1B4B998D0(v16, v27, type metadata accessor for WorkoutSplit);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB840, &unk_1B4D35CD0);
  v28 = type metadata accessor for WorkoutSplitFact(0);
  v29 = *(*(v28 - 1) + 72);
  v30 = (*(*(v28 - 1) + 80) + 32) & ~*(*(v28 - 1) + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B4D1A800;
  if (__OFADD__(*v27, 1))
  {
    __break(1u);
    return result;
  }

  v68 = v4;
  v69 = *v27 + 1;
  v70 = v0[8];
  v71 = result;
  v32 = v0[6];
  v33 = v0[4];
  v34 = (result + v30);
  v35 = result + v30 + v28[6];
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
  v36 = *(v33 + 32);
  v63 = v36;
  v66 = v33;
  v67 = v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v64 = *(v37 - 8);
  v62 = *(v64 + 16);
  v62(v35, v32 + v36, v37);
  v38 = *(v32 + *(v33 + 48));
  v39 = v32;
  *(v35 + v61) = v38;
  type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  swift_storeEnumTagMultiPayload();
  v40 = v28[7];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v42 = *(*(v41 - 8) + 56);
  v42(&v34[v40], 1, 1, v41);
  v42(&v34[v28[8]], 1, 1, v41);
  v43 = v28[9];
  v62(&v34[v43], v39 + v63, v37);
  v65 = *(v64 + 56);
  v65(&v34[v43], 0, 1, v37);
  v65(&v34[v28[10]], 1, 1, v37);
  v44 = v28[11];
  v45 = *(v66 + 36);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v47 = *(v46 - 8);
  (*(v47 + 16))(&v34[v44], v39 + v45, v46);
  (*(v47 + 56))(&v34[v44], 0, 1, v46);
  v48 = v28[12];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  (*(*(v49 - 8) + 56))(&v34[v48], 1, 1, v49);
  v65(&v34[v28[13]], 1, 1, v37);
  v50 = v28[14];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  (*(*(v51 - 8) + 56))(&v34[v50], 1, 1, v51);
  v52 = v28[15];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v54 = *(*(v53 - 8) + 56);
  v55 = &v34[v52];
  v26 = v71;
  v54(v55, 1, 1, v53);
  v54(&v34[v28[16]], 1, 1, v53);
  *v34 = v68;
  *(v34 + 1) = v69;
  v34[v28[17]] = 1;
  v34[v28[18]] = 1;
  v34[v28[19]] = 2;
  v34[v28[20]] = 2;
  v56 = v68;

  sub_1B4B99808(v39, type metadata accessor for WorkoutSplit);
  sub_1B4975024(v70, &qword_1EB8A7920, &unk_1B4D1F260);
LABEL_18:
  v58 = v0[7];
  v57 = v0[8];
  v59 = v0[6];
  sub_1B4B99808(v0[10], type metadata accessor for WorkoutState);

  v60 = v0[1];

  return v60(v26);
}

uint64_t sub_1B4B97220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C0344;

  return static WorkoutSplitFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(a1, a2, a3, a4);
}

uint64_t sub_1B4B972D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a5;
  v125 = a3;
  v126 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v128 = &v112 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v127 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v140 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v139 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v137 = &v112 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v112 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v135 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v112 - v33;
  v123 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v34 = *(*(v123 - 1) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v133 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v130 = *(v36 - 8);
  v131 = v36;
  v37 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v112 - v38;
  v141 = type metadata accessor for WorkoutSplit();
  v40 = *(v141 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v43 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v112 - v45;
  v132 = type metadata accessor for WorkoutState();
  v122 = *(a2 + v132[6]);
  v47 = [a1 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v48 = [objc_opt_self() mileUnit];
  v49 = sub_1B4D187AC();

  v50 = objc_opt_self();
  v51 = &selRef_miles;
  if ((v49 & 1) == 0)
  {
    v51 = &selRef_kilometers;
  }

  v52 = [v50 *v51];

  v138 = a2;
  v53 = sub_1B4B95894(v52);
  v54 = v53;
  v55 = v53[2];
  if (v55)
  {
    v121 = v10;
    v56 = v53 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v57 = *(v40 + 72);
    sub_1B4B99868(&v56[v57 * (v55 - 1)], v46, type metadata accessor for WorkoutSplit);
    v58 = v46;
    v120 = v52;
    v118 = v55;
    if (v55 == 1)
    {

      v119 = 0;
    }

    else
    {
      sub_1B4B99868(&v56[v57 * (v55 - 2)], v43, type metadata accessor for WorkoutSplit);

      v68 = *(v141 + 36);
      type metadata accessor for UnitPace();
      sub_1B4D173EC();
      sub_1B4B9474C(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
      v69 = v131;
      LOBYTE(v68) = sub_1B4D180FC();
      (*(v130 + 8))(v39, v69);
      sub_1B4B99808(v43, type metadata accessor for WorkoutSplit);
      v119 = v68 & 1;
    }

    v70 = *(v124 + 16);
    v71 = (v124 + 32);
    do
    {
      v72 = v70;
      if (!v70)
      {
        break;
      }

      v73 = *v71++;
      --v70;
    }

    while (v73 != 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB840, &unk_1B4D35CD0);
    v74 = type metadata accessor for WorkoutSplitFact(0);
    v75 = *(*(v74 - 1) + 72);
    v76 = (*(*(v74 - 1) + 80) + 32) & ~*(*(v74 - 1) + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1B4D1A800;
    v124 = v77;
    v78 = (v77 + v76);
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
    v80 = *(v141 + 32);
    v116 = v80;
    v81 = v141;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v117 = *(v114 - 8);
    v115 = *(v117 + 16);
    v82 = &v46[v80];
    v83 = v133;
    v115(v133, v82, v114);
    *(v83 + v79) = v46[*(v81 + 48)];
    swift_storeEnumTagMultiPayload();
    v84 = *(v81 + 28);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v86 = *(v85 - 8);
    v87 = v134;
    (*(v86 + 16))(v134, &v46[v84], v85);
    v113 = *(v86 + 56);
    v113(v87, 0, 1, v85);
    v88 = v132;
    v89 = *(v138 + v132[12]);
    v90 = objc_opt_self();
    v123 = v122;
    v91 = [v90 seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v92 = v135;
    sub_1B4D1741C();
    v113(v92, 0, 1, v85);
    v93 = v136;
    v94 = v114;
    v115(v136, &v46[v116], v114);
    (*(v117 + 56))(v93, 0, 1, v94);
    v95 = v138;
    sub_1B4974FBC(v138 + v88[15], v137, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v96 = v140;
    v97 = v141;
    v99 = v130;
    v98 = v131;
    (*(v130 + 16))(v140, v58 + *(v141 + 36), v131);
    (*(v99 + 56))(v96, 0, 1, v98);
    v100 = *(v97 + 40);
    v141 = v58;
    v101 = v58 + v100;
    v102 = v127;
    sub_1B4974FBC(v101, v127, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B4974FBC(v125, v139, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v103 = v128;
    sub_1B4974FBC(v126, v128, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v72)
    {
      v104 = v132;
      v105 = v129;
      sub_1B4974FBC(v95 + v132[21], v129, &qword_1EB8A6CC8, &unk_1B4D464B0);
      v106 = v95 + v104[19];
      v107 = v121;
      sub_1B4974FBC(v106, v121, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }

    else
    {
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
      v105 = v129;
      (*(*(v108 - 8) + 56))(v129, 1, 1, v108);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
      v107 = v121;
      (*(*(v109 - 8) + 56))(v121, 1, 1, v109);
    }

    v110 = v118;
    *v78 = v123;
    v78[1] = v110;
    sub_1B4B998D0(v133, v78 + v74[6], type metadata accessor for WorkoutSplitFact.SplitFactType);
    sub_1B498B270(v134, v78 + v74[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B498B270(v135, v78 + v74[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B498B270(v136, v78 + v74[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B498B270(v137, v78 + v74[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B498B270(v140, v78 + v74[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B498B270(v102, v78 + v74[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B498B270(v139, v78 + v74[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B498B270(v103, v78 + v74[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B498B270(v105, v78 + v74[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B498B270(v107, v78 + v74[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
    *(v78 + v74[17]) = 2;
    *(v78 + v74[18]) = 0;
    *(v78 + v74[19]) = v119;
    *(v78 + v74[20]) = 2;

    sub_1B4B99808(v141, type metadata accessor for WorkoutSplit);
    return v124;
  }

  else
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v59 = sub_1B4D17F6C();
    __swift_project_value_buffer(v59, qword_1EDC36F00);

    v60 = sub_1B4D17F5C();
    v61 = sub_1B4D1873C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v142 = v63;
      *v62 = 136315138;
      v64 = MEMORY[0x1B8C7C800](v54, v141);
      v66 = v65;

      v67 = sub_1B49558AC(v64, v66, &v142);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1B4953000, v60, v61, "No Last Split Event in %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1B8C7DDA0](v63, -1, -1);
      MEMORY[0x1B8C7DDA0](v62, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B4B9811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v4[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v4[23] = v15;
  v16 = *(v15 - 8);
  v4[24] = v16;
  v17 = *(v16 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4[29] = v19;
  v20 = *(v19 - 8);
  v4[30] = v20;
  v21 = *(v20 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v23 = type metadata accessor for WorkoutState();
  v4[41] = v23;
  v24 = *(v23 - 8);
  v4[42] = v24;
  v25 = *(v24 + 64) + 15;
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B985A8, 0, 0);
}

uint64_t sub_1B4B985A8()
{
  v1 = *(v0 + 344);
  sub_1B4B99868(*(v0 + 24), v1, type metadata accessor for WorkoutState);
  v2 = sub_1B4CAC70C(v1);
  v3 = v2;
  v4 = *(v2 + 2);
  v5 = 32;
  do
  {
    v6 = v4;
    if (!v4)
    {
      break;
    }

    v7 = *&v2[v5];
    v5 += 8;
    --v4;
  }

  while (v7 != 10);
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);
  v10 = *(v0 + 224);
  sub_1B4974FBC(*(v0 + 32), v10, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v179 = *(v9 + 48);
  if (v179(v10, 1, v8) == 1)
  {
    v11 = (v0 + 312);
    v12 = *(v0 + 312);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    sub_1B4975024(*(v0 + 224), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_10:
    v24 = *(v0 + 344);
    v25 = *(v0 + 320);
    v26 = *(v0 + 328);
    sub_1B4975024(*v11, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4974FBC(v24 + *(v26 + 104), v25, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    goto LABEL_11;
  }

  v15 = *(v0 + 328);
  v16 = *(v0 + 312);
  v17 = *(v0 + 232);
  v18 = *(v0 + 240);
  v19 = *(v0 + 224);
  sub_1B4974FBC(v19 + *(v15 + 104), v16, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4B99808(v19, type metadata accessor for WorkoutState);
  v20 = *(v18 + 48);
  if (v20(v16, 1, v17) == 1)
  {
    v11 = (v0 + 312);
    goto LABEL_10;
  }

  v21 = *(v0 + 344);
  v22 = *(v0 + 304);
  v23 = *(v0 + 232);
  v176 = *(*(v0 + 240) + 32);
  v176(*(v0 + 256), *(v0 + 312), v23);
  sub_1B4974FBC(v21 + *(v15 + 104), v22, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v20(v22, 1, v23) == 1)
  {
    v11 = (v0 + 304);
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
    goto LABEL_10;
  }

  v101 = *(v0 + 320);
  v103 = *(v0 + 248);
  v102 = *(v0 + 256);
  v104 = *(v0 + 232);
  v105 = *(v0 + 240);
  v176(v103, *(v0 + 304), v104);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1744C();
  v106 = *(v105 + 8);
  v106(v103, v104);
  v106(v102, v104);
  (*(v105 + 56))(v101, 0, 1, v104);
LABEL_11:
  v27 = *(v0 + 328);
  v28 = *(v0 + 184);
  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  sub_1B4974FBC(*(v0 + 344) + *(v27 + 80), v30, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v31 = *(v29 + 48);
  if (v31(v30, 1, v28) == 1)
  {
    v32 = *(v0 + 176);
LABEL_18:
    sub_1B4975024(v32, &qword_1EB8A6CC8, &unk_1B4D464B0);
    v45 = 2;
    goto LABEL_19;
  }

  v33 = *(v0 + 328);
  v34 = *(v0 + 216);
  v35 = *(v0 + 32);
  v177 = *(*(v0 + 192) + 32);
  v177(*(v0 + 208), *(v0 + 176), *(v0 + 184));
  sub_1B4974FBC(v35, v34, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v36 = v179(v34, 1, v33);
  v37 = *(v0 + 216);
  if (v36 == 1)
  {
    v38 = *(v0 + 184);
    v39 = *(v0 + 192);
    v40 = *(v0 + 168);
    (*(v39 + 8))(*(v0 + 208), v38);
    sub_1B4975024(v37, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v39 + 56))(v40, 1, 1, v38);
LABEL_17:
    v32 = *(v0 + 168);
    goto LABEL_18;
  }

  v41 = *(v0 + 184);
  v42 = *(v0 + 168);
  sub_1B4974FBC(v37 + *(v27 + 80), v42, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4B99808(v37, type metadata accessor for WorkoutState);
  v43 = v31(v42, 1, v41);
  v44 = *(v0 + 208);
  if (v43 == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
    goto LABEL_17;
  }

  v108 = *(v0 + 192);
  v107 = *(v0 + 200);
  v109 = *(v0 + 184);
  v177(v107, *(v0 + 168), v109);
  sub_1B4B9474C(&qword_1EB8AB850, &qword_1EB8A6CD0, &unk_1B4D1F270);
  v110 = sub_1B4D180EC();
  v111 = *(v108 + 8);
  v111(v107, v109);
  v111(v44, v109);
  v45 = v110 & 1;
LABEL_19:
  v46 = *(v3 + 16);
  v47 = 32;
  v48 = v46;
  do
  {
    v49 = v48;
    if (!v48)
    {
      break;
    }

    v50 = *(v3 + v47);
    v47 += 8;
    --v48;
  }

  while (v50 != 2);
  v51 = 32;
  do
  {
    if (!v46)
    {
      if (v6)
      {
        sub_1B4974FBC(*(v0 + 320), *(v0 + 288), &qword_1EB8A6CC0, &unk_1B4D1BC00);
        if (v49)
        {
LABEL_30:
          sub_1B4974FBC(*(v0 + 344) + *(*(v0 + 328) + 72), *(v0 + 136), &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          goto LABEL_33;
        }
      }

      else
      {
        (*(*(v0 + 240) + 56))(*(v0 + 288), 1, 1, *(v0 + 232));
        if (v49)
        {
          goto LABEL_30;
        }
      }

      v53 = *(v0 + 136);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
LABEL_33:
      v55 = *(v0 + 96);
      v56 = *(v0 + 104);
      v57 = *(v0 + 88);
      sub_1B4974FBC(*(v0 + 344) + *(*(v0 + 328) + 88), v57, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v58 = (*(v56 + 48))(v57, 1, v55);
      v59 = *(v0 + 344);
      if (v58 == 1)
      {
        v60 = *(v0 + 320);
        v61 = *(v0 + 288);
        v62 = *(v0 + 136);
        v63 = *(v0 + 88);

        sub_1B4975024(v63, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v182 = MEMORY[0x1E69E7CC0];
        goto LABEL_50;
      }

      v64 = *(v0 + 328);
      v65 = *(v0 + 112);
      v66 = *(v0 + 96);
      v67 = *(v0 + 104);
      (*(v67 + 32))(*(v0 + 120), *(v0 + 88), v66);
      v68 = *(v59 + *(v64 + 48));
      v69 = objc_opt_self();
      v70 = [v69 seconds];
      sub_1B4D1745C();

      sub_1B4D1742C();
      v72 = v71;
      v73 = *(v67 + 8);
      result = v73(v65, v66);
      v75 = v68 / v72;
      if (COERCE__INT64(fabs(v68 / v72)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v75 > -9.22337204e18)
      {
        if (v75 < 9.22337204e18)
        {
          v157 = v69;
          v174 = v73;
          v180 = v45;
          v172 = v75;
          v76 = *(v3 + 16);
          v77 = 32;
          do
          {
            v78 = v76;
            if (!v76)
            {
              break;
            }

            v79 = *(v3 + v77);
            v77 += 8;
            --v76;
          }

          while (v79 != 5);
          v80 = *(v0 + 344);
          v81 = *(v0 + 328);
          v142 = *(v0 + 280);
          v145 = *(v0 + 272);
          v160 = *(v0 + 264);
          v163 = *(v0 + 288);
          v136 = *(v0 + 240);
          v139 = *(v0 + 232);
          v166 = *(v0 + 128);
          v169 = *(v0 + 136);
          v82 = *(v0 + 120);
          v83 = *(v0 + 104);
          v134 = *(v0 + 72);
          v84 = *(v0 + 64);
          v130 = *(v0 + 96);
          v132 = *(v0 + 56);
          v148 = *(v0 + 48);
          v151 = *(v0 + 40);
          v154 = *(v0 + 80);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB840, &unk_1B4D35CD0);
          v85 = type metadata accessor for WorkoutSplitFact(0);
          v86 = *(*(v85 - 1) + 72);
          v87 = (*(*(v85 - 1) + 80) + 32) & ~*(*(v85 - 1) + 80);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_1B4D1A800;
          v182 = v88;
          v89 = (v88 + v87);
          v128 = *(v80 + *(v81 + 24));
          v90 = *(v83 + 16);
          v90(v84, v82, v130);
          swift_storeEnumTagMultiPayload();
          v90(v154, v82, v130);
          v91 = *(v83 + 56);
          v91(v154, 0, 1, v130);
          v155 = v128;
          v92 = [v157 seconds];
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          sub_1B4D1741C();
          v91(v134, 0, 1, v130);
          v93 = *(v136 + 56);
          v93(v142, 1, 1, v139);
          v93(v145, 1, 1, v139);
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
          (*(*(v94 - 8) + 56))(v148, 1, 1, v94);
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
          (*(*(v95 - 8) + 56))(v151, 1, 1, v95);
          sub_1B4974FBC(v163, v160, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B4974FBC(v169, v166, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          v96 = *(v0 + 152);
          if (v78)
          {
            v97 = *(v0 + 344);
            v98 = *(v0 + 328);
            sub_1B4974FBC(v97 + *(v98 + 84), *(v0 + 160), &qword_1EB8A6CC8, &unk_1B4D464B0);
            sub_1B4974FBC(v97 + *(v98 + 76), v96, &qword_1EB8A6CC8, &unk_1B4D464B0);
          }

          else
          {
            v112 = *(v0 + 184);
            v113 = *(*(v0 + 192) + 56);
            v113(*(v0 + 160), 1, 1, v112);
            v113(v96, 1, 1, v112);
          }

          v59 = *(v0 + 344);
          v61 = *(v0 + 288);
          v149 = *(v0 + 264);
          v158 = *(v0 + 160);
          v161 = *(v0 + 152);
          v62 = *(v0 + 136);
          v152 = *(v0 + 128);
          v167 = *(v0 + 120);
          v170 = *(v0 + 320);
          v164 = *(v0 + 96);
          v114 = *(v0 + 72);
          v115 = *(v0 + 80);
          v116 = *(v0 + 64);
          v137 = *(v0 + 280);
          v140 = *(v0 + 48);
          v143 = *(v0 + 272);
          v146 = *(v0 + 40);
          *v89 = v155;
          v89[1] = v172;
          sub_1B4B998D0(v116, v89 + v85[6], type metadata accessor for WorkoutSplitFact.SplitFactType);
          sub_1B498B270(v115, v89 + v85[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B498B270(v114, v89 + v85[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B498B270(v137, v89 + v85[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v143, v89 + v85[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v140, v89 + v85[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
          sub_1B498B270(v146, v89 + v85[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
          sub_1B498B270(v149, v89 + v85[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v152, v89 + v85[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          sub_1B498B270(v158, v89 + v85[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
          sub_1B498B270(v161, v89 + v85[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
          *(v89 + v85[17]) = 2;
          *(v89 + v85[18]) = 0;
          *(v89 + v85[19]) = 2;
          *(v89 + v85[20]) = v180;
          v60 = v170;
          v174(v167, v164);
          goto LABEL_50;
        }

LABEL_55:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_55;
    }

    v52 = *(v3 + v51);
    v51 += 8;
    --v46;
  }

  while (v52 != 35);
  if (v6)
  {
    sub_1B4974FBC(*(v0 + 320), *(v0 + 296), &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (v49)
    {
      goto LABEL_27;
    }

LABEL_44:
    v99 = *(v0 + 144);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v100 - 8) + 56))(v99, 1, 1, v100);
  }

  else
  {
    (*(*(v0 + 240) + 56))(*(v0 + 296), 1, 1, *(v0 + 232));
    if (!v49)
    {
      goto LABEL_44;
    }

LABEL_27:
    sub_1B4974FBC(*(v0 + 344) + *(*(v0 + 328) + 72), *(v0 + 144), &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  v59 = *(v0 + 344);
  v60 = *(v0 + 320);
  v61 = *(v0 + 296);
  v62 = *(v0 + 144);
  v182 = sub_1B4B972D4(*(v0 + 16), v59, v61, v62, v3);

LABEL_50:
  sub_1B4975024(v62, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v61, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(v60, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4B99808(v59, type metadata accessor for WorkoutState);
  v117 = *(v0 + 344);
  v119 = *(v0 + 312);
  v118 = *(v0 + 320);
  v121 = *(v0 + 296);
  v120 = *(v0 + 304);
  v123 = *(v0 + 280);
  v122 = *(v0 + 288);
  v124 = *(v0 + 264);
  v125 = *(v0 + 272);
  v126 = *(v0 + 256);
  v129 = *(v0 + 248);
  v131 = *(v0 + 224);
  v133 = *(v0 + 216);
  v135 = *(v0 + 208);
  v138 = *(v0 + 200);
  v141 = *(v0 + 176);
  v144 = *(v0 + 168);
  v147 = *(v0 + 160);
  v150 = *(v0 + 152);
  v153 = *(v0 + 144);
  v156 = *(v0 + 136);
  v159 = *(v0 + 128);
  v162 = *(v0 + 120);
  v165 = *(v0 + 112);
  v168 = *(v0 + 88);
  v171 = *(v0 + 80);
  v173 = *(v0 + 72);
  v175 = *(v0 + 64);
  v178 = *(v0 + 48);
  v181 = *(v0 + 40);

  v127 = *(v0 + 8);

  return v127(v182);
}

unint64_t sub_1B4B99620()
{
  result = qword_1EB8AB818;
  if (!qword_1EB8AB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB818);
  }

  return result;
}

unint64_t sub_1B4B99674(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B996A4();
  result = sub_1B4B996F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B996A4()
{
  result = qword_1EB8AB820;
  if (!qword_1EB8AB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB820);
  }

  return result;
}

unint64_t sub_1B4B996F8()
{
  result = qword_1EB8AB828;
  if (!qword_1EB8AB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB828);
  }

  return result;
}

uint64_t sub_1B4B9974C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B997B4(&qword_1EB8AB830);
  result = sub_1B4B997B4(&qword_1EB8AB838);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B997B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutSplitFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B99808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B99868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B998D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnnounceClient.observeStreamingAudio(availableHandler:dataHandler:finishHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB858, &qword_1B4D35CE8);
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *v6;
  v7[12] = v11;
  v7[13] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B4B99A34, 0, 0);
}

uint64_t sub_1B4B99A34()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._object = 0x80000001B4D62720;
  v3._countAndFlagsBits = 0xD000000000000042;
  v3._object = 0x80000001B4D62750;
  v2._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 268) = 29;
  v4 = *(MEMORY[0x1E699DD18] + 4);
  v8 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_1B4B99B68;
  v6 = *(v0 + 104);

  return v8(v0 + 268);
}

uint64_t sub_1B4B99B68()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = sub_1B4B9A4C0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB860, &qword_1B4D35CF0);
    sub_1B49B0578(&qword_1EDC377F0, &qword_1EB8AB860, &qword_1B4D35CF0);
    v9 = sub_1B4D184FC();
    v7 = v10;
    v2[16] = v9;
    v2[17] = v10;
    v5 = sub_1B4B99D00;
    v6 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B4B99D00()
{
  v1 = *(v0 + 104);
  *(v0 + 144) = sub_1B4D17B3C();

  return MEMORY[0x1EEE6DFA0](sub_1B4B99D6C, 0, 0);
}

uint64_t sub_1B4B99D6C()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 269) = 34;
  sub_1B4D1855C();
  v8 = *MEMORY[0x1E699DCC8];
  v9 = *(v5 + 104);
  *(v0 + 152) = v9;
  *(v0 + 160) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v3, v8, v4);
  v10 = swift_allocObject();
  *(v0 + 168) = v10;
  v10[2] = v2;
  v10[3] = v7;
  v10[4] = v6;

  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB868, &qword_1B4D35D08);
  *(v0 + 184) = sub_1B49B0578(&qword_1EDC37800, &qword_1EB8AB868, &qword_1B4D35D08);
  v12 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4B99EC8, v12, v11);
}

uint64_t sub_1B4B99EC8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
  sub_1B4B9AB94();
  sub_1B4D17AEC();
  v0[24] = v3;
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (v3)
  {
    v11(v7, v8);

    v13 = sub_1B4B9A540;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v0[25] = v11;
    v0[26] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);

    v14 = v0[16];
    v15 = v0[17];
    v13 = sub_1B4B99FF4;
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B4B99FF4()
{
  v1 = *(v0 + 104);
  *(v0 + 216) = sub_1B4D17B3C();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A060, 0, 0);
}

uint64_t sub_1B4B9A060()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  *(v0 + 270) = 36;
  *(v0 + 264) = *MEMORY[0x1E699DCD0];
  v5(v6);
  v10 = swift_allocObject();
  *(v0 + 224) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v12 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A13C, v12, v11);
}

uint64_t sub_1B4B9A13C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 88);
  sub_1B4B9AD00();
  sub_1B4D17AEC();
  *(v0 + 232) = v3;
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  (*(v0 + 200))(*(v0 + 88), *(v0 + 64));

  if (v3)
  {
    v8 = sub_1B4B9A5C0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v8 = sub_1B4B9A230;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B4B9A230()
{
  v1 = *(v0 + 104);
  *(v0 + 240) = sub_1B4D17B3C();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A29C, 0, 0);
}

uint64_t sub_1B4B9A29C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 264);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 80);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  *(v0 + 271) = 37;
  v6(v7, v2, v8);
  v11 = swift_allocObject();
  *(v0 + 248) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;

  v13 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A36C, v13, v12);
}

uint64_t sub_1B4B9A36C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[10];
  sub_1B4B9AE08();
  sub_1B4D17AEC();
  v0[32] = v3;
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[25];
  v7 = v0[26];
  if (v3)
  {
    v8(v0[10], v0[8]);

    return MEMORY[0x1EEE6DFA0](sub_1B4B9A640, 0, 0);
  }

  else
  {
    v10 = v0[11];
    v9 = v0[12];
    v8(v0[10], v0[8]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1B4B9A4C0()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4B9A540()
{
  v1 = v0[24];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4B9A5C0()
{
  v1 = v0[29];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4B9A640()
{
  v1 = v0[32];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4B9A6C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = a4;
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 176) = *a1;
  *(v4 + 184) = v6;
  v7 = *(a1 + 4);
  *(v4 + 48) = *(a1 + 3);
  *(v4 + 64) = v7;
  *(v4 + 80) = *(a1 + 5);
  *(v4 + 89) = *(a1 + 89);
  *(v4 + 105) = 35;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  *(v4 + 136) = v5;
  v10 = MEMORY[0x1E699DD08];
  *(v4 + 144) = v6;
  v11 = v10[1];
  v15 = (v10 + *v10);
  *(v4 + 16) = v8;
  *(v4 + 32) = v9;
  v12 = swift_task_alloc();
  *(v4 + 192) = v12;
  v13 = sub_1B4B9B2B8();
  *v12 = v4;
  v12[1] = sub_1B4B9A7D0;

  return v15(v4 + 105, v4 + 136, &type metadata for StreamingAudioRequest, v13);
}

uint64_t sub_1B4B9A7D0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1B4B9A97C;
  }

  else
  {
    v3 = sub_1B4B9A8E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4B9A8E4()
{
  v14 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v8[0] = *(v0 + 176);
  v8[1] = v1;
  v4 = *(v0 + 64);
  v11 = *(v0 + 48);
  v12 = v4;
  v13[0] = *(v0 + 80);
  *(v13 + 9) = *(v0 + 89);
  v5 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = v5;
  v2(v8);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B4B9A97C()
{
  v19 = v0;
  v1 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB890, &qword_1B4D35DA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1A800;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD000000000000023, 0x80000001B4D627A0);
  swift_getErrorValue();
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  sub_1B4D18DBC();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1B4D18E6C();

  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = v5;
  v8 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = v8;
  v18[0] = *(v0 + 80);
  *(v18 + 9) = *(v0 + 89);
  v9 = *(v0 + 32);
  v14 = *(v0 + 16);
  v15 = v9;
  v6(&v12);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B4B9AAE4(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4983F3C;

  return sub_1B4B9A6C0(a1, v4, v5, v6);
}

unint64_t sub_1B4B9AB94()
{
  result = qword_1EB8AB870;
  if (!qword_1EB8AB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB870);
  }

  return result;
}

uint64_t sub_1B4B9ABE8(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1B4B9AC4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B49DA364;

  return sub_1B4B9ABE8(a1, v5);
}

unint64_t sub_1B4B9AD00()
{
  result = qword_1EB8AB878;
  if (!qword_1EB8AB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB878);
  }

  return result;
}

uint64_t sub_1B4B9AD54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B49DA364;

  return sub_1B4B9ABE8(a1, v5);
}

unint64_t sub_1B4B9AE08()
{
  result = qword_1EB8AB880;
  if (!qword_1EB8AB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB880);
  }

  return result;
}

uint64_t AnnounceClient.synchronizeStreamingAudio(streamingAudioText:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = 38;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(MEMORY[0x1E699DD08] + 4);
  v10 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = sub_1B4A30828();
  *v6 = v3;
  v6[1] = sub_1B4B9AF40;
  v8 = MEMORY[0x1E69E6158];

  return v10(v3 + 48, v3 + 16, v8, v7);
}

uint64_t sub_1B4B9AF40()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49F12A0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B4B9B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B4983F3C;

  return AnnounceClient.observeStreamingAudio(availableHandler:dataHandler:finishHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AnnounceClientProtocol.observeStreamingAudio(availableHandler:dataHandler:finishHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1B4983F3C;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_1B4B9B2B8()
{
  result = qword_1EB8AB888;
  if (!qword_1EB8AB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB888);
  }

  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.init(distance:dateEarned:yearsAgoEarned:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for HighestDailyDistanceAnniversaryFact();
  v10 = *(v9 + 20);
  v11 = sub_1B4D1777C();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for HighestDailyDistanceAnniversaryFact()
{
  result = qword_1EB8AB8B0;
  if (!qword_1EB8AB8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static HighestDailyDistanceAnniversaryFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EDC3CB38);
  if (sub_1B4D1816C() & 1) != 0 && (v4 = type metadata accessor for HighestDailyDistanceAnniversaryFact(), v5 = *(v4 + 20), (sub_1B4D1774C()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4B9B4E8()
{
  v1 = 0x6E72614565746164;
  if (*v0 != 1)
  {
    v1 = 0x6F67417372616579;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6174736964;
  }
}

uint64_t sub_1B4B9B554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B9BFE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B9B57C(uint64_t a1)
{
  v2 = sub_1B4B9B808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B9B5B8(uint64_t a1)
{
  v2 = sub_1B4B9B808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HighestDailyDistanceAnniversaryFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB898, &qword_1B4D35DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B9B808();
  sub_1B4D18EFC();
  v15[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EB8A6EE8);
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = type metadata accessor for HighestDailyDistanceAnniversaryFact();
    v12 = *(v11 + 20);
    v15[14] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820);
    sub_1B4D18D0C();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1B4D18CEC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B4B9B808()
{
  result = qword_1EB8AB8A0;
  if (!qword_1EB8AB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8A0);
  }

  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v33 = v4;
  v34 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v31 = *(v35 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v28 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB8A8, &qword_1B4D35DB0);
  v32 = *(v37 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v28 - v12;
  v14 = type metadata accessor for HighestDailyDistanceAnniversaryFact();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B9B808();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = v14;
  v29 = a1;
  v19 = v17;
  v20 = v34;
  v22 = v32;
  v21 = v33;
  v40 = 0;
  sub_1B4B5A0C0(&qword_1EB8A6F28);
  v23 = v35;
  sub_1B4D18C0C();
  (*(v31 + 32))(v19, v36, v23);
  v39 = 1;
  sub_1B49B1198(&qword_1EB8A6FB8);
  sub_1B4D18C0C();
  (*(v20 + 32))(v19 + *(v28 + 20), v8, v21);
  v38 = 2;
  v24 = sub_1B4D18BEC();
  v25 = v29;
  v26 = v24;
  (*(v22 + 8))(v13, v37);
  *(v19 + *(v28 + 24)) = v26;
  sub_1B4AF86B0(v19, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return sub_1B4B9BCE0(v19);
}

uint64_t sub_1B4B9BCE0(uint64_t a1)
{
  v2 = type metadata accessor for HighestDailyDistanceAnniversaryFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B4B9BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EDC3CB38);
  if (sub_1B4D1816C() & 1) != 0 && (v6 = *(a3 + 20), (sub_1B4D1774C()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

void sub_1B4B9BE44()
{
  sub_1B4B59D8C();
  if (v0 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4B9BEE4()
{
  result = qword_1EB8AB8C0;
  if (!qword_1EB8AB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8C0);
  }

  return result;
}

unint64_t sub_1B4B9BF3C()
{
  result = qword_1EB8AB8C8;
  if (!qword_1EB8AB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8C8);
  }

  return result;
}

unint64_t sub_1B4B9BF94()
{
  result = qword_1EB8AB8D0;
  if (!qword_1EB8AB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8D0);
  }

  return result;
}

uint64_t sub_1B4B9BFE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E72614565746164 && a2 == 0xEA00000000006465 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F67417372616579 && a2 == 0xEE0064656E726145)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

unint64_t sub_1B4B9C124()
{
  result = qword_1EB8AB8D8;
  if (!qword_1EB8AB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8D8);
  }

  return result;
}

unint64_t sub_1B4B9C17C()
{
  result = qword_1EB8AB8E0;
  if (!qword_1EB8AB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8E0);
  }

  return result;
}

uint64_t sub_1B4B9C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9C27C, 0, 0);
}

uint64_t sub_1B4B9C27C()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4AE0878;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4BB50B4(v6, v4);
}

void *FitnessPlusProperties.init(startCacheIndex:endCacheIndex:records:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t FitnessPlusProperties.resolve<A>(_:filter:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a3;
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1B4D1880C();
  v34 = *(v35 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v31 - v10;
  v11 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v11;
  v48 = *(a1 + 32);
  v12 = *(v4 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v12 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v37;
    v38 = a2;
    while (v14 < *(v12 + 16))
    {
      sub_1B4B9C8D4(v15, v45);
      v18 = sub_1B4B9C7CC(v45, v47, a2, v17);
      if (v5)
      {
        goto LABEL_16;
      }

      if (v18)
      {
        v41 = v45[2];
        v42 = v45[3];
        v43 = v45[4];
        v44 = v46;
        v39 = v45[0];
        v40 = v45[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCED1C(0, *(v16 + 16) + 1, 1);
          v17 = v37;
          v16 = v49;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B4BCED1C((v20 > 1), v21 + 1, 1);
          v17 = v37;
          v16 = v49;
        }

        *(v16 + 16) = v21 + 1;
        v22 = v16 + 88 * v21;
        v23 = v40;
        *(v22 + 32) = v39;
        *(v22 + 48) = v23;
        v24 = v41;
        v25 = v42;
        v26 = v43;
        *(v22 + 112) = v44;
        *(v22 + 80) = v25;
        *(v22 + 96) = v26;
        *(v22 + 64) = v24;
        a2 = v38;
      }

      else
      {
        sub_1B4B9C930(v45);
      }

      ++v14;
      v15 += 88;
      if (v13 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:

    sub_1B4B9C930(v45);

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v37;
LABEL_14:
    *&v45[0] = v16;
    v27 = v33;
    v28 = (*(*(AssociatedTypeWitness - 8) + 56))(v33, 1, 1);
    MEMORY[0x1EEE9AC00](v28);
    *(&v31 - 2) = a2;
    *(&v31 - 1) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB8E8, &qword_1B4D35FD0);
    sub_1B4BA09B4(&qword_1EB8AB8F0, &qword_1EB8AB8E8, &qword_1B4D35FD0);
    v29 = v35;
    sub_1B4D182DC();
    (*(v34 + 8))(v27, v29);
  }

  return result;
}

uint64_t sub_1B4B9C7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 33);
  v11 = *(a1 + 40);
  LOWORD(v20[0]) = v7;
  v20[1] = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v12 = *(a2 + 16);
  *&v19.value.monthOfYear._rawValue = *a2;
  *&v19.value.hourOfDay._rawValue = v12;
  v19.value.trainerIdentifiers._rawValue = *(a2 + 32);

  v13 = FitnessPlusPropertyDimensions.matches(_:)(&v19);

  if (v13)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    __swift_project_boxed_opaque_existential_1((a1 + 48), v14);
    sub_1B4B70700(v14, *(v15 + 8));
    rawValue = v19.value.monthOfYear._rawValue;
    (*(*(a4 + 8) + 56))(v20, a3);
    v17 = sub_1B4977FEC(rawValue, v20[0]);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4B9C984@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v50 = a5;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = AssociatedTypeWitness;
  v39 = swift_getAssociatedTypeWitness();
  v38 = sub_1B4D1880C();
  v37 = *(v38 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v32 - v10;
  v40 = a3;
  v33 = sub_1B4D1880C();
  v34 = *(v33 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v42 = &v32 - v13;
  v15 = a2[9];
  v14 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v15);
  v16 = *(v14 + 8);
  v17 = *(v16 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v49[3] = swift_getAssociatedTypeWitness();
  v49[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v49);
  v18 = v16;
  v19 = v37;
  v20 = v38;
  v17(v15, v18);
  v21 = v39;
  (*(v19 + 16))(v11, v41, v20);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    (*(v19 + 8))(v11, v20);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
  }

  else
  {
    *(&v47 + 1) = v21;
    v48 = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
    (*(v22 + 32))(boxed_opaque_existential_1, v11, v21);
  }

  sub_1B497558C(v49, v45);
  v25 = v42;
  v24 = v43;
  v26 = v40;
  v27 = v44;
  static SnapshotProperty.add(_:_:)(&v46, v45, v40, v44, v42);
  sub_1B4975024(v45, &qword_1EB8AB2A0, &unk_1B4D360A0);
  sub_1B4975024(&v46, &qword_1EB8AB2A0, &unk_1B4D360A0);
  v28 = v50;
  if (!v24)
  {
    v29 = *(v26 - 8);
    v30 = 1;
    if ((*(v29 + 48))(v25, 1, v26) == 1)
    {
      v26 = v33;
      v29 = v34;
    }

    else
    {
      (*(v27 + 64))(v26, v27);
      v30 = 0;
    }

    (*(v29 + 8))(v25, v26);
    (*(v22 + 56))(v28, v30, 1, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v49);
}

uint64_t FitnessPlusProperties.resolve(kind:filter:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = *a1;
  v6 = a2[1];
  v101 = *a2;
  v7 = a2[3];
  v85 = a2[2];
  v87 = v6;
  v88 = v7;
  v8 = a2[4];
  v94 = *(v3 + 16);
  result = _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0();
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {

LABEL_46:
    v26 = v84;
    *(v84 + 32) = 0;
    *v26 = 0u;
    v26[1] = 0u;
    return result;
  }

  v89 = v8;
  v86 = v4;
  v12 = 0;
  v120 = 0x80000001B4D48BA0;
  v102 = 0x80000001B4D48B80;
  v99 = 0x80000001B4D48B40;
  v13 = (result + 40);
  v100 = v5;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      goto LABEL_186;
    }

    v14 = *(v13 - 1);
    ++v12;
    v96 = *v13;
    v97 = v14;
    (*(*(v96 + 8) + 56))(&v114);
    v15 = 0x756F436C61746F74;
    if (v114 == 4)
    {
      v15 = 0x547942746E756F63;
    }

    v16 = 0xEE0072656E696172;
    if (v114 != 4)
    {
      v16 = 0xEA0000000000746ELL;
    }

    if (v114 == 3)
    {
      v15 = 0x6B726F5774736562;
      v16 = 0xEB0000000074756FLL;
    }

    v17 = 0xD00000000000001ALL;
    v18 = v120;
    if (v114 == 1)
    {
      v18 = v102;
    }

    if (v114)
    {
      v17 = 0xD000000000000012;
    }

    else
    {
      v18 = v99;
    }

    if (v114 <= 2u)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }

    if (v114 <= 2u)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    if (v5 > 2)
    {
      v22 = 0x756F436C61746F74;
      if (v5 == 4)
      {
        v22 = 0x547942746E756F63;
      }

      v23 = 0xEE0072656E696172;
      if (v5 != 4)
      {
        v23 = 0xEA0000000000746ELL;
      }

      if (v5 == 3)
      {
        v24 = 0x6B726F5774736562;
      }

      else
      {
        v24 = v22;
      }

      if (v5 == 3)
      {
        v21 = 0xEB0000000074756FLL;
      }

      else
      {
        v21 = v23;
      }

      if (v19 != v24)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v5)
    {
      break;
    }

    v21 = v99;
    if (v19 == 0xD00000000000001ALL)
    {
      goto LABEL_41;
    }

LABEL_42:
    v25 = sub_1B4D18DCC();

    if (v25)
    {
      goto LABEL_48;
    }

    v13 += 2;
    v5 = v100;
    if (v11 == v12)
    {

      goto LABEL_46;
    }
  }

  if (v5 == 1)
  {
    v21 = v102;
  }

  else
  {
    v21 = v120;
  }

  if (v19 != 0xD000000000000012)
  {
    goto LABEL_42;
  }

LABEL_41:
  if (v20 != v21)
  {
    goto LABEL_42;
  }

LABEL_48:

  v27 = v94;
  v92 = *(v94 + 16);
  if (v92)
  {
    v28 = 0;
    v91 = v94 + 32;
    v82 = (v85 + 32);
    v83 = (v87 + 32);
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v100;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
        return result;
      }

      sub_1B4B9C8D4(v91 + 88 * v28, &v114);
      if (v101)
      {
        v95 = v29;
        v31 = v115;
        v32 = BYTE1(v115);
        v33 = *(&v115 + 1);
        v93 = v116;
        v34 = BYTE1(v116);
        v98 = *(&v116 + 1);
        if (v115 == 12)
        {
        }

        else
        {
          v35 = *(v101 + 16);

          if (v35 && !sub_1B4978C4C(v31, v101))
          {
            goto LABEL_50;
          }
        }

        v90 = v34;
        if (v32 != 7)
        {
          v36 = *(v87 + 16);
          if (v36)
          {
            v37 = v83;
            do
            {
              if (!v36)
              {
                goto LABEL_50;
              }

              v39 = *v37;
              if (v39 <= 2)
              {
                v42 = 0x616473656E646577;
                if (v39 == 1)
                {
                  v42 = 0x79616473657574;
                }

                v43 = 0xE900000000000079;
                if (v39 == 1)
                {
                  v43 = 0xE700000000000000;
                }

                if (*v37)
                {
                  v40 = v42;
                }

                else
                {
                  v40 = 0x7961646E6F6DLL;
                }

                if (*v37)
                {
                  v41 = v43;
                }

                else
                {
                  v41 = 0xE600000000000000;
                }

                if (v32 > 2)
                {
LABEL_89:
                  v44 = 0x7961646E7573;
                  if (v32 == 5)
                  {
                    v44 = 0x7961647275746173;
                    v45 = 0xE800000000000000;
                  }

                  else
                  {
                    v45 = 0xE600000000000000;
                  }

                  v46 = 0x7961647372756874;
                  if (v32 == 3)
                  {
                    v47 = 0xE800000000000000;
                  }

                  else
                  {
                    v46 = 0x796164697266;
                    v47 = 0xE600000000000000;
                  }

                  if (v32 <= 4)
                  {
                    v48 = v46;
                  }

                  else
                  {
                    v48 = v44;
                  }

                  if (v32 <= 4)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = v45;
                  }

                  if (v40 != v48)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_114;
                }
              }

              else if (*v37 > 4u)
              {
                if (v39 == 5)
                {
                  v41 = 0xE800000000000000;
                  v40 = 0x7961647275746173;
                  if (v32 > 2)
                  {
                    goto LABEL_89;
                  }
                }

                else
                {
                  v40 = 0x7961646E7573;
                  v41 = 0xE600000000000000;
                  if (v32 > 2)
                  {
                    goto LABEL_89;
                  }
                }
              }

              else
              {
                if (v39 == 3)
                {
                  v40 = 0x7961647372756874;
                }

                else
                {
                  v40 = 0x796164697266;
                }

                if (v39 == 3)
                {
                  v41 = 0xE800000000000000;
                }

                else
                {
                  v41 = 0xE600000000000000;
                }

                if (v32 > 2)
                {
                  goto LABEL_89;
                }
              }

              if (v32)
              {
                if (v32 == 1)
                {
                  v50 = 0x79616473657574;
                }

                else
                {
                  v50 = 0x616473656E646577;
                }

                if (v32 == 1)
                {
                  v49 = 0xE700000000000000;
                }

                else
                {
                  v49 = 0xE900000000000079;
                }

                if (v40 != v50)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v49 = 0xE600000000000000;
                if (v40 != 0x7961646E6F6DLL)
                {
                  goto LABEL_63;
                }
              }

LABEL_114:
              if (v41 == v49)
              {

                break;
              }

LABEL_63:
              v38 = sub_1B4D18DCC();

              ++v37;
              --v36;
            }

            while ((v38 & 1) == 0);
          }
        }

        v51 = v89;
        if (v93)
        {
          v52 = v90;
        }

        else
        {
          v53 = *(v85 + 16);
          v52 = v90;
          if (v53)
          {
            v54 = v82;
            while (v53)
            {
              v55 = *v54++;
              --v53;
              if (v55 == v33)
              {
                goto LABEL_122;
              }
            }

LABEL_50:
            v30 = v100;
            v29 = v95;
LABEL_51:

            goto LABEL_52;
          }
        }

LABEL_122:
        v30 = v100;
        v29 = v95;
        if (v52 != 15)
        {
          if (*(v88 + 16))
          {
            v52 = sub_1B4978F94(v52, v88);
            if ((v52 & 1) == 0)
            {
              goto LABEL_51;
            }
          }
        }

        if (v98 && *(v51 + 16))
        {
          *&v108 = v98;
          MEMORY[0x1EEE9AC00](v52);
          v81[2] = &v108;
          v56 = v86;
          v57 = sub_1B49B16A8(sub_1B4B9FA90, v81, v51);
          v86 = v56;

          if ((v57 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
        }
      }

      v58 = *(&v118 + 1);
      v59 = v119;
      __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
      sub_1B4B70700(v58, *(v59 + 8));
      if (v108 > 2u)
      {
        if (v108 == 3)
        {
          v61 = 0x6B726F5774736562;
          v62 = 0xEB0000000074756FLL;
          if (v30 > 2)
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (v108 == 4)
          {
            v61 = 0x547942746E756F63;
          }

          else
          {
            v61 = 0x756F436C61746F74;
          }

          if (v108 == 4)
          {
            v62 = 0xEE0072656E696172;
          }

          else
          {
            v62 = 0xEA0000000000746ELL;
          }

          if (v30 > 2)
          {
            goto LABEL_156;
          }
        }
      }

      else
      {
        v60 = v120;
        if (v108 == 1)
        {
          v60 = v102;
        }

        if (v108)
        {
          v61 = 0xD000000000000012;
        }

        else
        {
          v61 = 0xD00000000000001ALL;
        }

        if (v108)
        {
          v62 = v60;
        }

        else
        {
          v62 = v99;
        }

        if (v30 > 2)
        {
LABEL_156:
          v64 = 0x756F436C61746F74;
          if (v30 == 4)
          {
            v64 = 0x547942746E756F63;
          }

          v65 = 0xEE0072656E696172;
          if (v30 != 4)
          {
            v65 = 0xEA0000000000746ELL;
          }

          if (v30 == 3)
          {
            v66 = 0x6B726F5774736562;
          }

          else
          {
            v66 = v64;
          }

          if (v30 == 3)
          {
            v63 = 0xEB0000000074756FLL;
          }

          else
          {
            v63 = v65;
          }

          if (v61 == v66)
          {
LABEL_169:
            if (v62 == v63)
            {

LABEL_172:
              v111 = v117;
              v112 = v118;
              v113 = v119;
              v108 = v114;
              v109 = v115;
              v110 = v116;
              result = swift_isUniquelyReferenced_nonNull_native();
              *&v105 = v29;
              if ((result & 1) == 0)
              {
                result = sub_1B4BCED1C(0, *(v29 + 16) + 1, 1);
                v29 = v105;
              }

              v27 = v94;
              v69 = *(v29 + 16);
              v68 = *(v29 + 24);
              if (v69 >= v68 >> 1)
              {
                result = sub_1B4BCED1C((v68 > 1), v69 + 1, 1);
                v29 = v105;
              }

              *(v29 + 16) = v69 + 1;
              v70 = v29 + 88 * v69;
              v71 = v109;
              *(v70 + 32) = v108;
              *(v70 + 48) = v71;
              v72 = v110;
              v73 = v111;
              v74 = v112;
              *(v70 + 112) = v113;
              *(v70 + 80) = v73;
              *(v70 + 96) = v74;
              *(v70 + 64) = v72;
              goto LABEL_53;
            }

            goto LABEL_171;
          }

          goto LABEL_171;
        }
      }

      if (v30)
      {
        if (v30 == 1)
        {
          v63 = v102;
        }

        else
        {
          v63 = v120;
        }

        if (v61 == 0xD000000000000012)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v63 = v99;
        if (v61 == 0xD00000000000001ALL)
        {
          goto LABEL_169;
        }
      }

LABEL_171:
      v67 = sub_1B4D18DCC();

      if (v67)
      {
        goto LABEL_172;
      }

LABEL_52:
      result = sub_1B4B9C930(&v114);
      v27 = v94;
LABEL_53:
      if (++v28 == v92)
      {
        goto LABEL_178;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_178:
  *&v110 = 0;
  v108 = 0u;
  v109 = 0u;
  result = sub_1B4974FBC(&v108, &v105, &qword_1EB8AB8F8, &unk_1B4D35FD8);
  v75 = *(v29 + 16);
  if (v75)
  {
    v76 = 0;
    v77 = v29 + 32;
    v78 = v86;
    while (v76 < *(v29 + 16))
    {
      sub_1B4B9C8D4(v77, &v114);
      sub_1B4B9D9AC(&v105, &v114, v97, v96, v103);
      if (v78)
      {

        sub_1B4B9C930(&v114);
        sub_1B4975024(&v105, &qword_1EB8AB8F8, &unk_1B4D35FD8);
        return sub_1B4975024(&v108, &qword_1EB8AB8F8, &unk_1B4D35FD8);
      }

      ++v76;
      sub_1B4B9C930(&v114);
      result = sub_1B4975024(&v105, &qword_1EB8AB8F8, &unk_1B4D35FD8);
      v105 = v103[0];
      v106 = v103[1];
      v107 = v104;
      v77 += 88;
      if (v75 == v76)
      {
        goto LABEL_183;
      }
    }

    goto LABEL_187;
  }

LABEL_183:
  sub_1B4975024(&v108, &qword_1EB8AB8F8, &unk_1B4D35FD8);

  v79 = v106;
  v80 = v84;
  *v84 = v105;
  *(v80 + 16) = v79;
  *(v80 + 32) = v107;
  return result;
}

uint64_t sub_1B4B9D9AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v34 = a1;
  v33 = a5;
  v7 = a2[9];
  v6 = a2[10];
  v8 = __swift_project_boxed_opaque_existential_1(a2 + 6, v7);
  v43 = v7;
  v44 = *(v6 + 8);
  v9 = v44;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
  v11 = v43;
  v12 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v13 = *(v9 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v45[3] = swift_getAssociatedTypeWitness();
  v45[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v45);
  v13(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  sub_1B4974FBC(v34, v36, &qword_1EB8AB8F8, &unk_1B4D35FD8);
  v14 = v37;
  if (v37)
  {
    v15 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v16 = *(v15 + 64);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(&v40 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v39);
    v16(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  else
  {
    sub_1B4975024(v36, &qword_1EB8AB8F8, &unk_1B4D35FD8);
    v39 = 0u;
    v40 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_1B497558C(v45, v36);
  v17 = sub_1B4D1880C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v22 = v46;
  v23 = v35;
  static SnapshotProperty.add(_:_:)(&v39, v36, a3, *(v46 + 8), &v33 - v20);
  sub_1B4975024(v36, &qword_1EB8AB2A0, &unk_1B4D360A0);
  sub_1B4975024(&v39, &qword_1EB8AB2A0, &unk_1B4D360A0);
  if (!v23)
  {
    v24 = *(a3 - 8);
    if ((*(v24 + 48))(v21, 1, a3) == 1)
    {
      (*(v18 + 8))(v21, v17);
      v25 = v33;
      *(v33 + 32) = 0;
      *v25 = 0u;
      v25[1] = 0u;
    }

    else
    {
      v43 = a3;
      v44 = v22;
      v26 = __swift_allocate_boxed_opaque_existential_1(v42);
      (*(v24 + 32))(v26, v21, a3);
      v27 = v43;
      v28 = v44;
      v29 = __swift_project_boxed_opaque_existential_1(v42, v43);
      v30 = v33;
      *(v33 + 24) = v27;
      v30[4] = *(v28 + 8);
      v31 = __swift_allocate_boxed_opaque_existential_1(v30);
      (*(*(v27 - 8) + 16))(v31, v29, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v45);
}

uint64_t static FitnessPlusProperties.from(_:cacheIndex:filters:groupBy:propertyKinds:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a5;
  v55 = a4;
  v8 = *a2;
  v10 = *a3;
  v9 = a3[1];
  v12 = a3[2];
  v11 = a3[3];
  v13 = a3[4];
  v54 = a1;
  sub_1B497558C(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB900, &qword_1B4D35FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    result = sub_1B4975024(&v59, &qword_1EB8AB908, &qword_1B4D35FF0);
LABEL_10:
    *a6 = v8;
    a6[1] = v8;
    a6[2] = MEMORY[0x1E69E7CC0];
    return result;
  }

  v52 = a6;
  sub_1B496F398(&v59, v62);
  sub_1B497558C(v62, v56);
  FitnessPlusPropertyDimensions.init(from:)(v56, &v59);
  v14 = *(&v60 + 1);
  if (*(&v60 + 1) == 1)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v62);
LABEL_9:
    a6 = v52;
    goto LABEL_10;
  }

  v51 = v6;
  v16 = v59;
  v17 = v60;
  v49 = v59 >> 8;
  v53 = *(&v59 + 1);
  v48 = v60 & 1;
  LOWORD(v60) = v60 & 0xFF01;
  v50 = v17 >> 8;
  *v56 = v10;
  *&v56[8] = v9;
  *&v56[16] = v12;
  *&v56[24] = v11;
  *&v56[32] = v13;

  v18 = FitnessPlusPropertyDimensions.matches(_:)(v56);
  sub_1B4B9FAB0(*v56);
  if (!v18)
  {
    sub_1B4B9FB1C(v16, v53, v17, v14);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v62);
    goto LABEL_9;
  }

  LOBYTE(v59) = v16;
  BYTE1(v59) = v49;
  *(&v59 + 1) = v53;
  LOBYTE(v60) = v48;
  BYTE1(v60) = v50;
  *(&v60 + 1) = v14;
  FitnessPlusPropertyDimensions.mask(with:)(v55, v56);
  sub_1B4B9FB1C(v16, v53, v17, v14);
  LODWORD(v50) = v56[0];
  v19 = v56[1];
  v55 = *&v56[8];
  v20 = v56[16];
  v21 = v56[17];
  v22 = *&v56[24];
  v23 = sub_1B4B9FB30(v63);
  MEMORY[0x1EEE9AC00](v23);
  v47[2] = v62;
  v24 = v51;
  v25 = sub_1B4AE126C(sub_1B4B9FE64, v47, v23);

  v51 = v24;
  if (v24)
  {
  }

  else
  {
    LODWORD(v53) = v21;
    LODWORD(v63) = v20;
    v26 = v25[2];
    v27 = v25;
    if (v26)
    {
      *&v59 = MEMORY[0x1E69E7CC0];
      sub_1B4BCED1C(0, v26, 0);
      v28 = v59;
      v49 = v27;
      v29 = (v27 + 4);
      v30 = v50;
      do
      {
        sub_1B497558C(v29, v57);
        *v56 = v8;
        *&v56[8] = v8;
        v56[16] = v30;
        v31 = v19;
        v56[17] = v19;
        *&v56[24] = v55;
        v56[32] = v63;
        v56[33] = v53;
        *&v56[40] = v22;
        *&v59 = v28;
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);

        if (v33 >= v32 >> 1)
        {
          sub_1B4BCED1C((v32 > 1), v33 + 1, 1);
          v30 = v50;
          v28 = v59;
        }

        *(v28 + 16) = v33 + 1;
        v34 = v28 + 88 * v33;
        v35 = *&v56[16];
        *(v34 + 32) = *v56;
        *(v34 + 48) = v35;
        v36 = *&v56[32];
        v37 = v57[0];
        v38 = v57[1];
        *(v34 + 112) = v58;
        *(v34 + 80) = v37;
        *(v34 + 96) = v38;
        *(v34 + 64) = v36;
        v29 += 40;
        --v26;
        v19 = v31;
      }

      while (v26);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v39 = v54;
    v40 = v54[3];
    v41 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v40);
    (*(v41 + 8))(v56, v40, v41);
    v42 = *v56;
    v43 = v39[3];
    v44 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v43);
    (*(v44 + 8))(&v59, v43, v44);
    v45 = v59;
    v46 = v52;
    *v52 = v42;
    v46[1] = v45;
    v46[2] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v62);
}

uint64_t sub_1B4B9E3BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_1B4D1880C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  result = static SnapshotProperty.from(representable:)(a2, v6, *(v7 + 8), &v16 - v11);
  if (!v3)
  {
    v14 = *(v6 - 8);
    if ((*(v14 + 48))(v12, 1, v6) == 1)
    {
      result = (*(v9 + 8))(v12, v8);
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      *(a3 + 24) = v6;
      *(a3 + 32) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      return (*(v14 + 32))(boxed_opaque_existential_1, v12, v6);
    }
  }

  return result;
}

uint64_t sub_1B4B9E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = a2 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B497558C(v7, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      if (swift_getDynamicType() == v6)
      {
        sub_1B496F398(&v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF6BC(0, *(v8 + 16) + 1, 1);
          v8 = v18;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B4BCF6BC((v10 > 1), v11 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v11 + 1;
        a1 = sub_1B496F398(v15, v8 + 40 * v11 + 32);
      }

      else
      {
        a1 = __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      }

      v7 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v16 = v8;
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB910, &qword_1B4D36098);
  v12 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4BA09B4(&qword_1EB8AB918, &qword_1EB8AB910, &qword_1B4D36098);
  v13 = sub_1B4D182BC();

  return v13;
}

void *sub_1B4B9E81C@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t sub_1B4B9E830(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  v11 = *v1;
  v12 = v8;
  v9 = sub_1B4BA08D8();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4BA0A08(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    v4 = sub_1B4D17D6C();
    sub_1B4BA093C(v7);
  }

  return v4;
}

double sub_1B4B9E96C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B24DD8(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    result = *&v7;
    *a3 = v7;
    *(a3 + 16) = v6;
  }

  return result;
}

uint64_t sub_1B4B9E9B8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 64))(v6, v7, v10);
  v11 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_dynamicCast();
  return (*(*(v12 - 8) + 56))(a3, v13 ^ 1u, 1, v12);
}

uint64_t sub_1B4B9EBB4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE600(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B4B9EC20(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B4B9EC20(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B4D18D4C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B4B9EE80(v7, v8, a1, v4);
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
    return sub_1B4B9ED18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B4B9ED18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_1B4B9C8D4(v8, &v17);
      v9 = (v8 - 88);
      sub_1B4B9C8D4(v8 - 88, v16);
      v10 = v17;
      v11 = v16[0];
      sub_1B4B9C930(v16);
      result = sub_1B4B9C930(&v17);
      if (v10 >= v11)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 += 88;
        --v6;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *(v8 + 32);
      v20 = *(v8 + 48);
      v21 = *(v8 + 64);
      v22 = *(v8 + 80);
      v17 = *v8;
      v18 = *(v8 + 16);
      v12 = *(v8 - 40);
      *(v8 + 32) = *(v8 - 56);
      *(v8 + 48) = v12;
      *(v8 + 64) = *(v8 - 24);
      *(v8 + 80) = *(v8 - 8);
      v13 = *(v8 - 72);
      *v8 = *v9;
      *(v8 + 16) = v13;
      *(v8 - 56) = v19;
      *(v8 - 40) = v20;
      *(v8 - 24) = v21;
      *(v8 - 8) = v22;
      *v9 = v17;
      *(v8 - 72) = v18;
      v8 -= 88;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4B9EE80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v91 = result;
  v106 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1B4CDDE84(v9);
      v9 = result;
    }

    v82 = v6;
    v105 = v9;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*v106)
      {
        v6 = (v83 - 1);
        v84 = *&v9[16 * v83];
        v85 = *&v9[16 * v83 + 24];
        sub_1B4B9F5FC((*v106 + 88 * v84), (*v106 + 88 * *&v9[16 * v83 + 16]), (*v106 + 88 * v85), v5);
        if (v82)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v83 - 2 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v86 = &v9[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        v105 = v9;
        result = sub_1B4CDDDF8(v83 - 1);
        v9 = v105;
        v83 = *(v105 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    v92 = v10;
    if (v11 >= v7)
    {
      v18 = v11;
      goto LABEL_23;
    }

    v12 = v10;
    v89 = v9;
    v9 = v6;
    v13 = *v106;
    sub_1B4B9C8D4(*v106 + 88 * v11, &v99);
    v5 = 88 * v12;
    sub_1B4B9C8D4(v13 + 88 * v12, v98);
    v93 = v98[0];
    v96 = v99;
    sub_1B4B9C930(v98);
    result = sub_1B4B9C930(&v99);
    v14 = v12 + 2;
    v15 = v13 + 88 * v12 + 176;
    while (v7 != v14)
    {
      sub_1B4B9C8D4(v15, &v99);
      sub_1B4B9C8D4(v15 - 88, v98);
      v16 = v99;
      v17 = v98[0];
      sub_1B4B9C930(v98);
      result = sub_1B4B9C930(&v99);
      ++v14;
      v15 += 88;
      if (v96 < v93 == v16 >= v17)
      {
        v18 = v14 - 1;
        goto LABEL_11;
      }
    }

    v18 = v7;
LABEL_11:
    v6 = v9;
    if (v96 < v93)
    {
      v10 = v92;
      if (v18 < v92)
      {
        goto LABEL_123;
      }

      if (v92 >= v18)
      {
        v9 = v89;
        goto LABEL_23;
      }

      v19 = 88 * v18 - 88;
      v20 = v18;
      v21 = v92;
      do
      {
        if (v21 != --v20)
        {
          v23 = *v106;
          if (!*v106)
          {
            goto LABEL_129;
          }

          v22 = v23 + v19;
          v101 = *(v23 + v5 + 32);
          v102 = *(v23 + v5 + 48);
          v103 = *(v23 + v5 + 64);
          v104 = *(v23 + v5 + 80);
          v99 = *(v23 + v5);
          v100 = *(v23 + v5 + 16);
          result = memmove((v23 + v5), (v23 + v19), 0x58uLL);
          *(v22 + 32) = v101;
          *(v22 + 48) = v102;
          *(v22 + 64) = v103;
          *(v22 + 80) = v104;
          *v22 = v99;
          *(v22 + 16) = v100;
        }

        ++v21;
        v19 -= 88;
        v5 += 88;
      }

      while (v21 < v20);
      v6 = v9;
    }

    v9 = v89;
    v10 = v92;
LABEL_23:
    v24 = v106[1];
    if (v18 < v24)
    {
      if (__OFSUB__(v18, v10))
      {
        goto LABEL_122;
      }

      if (v18 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_124;
        }

        if (v10 + a4 >= v24)
        {
          v5 = v106[1];
        }

        else
        {
          v5 = v10 + a4;
        }

        if (v5 < v10)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v18 != v5)
        {
          break;
        }
      }
    }

    v5 = v18;
    if (v18 < v10)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_1B4A1D58C((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v92;
    *(v28 + 5) = v5;
    v29 = *v91;
    if (!*v91)
    {
      goto LABEL_131;
    }

    v94 = v5;
    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_52:
          if (v34)
          {
            goto LABEL_110;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_113;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_117;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_66:
        if (v52)
        {
          goto LABEL_112;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_115;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_73:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
          goto LABEL_125;
        }

        if (!*v106)
        {
          goto LABEL_128;
        }

        v69 = *&v9[16 * v68 + 32];
        v5 = *&v9[16 * v30 + 40];
        sub_1B4B9F5FC((*v106 + 88 * v69), (*v106 + 88 * *&v9[16 * v30 + 32]), (*v106 + 88 * v5), v29);
        if (v6)
        {
        }

        if (v5 < v69)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_107;
        }

        v70 = &v9[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v5;
        v105 = v9;
        result = sub_1B4CDDDF8(v30);
        v9 = v105;
        v27 = *(v105 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_108;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_109;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_111;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_114;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_118;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v7 = v106[1];
    v8 = v94;
    if (v94 >= v7)
    {
      goto LABEL_93;
    }
  }

  v90 = v9;
  v87 = v6;
  v71 = *v106;
  v72 = *v106 + 88 * v18;
  v73 = v10 - v18;
  v95 = v5;
LABEL_84:
  v97 = v18;
  v74 = v73;
  v75 = v72;
  while (1)
  {
    sub_1B4B9C8D4(v75, &v99);
    v76 = (v75 - 88);
    sub_1B4B9C8D4(v75 - 88, v98);
    v77 = v99;
    v78 = v98[0];
    sub_1B4B9C930(v98);
    result = sub_1B4B9C930(&v99);
    if (v77 >= v78)
    {
LABEL_83:
      v5 = v95;
      v18 = v97 + 1;
      v72 += 88;
      --v73;
      if ((v97 + 1) != v95)
      {
        goto LABEL_84;
      }

      v6 = v87;
      v9 = v90;
      if (v95 < v92)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v71)
    {
      break;
    }

    v101 = *(v75 + 32);
    v102 = *(v75 + 48);
    v103 = *(v75 + 64);
    v104 = *(v75 + 80);
    v99 = *v75;
    v100 = *(v75 + 16);
    v79 = *(v75 - 40);
    *(v75 + 32) = *(v75 - 56);
    *(v75 + 48) = v79;
    *(v75 + 64) = *(v75 - 24);
    *(v75 + 80) = *(v75 - 8);
    v80 = *(v75 - 72);
    *v75 = *v76;
    *(v75 + 16) = v80;
    *(v75 - 56) = v101;
    *(v75 - 40) = v102;
    *(v75 - 24) = v103;
    *(v75 - 8) = v104;
    *v76 = v99;
    *(v75 - 72) = v100;
    v75 -= 88;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_83;
    }
  }

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
  return result;
}

uint64_t sub_1B4B9F5FC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[88 * v11] <= __dst)
    {
      memmove(__dst, a2, 88 * v11);
    }

    v12 = &v4[88 * v11];
    if (v10 < 88 || v6 <= v7)
    {
      v17 = v6;
      goto LABEL_35;
    }

    v30 = v4;
    while (1)
    {
      v18 = (v6 - 88);
      v19 = v12 - 88;
      v5 -= 88;
      while (1)
      {
        v12 = v19 + 88;
        v22 = v5 + 88;
        sub_1B4B9C8D4(v19, v29);
        v23 = v18;
        sub_1B4B9C8D4(v18, v28);
        v24 = v29[0];
        v25 = v28[0];
        sub_1B4B9C930(v28);
        sub_1B4B9C930(v29);
        if (v24 < v25)
        {
          break;
        }

        if (v22 != v12)
        {
          memmove(v5, v19, 0x58uLL);
        }

        v20 = v19 - 88;
        v5 -= 88;
        v21 = v19 > v30;
        v19 -= 88;
        v18 = v23;
        if (!v21)
        {
          v12 = v20 + 88;
          v17 = v6;
          v4 = v30;
          goto LABEL_35;
        }
      }

      v16 = v22 == v6;
      v17 = v23;
      if (!v16)
      {
        memmove(v5, v23, 0x58uLL);
      }

      v4 = v30;
      if (v12 > v30)
      {
        v6 = v17;
        if (v17 > v7)
        {
          continue;
        }
      }

      v12 = v19 + 88;
      goto LABEL_35;
    }
  }

  if (__dst != __src || &__src[88 * v9] <= __dst)
  {
    memmove(__dst, __src, 88 * v9);
  }

  v12 = &v4[88 * v9];
  if (v8 < 88 || v6 >= v5)
  {
    v17 = v7;
    goto LABEL_35;
  }

  do
  {
    sub_1B4B9C8D4(v6, v29);
    sub_1B4B9C8D4(v4, v28);
    v13 = v29[0];
    v14 = v28[0];
    sub_1B4B9C930(v28);
    sub_1B4B9C930(v29);
    if (v13 < v14)
    {
      v15 = v6;
      v16 = v7 == v6;
      v6 += 88;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v15, 0x58uLL);
      goto LABEL_13;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 88;
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_13:
    v7 += 88;
  }

  while (v4 < v12 && v6 < v5);
  v17 = v7;
LABEL_35:
  v26 = (v12 - v4) / 88;
  if (v17 != v4 || v17 >= &v4[88 * v26])
  {
    memmove(v17, v4, 88 * v26);
  }

  return 1;
}

uint64_t _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB920, &qword_1B4D47130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D223E0;
  v1 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
  v2 = sub_1B4BA0A08(&qword_1EB8A6D80, type metadata accessor for FitnessPlusBestWorkoutProperty);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
  v4 = sub_1B4BA0A08(&qword_1EB8A6D70, type metadata accessor for FitnessPlusAverageHeartRateProperty);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FitnessPlusCaloriesProperty(0);
  v6 = sub_1B4BA0A08(&qword_1EB8A6D60, type metadata accessor for FitnessPlusCaloriesProperty);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for FitnessPlusDurationProperty(0);
  v8 = sub_1B4BA0A08(&qword_1EB8A6D58, type metadata accessor for FitnessPlusDurationProperty);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = sub_1B49A50D0();
  *(v0 + 96) = &type metadata for FitnessPlusCountByTrainerProperty;
  *(v0 + 104) = v9;
  v10 = sub_1B49A507C();
  *(v0 + 112) = &type metadata for FitnessPlusWorkoutCountProperty;
  *(v0 + 120) = v10;
  return v0;
}

uint64_t sub_1B4B9FAB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4B9FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1B4B9FB30(uint64_t a1)
{
  result = _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0();
  if (a1)
  {
    v27 = *(result + 16);
    if (v27)
    {
      v3 = 0;
      v25 = *(a1 + 16);
      v26 = result + 32;
      v24 = (a1 + 32);
      v4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v29 = v4;
        v30 = v3;
        v28 = *(v26 + 16 * v3);
        (*(*(*(v26 + 16 * v3 + 8) + 8) + 56))(&v31);
        v6 = v31;
        v8 = v24;
        v7 = v25;
        while (1)
        {
          if (!v7)
          {
            v4 = v29;
            v5 = v30;
            goto LABEL_5;
          }

          v10 = *v8;
          v11 = 0x756F436C61746F74;
          if (v10 == 4)
          {
            v11 = 0x547942746E756F63;
          }

          v12 = 0xEE0072656E696172;
          if (v10 != 4)
          {
            v12 = 0xEA0000000000746ELL;
          }

          if (v10 == 3)
          {
            v11 = 0x6B726F5774736562;
            v12 = 0xEB0000000074756FLL;
          }

          v13 = 0xD00000000000001ALL;
          if (v10 == 1)
          {
            v14 = 0x80000001B4D48B80;
          }

          else
          {
            v14 = 0x80000001B4D48BA0;
          }

          if (*v8)
          {
            v13 = 0xD000000000000012;
          }

          else
          {
            v14 = 0x80000001B4D48B40;
          }

          if (*v8 <= 2u)
          {
            v15 = v13;
          }

          else
          {
            v15 = v11;
          }

          if (*v8 <= 2u)
          {
            v16 = v14;
          }

          else
          {
            v16 = v12;
          }

          if (v6 > 2)
          {
            v18 = 0x756F436C61746F74;
            if (v6 == 4)
            {
              v18 = 0x547942746E756F63;
            }

            v19 = 0xEE0072656E696172;
            if (v6 != 4)
            {
              v19 = 0xEA0000000000746ELL;
            }

            if (v6 == 3)
            {
              v20 = 0x6B726F5774736562;
            }

            else
            {
              v20 = v18;
            }

            if (v6 == 3)
            {
              v17 = 0xEB0000000074756FLL;
            }

            else
            {
              v17 = v19;
            }

            if (v15 != v20)
            {
              goto LABEL_7;
            }

            goto LABEL_47;
          }

          if (v6)
          {
            break;
          }

          v17 = 0x80000001B4D48B40;
          if (v15 == 0xD00000000000001ALL)
          {
            goto LABEL_47;
          }

LABEL_7:
          v9 = sub_1B4D18DCC();

          ++v8;
          --v7;
          if (v9)
          {
            goto LABEL_49;
          }
        }

        if (v6 == 1)
        {
          v17 = 0x80000001B4D48B80;
        }

        else
        {
          v17 = 0x80000001B4D48BA0;
        }

        if (v15 != 0xD000000000000012)
        {
          goto LABEL_7;
        }

LABEL_47:
        if (v16 != v17)
        {
          goto LABEL_7;
        }

LABEL_49:
        v4 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF2FC(0, *(v29 + 16) + 1, 1);
          v4 = v32;
        }

        v23 = *(v4 + 16);
        v22 = *(v4 + 24);
        v5 = v30;
        if (v23 >= v22 >> 1)
        {
          sub_1B4BCF2FC((v22 > 1), v23 + 1, 1);
          v4 = v32;
        }

        *(v4 + 16) = v23 + 1;
        *(v4 + 16 * v23 + 32) = v28;
LABEL_5:
        v3 = v5 + 1;
        if (v3 == v27)
        {

          return v4;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B4B9FE80(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *a1;
  v63 = *a2;
  v64 = v5;
  LODWORD(v5) = *a3;
  v61 = a3[1];
  v62 = v5;
  v60 = *(a3 + 1);
  LODWORD(v5) = a3[16];
  v58 = a3[17];
  v59 = v5;
  v57 = *(a3 + 3);
  *&v85 = a4;

  sub_1B4B9EBB4(&v85);
  if (!v4)
  {
    v6 = v85;
    v7 = *(v85 + 16);
    v92 = 0;
    if (v7)
    {
      v84[0] = MEMORY[0x1E69E7CC0];
      sub_1B4BCF6BC(0, v7, 0);
      v8 = v84[0];
      v9 = v6 + 32;
      do
      {
        sub_1B4B9C8D4(v9, &v85);
        sub_1B497558C(v88, v90);
        sub_1B4B9C930(&v85);
        v84[0] = v8;
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B4BCF6BC((v10 > 1), v11 + 1, 1);
          v8 = v84[0];
        }

        *(v8 + 16) = v11 + 1;
        sub_1B496F398(v90, v8 + 40 * v11 + 32);
        v9 += 88;
        --v7;
      }

      while (v7);
      v56 = v8;

      v12 = v92;
    }

    else
    {
      v12 = 0;

      v56 = MEMORY[0x1E69E7CC0];
    }

    v13 = _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0();
    v14 = v13;
    v51 = *(v13 + 16);
    if (v51)
    {
      v15 = 0;
      v53 = v13 + 32;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = v56;
      v52 = v13;
      do
      {
        if (v15 >= *(v14 + 16))
        {
          goto LABEL_43;
        }

        v54 = v15;
        v55 = v16;
        v65 = *(v53 + 16 * v15);
        v18 = v65;
        sub_1B4B9E56C(v65, v17, v65, *(&v65 + 1));
        v19 = *(*(&v18 + 1) + 8);
        swift_getAssociatedTypeWitness();
        v70 = v19;
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
        v20 = sub_1B4D18A7C();

        memset(v84, 0, sizeof(v84));
        sub_1B4974FBC(v84, &v81, &qword_1EB8A9BE0, &qword_1B4D2B598);
        v69 = *(v20 + 16);
        if (v69)
        {
          v21 = 0;
          v22 = v20 + 32;
          v67 = v20;
          v68 = v18;
          v66 = v18 - 8;
          while (v21 < *(v20 + 16))
          {
            sub_1B497558C(v22, v80);
            sub_1B4974FBC(&v81, v73, &qword_1EB8A9BE0, &qword_1B4D2B598);
            v23 = v74;
            if (v74)
            {
              v24 = v75;
              v25 = __swift_project_boxed_opaque_existential_1(v73, v74);
              v26 = *(v24 + 8);
              v71 = *(v26 + 64);
              v72 = v25;
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              *(&v77 + 1) = swift_getAssociatedTypeWitness();
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              __swift_allocate_boxed_opaque_existential_1(&v76);
              v71(v23, v26);
              v27 = v92;
              __swift_destroy_boxed_opaque_existential_1Tm(v73);
            }

            else
            {
              sub_1B4975024(v73, &qword_1EB8A9BE0, &qword_1B4D2B598);
              v76 = 0u;
              v77 = 0u;
              AssociatedConformanceWitness = 0;
              v27 = v92;
            }

            sub_1B497558C(v80, v73);
            v28 = v68;
            v29 = sub_1B4D1880C();
            v72 = &v51;
            v30 = *(v29 - 8);
            v31 = *(v30 + 64);
            MEMORY[0x1EEE9AC00](v29);
            v33 = &v51 - v32;
            v4 = v27;
            static SnapshotProperty.add(_:_:)(&v76, v73, v28, v70, &v51 - v32);
            if (v27)
            {

              v40 = &qword_1EB8AB2A0;
              sub_1B4975024(v73, &qword_1EB8AB2A0, &unk_1B4D360A0);
              __swift_destroy_boxed_opaque_existential_1Tm(v80);
              sub_1B4975024(&v81, &qword_1EB8A9BE0, &qword_1B4D2B598);
              sub_1B4975024(v84, &qword_1EB8A9BE0, &qword_1B4D2B598);
              sub_1B4975024(&v76, &qword_1EB8AB2A0, &unk_1B4D360A0);

              return v40;
            }

            v92 = 0;
            sub_1B4975024(v73, &qword_1EB8AB2A0, &unk_1B4D360A0);
            sub_1B4975024(&v76, &qword_1EB8AB2A0, &unk_1B4D360A0);
            v34 = *(v28 - 8);
            if ((*(v34 + 48))(v33, 1, v28) == 1)
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v80);
              sub_1B4975024(&v81, &qword_1EB8A9BE0, &qword_1B4D2B598);
              (*(v30 + 8))(v33, v29);
              memset(v79, 0, sizeof(v79));
            }

            else
            {
              *&v79[24] = v65;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
              (*(v34 + 32))(boxed_opaque_existential_1, v33, v28);
              __swift_destroy_boxed_opaque_existential_1Tm(v80);
              sub_1B4975024(&v81, &qword_1EB8A9BE0, &qword_1B4D2B598);
            }

            ++v21;
            v81 = *v79;
            v82 = *&v79[16];
            v83 = *&v79[32];
            v22 += 40;
            v20 = v67;
            if (v69 == v21)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_23:

        sub_1B4975024(v84, &qword_1EB8A9BE0, &qword_1B4D2B598);
        v90[0] = v81;
        v90[1] = v82;
        v91 = v83;
        if (*(&v82 + 1))
        {
          sub_1B496F398(v90, &v85);
          sub_1B496F398(&v85, v90);
          v16 = v55;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14 = v52;
          v37 = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_1B4A1DBDC(0, v16[2] + 1, 1, v16);
          }

          v39 = v16[2];
          v38 = v16[3];
          if (v39 >= v38 >> 1)
          {
            v16 = sub_1B4A1DBDC((v38 > 1), v39 + 1, 1, v16);
          }

          v16[2] = v39 + 1;
          sub_1B496F398(v90, &v16[5 * v39 + 4]);
        }

        else
        {
          sub_1B4975024(v90, &qword_1EB8A9BE0, &qword_1B4D2B598);
          v37 = v54;
          v16 = v55;
          v14 = v52;
        }

        v15 = v37 + 1;
        v17 = v56;
      }

      while (v15 != v51);

      v12 = v92;
      v41 = v16[2];
      if (!v41)
      {
        goto LABEL_40;
      }
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
      v41 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v41)
      {
LABEL_40:

        return MEMORY[0x1E69E7CC0];
      }
    }

    v92 = v12;
    *&v90[0] = MEMORY[0x1E69E7CC0];
    sub_1B4BCED1C(0, v41, 0);
    v40 = *&v90[0];
    v42 = (v16 + 4);
    do
    {
      sub_1B497558C(v42, v88);
      *&v85 = v64;
      *(&v85 + 1) = v63;
      LOBYTE(v86) = v62;
      BYTE1(v86) = v61;
      *(&v86 + 1) = v60;
      LOBYTE(v87) = v59;
      BYTE1(v87) = v58;
      *(&v87 + 1) = v57;
      *&v90[0] = v40;
      v44 = v40[2];
      v43 = v40[3];

      if (v44 >= v43 >> 1)
      {
        sub_1B4BCED1C((v43 > 1), v44 + 1, 1);
        v40 = *&v90[0];
      }

      v40[2] = v44 + 1;
      v45 = &v40[11 * v44];
      v46 = v86;
      *(v45 + 2) = v85;
      *(v45 + 3) = v46;
      v47 = v87;
      v48 = v88[0];
      v49 = v88[1];
      v45[14] = v89;
      *(v45 + 5) = v48;
      *(v45 + 6) = v49;
      *(v45 + 4) = v47;
      v42 += 40;
      --v41;
    }

    while (v41);

    return v40;
  }

LABEL_44:

  __break(1u);
  return result;
}

unint64_t sub_1B4BA0800()
{
  result = qword_1EDC39AB0;
  if (!qword_1EDC39AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AB0);
  }

  return result;
}

unint64_t sub_1B4BA0854(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BA0884();
  result = sub_1B4BA08D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BA0884()
{
  result = qword_1EDC39AC8[0];
  if (!qword_1EDC39AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC39AC8);
  }

  return result;
}

unint64_t sub_1B4BA08D8()
{
  result = qword_1EDC39AC0;
  if (!qword_1EDC39AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AC0);
  }

  return result;
}

uint64_t sub_1B4BA093C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BA09B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BA0A08(unint64_t *a1, void (*a2)(uint64_t))
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

FitnessIntelligence::AudioSynthesisIntensity_optional __swiftcall AudioSynthesisIntensity.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B4BA0A70()
{
  result = qword_1EB8AB928;
  if (!qword_1EB8AB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB928);
  }

  return result;
}

uint64_t AnnounceCancellationRequest.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4BA0B28(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B4BA0B28(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnnounceCancellationRequest.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  sub_1B4BA0DE4(&qword_1EB8A8A28);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BA0C20(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v9 = sub_1B4BA0F10();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4BA0DE4(&qword_1EB8A8A28);
    v4 = sub_1B4D17D6C();
    sub_1B4BA0B28(v7);
  }

  return v4;
}

uint64_t sub_1B4BA0D40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B2502C(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4BA0DE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BA0E28()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  sub_1B4BA0DE4(&qword_1EB8A8A28);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BA0EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4BA0B28(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B4BA0F10()
{
  result = qword_1EB8AB930;
  if (!qword_1EB8AB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB930);
  }

  return result;
}

const char *FitnessIntelligenceFeatures.feature.getter()
{
  if (*v0)
  {
    return "StreamCoachingAudio";
  }

  else
  {
    return "WorkoutVoice";
  }
}

uint64_t FitnessIntelligenceFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4BA1038()
{
  result = qword_1EB8AB938;
  if (!qword_1EB8AB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB938);
  }

  return result;
}

const char *sub_1B4BA10A0()
{
  if (*v0)
  {
    return "StreamCoachingAudio";
  }

  else
  {
    return "WorkoutVoice";
  }
}

uint64_t StreamingAudioComplete.init(identifier:chunkCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t StreamingAudioComplete.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B4BA1138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4BA1180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4BA11D0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA12F8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1420()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1550()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA166C()
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA1780()
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA1894()
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA19A8()
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA1AC0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1BEC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1D24()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1E50()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1F78()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA20A0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA21B8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA22DC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA2400()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA2528()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

id sub_1B4BA263C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF11C(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = sub_1B4D188DC();
  v2 = v36;
  v8 = result;
  v9 = 0;
  v35 = *(a1 + 36);
  v30 = a1 + 72;
  v31 = v1;
  v32 = a1 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_34;
    }

    if (v35 != *(v4 + 36))
    {
      goto LABEL_35;
    }

    v12 = *(*(v4 + 48) + v8);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v34 = 0x44676E6974696177;
        v33 = 0xEF6E6F6974617275;
        goto LABEL_21;
      }

      if (v12 == 4)
      {
        v34 = 0x7275446C61746F74;
        v33 = 0xED00006E6F697461;
        goto LABEL_21;
      }

      v33 = 0xE600000000000000;
      v13 = 0x746E656D6F6DLL;
    }

    else
    {
      if (*(*(v4 + 48) + v8))
      {
        if (v12 == 1)
        {
          v34 = 0x687370616E537369;
          v33 = 0xEF7972657551746FLL;
        }

        else
        {
          v34 = 0xD000000000000012;
          v33 = 0x80000001B4D4E5A0;
        }

        goto LABEL_21;
      }

      v33 = 0xE500000000000000;
      v13 = 0x7972657571;
    }

    v34 = v13;
LABEL_21:
    v14 = *(*(v4 + 56) + 8 * v8);
    v37 = v2;
    v15 = v4;
    v16 = *(v2 + 16);
    v17 = *(v2 + 24);
    v18 = v2;
    result = v14;
    v2 = v18;
    if (v16 >= v17 >> 1)
    {
      v29 = result;
      sub_1B4BCF11C((v17 > 1), v16 + 1, 1);
      result = v29;
      v2 = v37;
    }

    *(v2 + 16) = v16 + 1;
    v19 = (v2 + 24 * v16);
    v19[4] = v34;
    v19[5] = v33;
    v19[6] = result;
    v10 = 1 << *(v15 + 32);
    v5 = v32;
    if (v8 >= v10)
    {
      goto LABEL_36;
    }

    v20 = *(v32 + 8 * v11);
    if ((v20 & (1 << v8)) == 0)
    {
      goto LABEL_37;
    }

    v4 = v15;
    if (v35 != *(v15 + 36))
    {
      goto LABEL_38;
    }

    v21 = v20 & (-2 << (v8 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v30 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          v27 = v2;
          result = sub_1B497CD6C(v8, v35, 0);
          v2 = v27;
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      v28 = v2;
      result = sub_1B497CD6C(v8, v35, 0);
      v2 = v28;
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v31)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

Swift::Void __swiftcall WorkoutVoiceQueryAnalyticsEvent.send()()
{
  v1 = v0[1];
  v22 = *v0;
  v23 = v1;
  v24 = v0[2];
  v25 = *(v0 + 48);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  sub_1B4BA2CAC(&v22, v20);
  v3 = sub_1B4D17F5C();
  v4 = sub_1B4D1873C();
  sub_1B4BA2CE4(&v22);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v21 = v25;
    sub_1B4BA2CAC(&v22, v18);
    Analytics = WorkoutVoiceQueryAnalyticsEvent.description.getter();
    v9 = v8;

    v10 = sub_1B49558AC(Analytics, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B4953000, v3, v4, "[QueryResult] %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B8C7DDA0](v6, -1, -1);
    MEMORY[0x1B8C7DDA0](v5, -1, -1);
  }

  v11 = [objc_opt_self() sharedConnection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isHealthDataSubmissionAllowed];

    if (v13)
    {
      v14 = sub_1B4D1817C();
      v15 = swift_allocObject();
      v16 = v23;
      *(v15 + 16) = v22;
      *(v15 + 32) = v16;
      *(v15 + 48) = v24;
      *(v15 + 64) = v25;
      v18[4] = sub_1B4BA338C;
      v18[5] = v15;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B4BA33D0;
      v18[3] = &block_descriptor;
      v17 = _Block_copy(v18);
      sub_1B4BA2CAC(&v22, v20);

      AnalyticsSendEventLazy();
      _Block_release(v17);
    }
  }
}

uint64_t WorkoutVoiceQueryAnalyticsEvent.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double WorkoutVoiceQueryAnalyticsEvent.queryMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  return result;
}

uint64_t WorkoutVoiceQueryAnalyticsEvent.description.getter()
{
  v24 = *v0;
  v25 = v0[1];
  v26 = *(v0 + 1);
  v27 = *(v0 + 32);
  v28 = v0[5];
  v29 = *(v0 + 48);
  v1 = sub_1B4BA30B4();
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = byte_1F2CB8398[v2 + 32];
    v5 = 0x7275446C61746F74;
    if (v4 != 4)
    {
      v5 = 0x746E656D6F6DLL;
    }

    v6 = 0xED00006E6F697461;
    if (v4 != 4)
    {
      v6 = 0xE600000000000000;
    }

    if (v4 == 3)
    {
      v5 = 0x44676E6974696177;
      v6 = 0xEF6E6F6974617275;
    }

    v7 = 0x687370616E537369;
    if (v4 != 1)
    {
      v7 = 0xD000000000000012;
    }

    v8 = 0xEF7972657551746FLL;
    if (v4 != 1)
    {
      v8 = 0x80000001B4D4E5A0;
    }

    if (!byte_1F2CB8398[v2 + 32])
    {
      v7 = 0x7972657571;
      v8 = 0xE500000000000000;
    }

    if (byte_1F2CB8398[v2 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (byte_1F2CB8398[v2 + 32] <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    if (*(v1 + 16))
    {
      v11 = sub_1B49E9EC4(v9, v10);
      v13 = v12;

      if (v13)
      {
        v14 = *(*(v1 + 56) + 8 * v11);
        sub_1B4D18A8C();
        MEMORY[0x1B8C7C620](61, 0xE100000000000000);
        v15 = [v14 description];
        v16 = sub_1B4D1818C();
        v18 = v17;

        MEMORY[0x1B8C7C620](v16, v18);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1B4A1D690(0, *(v3 + 2) + 1, 1, v3);
        }

        v20 = *(v3 + 2);
        v19 = *(v3 + 3);
        if (v20 >= v19 >> 1)
        {
          v3 = sub_1B4A1D690((v19 > 1), v20 + 1, 1, v3);
        }

        *(v3 + 2) = v20 + 1;
        v21 = &v3[16 * v20];
        *(v21 + 4) = 0;
        *(v21 + 5) = 0xE000000000000000;
      }
    }

    else
    {
    }

    ++v2;
  }

  while (v2 != 6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B49B0578(&qword_1EDC378E8, &qword_1EB8A7B38, &qword_1B4D36300);
  v22 = sub_1B4D180DC();
  swift_bridgeObjectRelease_n();
  return v22;
}

unint64_t sub_1B4BA30B4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = sub_1B4C94C80(MEMORY[0x1E69E7CC0]);
  v9 = sub_1B4D1817C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v9, 0, isUniquelyReferenced_nonNull_native);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v11, 1u, v12);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v13, 2u, v14);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v15, 3u, v16);
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v17, 4u, v18);
  v19 = sub_1B4D1817C();

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v8;
  sub_1B4BA3B20(v19, 5u, v20);
  v21 = sub_1B4BA263C(v8);

  if (v21[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C0, &qword_1B4D1ABD8);
    v22 = sub_1B4D18AEC();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC8];
  }

  v25 = v22;

  sub_1B4BA4238(v23, 1, &v25);

  return v25;
}

unint64_t sub_1B4BA338C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  return sub_1B4BA30B4();
}

id sub_1B4BA33D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1B49DF540();
    v5 = sub_1B4D17FAC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4BA3488()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BA35A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B4BA45C8();
  *a2 = result;
  return result;
}

void sub_1B4BA35D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7972657571;
  v5 = 0xEF6E6F6974617275;
  v6 = 0x44676E6974696177;
  v7 = 0xED00006E6F697461;
  v8 = 0x7275446C61746F74;
  if (v2 != 4)
  {
    v8 = 0x746E656D6F6DLL;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF7972657551746FLL;
  v10 = 0x687370616E537369;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x80000001B4D4E5A0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B4BA36E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4BA3728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B4BA37E0()
{
  result = qword_1EB8AB950;
  if (!qword_1EB8AB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB950);
  }

  return result;
}

uint64_t sub_1B4BA3834(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v9 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B49E9FEC(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B4989318();
      goto LABEL_7;
    }

    sub_1B49855D4(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1B49E9FEC(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B49EEFF0(a2, v11);
      return sub_1B4BA3F30(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1B4BA39C4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B49EA0C0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
        return sub_1B4BA4614(a1, v17 + *(*(Descriptor - 8) + 72) * v10, type metadata accessor for FitnessContextQueryDescriptor);
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for FitnessContextQueryDescriptor, type metadata accessor for FitnessContextQueryDescriptor);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B49896A4();
      goto LABEL_7;
    }

    sub_1B4985BD8(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1B49EA0C0(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for FitnessContextQueryDescriptor, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

unint64_t sub_1B4BA3B20(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B49EA180(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1B4989A44();
    result = v17;
    goto LABEL_8;
  }

  sub_1B4986240(v14, a3 & 1);
  v18 = *v4;
  result = sub_1B49EA180(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1B4D18E1C();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B4BA3C68(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B49EA4A8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for WorkoutState();
        return sub_1B4BA4614(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for WorkoutState);
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for WorkoutState, type metadata accessor for WorkoutState);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B4989D04();
      goto LABEL_7;
    }

    sub_1B4986848(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1B49EA4A8(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for WorkoutState, type metadata accessor for WorkoutState);
    }
  }

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4BA3DC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B49E9EC4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for WorkoutMetadata();
      return sub_1B4BA4614(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for WorkoutMetadata);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B498A3C8();
    goto LABEL_7;
  }

  sub_1B49877D0(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1B49E9EC4(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B4BA418C(v12, a2, a3, a1, v18);
}

uint64_t sub_1B4BA3F30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  result = sub_1B4BA467C(a2, v8 + *(*(Descriptor - 8) + 72) * a1, type metadata accessor for FitnessContextQueryDescriptor);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1B4BA3FE4(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1B4BA467C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1B4BA408C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1B4BA40D0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1B4BA4130(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 3 * result;
  *v4 = a2;
  *(v4 + 2) = BYTE2(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

uint64_t sub_1B4BA418C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for WorkoutMetadata();
  result = sub_1B4BA467C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for WorkoutMetadata);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1B4BA4238(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1B49E9EC4(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1B4985F9C(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_1B49E9EC4(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1B49898D8();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = sub_1B49E9EC4(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_1B4985F9C(v34, 1);
        v35 = *a3;
        v30 = sub_1B49E9EC4(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1B4BA45C8()
{
  v0 = sub_1B4D18B1C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B4BA4614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BA467C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4BA46F8()
{
  result = qword_1EB8AB958;
  if (!qword_1EB8AB958)
  {
    type metadata accessor for WorkoutVoiceMostCaloriesFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB958);
  }

  return result;
}

uint64_t sub_1B4BA4758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BA47F8, 0, 0);
}

uint64_t sub_1B4BA47F8()
{
  v1 = v0[5];
  sub_1B49BFE58(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4B66D04(v6, v4, v5);
}

uint64_t sub_1B4BA4908(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  sub_1B4975024(*(v4 + 40), &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49927F0, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

unint64_t sub_1B4BA4A88(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor();
  v74 = *(v2 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v64 - v11;
  v75 = type metadata accessor for WorkoutPropertiesQuery();
  v12 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D1777C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WorkoutState();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFE58(a1, v23, type metadata accessor for WorkoutState);
  v24 = sub_1B4CAC70C(v23);
  v25 = *(v24 + 2);
  v26 = 32;
  do
  {
    if (!v25)
    {

      goto LABEL_9;
    }

    v27 = *&v24[v26];
    v26 += 8;
    --v25;
  }

  while (v27 != 2);

  if (FIActivityMoveModeUserDefault() == 1)
  {
    v69 = v5;
    v28 = *(v20 + 36);
    v71 = v16;
    v29 = *(v16 + 16);
    v65 = v29;
    v29(v19, &v23[v28], v15);
    v29(v14, v19, v15);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B4D1A800;
    v31 = *&v23[*(v20 + 24)];
    sub_1B49BFEC0(v23, type metadata accessor for WorkoutState);
    v32 = [v31 effectiveTypeIdentifier];

    *(v30 + 32) = v32;
    v33 = v75;
    v34 = *(v75 + 20);
    v73 = v15;
    v35 = &v14[v34];
    v36 = MEMORY[0x1E69E7CC0];
    *v35 = MEMORY[0x1E69E7CC0];
    *(v35 + 1) = v36;
    *(v35 + 2) = v36;
    *(v35 + 3) = v30;
    *(v35 + 4) = v36;
    *(v35 + 5) = v36;
    *&v14[*(v33 + 24)] = v36;
    *&v14[*(v33 + 28)] = &unk_1F2CB9830;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1A8, &qword_1B4D33248);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B0, &unk_1B4D364C0);
    v38 = *(*(v37 - 8) + 72);
    v39 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1B4D1AA70;
    v68 = v40;
    v41 = (v40 + v39);
    v72 = v37;
    v42 = *(v37 + 48);
    *v41 = 0;
    sub_1B49BFE58(v14, &v41[v42], type metadata accessor for WorkoutPropertiesQuery);
    Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
    swift_storeEnumTagMultiPayload();
    v67 = v41;
    v43 = &v41[v38];
    v41[v38] = 1;
    v44 = v76;
    v70 = v19;
    v65(v76, v19, v73);
    swift_storeEnumTagMultiPayload();
    v45 = v74;
    (*(v74 + 56))(v44, 0, 1, v2);
    sub_1B49BFDE8(v44, v9);
    v46 = *(v45 + 48);
    if (v46(v9, 1, v2) == 1)
    {
      v47 = v69;
      sub_1B49BFE58(v14, v69, type metadata accessor for DateRangeDescriptor);
      if (v46(v9, 1, v2) != 1)
      {
        sub_1B4975024(v9, &qword_1EB8A67A8, &qword_1B4D1E060);
      }
    }

    else
    {
      v47 = v69;
      sub_1B4993450(v9, v69);
    }

    v54 = &v43[*(v72 + 48)];
    v55 = *v35;
    v56 = *(v35 + 1);
    v58 = *(v35 + 2);
    v57 = *(v35 + 3);
    v59 = *(v35 + 4);
    v60 = *(v35 + 5);
    sub_1B49BFE58(v47, v54, type metadata accessor for DateRangeDescriptor);

    sub_1B49BFEC0(v47, type metadata accessor for DateRangeDescriptor);
    v61 = v75;
    v62 = (v54 + *(v75 + 20));
    *v62 = v55;
    v62[1] = v56;
    v62[2] = v58;
    v62[3] = v57;
    v62[4] = v59;
    v62[5] = v60;
    *(v54 + *(v61 + 24)) = MEMORY[0x1E69E7CC0];
    *(v54 + *(v61 + 28)) = &unk_1F2CB9830;
    sub_1B4975024(v76, &qword_1EB8A67A8, &qword_1B4D1E060);
    swift_storeEnumTagMultiPayload();
    v63 = sub_1B4C9779C(v68);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B49BFEC0(v14, type metadata accessor for WorkoutPropertiesQuery);
    (*(v71 + 8))(v70, v73);
    return v63;
  }

LABEL_9:
  sub_1B49BFEC0(v23, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v48 = sub_1B4D17F6C();
  __swift_project_value_buffer(v48, qword_1EDC36F00);
  v49 = sub_1B4D17F5C();
  v50 = sub_1B4D1873C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, &v77);
    _os_log_impl(&dword_1B4953000, v49, v50, "%s does not support this workout state", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1B8C7DDA0](v52, -1, -1);
    MEMORY[0x1B8C7DDA0](v51, -1, -1);
  }

  return sub_1B4C9779C(MEMORY[0x1E69E7CC0]);
}

double AudioStreamBasicDescription.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&result = sub_1B4BA5674(a1, v6).n128_u64[0];
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t AudioStreamBasicDescription.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  sub_1B4BA5780(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return sub_1B4D17DAC();
}

__n128 sub_1B4BA53A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B4BA53C0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v8;
  v12 = *(v1 + 32);
  v9 = sub_1B4BA5780(qword_1EB8AB960, type metadata accessor for AudioStreamBasicDescription);
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4BA5780(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
    v4 = sub_1B4D17D6C();
    sub_1B4BA57C8(v7);
  }

  return v4;
}

double sub_1B4BA552C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B2943C(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_1B4BA5574()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  sub_1B4BA5780(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return sub_1B4D17DAC();
}

double sub_1B4BA562C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&result = sub_1B4BA5674(a1, v6).n128_u64[0];
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

__n128 sub_1B4BA5674@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  sub_1B4BA57C8(a1);
  *a2 = v3;
  result = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = v5;
  return result;
}

__n128 sub_1B4BA56D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  *a1 = *v2;
  *(a1 + 8) = *(v2 + 8);
  result = *(v2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B4BA5780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4BA57C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(NSUnitEnergy *__return_ptr retstr)
{
  v2 = [v1 userActiveEnergyBurnedUnit];
  sub_1B49DF540();
  v3 = objc_opt_self();
  v4 = [v3 kilocalorieUnit];
  v5 = sub_1B4D187AC();

  if (v5)
  {
    v6 = [objc_opt_self() kilocalories];
LABEL_8:
    v10 = v6;
    goto LABEL_9;
  }

  v7 = [v3 largeCalorieUnit];
  v8 = sub_1B4D187AC();

  if ((v8 & 1) == 0)
  {
    v6 = [objc_opt_self() kilojoules];
    goto LABEL_8;
  }

  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDC36DF8;
LABEL_9:
}

void __swiftcall FIUnitManager.userMeasurementUnitForWalkingRunningDistance()(NSUnitLength *__return_ptr retstr)
{
  v2 = [v1 userDistanceWalkingRunningHKUnit];
  sub_1B49DF540();
  v3 = [objc_opt_self() mileUnit];
  v4 = sub_1B4D187AC();

  v5 = objc_opt_self();
  v6 = &selRef_miles;
  if ((v4 & 1) == 0)
  {
    v6 = &selRef_kilometers;
  }

  v7 = [v5 *v6];
}

id FIUnitManager.userMeasurementUnitForPace(for:)(uint64_t a1)
{
  v2 = [v1 userDistanceHKUnitForActivityType_];
  sub_1B49DF540();
  v3 = [objc_opt_self() mileUnit];
  v4 = sub_1B4D187AC();

  if (v4)
  {
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB8AC490;
  }

  else
  {
    if (qword_1EB8A6480 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB8AC498;
  }

  v6 = *v5;

  return v6;
}

id sub_1B4BA5BA0(uint64_t a1, uint64_t *a2, SEL *a3, SEL *a4)
{
  v8 = [v4 userDistanceHKUnitForActivityType_];
  sub_1B49DF540();
  v9 = [objc_opt_self() mileUnit];
  v10 = sub_1B4D187AC();

  v11 = *a2;
  v12 = objc_opt_self();
  if (v10)
  {
    v13 = a3;
  }

  else
  {
    v13 = a4;
  }

  v14 = [v12 *v13];

  return v14;
}

void __swiftcall FIUnitManager.userMeasurementUnitForElevation()(NSUnitLength *__return_ptr retstr)
{
  v2 = [v1 userDistanceElevationUnit];
  v3 = objc_opt_self();
  if ((v2 - 1) > 4)
  {
    v4 = &selRef_miles;
  }

  else
  {
    v4 = off_1E7C118B8[(v2 - 1)];
  }

  v5 = [v3 *v4];

  v6 = v5;
}

uint64_t sub_1B4BA5CE4()
{
  v0 = sub_1B4D173DC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49B1198(&qword_1EDC37820);
  v3 = sub_1B4D173BC();

  return v3;
}

uint64_t sub_1B4BA5D88(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B4D173AC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49B1198(&qword_1EB8A6FB8);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

uint64_t sub_1B4BA5E50(void *a1)
{
  a1[1] = sub_1B49B1198(&qword_1EDC37828);
  a1[2] = sub_1B49B1198(&qword_1EB8A6FB8);
  result = sub_1B49B1198(&qword_1EDC37820);
  a1[3] = result;
  return result;
}

uint64_t LegacySnapshotContainer.init(cacheIndex:ever:year:month:week:day:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = *a1;
  v15 = type metadata accessor for LegacySnapshotContainer();
  v18 = *(*(a7 - 8) + 32);
  v18(&a8[v15[9]], a2, a7);
  v18(&a8[v15[10]], a3, a7);
  v18(&a8[v15[11]], a4, a7);
  v18(&a8[v15[12]], a5, a7);
  v16 = &a8[v15[13]];

  return (v18)(v16, a6, a7);
}

uint64_t LegacySnapshotContainer.adding(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v62 = AssociatedTypeWitness;
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = *(v6 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v57 = &v51 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v59 = &v51 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v60 = &v51 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v51 - v32;
  sub_1B4B05CF0(a1, &v64);
  if (v65)
  {
    v53 = v21;
    v52 = a3;
    sub_1B496F398(&v64, v66);
    v35 = v67;
    v34 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    (*(v34 + 8))(&v64, v35, v34);
    v36 = *(a2 + 36);
    sub_1B4B05518();
    v37 = v69;
    SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v66, v20, 0, 0, v6, v7, v33);
    if (v37)
    {
      (*(v61 + 8))(v20, v62);
    }

    else
    {
      v51 = v33;
      v39 = v20;
      v40 = v62;
      v61 = *(v61 + 8);
      (v61)(v39, v62);
      v41 = *(a2 + 40);
      sub_1B4B05518();
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v66, v17, 0, 0, v6, v7, v60);
      (v61)(v17, v40);
      v42 = *(a2 + 44);
      v43 = v58;
      sub_1B4B05518();
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v66, v43, 0, 0, v6, v7, v59);
      (v61)(v43, v40);
      v44 = *(a2 + 48);
      v45 = v56;
      sub_1B4B05518();
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v66, v45, 0, 0, v6, v7, v57);
      v69 = 0;
      (v61)(v45, v40);
      v46 = *(a2 + 52);
      v47 = v55;
      sub_1B4B05518();
      v48 = v54;
      v49 = v69;
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v66, v47, 0, 0, v6, v7, v54);
      (v61)(v47, v40);
      if (v49)
      {
        v50 = *(v53 + 8);
        v50(v57, v6);
        v50(v59, v6);
        v50(v60, v6);
        v50(v51, v6);
      }

      else
      {
        LegacySnapshotContainer.init(cacheIndex:ever:year:month:week:day:)(&v64, v51, v60, v59, v57, v48, v6, v52);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  else
  {
    sub_1B4B05D60(&v64);
    return (*(*(a2 - 8) + 16))(a3, v63, a2);
  }
}

uint64_t LegacySnapshotContainer.init(properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  (*(a3 + 96))(&v13, a2, a3);
  *a4 = v13;
  v7 = type metadata accessor for LegacySnapshotContainer();
  v12 = *(a2 - 8);
  v8 = *(v12 + 16);
  v8(&a4[v7[9]], a1, a2);
  v8(&a4[v7[10]], a1, a2);
  v8(&a4[v7[11]], a1, a2);
  v8(&a4[v7[12]], a1, a2);
  v9 = *(v12 + 32);
  v10 = &a4[v7[13]];

  return v9(v10, a1, a2);
}

uint64_t sub_1B4BA68A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4BA6934(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + 8) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

void sub_1B4BA6AB8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v8 + 8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v9;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_39:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v6 + 56);
  v20 = &a1[v8 + 8] & ~v8;

  v19(v20);
}

uint64_t MoveStreakProperty.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_1B4BA6D90(v15, v14);
}

__n128 MoveStreakProperty.init(value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t MoveStreakProperty.hash(into:)()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return StreakPropertyValue.hash(into:)();
}

uint64_t _s19FitnessIntelligence18MoveStreakPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v7;
  v8 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 112);
  v51 = *(a2 + 96);
  v52 = v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v12;
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v14;
  v15 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v15;
  v16 = *(a1 + 112);
  v35 = v43;
  v36 = v16;
  v31 = v39;
  v32 = v6;
  v33 = v41;
  v34 = v2;
  v29 = v38[0];
  v30 = v4;
  v17 = *(a2 + 112);
  v26 = v51;
  v27 = v17;
  v22 = v47;
  v23 = v13;
  v24 = v49;
  v25 = v9;
  v45 = *(a1 + 128);
  v53 = *(a2 + 128);
  v37 = *(a1 + 128);
  v28 = *(a2 + 128);
  v20 = v46[0];
  v21 = v11;
  v18 = _s19FitnessIntelligence19StreakPropertyValueV2eeoiySbAC_ACtFZ_0(&v29, &v20);
  v54[6] = v26;
  v54[7] = v27;
  v55 = v28;
  v54[2] = v22;
  v54[3] = v23;
  v54[4] = v24;
  v54[5] = v25;
  v54[0] = v20;
  v54[1] = v21;
  sub_1B4BA6D90(v38, v56);
  sub_1B4BA6D90(v46, v56);
  sub_1B4BA87C4(v54);
  v56[6] = v35;
  v56[7] = v36;
  v57 = v37;
  v56[2] = v31;
  v56[3] = v32;
  v56[4] = v33;
  v56[5] = v34;
  v56[0] = v29;
  v56[1] = v30;
  sub_1B4BA87C4(v56);
  return v18 & 1;
}

uint64_t _s19FitnessIntelligence18MoveStreakPropertyV9hashValueSivg_0()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1B4D18E8C();
  StreakPropertyValue.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA705C()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1B4D18E8C();
  StreakPropertyValue.hash(into:)();
  return sub_1B4D18EDC();
}

BOOL static DistanceStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DistanceStatisticsProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t DistanceStatisticsProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static MoveGoalDeltaProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MoveGoalDeltaProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t MoveGoalDeltaProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static ExerciseGoalDeltaProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ExerciseGoalDeltaProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t ExerciseGoalDeltaProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static StandGoalDeltaProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)))
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (sub_1B4D1816C())
      {
        v7 = v5[9];
        if (sub_1B4D1816C())
        {
          v8 = v5[10];
          if (sub_1B4D1816C())
          {
            v9 = v5[11];
            if (sub_1B4D1816C())
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t StandGoalDeltaProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  return sub_1B4D1808C();
}

uint64_t StandGoalDeltaProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1B8C7D2C0](*(v0 + v2[7]));
  v3 = v0 + v2[8];
  sub_1B4D1808C();
  v4 = v1 + v2[9];
  sub_1B4D1808C();
  v5 = v1 + v2[10];
  sub_1B4D1808C();
  v6 = v1 + v2[11];
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

FitnessIntelligence::MoveGoalMilestoneProperty __swiftcall MoveGoalMilestoneProperty.init(value:)(FitnessIntelligence::MoveGoalMilestoneProperty value)
{
  *v1 = *value.value.currentCount;
  *(v1 + 8) = *(value.value.currentCount + 8);
  return value;
}

uint64_t sub_1B4BA81C4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6[9] = *v3;
  v7 = *(v3 + 8);
  sub_1B4D18E8C();
  a3(v6);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA8238(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  v8 = *(v4 + 8);
  sub_1B4D18E8C();
  a4(v7);
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence25MoveGoalMilestonePropertyV5valueAA05RingseF5ValueVvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t _s19FitnessIntelligence25MoveGoalMilestonePropertyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  result = a1[2];
  v6 = a2[2];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return (sub_1B4A23AD4(result, v6) & 1) != 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return (sub_1B4A23AD4(result, v6) & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19FitnessIntelligence25MoveGoalMilestonePropertyV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v5 = v2[2];
  MEMORY[0x1B8C7D290](*v2);
  MEMORY[0x1B8C7D290](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 32);
    do
    {
      v8 = *v7++;
      MEMORY[0x1B8C7D2C0](v8);
      --v6;
    }

    while (v6);
  }

  return sub_1B4A27684(a1, v5);
}

uint64_t _s19FitnessIntelligence25MoveGoalMilestonePropertyV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1B8C7D2C0](v6);
      --v4;
    }

    while (v4);
  }

  sub_1B4A27684(v8, v3);
  return sub_1B4D18EDC();
}

BOOL sub_1B4BA84F0(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = a2[2];
    v3 = a1[2];
    if (sub_1B4A0A164(a1[1], a2[1]) & 1) != 0 && (sub_1B4A23AD4(v3, v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B4BA8620(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  sub_1B4D18E8C();
  a1(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA8694(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_1B4D18E8C();
  a3(v7, v5);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA8704(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B4D18E8C();
  a4(v8, v6);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4BA8818()
{
  result = qword_1EB8AB9E8;
  if (!qword_1EB8AB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB9E8);
  }

  return result;
}

unint64_t sub_1B4BA886C(uint64_t a1)
{
  result = sub_1B4BA8894();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8894()
{
  result = qword_1EDC395D0;
  if (!qword_1EDC395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395D0);
  }

  return result;
}

unint64_t sub_1B4BA88E8()
{
  result = qword_1EDC38F60[0];
  if (!qword_1EDC38F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38F60);
  }

  return result;
}

uint64_t sub_1B4BA893C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4BA8984(uint64_t a1)
{
  result = sub_1B4BA89AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA89AC()
{
  result = qword_1EDC395E8[0];
  if (!qword_1EDC395E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC395E8);
  }

  return result;
}

unint64_t sub_1B4BA8A04()
{
  result = qword_1EDC395E0;
  if (!qword_1EDC395E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395E0);
  }

  return result;
}

unint64_t sub_1B4BA8A58(uint64_t a1)
{
  result = sub_1B4BA8A80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8A80()
{
  result = qword_1EDC392C8;
  if (!qword_1EDC392C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC392C8);
  }

  return result;
}

unint64_t sub_1B4BA8AD4(uint64_t a1)
{
  result = sub_1B4BA8AFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8AFC()
{
  result = qword_1EDC392E0[0];
  if (!qword_1EDC392E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC392E0);
  }

  return result;
}

unint64_t sub_1B4BA8B54()
{
  result = qword_1EDC392D8;
  if (!qword_1EDC392D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC392D8);
  }

  return result;
}

unint64_t sub_1B4BA8BA8(uint64_t a1)
{
  result = sub_1B4BA8BD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8BD0()
{
  result = qword_1EDC39578;
  if (!qword_1EDC39578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39578);
  }

  return result;
}

unint64_t sub_1B4BA8C24(uint64_t a1)
{
  result = sub_1B4BA8C4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8C4C()
{
  result = qword_1EDC39590;
  if (!qword_1EDC39590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39590);
  }

  return result;
}

unint64_t sub_1B4BA8CA4()
{
  result = qword_1EDC39588;
  if (!qword_1EDC39588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39588);
  }

  return result;
}

unint64_t sub_1B4BA8CF8(uint64_t a1)
{
  result = sub_1B4BA8D20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8D20()
{
  result = qword_1EDC38CA0;
  if (!qword_1EDC38CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CA0);
  }

  return result;
}

unint64_t sub_1B4BA8D74(uint64_t a1)
{
  result = sub_1B4BA8D9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8D9C()
{
  result = qword_1EDC38CB8;
  if (!qword_1EDC38CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CB8);
  }

  return result;
}

unint64_t sub_1B4BA8DF4()
{
  result = qword_1EDC38CB0;
  if (!qword_1EDC38CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CB0);
  }

  return result;
}

uint64_t sub_1B4BA8E8C(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38BB0, type metadata accessor for MoveRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA8F48(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38BC8, type metadata accessor for MoveRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA8FE8(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38168, type metadata accessor for MoveMinutesRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9060(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38180, type metadata accessor for MoveMinutesRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9100(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38538, type metadata accessor for ExerciseRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9178(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38550, type metadata accessor for ExerciseRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9218(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38990, type metadata accessor for StandRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9290(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC389A8, type metadata accessor for StandRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9330(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38FF8, type metadata accessor for StepsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA93A8(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC39010, type metadata accessor for StepsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9448(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38E50, type metadata accessor for FlightsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA94C0(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38E68, type metadata accessor for FlightsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA95A4(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38C80, type metadata accessor for DistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9660(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38C98, type metadata accessor for DistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9700()
{
  result = qword_1EB8ABA30;
  if (!qword_1EB8ABA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABA30);
  }

  return result;
}

unint64_t sub_1B4BA9754(uint64_t a1)
{
  result = sub_1B4BA977C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA977C()
{
  result = qword_1EDC385E8;
  if (!qword_1EDC385E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC385E8);
  }

  return result;
}

unint64_t sub_1B4BA97D0()
{
  result = qword_1EDC38628;
  if (!qword_1EDC38628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38628);
  }

  return result;
}

unint64_t sub_1B4BA9824(uint64_t a1)
{
  result = sub_1B4BA984C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA984C()
{
  result = qword_1EDC38600;
  if (!qword_1EDC38600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38600);
  }

  return result;
}

unint64_t sub_1B4BA98A4()
{
  result = qword_1EDC385F8;
  if (!qword_1EDC385F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC385F8);
  }

  return result;
}

unint64_t sub_1B4BA98F8(uint64_t a1)
{
  result = sub_1B4BA9920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9920()
{
  result = qword_1EDC38188;
  if (!qword_1EDC38188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38188);
  }

  return result;
}

unint64_t sub_1B4BA9974(uint64_t a1)
{
  result = sub_1B4BA999C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA999C()
{
  result = qword_1EDC381A0;
  if (!qword_1EDC381A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC381A0);
  }

  return result;
}

unint64_t sub_1B4BA99F4()
{
  result = qword_1EDC38198;
  if (!qword_1EDC38198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38198);
  }

  return result;
}

unint64_t sub_1B4BA9A48(uint64_t a1)
{
  result = sub_1B4BA9A70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9A70()
{
  result = qword_1EDC383A0;
  if (!qword_1EDC383A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383A0);
  }

  return result;
}

unint64_t sub_1B4BA9AC4(uint64_t a1)
{
  result = sub_1B4BA9AEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9AEC()
{
  result = qword_1EDC383B8;
  if (!qword_1EDC383B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383B8);
  }

  return result;
}

unint64_t sub_1B4BA9B44()
{
  result = qword_1EDC383B0;
  if (!qword_1EDC383B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383B0);
  }

  return result;
}

unint64_t sub_1B4BA9B98(uint64_t a1)
{
  result = sub_1B4BA9BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9BC0()
{
  result = qword_1EDC37A80;
  if (!qword_1EDC37A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A80);
  }

  return result;
}

unint64_t sub_1B4BA9C14(uint64_t a1)
{
  result = sub_1B4BA9C3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9C3C()
{
  result = qword_1EDC37A90;
  if (!qword_1EDC37A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A90);
  }

  return result;
}

unint64_t sub_1B4BA9C94()
{
  result = qword_1EDC37A88;
  if (!qword_1EDC37A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A88);
  }

  return result;
}

uint64_t sub_1B4BA9D2C(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC39490, type metadata accessor for MoveGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9DE8(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC394A8, type metadata accessor for MoveGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9E88(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38800, type metadata accessor for MoveMinutesGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9F00(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38818, type metadata accessor for MoveMinutesGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9FA0(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38F20, type metadata accessor for ExerciseGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BAA018(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38F38, type metadata accessor for ExerciseGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BAA0FC(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC391F8, type metadata accessor for StandGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BAA1B8(uint64_t a1)
{
  result = sub_1B4BA893C(qword_1EDC39210, type metadata accessor for StandGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA258()
{
  result = qword_1EB8ABA68;
  if (!qword_1EB8ABA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABA68);
  }

  return result;
}

unint64_t sub_1B4BAA2AC(uint64_t a1)
{
  result = sub_1B4BAA2D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA2D4()
{
  result = qword_1EDC38D80;
  if (!qword_1EDC38D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D80);
  }

  return result;
}

unint64_t sub_1B4BAA328(uint64_t a1)
{
  result = sub_1B4BAA350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA350()
{
  result = qword_1EDC38D98;
  if (!qword_1EDC38D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D98);
  }

  return result;
}

unint64_t sub_1B4BAA3A8()
{
  result = qword_1EDC38D90;
  if (!qword_1EDC38D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D90);
  }

  return result;
}

unint64_t sub_1B4BAA3FC(uint64_t a1)
{
  result = sub_1B4BAA424();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA424()
{
  result = qword_1EDC38630;
  if (!qword_1EDC38630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38630);
  }

  return result;
}

unint64_t sub_1B4BAA478(uint64_t a1)
{
  result = sub_1B4BAA4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA4A0()
{
  result = qword_1EDC38648;
  if (!qword_1EDC38648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38648);
  }

  return result;
}

unint64_t sub_1B4BAA4F8()
{
  result = qword_1EDC38640;
  if (!qword_1EDC38640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38640);
  }

  return result;
}

unint64_t sub_1B4BAA54C(uint64_t a1)
{
  result = sub_1B4BAA574();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA574()
{
  result = qword_1EDC38B00;
  if (!qword_1EDC38B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38B00);
  }

  return result;
}

unint64_t sub_1B4BAA5C8(uint64_t a1)
{
  result = sub_1B4BAA5F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA5F0()
{
  result = qword_1EDC38B18[0];
  if (!qword_1EDC38B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38B18);
  }

  return result;
}

unint64_t sub_1B4BAA648()
{
  result = qword_1EDC38B10;
  if (!qword_1EDC38B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38B10);
  }

  return result;
}

unint64_t sub_1B4BAA69C(uint64_t a1)
{
  result = sub_1B4BAA6C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA6C4()
{
  result = qword_1EDC37EB0;
  if (!qword_1EDC37EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37EB0);
  }

  return result;
}

unint64_t sub_1B4BAA718(uint64_t a1)
{
  result = sub_1B4BAA740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA740()
{
  result = qword_1EDC37EC0[0];
  if (!qword_1EDC37EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37EC0);
  }

  return result;
}

unint64_t sub_1B4BAA798()
{
  result = qword_1EDC37EB8;
  if (!qword_1EDC37EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37EB8);
  }

  return result;
}

unint64_t sub_1B4BAA830(uint64_t a1)
{
  result = sub_1B4BAA858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA858()
{
  result = qword_1EDC38608;
  if (!qword_1EDC38608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38608);
  }

  return result;
}

unint64_t sub_1B4BAA8F0(uint64_t a1)
{
  result = sub_1B4BAA918();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA918()
{
  result = qword_1EDC38620;
  if (!qword_1EDC38620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38620);
  }

  return result;
}

unint64_t sub_1B4BAA970()
{
  result = qword_1EDC38618;
  if (!qword_1EDC38618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38618);
  }

  return result;
}

unint64_t sub_1B4BAAA08(uint64_t a1)
{
  result = sub_1B4BAAA30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAA30()
{
  result = qword_1EDC38820;
  if (!qword_1EDC38820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38820);
  }

  return result;
}

unint64_t sub_1B4BAAAC8(uint64_t a1)
{
  result = sub_1B4BAAAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAAF0()
{
  result = qword_1EDC38838[0];
  if (!qword_1EDC38838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38838);
  }

  return result;
}

unint64_t sub_1B4BAAB48()
{
  result = qword_1EDC38830;
  if (!qword_1EDC38830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38830);
  }

  return result;
}

unint64_t sub_1B4BAABA0()
{
  result = qword_1EB8ABA90;
  if (!qword_1EB8ABA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABA90);
  }

  return result;
}

unint64_t sub_1B4BAABF4(uint64_t a1)
{
  result = sub_1B4BAAC1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAC1C()
{
  result = qword_1EDC390D8;
  if (!qword_1EDC390D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390D8);
  }

  return result;
}

unint64_t sub_1B4BAAC74(uint64_t a1)
{
  result = sub_1B4BAAC9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAC9C()
{
  result = qword_1EDC390E0;
  if (!qword_1EDC390E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390E0);
  }

  return result;
}

unint64_t sub_1B4BAACF4()
{
  result = qword_1EDC3CC58[0];
  if (!qword_1EDC3CC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3CC58);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B4BAADAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4BAADF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B4BAAF04()
{
  if (!qword_1EDC39040)
  {
    type metadata accessor for UnitCount();
    v0 = type metadata accessor for StatisticsPropertyValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC39040);
    }
  }
}

void sub_1B4BAB0A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_1B4A30340(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B4BAB148()
{
  sub_1B4BAAF04();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B4BAB458(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74E8, &qword_1B4D1E2D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v60 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v60 - v14;
  v16 = sub_1B4D1777C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4955D64(a3, &v64);
  sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
  if (swift_dynamicCast())
  {
    *v11 = v68;
    v21 = type metadata accessor for WorkoutMetadata();
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);

    v22 = v11;
    v23 = a1;
    v24 = a2;
LABEL_3:
    result = sub_1B49CAE28(v22, v23, v24);
LABEL_6:
    v29 = *MEMORY[0x1E69E9840];
    return result;
  }

  v61 = a1;
  sub_1B4955D64(a3, &v64);
  v26 = swift_dynamicCast();
  v27 = *(v17 + 56);
  if (v26)
  {
    v27(v15, 0, 1, v16);
    (*(v17 + 32))(v20, v15, v16);
    (*(v17 + 16))(v11, v20, v16);
    v28 = type metadata accessor for WorkoutMetadata();
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(v11, 0, 1, v28);

    sub_1B49CAE28(v11, v61, a2);
    result = (*(v17 + 8))(v20, v16);
    goto LABEL_6;
  }

  v27(v15, 1, 1, v16);
  sub_1B4975024(v15, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4955D64(a3, &v64);
  if (swift_dynamicCast())
  {
    v30 = v69;
    *v11 = v68;
    v11[1] = v30;
    v31 = type metadata accessor for WorkoutMetadata();
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v11, 0, 1, v31);

    v22 = v11;
    v23 = v61;
    v24 = a2;
    goto LABEL_3;
  }

  sub_1B4955D64(a3, &v64);
  sub_1B498AFB8(0, &qword_1EDC36DB0, 0x1E696AD98);
  v32 = a2;
  if (swift_dynamicCast())
  {
    *v11 = v68;
    v33 = type metadata accessor for WorkoutMetadata();
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(v11, 0, 1, v33);

    v22 = v11;
    v23 = v61;
    v24 = a2;
    goto LABEL_3;
  }

  sub_1B4955D64(a3, &v64);
  v34 = MEMORY[0x1E6969080];
  if (swift_dynamicCast())
  {
    v35 = v68;
    v36 = v69;
    v66 = v34;
    v67 = MEMORY[0x1E6969078];
    v64 = v68;
    v65 = v69;
    v37 = __swift_project_boxed_opaque_existential_1(&v64, v34);
    v38 = *v37;
    v39 = v37[1];
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 != 2)
      {
        memset(v63, 0, 14);

        sub_1B498FC0C(v35, v36);
        v41 = v63;
        v42 = v63;
        goto LABEL_34;
      }

      v43 = *(v38 + 16);
      v44 = *(v38 + 24);

      sub_1B498FC0C(v35, v36);
      v45 = sub_1B4D1750C();
      if (v45)
      {
        v46 = sub_1B4D1752C();
        v38 = v43 - v46;
        if (__OFSUB__(v43, v46))
        {
          goto LABEL_36;
        }

        v45 += v38;
      }

      v47 = __OFSUB__(v44, v43);
      v48 = v44 - v43;
      if (!v47)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v40)
    {
      v63[0] = *v37;
      LOWORD(v63[1]) = v39;
      BYTE2(v63[1]) = BYTE2(v39);
      BYTE3(v63[1]) = BYTE3(v39);
      BYTE4(v63[1]) = BYTE4(v39);
      BYTE5(v63[1]) = BYTE5(v39);

      sub_1B498FC0C(v35, v36);
      v41 = v63;
      v42 = v63 + BYTE6(v39);
LABEL_34:
      sub_1B4BAD4F8(v41, v42, &v68);
      v55 = v61;
      v56 = v68;
      v57 = v69;
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
      v58 = v62;
      *v62 = v56;
      *(v58 + 8) = v57;
      v59 = type metadata accessor for WorkoutMetadata();
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
      sub_1B49CAE28(v58, v55, v32);
      result = sub_1B49DDD2C(v35, v36);
      goto LABEL_6;
    }

    v49 = v38;
    v50 = v38 >> 32;
    v48 = v50 - v49;
    if (v50 >= v49)
    {

      sub_1B498FC0C(v35, v36);
      v45 = sub_1B4D1750C();
      if (!v45)
      {
LABEL_26:
        v52 = sub_1B4D1751C();
        if (v52 >= v48)
        {
          v53 = v48;
        }

        else
        {
          v53 = v52;
        }

        v54 = (v53 + v45);
        if (v45)
        {
          v42 = v54;
        }

        else
        {
          v42 = 0;
        }

        v41 = v45;
        goto LABEL_34;
      }

      v51 = sub_1B4D1752C();
      if (!__OFSUB__(v49, v51))
      {
        v45 += v49 - v51;
        goto LABEL_26;
      }

LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000002BLL, 0x80000001B4D62880);
  MEMORY[0x1B8C7C620](v61, a2);
  MEMORY[0x1B8C7C620](0x2065756C617620, 0xE700000000000000);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1B4D18DBC();
  result = sub_1B4D18A9C();
  __break(1u);
  return result;
}