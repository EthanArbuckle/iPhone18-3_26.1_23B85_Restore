void sub_1AB41308C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v52;
  if (v52)
  {
    sub_1AB4615D4();
    v9 = sub_1AB461614();
    v11 = v10;

    *&v52 = v9;
    *(&v52 + 1) = v11;
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E610);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E630);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E650);
    v8(&v52);
    sub_1AB0177B8(v8);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    sub_1AB4615D4();
    v12 = sub_1AB461614();
    v14 = v13;

    *&v52 = v12;
    *(&v52 + 1) = v14;
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E610);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E630);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E650);
    v15 = v52;
    v16 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v17 = sub_1AB461324();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v52 = v19;
      *v18 = 136446722;
      v20 = sub_1AB461614();
      v22 = sub_1AB030D2C(v20, v21, &v52);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2050;
      *(v18 + 14) = a4;
      *(v18 + 22) = 2082;
      v23 = sub_1AB030D2C(v15, *(&v15 + 1), &v52);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_1AB012000, v17, v16, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v19, -1, -1);
      MEMORY[0x1AC59F020](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v24 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      v58 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v57 = MEMORY[0x1E69E6A70];
      *&v55 = a1;
      *(&v55 + 1) = a2;
      v56 = a3;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v27 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v58 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v52;
      v32 = v53;
      v30[64] = v54;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v58 = v27;
      sub_1AB0167A8(&v55);
      v33._countAndFlagsBits = 58;
      v33._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v57 = MEMORY[0x1E69E6810];
      *&v55 = a4;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v34 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v58 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v52;
      v39 = v53;
      v37[64] = v54;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v58 = v34;
      sub_1AB0167A8(&v55);
      v40._countAndFlagsBits = 0xD00000000000001BLL;
      v40._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      v41 = sub_1AB461614();
      v43 = v42;

      *&v52 = v41;
      *(&v52 + 1) = v43;
      MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E610);
      MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E630);
      MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E650);
      v57 = MEMORY[0x1E69E6158];
      v55 = v52;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v44 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1AB0168A8(0, *(v44 + 2) + 1, 1, v44);
        v58 = v44;
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1AB0168A8((v45 > 1), v46 + 1, 1, v44);
      }

      *(v44 + 2) = v46 + 1;
      v47 = &v44[40 * v46];
      v48 = v52;
      v49 = v53;
      v47[64] = v54;
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      v58 = v44;
      sub_1AB0167A8(&v55);
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      *(v25 + 32) = v58;
      *&v52 = v24;
      LOBYTE(v55) = 0;
      OSLogger.log(contentsOf:withLevel:)(v25, &v55);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    sub_1AB461614();

    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB50E610);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E630);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB50E650);
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB4138DC(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000001FLL;
    *(&v41 + 1) = 0x80000001AB50E580;
    v8(&v41);
    sub_1AB0177B8(v8);
  }

  else
  {
    if (qword_1EB435DF0 != -1)
    {
      swift_once();
    }

    if (byte_1EB43D128 == 1)
    {
      v9 = sub_1AB461084();
      sub_1AB016760(0, &qword_1ED4D21E0);
      v10 = sub_1AB461324();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1AB461614();
        v15 = sub_1AB030D2C(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1AB030D2C(0xD00000000000001FLL, 0x80000001AB50E580, &v41);
        _os_log_impl(&dword_1AB012000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC59F020](v12, -1, -1);
        MEMORY[0x1AC59F020](v11, -1, -1);
      }
    }

    else if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v16 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1AB4D4720;
      v48 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1AB0167A8(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1AB0167A8(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000001FLL;
      v45 = 0x80000001AB50E580;
      sub_1AB01522C(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1AB0169C4(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1AB0167A8(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1AB461884();
      __break(1u);
    }
  }
}

void requirementFailure(_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  v11 = sub_1AB4622E4();
  v12 = v52;
  if (v52)
  {
    *&v52 = (a1)(v11);
    *(&v52 + 1) = v13;
    v12(&v52);
    sub_1AB0177B8(v12);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    v11 = swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    v14 = a1();
    v16 = v15;
    v17 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v18 = sub_1AB461324();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v52 = v20;
      *v19 = 136446722;
      v21 = sub_1AB461614();
      v23 = sub_1AB030D2C(v21, v22, &v52);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2050;
      *(v19 + 14) = a6;
      *(v19 + 22) = 2082;
      v24 = sub_1AB030D2C(v14, v16, &v52);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_1AB012000, v18, v17, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v20, -1, -1);
      MEMORY[0x1AC59F020](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v25 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      v59 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v58 = MEMORY[0x1E69E6A70];
      v55 = a3;
      v56 = a4;
      v57 = a5;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v28 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v59 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v52;
      v33 = v53;
      v31[64] = v54;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v59 = v28;
      sub_1AB0167A8(&v55);
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v58 = MEMORY[0x1E69E6810];
      v55 = a6;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v35 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v59 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v52;
      v40 = v53;
      v38[64] = v54;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v59 = v35;
      sub_1AB0167A8(&v55);
      v41._object = 0x80000001AB50E540;
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      v42 = a1();
      v58 = MEMORY[0x1E69E6158];
      v55 = v42;
      v56 = v43;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v44 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1AB0168A8(0, *(v44 + 2) + 1, 1, v44);
        v59 = v44;
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1AB0168A8((v45 > 1), v46 + 1, 1, v44);
      }

      *(v44 + 2) = v46 + 1;
      v47 = &v44[40 * v46];
      v48 = v52;
      v49 = v53;
      v47[64] = v54;
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      v59 = v44;
      sub_1AB0167A8(&v55);
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      *(v26 + 32) = v59;
      *&v52 = v25;
      LOBYTE(v55) = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, &v55);
      goto LABEL_26;
    }

    (a1)(v11);
    sub_1AB461884();
    __break(1u);
  }
}

uint64_t withUnsatisfiedRequirementHandler(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB4144EC, 0, 0);
}

uint64_t sub_1AB4144EC()
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v0 + 16) = sub_1AB41CAF8;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 48);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1AB414678;

  return MEMORY[0x1EEE6DE98](v5, v0 + 16, &unk_1AB4FA2D0, v4, 0, 0, 0xD00000000000001CLL, 0x80000001AB50E560);
}

uint64_t sub_1AB414678()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AB3275E0;
  }

  else
  {
    v2 = sub_1AB034560;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t withUnsatisfiedRequirementHandler(_:perform:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D130);
  v7 = swift_task_localValuePush();
  a3(v7);
  swift_task_localValuePop();
}

uint64_t sub_1AB4148D8()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = JEGestaltGetBuildVersion();
  sub_1AB460544();

  if (has_internal_content)
  {
    v2 = sub_1AB415980();

    v4 = (v2 & 1) == 0;
  }

  else
  {

    v4 = 2;
  }

  byte_1EB43D128 = v4;
  return result;
}

uint64_t static RequirementFailurePolicy.active.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB435DF0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EB43D128;
  return result;
}

uint64_t sub_1AB4149CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D140);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB46C360 = result;
  return result;
}

uint64_t RequirementFailurePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

char *sub_1AB414AB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1AB414BA4(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB234EEC(v5);
  }

  result = sub_1AB414C28(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1AB414C28(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *(v2 + 8);
  result = sub_1AB461C24();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1AB4609B4();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_1AB414E40(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1AB414D30(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1AB414D30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v21 = a4;
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = (*v4 + 16 * a3);
    v8 = result - a3;
LABEL_4:
    v17 = v7;
    v18 = a3;
    v9 = (v6 + 16 * a3);
    v10 = *v9;
    v11 = v9[1];
    v16 = v8;
    while (1)
    {
      v20[0] = v10;
      v20[1] = v11;
      v12 = *(v7 - 1);
      v19[0] = *(v7 - 2);
      v19[1] = v12;

      v13 = v21(v20, v19);

      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v7;
        v11 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v11;
        *(v7 - 2) = v10;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v7 = v17 + 2;
      v8 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1AB414E40(uint64_t result, uint64_t a2, char *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v108 = result;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v7 = v8;
    v8 = *v108;
    if (*v108)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v9)
    {
      v26 = v13;
    }

    else
    {
      v14 = v12;
      v15 = *v8;
      v16 = (*v8 + 16 * v13);
      v17 = v16[1];
      v115 = *v16;
      v116 = v17;
      v18 = (v15 + 16 * v14);
      v7 = v18[1];
      v113 = *v18;
      v114 = v7;

      v109 = a4(&v115, &v113);
      if (v6)
      {
LABEL_102:
      }

      v19 = v9;
      v20 = 0;
      v100 = v19 - 1;
      v104 = v14;
      v106 = v19;
      v21 = v14 - v19 + 2;
      v22 = 16 * v14;
      v23 = v15 + v22 + 24;
      while (v21 + v20)
      {
        v24 = *(v23 + 16);
        v115 = *(v23 + 8);
        v116 = v24;
        v7 = *v23;
        v113 = *(v23 - 8);
        v114 = v7;

        v25 = a4(&v115, &v113);

        ++v20;
        v23 += 16;
        if ((v109 ^ v25))
        {
          v12 = v104;
          v100 = v104 + v20;
          v26 = v104 + v20 + 1;
          goto LABEL_12;
        }
      }

      v12 = v104;
      v26 = v106;
LABEL_12:
      v8 = a3;
      if (v109)
      {
        if (v26 < v12)
        {
          goto LABEL_125;
        }

        if (v12 <= v100)
        {
          v87 = 0;
          v88 = 16 * v26;
          v89 = v12;
          do
          {
            if (v89 != v26 + v87 - 1)
            {
              v90 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v91 = (v90 + v22);
              v92 = v90 + v88;
              v93 = *v91;
              v94 = v91[1];
              *v91 = *(v92 - 16);
              *(v92 - 16) = v93;
              *(v92 - 8) = v94;
            }

            ++v89;
            --v87;
            v88 -= 16;
            v22 += 16;
          }

          while (v89 < v26 + v87);
        }
      }
    }

    v27 = *(v8 + 1);
    if (v26 >= v27)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v26, v12))
    {
      goto LABEL_121;
    }

    if (v26 - v12 >= a6)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v28 = v26;
    if (v12 + a6 >= v27)
    {
      v29 = *(v8 + 1);
    }

    else
    {
      v29 = v12 + a6;
    }

    if (v29 < v12)
    {
      goto LABEL_124;
    }

    v30 = v28;
    if (v28 == v29)
    {
      v26 = v28;
LABEL_25:
      if (v26 < v12)
      {
        goto LABEL_120;
      }

      goto LABEL_26;
    }

    v77 = *v8;
    v78 = *v8 + 16 * v28;
    v105 = v12;
    v79 = v12 - v30;
    v111 = v29;
    do
    {
      v107 = v30;
      v80 = (v77 + 16 * v30);
      v81 = *v80;
      v82 = v80[1];
      v99 = v79;
      v101 = v78;
      v83 = v78;
      do
      {
        v115 = v81;
        v116 = v82;
        v7 = *(v83 - 1);
        v113 = *(v83 - 2);
        v114 = v7;

        v84 = a4(&v115, &v113);
        if (v6)
        {
          goto LABEL_102;
        }

        v85 = v84;

        if ((v85 & 1) == 0)
        {
          break;
        }

        if (!v77)
        {
          goto LABEL_127;
        }

        v81 = *v83;
        v82 = v83[1];
        *v83 = *(v83 - 1);
        *(v83 - 1) = v82;
        *(v83 - 2) = v81;
        v83 -= 2;
      }

      while (!__CFADD__(v79++, 1));
      v30 = v107 + 1;
      v78 = v101 + 16;
      v79 = v99 - 1;
      v26 = v111;
    }

    while (v107 + 1 != v111);
    v8 = a3;
    v12 = v105;
    if (v111 < v105)
    {
      goto LABEL_120;
    }

LABEL_26:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AB2AFBEC(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v32 = *(v11 + 2);
    v31 = *(v11 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_1AB2AFBEC((v31 > 1), v32 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v33;
    v34 = &v11[16 * v32];
    *(v34 + 4) = v12;
    *(v34 + 5) = v26;
    v7 = *v108;
    if (!*v108)
    {
      goto LABEL_130;
    }

    v110 = v26;
    if (v32)
    {
      break;
    }

LABEL_3:
    v9 = *(v8 + 1);
    v10 = v110;
    if (v110 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v11[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v11[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v11[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_119;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v33 == 3)
    {
      v36 = *(v11 + 4);
      v37 = *(v11 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_45:
      if (v39)
      {
        goto LABEL_109;
      }

      v52 = &v11[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v58 = &v11[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_116;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v62 = &v11[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_59:
    if (v57)
    {
      goto LABEL_111;
    }

    v65 = &v11[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_114;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_66:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_126;
    }

    v74 = *&v11[16 * v73 + 32];
    v75 = *&v11[16 * v35 + 40];
    sub_1AB415560((*v8 + 16 * v74), (*v8 + 16 * *&v11[16 * v35 + 32]), (*v8 + 16 * v75), v7, a4);
    if (v6)
    {
    }

    if (v75 < v74)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AB391760(v11);
    }

    if (v73 >= *(v11 + 2))
    {
      goto LABEL_106;
    }

    v76 = &v11[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v117 = v11;
    result = sub_1AB3916D4(v35);
    v11 = v117;
    v33 = *(v117 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_105:
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
  result = sub_1AB391760(v11);
  v11 = result;
LABEL_93:
  v117 = v11;
  v95 = *(v11 + 2);
  if (v95 < 2)
  {
  }

  while (*v7)
  {
    v96 = *&v11[16 * v95];
    v97 = *&v11[16 * v95 + 24];
    sub_1AB415560((*v7 + 16 * v96), (*v7 + 16 * *&v11[16 * v95 + 16]), (*v7 + 16 * v97), v8, a4);
    if (v6)
    {
    }

    if (v97 < v96)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AB391760(v11);
    }

    if (v95 - 2 >= *(v11 + 2))
    {
      goto LABEL_118;
    }

    v98 = &v11[16 * v95];
    *v98 = v96;
    *(v98 + 1) = v97;
    v117 = v11;
    result = sub_1AB3916D4(v95 - 1);
    v11 = v117;
    v95 = *(v117 + 2);
    if (v95 <= 1)
    {
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1AB415560(char *__dst, char *a2, char *a3, char *__src, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v57 = a5;
  v6 = a3;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a2;
    v14 = __src;
    v15 = __dst;
    if (__src != __dst || &__dst[16 * v9] <= __src)
    {
      memmove(__src, __dst, 16 * v9);
    }

    v16 = &v14[16 * v9];
    if (v7 < 16 || v13 >= v6)
    {
LABEL_21:
      a2 = v15;
      goto LABEL_40;
    }

    v17 = v13;
    v52 = &v14[16 * v9];
    while (1)
    {
      v18 = v6;
      v19 = *(v17 + 1);
      v55 = *v17;
      v56 = v19;
      v20 = *(v14 + 1);
      v53 = *v14;
      v54 = v20;

      v21 = v57(&v55, &v53);
      if (v5)
      {

        v43 = v52 - v14 + 15;
        if (v52 - v14 >= 0)
        {
          v43 = v52 - v14;
        }

        v44 = v43 >> 4;
        if (v15 < v14 || v15 >= &v14[v43 & 0xFFFFFFFFFFFFFFF0])
        {
          memmove(v15, v14, 16 * v44);
        }

        else if (v15 != v14)
        {
          v39 = 16 * v44;
          v40 = v15;
LABEL_46:
          v41 = v14;
LABEL_47:
          memmove(v40, v41, v39);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v17;
      v24 = v15 == v17;
      v17 += 16;
      v6 = v18;
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_19:
      v15 += 16;
      v16 = v52;
      if (v14 >= v52 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v23 = v14;
    v24 = v15 == v14;
    v14 += 16;
    v6 = v18;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v15 = *v23;
    goto LABEL_19;
  }

  if (__src != a2 || &a2[16 * v12] <= __src)
  {
    v25 = a2;
    v26 = __src;
    memmove(__src, a2, 16 * v12);
    __src = v26;
    a2 = v25;
  }

  __srca = __src;
  v16 = &__src[16 * v12];
  if (v10 < 16 || a2 <= __dst)
  {
    v14 = __src;
    goto LABEL_40;
  }

LABEL_27:
  v50 = v6;
  v27 = 0;
  v28 = v16;
  v48 = a2 - 16;
  while (1)
  {
    v29 = v28;
    v30 = &v28[v27];
    v31 = &v28[v27 - 16];
    v32 = *&v28[v27 - 8];
    v55 = *v31;
    v56 = v32;
    v33 = *(a2 - 1);
    v34 = a2;
    v53 = *(a2 - 2);
    v54 = v33;

    v35 = v57(&v55, &v53);
    if (v5)
    {
      break;
    }

    v36 = v35;

    if (v36)
    {
      v6 = &v50[v27 - 16];
      a2 = v48;
      if (&v50[v27] != v34)
      {
        *v6 = *v48;
      }

      v16 = &v29[v27];
      v14 = __srca;
      if (&v29[v27] <= __srca || v48 <= __dst)
      {
        v16 = &v29[v27];
LABEL_40:
        v37 = v16 - v14;
        v38 = v37 + 15;
        if (v37 >= 0)
        {
          v38 = v37;
        }

        if (a2 < v14 || a2 >= &v14[v38 & 0xFFFFFFFFFFFFFFF0] || a2 != v14)
        {
          v39 = 16 * (v38 >> 4);
          v40 = a2;
          goto LABEL_46;
        }

        return 1;
      }

      goto LABEL_27;
    }

    a2 = v34;
    v28 = v29;
    if (&v50[v27] != v30)
    {
      *&v50[v27 - 16] = *v31;
    }

    v27 -= 16;
    v16 = &v29[v27];
    v14 = __srca;
    if (&v29[v27] <= __srca)
    {
      goto LABEL_40;
    }
  }

  v41 = __srca;
  v45 = v29 - __srca + v27;
  v46 = v45 + 15;
  if (v45 >= 0)
  {
    v46 = v29 - __srca + v27;
  }

  v47 = v46 >> 4;
  if (v34 < __srca || v34 >= &__srca[v46 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v34, __srca, 16 * v47);
  }

  else if (v34 != __srca)
  {
    v39 = 16 * v47;
    v40 = v34;
    goto LABEL_47;
  }

  return 1;
}

uint64_t sub_1AB415980()
{

  v0 = sub_1AB460724();
  if (!v1)
  {
LABEL_13:

    return 0;
  }

  v2 = v0;
  v3 = v1;
  while (1)
  {
    v5 = v3 == 0xE100000000000000;
    v6 = v3 == 0xE100000000000000 && v2 == 65;
    if (!v6)
    {
      if (sub_1AB461DA4())
      {
        goto LABEL_4;
      }

      if (v2 == 90 && v3 == 0xE100000000000000)
      {
        break;
      }
    }

    if ((sub_1AB461DA4() & 1) == 0)
    {

      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_4:

    v2 = sub_1AB460724();
    v3 = v4;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v5 = 1;
LABEL_15:
  if (sub_1AB461DA4())
  {
    goto LABEL_19;
  }

  v8 = !v5;
  if (v2 != 69)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
LABEL_19:

    return 1;
  }

  v9 = sub_1AB461DA4();

  return v9 & 1;
}

void sub_1AB415AFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB4163D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB416C74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41754C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEEF0);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB417E58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v14 = v49;
  if (v49)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v52 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](a6, a7);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v14(&v49);
    sub_1AB0177B8(v14);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v52 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](a6, a7);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v15 = v49;
    v16 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v17 = sub_1AB461324();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v49 = v19;
      *v18 = 136446722;
      v20 = sub_1AB461614();
      v22 = sub_1AB030D2C(v20, v21, &v49);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2050;
      *(v18 + 14) = a4;
      *(v18 + 22) = 2082;
      v23 = sub_1AB030D2C(v15, *(&v15 + 1), &v49);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_1AB012000, v17, v16, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v19, -1, -1);
      MEMORY[0x1AC59F020](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v47 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      v55 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v54 = MEMORY[0x1E69E6A70];
      *&v52 = a1;
      *(&v52 + 1) = a2;
      v53 = a3;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v26 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v55 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v49;
      v31 = v50;
      v29[64] = v51;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v55 = v26;
      sub_1AB0167A8(&v52);
      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v54 = MEMORY[0x1E69E6810];
      *&v52 = a4;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v33 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v55 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v49;
      v38 = v50;
      v36[64] = v51;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v55 = v33;
      sub_1AB0167A8(&v52);
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v39._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v52 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](a6, a7);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v54 = MEMORY[0x1E69E6158];
      v52 = v49;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v40 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
        v55 = v40;
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v49;
      v45 = v50;
      v43[64] = v51;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v55 = v40;
      sub_1AB0167A8(&v52);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v24 + 32) = v55;
      *&v49 = v47;
      LOBYTE(v52) = 0;
      OSLogger.log(contentsOf:withLevel:)(v24, &v52);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](a6, a7);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41870C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v15 = v50;
  if (v50)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v53 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](a7, a8);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v15(&v50);
    sub_1AB0177B8(v15);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v53 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](a7, a8);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v16 = v50;
    v17 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v18 = sub_1AB461324();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v50 = v20;
      *v19 = 136446722;
      v21 = sub_1AB461614();
      v23 = sub_1AB030D2C(v21, v22, &v50);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2050;
      *(v19 + 14) = a4;
      *(v19 + 22) = 2082;
      v24 = sub_1AB030D2C(v16, *(&v16 + 1), &v50);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_1AB012000, v18, v17, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v20, -1, -1);
      MEMORY[0x1AC59F020](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v25 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      v56 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v55 = MEMORY[0x1E69E6A70];
      *&v53 = a1;
      *(&v53 + 1) = a2;
      v54 = a3;
      sub_1AB01522C(&v53, v49);
      v50 = 0u;
      v51 = 0u;
      sub_1AB0169C4(v49, &v50);
      v52 = 0;
      v28 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v56 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v50;
      v33 = v51;
      v31[64] = v52;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v56 = v28;
      sub_1AB0167A8(&v53);
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v55 = MEMORY[0x1E69E6810];
      *&v53 = a4;
      sub_1AB01522C(&v53, v49);
      v50 = 0u;
      v51 = 0u;
      sub_1AB0169C4(v49, &v50);
      v52 = 0;
      v35 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v56 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v50;
      v40 = v51;
      v38[64] = v52;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v56 = v35;
      sub_1AB0167A8(&v53);
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      v41._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v53 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](a7, a8);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v55 = MEMORY[0x1E69E6158];
      v53 = v50;
      sub_1AB01522C(&v53, v49);
      v50 = 0u;
      v51 = 0u;
      sub_1AB0169C4(v49, &v50);
      v52 = 0;
      v42 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
        v56 = v42;
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1AB0168A8((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v45 = &v42[40 * v44];
      v46 = v50;
      v47 = v51;
      v45[64] = v52;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      v56 = v42;
      sub_1AB0167A8(&v53);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v26 + 32) = v56;
      *&v50 = v25;
      LOBYTE(v53) = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, &v53);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](a7, a8);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB418F6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB419844(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41A0F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v12 = v51;
  if (v51)
  {
    sub_1AB016760(0, a6);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v54 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    v13 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v13);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v12(&v51);
    sub_1AB0177B8(v12);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    sub_1AB016760(0, a6);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v54 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    v14 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v14);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v15 = v51;
    v16 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v17 = sub_1AB461324();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v51 = v19;
      *v18 = 136446722;
      v20 = sub_1AB461614();
      v22 = sub_1AB030D2C(v20, v21, &v51);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2050;
      *(v18 + 14) = a4;
      *(v18 + 22) = 2082;
      v23 = sub_1AB030D2C(v15, *(&v15 + 1), &v51);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_1AB012000, v17, v16, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v19, -1, -1);
      MEMORY[0x1AC59F020](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v49 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      v57 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v56 = MEMORY[0x1E69E6A70];
      *&v54 = a1;
      *(&v54 + 1) = a2;
      v55 = a3;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v26 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v57 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v51;
      v31 = v52;
      v29[64] = v53;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v57 = v26;
      sub_1AB0167A8(&v54);
      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v56 = MEMORY[0x1E69E6810];
      *&v54 = a4;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v33 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v57 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v51;
      v38 = v52;
      v36[64] = v53;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v57 = v33;
      sub_1AB0167A8(&v54);
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v39._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      sub_1AB016760(0, a6);
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v54 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      v40 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v40);

      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v56 = MEMORY[0x1E69E6158];
      v54 = v51;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v41 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1AB0168A8(0, *(v41 + 2) + 1, 1, v41);
      }

      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1AB0168A8((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v44 = &v41[40 * v43];
      v45 = v51;
      v46 = v52;
      v44[64] = v53;
      *(v44 + 2) = v45;
      *(v44 + 3) = v46;
      v57 = v41;
      sub_1AB0167A8(&v54);
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      *(v24 + 32) = v57;
      *&v51 = v49;
      LOBYTE(v54) = 0;
      OSLogger.log(contentsOf:withLevel:)(v24, &v54);
      goto LABEL_26;
    }

    sub_1AB016760(0, a6);
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    v48 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v48);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41AA38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v13 = v52;
  if (v52)
  {
    sub_1AB016760(0, a7);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v55 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v14 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v14);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v13(&v52);
    sub_1AB0177B8(v13);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    sub_1AB016760(0, a7);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v55 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v15 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v15);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v16 = v52;
    v17 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v18 = sub_1AB461324();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v52 = v20;
      *v19 = 136446722;
      v21 = sub_1AB461614();
      v23 = sub_1AB030D2C(v21, v22, &v52);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2050;
      *(v19 + 14) = a4;
      *(v19 + 22) = 2082;
      v24 = sub_1AB030D2C(v16, *(&v16 + 1), &v52);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_1AB012000, v18, v17, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v20, -1, -1);
      MEMORY[0x1AC59F020](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v25 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      v58 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v57 = MEMORY[0x1E69E6A70];
      *&v55 = a1;
      *(&v55 + 1) = a2;
      v56 = a3;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v28 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v58 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v52;
      v33 = v53;
      v31[64] = v54;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v58 = v28;
      sub_1AB0167A8(&v55);
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v57 = MEMORY[0x1E69E6810];
      *&v55 = a4;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v35 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v58 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v52;
      v40 = v53;
      v38[64] = v54;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v58 = v35;
      sub_1AB0167A8(&v55);
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      v41._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      sub_1AB016760(0, a7);
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v55 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      v42 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v42);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v57 = MEMORY[0x1E69E6158];
      v55 = v52;
      sub_1AB01522C(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1AB0169C4(v51, &v52);
      v54 = 0;
      v43 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1AB0168A8(0, *(v43 + 2) + 1, 1, v43);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v46 = &v43[40 * v45];
      v47 = v52;
      v48 = v53;
      v46[64] = v54;
      *(v46 + 2) = v47;
      *(v46 + 3) = v48;
      v58 = v43;
      sub_1AB0167A8(&v55);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v26 + 32) = v58;
      *&v52 = v25;
      LOBYTE(v55) = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, &v55);
      goto LABEL_26;
    }

    sub_1AB016760(0, a7);
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v50 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v50);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41B324(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41BC00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41C4F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  v10 = sub_1AB4622E4();
  v11 = v51;
  if (v51)
  {
    *&v51 = (a5)(v10);
    *(&v51 + 1) = v12;
    v11(&v51);
    sub_1AB0177B8(v11);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    v10 = swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    v13 = a5();
    v15 = v14;
    v16 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v17 = sub_1AB461324();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v51 = v19;
      *v18 = 136446722;
      v20 = sub_1AB461614();
      v22 = sub_1AB030D2C(v20, v21, &v51);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2050;
      *(v18 + 14) = a4;
      *(v18 + 22) = 2082;
      v23 = sub_1AB030D2C(v13, v15, &v51);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_1AB012000, v17, v16, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v19, -1, -1);
      MEMORY[0x1AC59F020](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v24 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      v58 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v57 = MEMORY[0x1E69E6A70];
      v54 = a1;
      v55 = a2;
      v56 = a3;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v27 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
        v58 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v51;
      v32 = v52;
      v30[64] = v53;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v58 = v27;
      sub_1AB0167A8(&v54);
      v33._countAndFlagsBits = 58;
      v33._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v57 = MEMORY[0x1E69E6810];
      v54 = a4;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v34 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AB0168A8(0, *(v34 + 2) + 1, 1, v34);
        v58 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1AB0168A8((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v51;
      v39 = v52;
      v37[64] = v53;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v58 = v34;
      sub_1AB0167A8(&v54);
      v40._object = 0x80000001AB50E540;
      v40._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      v41 = a5();
      v57 = MEMORY[0x1E69E6158];
      v54 = v41;
      v55 = v42;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v43 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1AB0168A8(0, *(v43 + 2) + 1, 1, v43);
        v58 = v43;
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1AB0168A8((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v46 = &v43[40 * v45];
      v47 = v51;
      v48 = v52;
      v46[64] = v53;
      *(v46 + 2) = v47;
      *(v46 + 3) = v48;
      v58 = v43;
      sub_1AB0167A8(&v54);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v25 + 32) = v58;
      *&v51 = v24;
      LOBYTE(v54) = 0;
      OSLogger.log(contentsOf:withLevel:)(v25, &v54);
      goto LABEL_26;
    }

    (a5)(v10);
    sub_1AB461884();
    __break(1u);
  }
}

uint64_t sub_1AB41CB28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB29A65C(a1, v4);
}

unint64_t sub_1AB41CBE4()
{
  result = qword_1EB43D138;
  if (!qword_1EB43D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D138);
  }

  return result;
}

void sub_1AB41CC88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v49;
  if (v49)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v52 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436848);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    v11 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v11);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v49);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v52 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436848);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    v12 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v12);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v13 = v49;
    v14 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v15 = sub_1AB461324();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v49 = v17;
      *v16 = 136446722;
      v18 = sub_1AB461614();
      v20 = sub_1AB030D2C(v18, v19, &v49);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1AB030D2C(v13, *(&v13 + 1), &v49);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1AB012000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v17, -1, -1);
      MEMORY[0x1AC59F020](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      v55 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v54 = MEMORY[0x1E69E6A70];
      *&v52 = a1;
      *(&v52 + 1) = a2;
      v53 = a3;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v25 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v55 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v49;
      v30 = v50;
      v28[64] = v51;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v55 = v25;
      sub_1AB0167A8(&v52);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v54 = MEMORY[0x1E69E6810];
      *&v52 = a4;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v32 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
        v55 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v49;
      v37 = v50;
      v35[64] = v51;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v55 = v32;
      sub_1AB0167A8(&v52);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v52 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436848);
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      v39 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v39);

      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v54 = MEMORY[0x1E69E6158];
      v52 = v49;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v40 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v49;
      v45 = v50;
      v43[64] = v51;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v55 = v40;
      sub_1AB0167A8(&v52);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v23 + 32) = v55;
      *&v49 = v22;
      LOBYTE(v52) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v52);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436848);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    v47 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v47);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41D580(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v49;
  if (v49)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v52 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v11 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v11);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v49);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v52 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v12 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v12);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v13 = v49;
    v14 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v15 = sub_1AB461324();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v49 = v17;
      *v16 = 136446722;
      v18 = sub_1AB461614();
      v20 = sub_1AB030D2C(v18, v19, &v49);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1AB030D2C(v13, *(&v13 + 1), &v49);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1AB012000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v17, -1, -1);
      MEMORY[0x1AC59F020](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      v55 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v54 = MEMORY[0x1E69E6A70];
      *&v52 = a1;
      *(&v52 + 1) = a2;
      v53 = a3;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v25 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v55 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v49;
      v30 = v50;
      v28[64] = v51;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v55 = v25;
      sub_1AB0167A8(&v52);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v54 = MEMORY[0x1E69E6810];
      *&v52 = a4;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v32 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
        v55 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v49;
      v37 = v50;
      v35[64] = v51;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v55 = v32;
      sub_1AB0167A8(&v52);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v52 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      v39 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v39);

      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v54 = MEMORY[0x1E69E6158];
      v52 = v49;
      sub_1AB01522C(&v52, v48);
      v49 = 0u;
      v50 = 0u;
      sub_1AB0169C4(v48, &v49);
      v51 = 0;
      v40 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v49;
      v45 = v50;
      v43[64] = v51;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v55 = v40;
      sub_1AB0167A8(&v52);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v23 + 32) = v55;
      *&v49 = v22;
      LOBYTE(v52) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v52);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v47 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v47);

    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41DE60(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41E738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41EFD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v16 = v51;
  if (v51)
  {
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    v54 = v51;
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50ED10);
    *&v52 = a7;
    *(&v52 + 1) = a8;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
    v16(&v51);
    sub_1AB0177B8(v16);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    v54 = v51;
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50ED10);
    *&v51 = a5;
    *(&v51 + 1) = a6;
    *&v52 = a7;
    *(&v52 + 1) = a8;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
    v17 = v54;
    v18 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v19 = sub_1AB461324();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v51 = v21;
      *v20 = 136446722;
      v22 = sub_1AB461614();
      v24 = sub_1AB030D2C(v22, v23, &v51);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2050;
      *(v20 + 14) = a4;
      *(v20 + 22) = 2082;
      v25 = sub_1AB030D2C(v17, *(&v17 + 1), &v51);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_1AB012000, v19, v18, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v21, -1, -1);
      MEMORY[0x1AC59F020](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v49 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      v57 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v56 = MEMORY[0x1E69E6A70];
      *&v54 = a1;
      *(&v54 + 1) = a2;
      v55 = a3;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v28 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
        v57 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v51;
      v33 = v52;
      v31[64] = v53;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v57 = v28;
      sub_1AB0167A8(&v54);
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v56 = MEMORY[0x1E69E6810];
      *&v54 = a4;
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v35 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
        v57 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v51;
      v40 = v52;
      v38[64] = v53;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v57 = v35;
      sub_1AB0167A8(&v54);
      v41._object = 0x80000001AB50E540;
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      v54 = v51;
      MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50ED10);
      *&v51 = a5;
      *(&v51 + 1) = a6;
      *&v52 = a7;
      *(&v52 + 1) = a8;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
      v56 = MEMORY[0x1E69E6158];
      sub_1AB01522C(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1AB0169C4(v50, &v51);
      v53 = 0;
      v42 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
        v57 = v42;
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1AB0168A8((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v45 = &v42[40 * v44];
      v46 = v51;
      v47 = v52;
      v45[64] = v53;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      v57 = v42;
      sub_1AB0167A8(&v54);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v26 + 32) = v57;
      *&v51 = v49;
      LOBYTE(v54) = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, &v54);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50ED10);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB41F808(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v12 = v47;
  if (v47)
  {
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001FLL, 0x80000001AB50E5A0);
    MEMORY[0x1AC59BA20](a5, a6);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50E5C0);
    v12(&v47);
    sub_1AB0177B8(v12);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001FLL, 0x80000001AB50E5A0);
    MEMORY[0x1AC59BA20](a5, a6);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50E5C0);
    v13 = v47;
    v14 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v15 = sub_1AB461324();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v47 = v17;
      *v16 = 136446722;
      v18 = sub_1AB461614();
      v20 = sub_1AB030D2C(v18, v19, &v47);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1AB030D2C(v13, *(&v13 + 1), &v47);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1AB012000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v17, -1, -1);
      MEMORY[0x1AC59F020](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      v53 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v52 = MEMORY[0x1E69E6A70];
      *&v50 = a1;
      *(&v50 + 1) = a2;
      v51 = a3;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v25 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v53 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v47;
      v30 = v48;
      v28[64] = v49;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v53 = v25;
      sub_1AB0167A8(&v50);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v52 = MEMORY[0x1E69E6810];
      *&v50 = a4;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v32 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
        v53 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v47;
      v37 = v48;
      v35[64] = v49;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v53 = v32;
      sub_1AB0167A8(&v50);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD00000000000001FLL, 0x80000001AB50E5A0);
      MEMORY[0x1AC59BA20](a5, a6);
      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50E5C0);
      v52 = MEMORY[0x1E69E6158];
      v50 = v47;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v39 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1AB0168A8(0, *(v39 + 2) + 1, 1, v39);
        v53 = v39;
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[40 * v41];
      v43 = v47;
      v44 = v48;
      v42[64] = v49;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      v53 = v39;
      sub_1AB0167A8(&v50);
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      *(v23 + 32) = v53;
      *&v47 = v22;
      LOBYTE(v50) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v50);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001FLL, 0x80000001AB50E5A0);
    MEMORY[0x1AC59BA20](a5, a6);
    MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB50E5C0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB42000C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB4208E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB4211C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB421AA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB422354(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB422C2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB4234CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB423DA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB424644(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB424F1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB4257BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    *&v48 = a5;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      *&v48 = a5;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB5069B0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB426094(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v10(&v45);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    v11 = v45;
    v12 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v13 = sub_1AB461324();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1AB461614();
      v18 = sub_1AB030D2C(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1AB030D2C(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1AB012000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v15, -1, -1);
      MEMORY[0x1AC59F020](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v51 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1AB0167A8(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1AB0167A8(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
      MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1AB01522C(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1AB0169C4(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1AB0167A8(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB506970);
    swift_unknownObjectRelease();
    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB426934(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v57;
  if (v57)
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50E950);
    *&v60 = sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v11 = sub_1AB460484();
    v13 = v12;

    MEMORY[0x1AC59BA20](v11, v13);

    MEMORY[0x1AC59BA20](0xD000000000000028, 0x80000001AB50E970);
    v10(&v57);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50E950);
    *&v60 = sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v14 = sub_1AB460484();
    v16 = v15;

    MEMORY[0x1AC59BA20](v14, v16);

    MEMORY[0x1AC59BA20](0xD000000000000028, 0x80000001AB50E970);
    v17 = v57;
    v18 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v19 = sub_1AB461324();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v57 = v21;
      *v20 = 136446722;
      v22 = sub_1AB461614();
      v24 = sub_1AB030D2C(v22, v23, &v57);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2050;
      *(v20 + 14) = a4;
      *(v20 + 22) = 2082;
      v25 = sub_1AB030D2C(v17, *(&v17 + 1), &v57);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_1AB012000, v19, v18, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v21, -1, -1);
      MEMORY[0x1AC59F020](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v26 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AB4D4720;
      v63 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v62 = MEMORY[0x1E69E6A70];
      *&v60 = a1;
      *(&v60 + 1) = a2;
      v61 = a3;
      sub_1AB01522C(&v60, v56);
      v57 = 0u;
      v58 = 0u;
      sub_1AB0169C4(v56, &v57);
      v59 = 0;
      v29 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v63 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v57;
      v34 = v58;
      v32[64] = v59;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v63 = v29;
      sub_1AB0167A8(&v60);
      v35._countAndFlagsBits = 58;
      v35._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      v62 = MEMORY[0x1E69E6810];
      *&v60 = a4;
      sub_1AB01522C(&v60, v56);
      v57 = 0u;
      v58 = 0u;
      sub_1AB0169C4(v56, &v57);
      v59 = 0;
      v36 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v63 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v57;
      v41 = v58;
      v39[64] = v59;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v63 = v36;
      sub_1AB0167A8(&v60);
      v42._object = 0x80000001AB50E540;
      v42._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50E950);
      *&v60 = sub_1AB405430(a5);

      sub_1AB414BA4(sub_1AB361354, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
      sub_1AB04E498();
      v43 = sub_1AB460484();
      v45 = v44;

      MEMORY[0x1AC59BA20](v43, v45);

      MEMORY[0x1AC59BA20](0xD000000000000028, 0x80000001AB50E970);
      v62 = MEMORY[0x1E69E6158];
      v60 = v57;
      sub_1AB01522C(&v60, v56);
      v57 = 0u;
      v58 = 0u;
      sub_1AB0169C4(v56, &v57);
      v59 = 0;
      v46 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1AB0168A8(0, *(v46 + 2) + 1, 1, v46);
      }

      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_1AB0168A8((v47 > 1), v48 + 1, 1, v46);
      }

      *(v46 + 2) = v48 + 1;
      v49 = &v46[40 * v48];
      v50 = v57;
      v51 = v58;
      v49[64] = v59;
      *(v49 + 2) = v50;
      *(v49 + 3) = v51;
      v63 = v46;
      sub_1AB0167A8(&v60);
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      *(v27 + 32) = v63;
      *&v57 = v26;
      LOBYTE(v60) = 0;
      OSLogger.log(contentsOf:withLevel:)(v27, &v60);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50E950);
    sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v53 = sub_1AB460484();
    v55 = v54;

    MEMORY[0x1AC59BA20](v53, v55);

    MEMORY[0x1AC59BA20](0xD000000000000028, 0x80000001AB50E970);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB427338(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v57;
  if (v57)
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
    *&v60 = sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v11 = sub_1AB460484();
    v13 = v12;

    MEMORY[0x1AC59BA20](v11, v13);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);
    v10(&v57);
    sub_1AB0177B8(v10);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
    *&v60 = sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v14 = sub_1AB460484();
    v16 = v15;

    MEMORY[0x1AC59BA20](v14, v16);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);
    v17 = v57;
    v18 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v19 = sub_1AB461324();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v57 = v21;
      *v20 = 136446722;
      v22 = sub_1AB461614();
      v24 = sub_1AB030D2C(v22, v23, &v57);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2050;
      *(v20 + 14) = a4;
      *(v20 + 22) = 2082;
      v25 = sub_1AB030D2C(v17, *(&v17 + 1), &v57);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_1AB012000, v19, v18, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v21, -1, -1);
      MEMORY[0x1AC59F020](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v26 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AB4D4720;
      v63 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v62 = MEMORY[0x1E69E6A70];
      *&v60 = a1;
      *(&v60 + 1) = a2;
      v61 = a3;
      sub_1AB01522C(&v60, v56);
      v57 = 0u;
      v58 = 0u;
      sub_1AB0169C4(v56, &v57);
      v59 = 0;
      v29 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
        v63 = v29;
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      v33 = v57;
      v34 = v58;
      v32[64] = v59;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      v63 = v29;
      sub_1AB0167A8(&v60);
      v35._countAndFlagsBits = 58;
      v35._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      v62 = MEMORY[0x1E69E6810];
      *&v60 = a4;
      sub_1AB01522C(&v60, v56);
      v57 = 0u;
      v58 = 0u;
      sub_1AB0169C4(v56, &v57);
      v59 = 0;
      v36 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
        v63 = v36;
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[40 * v38];
      v40 = v57;
      v41 = v58;
      v39[64] = v59;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      v63 = v36;
      sub_1AB0167A8(&v60);
      v42._countAndFlagsBits = 0xD00000000000001BLL;
      v42._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
      *&v60 = sub_1AB405430(a5);

      sub_1AB414BA4(sub_1AB361354, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
      sub_1AB04E498();
      v43 = sub_1AB460484();
      v45 = v44;

      MEMORY[0x1AC59BA20](v43, v45);

      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);
      v62 = MEMORY[0x1E69E6158];
      v60 = v57;
      sub_1AB01522C(&v60, v56);
      v57 = 0u;
      v58 = 0u;
      sub_1AB0169C4(v56, &v57);
      v59 = 0;
      v46 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1AB0168A8(0, *(v46 + 2) + 1, 1, v46);
      }

      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_1AB0168A8((v47 > 1), v48 + 1, 1, v46);
      }

      *(v46 + 2) = v48 + 1;
      v49 = &v46[40 * v48];
      v50 = v57;
      v51 = v58;
      v49[64] = v59;
      *(v49 + 2) = v50;
      *(v49 + 3) = v51;
      v63 = v46;
      sub_1AB0167A8(&v60);
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      *(v27 + 32) = v63;
      *&v57 = v26;
      LOBYTE(v60) = 0;
      OSLogger.log(contentsOf:withLevel:)(v27, &v60);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
    sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    v53 = sub_1AB460484();
    v55 = v54;

    MEMORY[0x1AC59BA20](v53, v55);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB427D20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v12 = v47;
  if (v47)
  {
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
    *&v50 = a5;
    *(&v50 + 1) = a6;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
    v12(&v47);
    sub_1AB0177B8(v12);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
    *&v50 = a5;
    *(&v50 + 1) = a6;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
    v13 = v47;
    v14 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0);
    v15 = sub_1AB461324();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v47 = v17;
      *v16 = 136446722;
      v18 = sub_1AB461614();
      v20 = sub_1AB030D2C(v18, v19, &v47);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1AB030D2C(v13, *(&v13 + 1), &v47);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1AB012000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v17, -1, -1);
      MEMORY[0x1AC59F020](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      v53 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v52 = MEMORY[0x1E69E6A70];
      *&v50 = a1;
      *(&v50 + 1) = a2;
      v51 = a3;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v25 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v53 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v47;
      v30 = v48;
      v28[64] = v49;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v53 = v25;
      sub_1AB0167A8(&v50);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v52 = MEMORY[0x1E69E6810];
      *&v50 = a4;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v32 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
        v53 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AB0168A8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v47;
      v37 = v48;
      v35[64] = v49;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v53 = v32;
      sub_1AB0167A8(&v50);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
      *&v50 = a5;
      *(&v50 + 1) = a6;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
      v52 = MEMORY[0x1E69E6158];
      v50 = v47;
      sub_1AB01522C(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1AB0169C4(v46, &v47);
      v49 = 0;
      v39 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1AB0168A8(0, *(v39 + 2) + 1, 1, v39);
        v53 = v39;
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1AB0168A8((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[40 * v41];
      v43 = v47;
      v44 = v48;
      v42[64] = v49;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      v53 = v39;
      sub_1AB0167A8(&v50);
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      *(v23 + 32) = v53;
      *&v47 = v22;
      LOBYTE(v50) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v50);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);

    sub_1AB461884();
    __break(1u);
  }
}

uint64_t sub_1AB428540(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1AB4602F4();

  v1(v2);
}

uint64_t sub_1AB4285C4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1AB45F764();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AB3B28D4(a1);
  if (!result)
  {
    return 0;
  }

  v49 = *(result + 16);
  if (!v49)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v12;
  }

  v10 = 0;
  v46 = (v44 + 32);
  v47 = (v44 + 48);
  v41 = " to the default." & 0x2F00000000000000;
  v39 = 0x80000001AB50EFD0;
  v11 = result + 40;
  v12 = MEMORY[0x1E69E7CC0];
  v45 = xmmword_1AB4D4720;
  v40 = a2;
  v48 = result;
  v43 = v6;
  v42 = v7;
  while (v10 < *(result + 16))
  {

    sub_1AB45F714();
    if ((*v47)(v6, 1, v7) == 1)
    {
      sub_1AB014AC0(v6, &unk_1EB4395B0);
      if (qword_1EB435688 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v13 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v14 = swift_allocObject();
      *(v14 + 16) = v45;
      v15 = sub_1AB0168A8(0, 66, 0, MEMORY[0x1E69E7CC0]);
      if (v41 != 0x2000000000000000)
      {
        v53 = MEMORY[0x1E69E6158];
        v52[0] = 0xD000000000000041;
        v52[1] = v39;
        v54 = 0u;
        v55 = 0u;
        sub_1AB0169C4(v52, &v54);
        v56 = 0;
        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
        }

        *(v15 + 2) = v17 + 1;
        v18 = &v15[40 * v17];
        v19 = v54;
        v20 = v55;
        v18[64] = v56;
        *(v18 + 2) = v19;
        *(v18 + 3) = v20;
      }

      type metadata accessor for AMSBagKey(0);
      v53 = v21;
      v52[0] = a2;
      sub_1AB01522C(v52, v51);
      v54 = 0u;
      v55 = 0u;
      v22 = a2;
      sub_1AB0169C4(v51, &v54);
      v56 = 0;
      v24 = *(v15 + 2);
      v23 = *(v15 + 3);
      if (v24 >= v23 >> 1)
      {
        v15 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v15);
      }

      *(v15 + 2) = v24 + 1;
      v25 = &v15[40 * v24];
      v26 = v54;
      v27 = v55;
      v25[64] = v56;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      sub_1AB014AC0(v52, &unk_1EB437E60);
      *(v14 + 32) = v15;
      v28 = sub_1AB461074();
      if (os_log_type_enabled(v13, v28))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v29 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v29 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v31 = swift_allocObject();
        *(v31 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v54 = v14;
        *(&v54 + 1) = sub_1AB01A8D8;
        *&v55 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v32 = sub_1AB460484();
        v34 = v33;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v35 = swift_allocObject();
        *(v35 + 16) = v45;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_1AB016854();
        *(v35 + 32) = v32;
        *(v35 + 40) = v34;
        sub_1AB45FF14();

        a2 = v40;
      }

      else
      {
      }

      v6 = v43;

      v7 = v42;
    }

    else
    {

      v36 = *v46;
      (*v46)(v50, v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB2B1828(0, *(v12 + 2) + 1, 1, v12);
      }

      v38 = *(v12 + 2);
      v37 = *(v12 + 3);
      if (v38 >= v37 >> 1)
      {
        v12 = sub_1AB2B1828(v37 > 1, v38 + 1, 1, v12);
      }

      *(v12 + 2) = v38 + 1;
      v36(&v12[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38], v50, v7);
    }

    result = v48;
    ++v10;
    v11 += 16;
    if (v49 == v10)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB428C48(uint64_t a1, void *a2)
{
  v38[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    if (qword_1EB435688 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AB4D4720;
    v31 = sub_1AB0168A8(0, 86, 0, MEMORY[0x1E69E7CC0]);
    v21._object = 0x80000001AB50F020;
    v21._countAndFlagsBits = 0xD000000000000055;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    type metadata accessor for AMSBagKey(0);
    v38[3] = v22;
    v38[0] = a2;
    sub_1AB01522C(v38, v37);
    aBlock = 0u;
    v34 = 0u;
    v23 = a2;
    sub_1AB0169C4(v37, &aBlock);
    LOBYTE(v35) = 0;
    v24 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[40 * v26];
    v28 = aBlock;
    v29 = v34;
    v27[64] = v35;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    sub_1AB014AC0(v38, &unk_1EB437E60);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v20 + 32) = v24;
    *&aBlock = v32;
    LOBYTE(v38[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v20, v38);

    return 0;
  }

  v4 = v3;
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_unknownObjectRetain();
  v38[0] = [ObjCClassFromObject uninitializedToken];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v7;
  sub_1AB0550D0(inited);
  swift_setDeallocating();
  sub_1AB0589A8(inited + 32);
  v8 = sub_1AB460E34();

  v35 = nullsub_1;
  v36 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v34 = sub_1AB428540;
  *(&v34 + 1) = &block_descriptor_48;
  v9 = _Block_copy(&aBlock);
  v10 = [v4 cachedValuesForKeys:v8 observationToken:v38 updateHandler:v9];
  _Block_release(v9);

  v11 = sub_1AB4602F4();
  [v4 removeObserverWithToken_];
  v12 = sub_1AB460544();
  if (*(v11 + 16))
  {
    v14 = sub_1AB014DB4(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_1AB0165C4(*(v11 + 56) + 32 * v14, &aBlock);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
      if (swift_dynamicCast())
      {
        v17 = sub_1AB24FAF4(v37[0]);

        v18 = sub_1AB4285C4(v17, a2);

        swift_unknownObjectRelease();
        return v18;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_15:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t JSONDictionary.compactMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v11);
  return (*(v12 + 48))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t JSONDictionary.bridgedPrimitiveValues<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v7);
  return (*(v8 + 32))(a1, a2, a3, v7, v8);
}

uint64_t JSONDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t JSONDictionary.isEmpty.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t JSONDictionary.count.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t JSONDictionary.map<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v11);
  return (*(v12 + 40))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t JSONDictionary.flatMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v11);
  return (*(v12 + 48))(a1, a2, a3, a4, a5, v11, v12);
}

double sub_1AB42948C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *&v16 = a5;
  *(&v16 + 1) = MEMORY[0x1E69E7CC0];

  sub_1AB06F948(v12, sub_1AB06E6CC, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  sub_1AB01522C(a3, v15);
  AutomationAttribute.init(key:value:)(25705, 0xE200000000000000, v15, (inited + 32));
  sub_1AB01522C(a4, v15);
  AutomationAttribute.init(key:value:)(0x6449746E65726170, 0xE800000000000000, v15, (inited + 64));
  *v15 = v16;
  sub_1AB05ED60(inited);
  result = v15[0];
  *a6 = *v15;
  return result;
}

uint64_t sub_1AB4295F0(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = sub_1AB45F834();
  v7 = SecCertificateCreateWithData(v5, v6);

  if (!v7)
  {
    sub_1AB429A08();
    v8 = swift_allocError();
    *v9 = 0;
    swift_willThrow();
LABEL_4:
    error = 0;
    v30 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000026, 0x80000001AB50F080);
    swift_getErrorValue();
    sub_1AB461D64();
    sub_1AB31D6E0(error, v30);

    return 0;
  }

  v11 = sub_1AB429AA0(v7);
  v12 = SecTrustCopyKey(v11);
  if (!v12)
  {
    sub_1AB31D6E0(0xD00000000000002ALL, 0x80000001AB50F0B0);
    sub_1AB429A08();
    v8 = swift_allocError();
    *v17 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  v13 = v12;
  if (qword_1EB4345B8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB435008;
  if (!SecKeyIsAlgorithmSupported(v13, kSecKeyOperationTypeVerify, qword_1EB435008))
  {
    sub_1AB429A08();
    v8 = swift_allocError();
    *v18 = 1;
    swift_willThrow();

    goto LABEL_4;
  }

  algorithm = v14;
  v15 = sub_1AB429BE0(a2, a3);
  v19 = v15;
  v20 = v16;
  sub_1AB017200(v15, v16);
  sub_1AB017200(v19, v20);
  sub_1AB4615D4();

  v30 = 0x80000001AB50F0E0;
  v21 = sub_1AB45F844();
  MEMORY[0x1AC59BA20](v21);

  sub_1AB31D8B0(0xD00000000000001FLL, 0x80000001AB50F0E0);

  error = 0;
  v22 = sub_1AB45F834();
  v23 = sub_1AB45F834();
  v24 = SecKeyVerifySignature(v13, algorithm, v22, v23, &error);
  sub_1AB017254(v19, v20);

  sub_1AB017254(v19, v20);
  if (!v24)
  {
    v25 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_1AB17A470();
      v8 = swift_allocError();
      *v26 = v25;
    }

    else
    {
      sub_1AB429A08();
      v8 = swift_allocError();
      *v27 = 2;
    }

    swift_willThrow();

    goto LABEL_4;
  }

  return 1;
}