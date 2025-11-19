uint64_t sub_1B4A290F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A29160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A291C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A29268(char a1)
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](a1 & 1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A292CC()
{
  sub_1B4D18E8C();
  sub_1B4A29240(v2, *v0);
  return sub_1B4D18EDC();
}

uint64_t SnapshotQueryPlan.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v128 = a3;
  v6 = a1;
  v131 = a4;
  v7 = *(a2 - 8);
  v126 = v4;
  v127 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v113 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for FitnessPlusPropertiesQuery();
  v10 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v121 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = (&v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v109 - v16;
  v111 = type metadata accessor for WorkoutPropertiesQuery();
  v17 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v117 = (&v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v109 - v24;
  v110 = type metadata accessor for RingsPropertiesQuery();
  v25 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v116 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v114 = (&v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v115 = &v109 - v31;
  v32 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v36 = (&v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v109 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v109 - v42;
  v44 = sub_1B4D1880C();
  v123 = *(v44 - 8);
  v124 = v44;
  v45 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v122 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v125 = &v109 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v109 - v50;
  v52 = *v6;
  v53 = *(*v6 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  v139 = v43;
  v130 = a2;
  if (!v53)
  {
LABEL_10:
    *v131 = v54;
    Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
    sub_1B4A2A9C4(v6 + *(Plan + 20), v43);
    v69 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
    if ((*(*(v69 - 8) + 48))(v43, 1, v69) == 1)
    {
      _s7FailureOMa_2();
      swift_getWitnessTable();
      swift_allocError();
      *v70 = 0;
      swift_willThrow();
      v71 = v6;
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v73 = v127;
      v74 = v6;
      if (EnumCaseMultiPayload == 1)
      {
        v75 = v115;
        sub_1B4A2AC10(v139, v115, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v76 = v114;
        sub_1B4A2AA4C(v75, v114, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v77 = v126;
        RingsPropertiesQuery.init(_:)(v76, v116);
        v78 = v130;
        if (v77)
        {
          v79 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery;
LABEL_20:
          sub_1B4A2ACC0(v75, v79);
          v71 = v6;
          goto LABEL_31;
        }

        v136 = v51;
        sub_1B4A2ACC0(v75, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v87 = v125;
        v88 = &v140;
      }

      else
      {
        v75 = v120;
        sub_1B4A2AC10(v139, v120, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v85 = v119;
        sub_1B4A2AA4C(v75, v119, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v86 = v126;
        FitnessPlusPropertiesQuery.init(_:)(v85, v121);
        v78 = v130;
        if (v86)
        {
          v79 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery;
          goto LABEL_20;
        }

        v136 = v51;
        sub_1B4A2ACC0(v75, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v87 = v125;
        v88 = &v141;
      }

      v94 = *(v88 - 32);
      v95 = swift_dynamicCast();
      v91 = v73;
      v90 = *(v73 + 56);
      v129 = v74;
      if (v95)
      {
        v92 = v87;
        v93 = 0;
      }

      else
      {
        v92 = v87;
        v93 = 1;
      }
    }

    else
    {
      v80 = v118;
      sub_1B4A2AC10(v139, v118, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v81 = v117;
      sub_1B4A2AA4C(v80, v117, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v82 = v126;
      WorkoutPropertiesQuery.init(_:)(v81, v19);
      v83 = v127;
      v84 = v6;
      if (v82)
      {
        sub_1B4A2ACC0(v80, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
        sub_1B4A2ACC0(v6, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
      }

      v136 = v51;
      sub_1B4A2ACC0(v80, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v87 = v125;
      v78 = v130;
      v89 = swift_dynamicCast();
      v90 = *(v83 + 56);
      v91 = v83;
      v129 = v84;
      if (v89)
      {
        v92 = v87;
        v93 = 0;
      }

      else
      {
        v92 = v87;
        v93 = 1;
      }
    }

    v90(v92, v93, 1, v78);
    v96 = v87;
    v97 = v78;
    v98 = v131;
    v99 = v123;
    v100 = v124;
    v101 = v136;
    (*(v123 + 32))(v136, v96, v124);
    v102 = v122;
    (*(v99 + 16))(v122, v101, v100);
    v103 = (*(v91 + 48))(v102, 1, v97);
    v104 = *(v99 + 8);
    if (v103 != 1)
    {
      v104(v101, v100);
      sub_1B4A2ACC0(v129, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
      v106 = *(v91 + 32);
      v107 = v113;
      v106(v113, v102, v97);
      v108 = type metadata accessor for SnapshotQueryPlan();
      return (v106)(v98 + *(v108 + 36), v107, v97);
    }

    v104(v102, v100);
    _s7FailureOMa_2();
    swift_getWitnessTable();
    swift_allocError();
    *v105 = 1;
    swift_willThrow();
    v104(v101, v100);
    v71 = v129;
LABEL_31:
    sub_1B4A2ACC0(v71, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
  }

  v129 = v6;
  v140 = MEMORY[0x1E69E7CC0];
  v132 = v53;
  v138 = v52;
  result = sub_1B4BCEDFC(0, v53, 0);
  v56 = 0;
  v54 = v140;
  v57 = v138;
  v58 = v138 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v136 = v51;
  v137 = v58;
  v134 = v39;
  v135 = v19;
  v133 = v36;
  while (v56 < *(v57 + 16))
  {
    sub_1B4A2AA4C(v137 + *(v33 + 72) * v56, v39, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    sub_1B4A2AA4C(v39, v36, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v59 = v36[2];
    v60 = v36[3];
    v61 = sub_1B4D18B1C();
    if (v61 > 2)
    {
      sub_1B4A2A970();
      swift_allocError();
      swift_willThrow();
      sub_1B4A2ACC0(v36, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A2ACC0(v39, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A2ACC0(v129, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
    }

    v62 = v61;
    sub_1B4A2ACC0(v39, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v64 = *v36;
    v63 = v36[1];
    result = sub_1B4A2ACC0(v36, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v140 = v54;
    v66 = *(v54 + 16);
    v65 = *(v54 + 24);
    if (v66 >= v65 >> 1)
    {
      result = sub_1B4BCEDFC((v65 > 1), v66 + 1, 1);
      v54 = v140;
    }

    ++v56;
    *(v54 + 16) = v66 + 1;
    v67 = v54 + 24 * v66;
    *(v67 + 32) = v64;
    *(v67 + 40) = v63;
    *(v67 + 48) = v62;
    v36 = v133;
    v19 = v135;
    v51 = v136;
    v57 = v138;
    v43 = v139;
    v39 = v134;
    if (v132 == v56)
    {
      v6 = v129;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SnapshotQueryPlan.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  v3 = *(a1 + 16);
  sub_1B4A2AC78(qword_1EDC3CA58, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A2A040(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v72 = type metadata accessor for FitnessPlusPropertiesQuery();
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v68 - v11;
  v80 = type metadata accessor for WorkoutPropertiesQuery();
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v69 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v68 - v22;
  v23 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for RingsPropertiesQuery();
  v28 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v78 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v82 = &v68 - v31;
  v86 = *(a3 - 8);
  v32 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v84 = a2;
  v85 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a2;
  v36 = *(*a2 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v75 = a4;
    v76 = a1;
    v77 = a3;
    v89 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4DC(0, v36, 0);
    v37 = v89;
    v38 = sub_1B4A2AC78(qword_1EDC3B590, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v87 = v38;
    v39 = (v35 + 48);
    do
    {
      v40 = *v39;
      v41 = *(v39 - 1);
      *&v42 = MEMORY[0x1EEE9AC00](v38);
      *(&v68 - 2) = v42;
      *(&v68 - 16) = v43;
      v44 = v88;
      sub_1B4D17DAC();
      v88 = v44;
      v89 = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1B4BCF4DC(v45 > 1, v46 + 1, 1);
        v37 = v89;
      }

      *(v37 + 16) = v46 + 1;
      v38 = sub_1B4A2AC10(v27, v37 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v46, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      v39 += 24;
      --v36;
    }

    while (v36);
    a1 = v76;
    a3 = v77;
  }

  v47 = *a1;

  *a1 = v37;
  Plan = type metadata accessor for SnapshotQueryPlan();
  v50 = v85;
  v49 = v86;
  (*(v86 + 16))(v85, v84 + *(Plan + 36), a3);
  v51 = v82;
  if (swift_dynamicCast())
  {
    v52 = v78;
    sub_1B4A2AC10(v51, v78, type metadata accessor for RingsPropertiesQuery);
    v53 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
    MEMORY[0x1EEE9AC00](v53);
    *(&v68 - 2) = v52;
    sub_1B4A2AC78(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    v54 = v81;
    v55 = v88;
    sub_1B4D17DAC();
    sub_1B4A2ACC0(v52, type metadata accessor for RingsPropertiesQuery);
    if (!v55)
    {
LABEL_15:
      v64 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v64 - 8) + 56))(v54, 0, 1, v64);
      v65 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
      sub_1B4A2ABA0(v54, a1 + *(v65 + 20));
    }
  }

  else
  {
    v56 = v79;
    if (swift_dynamicCast())
    {
      v57 = v74;
      sub_1B4A2AC10(v56, v74, type metadata accessor for WorkoutPropertiesQuery);
      v58 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
      MEMORY[0x1EEE9AC00](v58);
      *(&v68 - 2) = v57;
      sub_1B4A2AC78(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v54 = v73;
      v59 = v88;
      sub_1B4D17DAC();
      sub_1B4A2ACC0(v57, type metadata accessor for WorkoutPropertiesQuery);
      if (!v59)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v60 = v71;
      if (!swift_dynamicCast())
      {
        _s7FailureOMa_2();
        swift_getWitnessTable();
        swift_allocError();
        *v66 = 1;
        swift_willThrow();
        return (*(v49 + 8))(v50, a3);
      }

      v61 = v70;
      sub_1B4A2AC10(v60, v70, type metadata accessor for FitnessPlusPropertiesQuery);
      v62 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
      MEMORY[0x1EEE9AC00](v62);
      *(&v68 - 2) = v61;
      sub_1B4A2AC78(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v54 = v69;
      v63 = v88;
      sub_1B4D17DAC();
      sub_1B4A2ACC0(v61, type metadata accessor for FitnessPlusPropertiesQuery);
      if (!v63)
      {
        goto LABEL_15;
      }
    }
  }

  return (*(v49 + 8))(v50, a3);
}

unint64_t sub_1B4A2A970()
{
  result = qword_1EB8A81E8;
  if (!qword_1EB8A81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A81E8);
  }

  return result;
}

uint64_t sub_1B4A2A9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A2AA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A2ABA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A2AC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A2AC78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4A2ACC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RingsStatisticsPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D1746C();
  v9 = sub_1B4D1880C();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  v21 = *a2;
  sub_1B49A8448(a1, &v33);
  if (v34)
  {
    v31 = a4;
    sub_1B49A24C4(&v33, v35);
    v32 = v21;
    sub_1B4A2B060(&v32, &v33);
    v22 = v33;
    if (v33 != 7)
    {
      v23 = v36;
      v24 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      LOBYTE(v33) = v22;
      RingsRepresentable.measure<A>(metric:)(&v33, v23, a3, v24, v13);
      if ((*(v14 + 48))(v13, 1, v8) != 1)
      {
        (*(v14 + 32))(v20, v13, v8);
        (*(v14 + 16))(v18, v20, v8);
        v27 = v31;
        StatisticsPropertyValue.init(measurement:)(v18, v31);
        (*(v14 + 8))(v20, v8);
        v28 = type metadata accessor for StatisticsPropertyValue();
        (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
        return __swift_destroy_boxed_opaque_existential_1Tm(v35);
      }

      (*(v30 + 8))(v13, v9);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    a4 = v31;
  }

  else
  {
    sub_1B49A84B8(&v33);
  }

  v25 = type metadata accessor for StatisticsPropertyValue();
  return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
}

_BYTE *sub_1B4A2B060@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result - 4 >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = *result - 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1B4A2B080(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8378, &unk_1B4D21F10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1B4A235DC(a1[1], a2[1]);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v31 = v8;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0) + 32);
  v19 = *(v13 + 48);
  sub_1B4974FBC(a1 + v18, v16, &qword_1EB8A8370, &unk_1B4D21F00);
  sub_1B4974FBC(a2 + v18, &v16[v19], &qword_1EB8A8370, &unk_1B4D21F00);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A8370, &unk_1B4D21F00);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A8370, &unk_1B4D21F00);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6928, &qword_1B4D20480);
LABEL_8:
    v22 = &qword_1EB8A8378;
    v23 = &unk_1B4D21F10;
LABEL_17:
    sub_1B4975024(v16, v22, v23);
    return 0;
  }

  v24 = v31;
  sub_1B498B270(&v16[v19], v31, &qword_1EB8A6928, &qword_1B4D20480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
  if ((sub_1B4D1816C() & 1) == 0 || *&v12[v4[7]] != *(v24 + v4[7]) || (v25 = v4[8], (sub_1B4D1816C() & 1) == 0) || (v26 = v4[9], (sub_1B4D1816C() & 1) == 0) || (v27 = v4[10], (sub_1B4D1816C() & 1) == 0))
  {
    sub_1B4975024(v24, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v12, &qword_1EB8A6928, &qword_1B4D20480);
    v22 = &qword_1EB8A8370;
    v23 = &unk_1B4D21F00;
    goto LABEL_17;
  }

  v28 = v4[11];
  v29 = sub_1B4D1816C();
  sub_1B4975024(v24, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v12, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v16, &qword_1EB8A8370, &unk_1B4D21F00);
  return (v29 & 1) != 0;
}

uint64_t _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v19 - v11;
  MEMORY[0x1B8C7D2C0](*v1, v10);
  sub_1B4A27218(a1, v1[1]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4974FBC(v1 + *(v13 + 32), v12, &qword_1EB8A8370, &unk_1B4D21F00);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    return sub_1B4D18EAC();
  }

  sub_1B498B270(v12, v7, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4D18EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B4D1808C();
  MEMORY[0x1B8C7D2C0](*&v7[v3[7]]);
  v15 = &v7[v3[8]];
  sub_1B4D1808C();
  v16 = &v7[v3[9]];
  sub_1B4D1808C();
  v17 = &v7[v3[10]];
  sub_1B4D1808C();
  v18 = &v7[v3[11]];
  sub_1B4D1808C();
  return sub_1B4975024(v7, &qword_1EB8A6928, &qword_1B4D20480);
}

uint64_t FastestByDistanceProperty.value.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *FastestByDistanceProperty.init(value:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t static FastestByDistanceProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A24508(*a1, *a2) & (v2 == v3);
}

uint64_t FastestByDistanceProperty.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A27E5C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2B8E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A27E5C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2B934(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A24508(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1B4A2BB2C(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  sub_1B4D18E8C();
  a1(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2BBA0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_1B4D18E8C();
  a3(v7, v5);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2BC10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B4D18E8C();
  a4(v8, v6);
  return sub_1B4D18EDC();
}

BOOL static PaceStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
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

uint64_t PaceStatisticsProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
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

uint64_t PaceStatisticsProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
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

uint64_t sub_1B4A2C0C8()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
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

uint64_t sub_1B4A2C1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
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

uint64_t sub_1B4A2C318()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
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

BOOL sub_1B4A2C448(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
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

BOOL static AverageHeartRateStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
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

uint64_t AverageHeartRateStatisticsProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
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

uint64_t AverageHeartRateStatisticsProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
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

BOOL static DiveDepthStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t DiveDepthStatisticsProperty.hash(into:)()
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

uint64_t DiveDepthStatisticsProperty.hashValue.getter()
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

BOOL static WorkoutCaloriesStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t WorkoutCaloriesStatisticsProperty.hash(into:)()
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

uint64_t WorkoutCaloriesStatisticsProperty.hashValue.getter()
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

BOOL static WorkoutDurationStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t WorkoutDurationStatisticsProperty.hash(into:)()
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

uint64_t WorkoutDurationStatisticsProperty.hashValue.getter()
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

BOOL static WeatherTemperatureStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8288, &qword_1EB8A7470, &qword_1B4D1F290);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
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

uint64_t WeatherTemperatureStatisticsProperty.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
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

uint64_t WeatherTemperatureStatisticsProperty.hashValue.getter()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
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

uint64_t sub_1B4A2D9A8()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
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

uint64_t sub_1B4A2DADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
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

uint64_t sub_1B4A2DBF8()
{
  v1 = v0;
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
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

BOOL sub_1B4A2DD28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8288, &qword_1EB8A7470, &qword_1B4D1F290);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
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

uint64_t WorkoutTotalCountProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t static WorkoutCountByRoundedDistanceProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1B4A23170(*a1, *a2);
  return v4 & (v2 == v3);
}

uint64_t WorkoutCountByRoundedDistanceProperty.hash(into:)(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26DA8(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2DFCC(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26DA8(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2E018(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1B4A23170(*a1, *a2);
  return v4 & (v2 == v3);
}

uint64_t static WorkoutCountByWeatherConditionProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A23068(*a1, *a2) & (v2 == v3);
}

uint64_t WorkoutCountByWeatherConditionProperty.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26C84(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2E0E8(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  sub_1B4D18E8C();
  a1(v6, v3);
  MEMORY[0x1B8C7D290](v4);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E164(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  sub_1B4D18E8C();
  a3(v8, v5);
  MEMORY[0x1B8C7D290](v6);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E1C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26C84(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2E214(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  sub_1B4D18E8C();
  a4(v9, v6);
  MEMORY[0x1B8C7D290](v7);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E274(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A23068(*a1, *a2) & (v2 == v3);
}

uint64_t WorkoutWeeklyCountStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E3BC()
{
  sub_1B4D18E8C();
  _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E400()
{
  sub_1B4D18E8C();
  _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(v1);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4A2E444()
{
  result = qword_1EB8A8298;
  if (!qword_1EB8A8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8298);
  }

  return result;
}

unint64_t sub_1B4A2E498(uint64_t a1)
{
  result = sub_1B4A2E4C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E4C0()
{
  result = qword_1EDC38E70;
  if (!qword_1EDC38E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38E70);
  }

  return result;
}

unint64_t sub_1B4A2E518()
{
  result = qword_1EDC379B0;
  if (!qword_1EDC379B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC379B0);
  }

  return result;
}

uint64_t sub_1B4A2E56C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4A2E5B4(uint64_t a1)
{
  result = sub_1B4A2E5DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E5DC()
{
  result = qword_1EDC38E88[0];
  if (!qword_1EDC38E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38E88);
  }

  return result;
}

unint64_t sub_1B4A2E634()
{
  result = qword_1EDC38E80;
  if (!qword_1EDC38E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38E80);
  }

  return result;
}

unint64_t sub_1B4A2E6CC(uint64_t a1)
{
  result = sub_1B4A2E6F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E6F4()
{
  result = qword_1EDC395B0;
  if (!qword_1EDC395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395B0);
  }

  return result;
}

unint64_t sub_1B4A2E78C(uint64_t a1)
{
  result = sub_1B4A2E7B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E7B4()
{
  result = qword_1EDC395C8;
  if (!qword_1EDC395C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395C8);
  }

  return result;
}

unint64_t sub_1B4A2E80C()
{
  result = qword_1EDC395C0;
  if (!qword_1EDC395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395C0);
  }

  return result;
}

unint64_t sub_1B4A2E860(uint64_t a1)
{
  result = sub_1B4A2E888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E888()
{
  result = qword_1EDC39108;
  if (!qword_1EDC39108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39108);
  }

  return result;
}

unint64_t sub_1B4A2E8DC(uint64_t a1)
{
  result = sub_1B4A2E904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E904()
{
  result = qword_1EDC39120;
  if (!qword_1EDC39120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39120);
  }

  return result;
}

unint64_t sub_1B4A2E95C()
{
  result = qword_1EDC39118;
  if (!qword_1EDC39118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39118);
  }

  return result;
}

unint64_t sub_1B4A2E9B0(uint64_t a1)
{
  result = sub_1B4A2E9D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E9D8()
{
  result = qword_1EDC38DA0;
  if (!qword_1EDC38DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38DA0);
  }

  return result;
}

unint64_t sub_1B4A2EA2C(uint64_t a1)
{
  result = sub_1B4A2EA54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EA54()
{
  result = qword_1EDC38DB8[0];
  if (!qword_1EDC38DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38DB8);
  }

  return result;
}

unint64_t sub_1B4A2EAAC()
{
  result = qword_1EDC38DB0;
  if (!qword_1EDC38DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38DB0);
  }

  return result;
}

unint64_t sub_1B4A2EB44(uint64_t a1)
{
  result = sub_1B4A2EB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EB6C()
{
  result = qword_1EDC38BD0;
  if (!qword_1EDC38BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38BD0);
  }

  return result;
}

unint64_t sub_1B4A2EC04(uint64_t a1)
{
  result = sub_1B4A2EC2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EC2C()
{
  result = qword_1EDC38BE8[0];
  if (!qword_1EDC38BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38BE8);
  }

  return result;
}

unint64_t sub_1B4A2EC84()
{
  result = qword_1EDC38BE0;
  if (!qword_1EDC38BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38BE0);
  }

  return result;
}

unint64_t sub_1B4A2ED1C(uint64_t a1)
{
  result = sub_1B4A2ED44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2ED44()
{
  result = qword_1EDC38F40;
  if (!qword_1EDC38F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F40);
  }

  return result;
}

unint64_t sub_1B4A2EDDC(uint64_t a1)
{
  result = sub_1B4A2EE04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EE04()
{
  result = qword_1EDC38F58;
  if (!qword_1EDC38F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F58);
  }

  return result;
}

unint64_t sub_1B4A2EE5C()
{
  result = qword_1EDC38F50;
  if (!qword_1EDC38F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F50);
  }

  return result;
}

uint64_t sub_1B4A2EEB0(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38010, type metadata accessor for WorkoutDistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2EF28(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC38020, type metadata accessor for WorkoutDistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F00C(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC392A8, type metadata accessor for PaceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F0C8(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC392C0, type metadata accessor for PaceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F168(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38268, type metadata accessor for ElevationGainStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F1E0(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38280, type metadata accessor for ElevationGainStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F2C4(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37E88, type metadata accessor for AverageHeartRateStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F380(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37EA0, type metadata accessor for AverageHeartRateStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F420(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38A60, type metadata accessor for DiveDepthStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F498(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC38A78, type metadata accessor for DiveDepthStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F57C(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC380C0, type metadata accessor for WorkoutCaloriesStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F638(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC380D0, type metadata accessor for WorkoutCaloriesStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F71C(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37F60, type metadata accessor for WorkoutDurationStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F7D8(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC37F70, type metadata accessor for WorkoutDurationStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F8BC(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37C90, type metadata accessor for WeatherTemperatureStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F978(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37CA8, type metadata accessor for WeatherTemperatureStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FA1C()
{
  result = qword_1EB8A8348;
  if (!qword_1EB8A8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8348);
  }

  return result;
}

unint64_t sub_1B4A2FA70(uint64_t a1)
{
  result = sub_1B4A2FA98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FA98()
{
  result = qword_1EDC38CC8;
  if (!qword_1EDC38CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CC8);
  }

  return result;
}

unint64_t sub_1B4A2FAF0()
{
  result = qword_1EDC38558;
  if (!qword_1EDC38558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38558);
  }

  return result;
}

unint64_t sub_1B4A2FB44(uint64_t a1)
{
  result = sub_1B4A2FB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FB6C()
{
  result = qword_1EDC38CD8;
  if (!qword_1EDC38CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CD8);
  }

  return result;
}

unint64_t sub_1B4A2FBC4()
{
  result = qword_1EDC38CD0;
  if (!qword_1EDC38CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CD0);
  }

  return result;
}

unint64_t sub_1B4A2FC1C()
{
  result = qword_1EB8A8350;
  if (!qword_1EB8A8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8350);
  }

  return result;
}

unint64_t sub_1B4A2FC70(uint64_t a1)
{
  result = sub_1B4A2FC98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FC98()
{
  result = qword_1EDC37AA0;
  if (!qword_1EDC37AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37AA0);
  }

  return result;
}

unint64_t sub_1B4A2FCF0()
{
  result = qword_1EDC379A8;
  if (!qword_1EDC379A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC379A8);
  }

  return result;
}

unint64_t sub_1B4A2FD44(uint64_t a1)
{
  result = sub_1B4A2FD6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FD6C()
{
  result = qword_1EDC37AB0;
  if (!qword_1EDC37AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37AB0);
  }

  return result;
}

unint64_t sub_1B4A2FDC4()
{
  result = qword_1EDC37AA8;
  if (!qword_1EDC37AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37AA8);
  }

  return result;
}

unint64_t sub_1B4A2FE1C()
{
  result = qword_1EB8A8358;
  if (!qword_1EB8A8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8358);
  }

  return result;
}

unint64_t sub_1B4A2FE70(uint64_t a1)
{
  result = sub_1B4A2FE98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FE98()
{
  result = qword_1EDC37A60;
  if (!qword_1EDC37A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A60);
  }

  return result;
}

unint64_t sub_1B4A2FEF0(uint64_t a1)
{
  result = sub_1B4A2FF18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FF18()
{
  result = qword_1EDC37A70;
  if (!qword_1EDC37A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A70);
  }

  return result;
}

unint64_t sub_1B4A2FF70()
{
  result = qword_1EDC37A68;
  if (!qword_1EDC37A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A68);
  }

  return result;
}

uint64_t sub_1B4A30008(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37BE8, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A300C4(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC37BF8, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

void sub_1B4A3025C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4A30340(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1B498AFB8(255, a3, a4);
    v5 = type metadata accessor for StatisticsPropertyValue();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B4A30568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4A306AC()
{
  v6 = *v0;
  v7 = v0[1];
  v1 = sub_1B4D173DC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  v4 = sub_1B4D173BC();

  return v4;
}

uint64_t sub_1B4A30740@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D173AC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);

  if (!v3)
  {
    *a3 = v11;
    a3[1] = v12;
  }

  return result;
}

unint64_t sub_1B4A30800(uint64_t a1)
{
  result = sub_1B4A30828();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A30828()
{
  result = qword_1EB8A8380;
  if (!qword_1EB8A8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8380);
  }

  return result;
}

uint64_t WorkoutDetailFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutDetailFact.TemplateString.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000004DLL;
  if (v1 != 6)
  {
    v2 = 0xD00000000000005BLL;
  }

  v3 = 0xD00000000000004FLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000041;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000051;
  if (v1 != 2)
  {
    v4 = 0xD00000000000005FLL;
  }

  v5 = 0xD000000000000053;
  if (!*v0)
  {
    v5 = 0xD000000000000045;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    result = v5;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1B4A309F0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutDetailFact.TemplateString.init(rawValue:)(a1);
}

const char *sub_1B4A309FC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "d_date_and_time> in <location>.";
  v4 = 0xD00000000000004DLL;
  if (v2 != 6)
  {
    v4 = 0xD00000000000005BLL;
    v3 = "d_date_and_time> with <goal>.";
  }

  v5 = "ime> in <location> with <goal>.";
  v6 = 0xD00000000000004FLL;
  if (v2 == 4)
  {
    v6 = 0xD000000000000041;
  }

  else
  {
    v5 = "d_date_and_time>.";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "ime> in <location>.";
  v8 = 0xD000000000000051;
  if (v2 != 2)
  {
    v8 = 0xD00000000000005FLL;
  }

  result = "I am starting a <activity_type> workout now on <start_date_and_time> in <location>.";
  if (v2 != 2)
  {
    v7 = "ime> with <goal>.";
  }

  v10 = 0xD000000000000053;
  if (*v1)
  {
    v11 = "start_date_and_time>.";
  }

  else
  {
    v10 = 0xD000000000000045;
    v11 = "poolSwimDistanceWithTime";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t WorkoutDetailFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutDetailFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = [*v0 localizedName];
  v6 = sub_1B4D1818C();
  v8 = v7;

  strcpy((v4 + 32), "activity_type");
  *(v4 + 46) = -4864;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v4 + 48) = sub_1B4993DFC;
  *(v4 + 56) = v9;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  sub_1B4A3123C(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_1B4A312A0(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v4 + 80) = 0xD000000000000013;
  *(v4 + 88) = 0x80000001B4D5FAB0;
  *(v4 + 96) = sub_1B4A31304;
  *(v4 + 104) = v11;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1B4A3123C(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1B4A312A0(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(v4 + 128) = 0xD000000000000011;
  *(v4 + 136) = 0x80000001B4D5FAD0;
  *(v4 + 144) = sub_1B4A3131C;
  *(v4 + 152) = v12;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  v14 = *(v0 + 8);
  v13 = *(v0 + 16);
  *(v4 + 176) = 0x6E6F697461636F6CLL;
  *(v4 + 184) = 0xE800000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v4 + 192) = sub_1B4994004;
  *(v4 + 200) = v15;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  sub_1B4A3123C(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_1B4A312A0(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v10);
  *(v4 + 224) = 1818324839;
  *(v4 + 232) = 0xE400000000000000;
  *(v4 + 240) = sub_1B4A31558;
  *(v4 + 248) = v16;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;

  return v4;
}

uint64_t sub_1B4A30DD4(uint64_t a1)
{
  v2 = *(type metadata accessor for WorkoutDetailFact() + 24);
  v3 = sub_1B4D11F8C();
  [v3 setDateStyle_];

  v4 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v5 = *(a1 + v4);
  v6 = sub_1B4D1771C();
  v7 = [v5 stringFromDate_];

  v8 = sub_1B4D1818C();
  return v8;
}

uint64_t sub_1B4A30EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutDetailFact();
  sub_1B4A315C4(a2 + *(v13 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B497A590(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_1B4D11F8C();
    [v15 setDateStyle_];

    v16 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
    [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
    v17 = *(a1 + v16);
    v18 = sub_1B4D1771C();
    v19 = [v17 stringFromDate_];

    v20 = sub_1B4D1818C();
    (*(v9 + 8))(v12, v8);
    return v20;
  }
}

uint64_t WorkoutDetailFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WorkoutDetailFact();
  sub_1B4D1491C(v1 + *(v8 + 32));
  v10 = v9;
  sub_1B4A315C4(v2 + *(v8 + 28), v7);
  v11 = sub_1B4D1777C();
  v12 = (*(*(v11 - 8) + 48))(v7, 1, v11);
  result = sub_1B497A590(v7);
  if (!*(v2 + 16))
  {
    if (v12 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 6;
    }

    if (!v10)
    {
      v14 = 4 * (v12 != 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v12 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 5;
  }

  if (v12 == 1)
  {
    v15 = 3;
  }

  else
  {
    v15 = 7;
  }

  if (v10)
  {
    v14 = v15;
LABEL_14:
  }

LABEL_15:
  *a1 = v14;
  return result;
}

uint64_t sub_1B4A3123C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A312A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A31334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutDetailFact() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for WorkoutDetailFact();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = *(v0 + v3 + 16);

  v6 = v1[6];
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = v1[7];
  if (!(*(v8 + 48))(v0 + v3 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  v11 = v1[8];
  v12 = sub_1B4D179EC();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v14, v2 | 7);
}

uint64_t sub_1B4A315C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4A31638()
{
  result = qword_1EB8A8388;
  if (!qword_1EB8A8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8388);
  }

  return result;
}

unint64_t sub_1B4A31690()
{
  result = qword_1EB8A8390;
  if (!qword_1EB8A8390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A8398, &qword_1B4D22018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8390);
  }

  return result;
}

unint64_t sub_1B4A316F8()
{
  result = qword_1EB8A83A0;
  if (!qword_1EB8A83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83A0);
  }

  return result;
}

unint64_t sub_1B4A31750()
{
  result = qword_1EB8A83A8;
  if (!qword_1EB8A83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83A8);
  }

  return result;
}

unint64_t sub_1B4A317A4(uint64_t a1)
{
  result = sub_1B4A317CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A317CC()
{
  result = qword_1EB8A83B0;
  if (!qword_1EB8A83B0)
  {
    type metadata accessor for WorkoutDetailFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83B0);
  }

  return result;
}

uint64_t InferenceFeedback.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v59 - v17;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InferenceRecord();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v69 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = a1[1];

  v29 = sub_1B4D18B1C();

  v63 = v29;
  if (v29 >= 3)
  {
    sub_1B4A32760();
    swift_allocError();
    *v35 = v27;
    v35[1] = v28;
    swift_willThrow();

    return sub_1B4A329C0(a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  }

  v60 = v14;
  v30 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + v30[6], v18, &qword_1EB8A83B8, &qword_1B4D22420);
  v31 = *(v20 + 48);
  if (v31(v18, 1, v19) == 1)
  {
    sub_1B4D17BBC();
    v32 = *(v19 + 20);
    if (qword_1EB8A6038 != -1)
    {
      swift_once();
    }

    *&v23[v32] = qword_1EB8A8440;
    v33 = v31(v18, 1, v19);

    v34 = v68;
    if (v33 != 1)
    {
      sub_1B4975024(v18, &qword_1EB8A83B8, &qword_1B4D22420);
    }
  }

  else
  {
    sub_1B4A32910(v18, v23, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
    v34 = v68;
  }

  v36 = v67;
  InferenceRecord.init(_:)(v23, v69);
  if (v36)
  {
    return sub_1B4A329C0(a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  }

  v38 = v30[8];
  v39 = (a1 + v30[7]);
  v40 = v39[1];
  v67 = *v39;
  v41 = v64;
  sub_1B4974FBC(a1 + v38, v64, &qword_1EB8A6940, &unk_1B4D22400);
  v42 = v66;
  v65 = *(v65 + 48);
  v43 = (v65)(v41, 1, v66);
  v68 = v40;

  sub_1B4975024(v41, &qword_1EB8A6940, &unk_1B4D22400);
  if (v43 == 1)
  {
    v44 = v69;
    v45 = v60;
    v46 = 1;
  }

  else
  {
    v47 = v61;
    sub_1B4974FBC(a1 + v38, v61, &qword_1EB8A6940, &unk_1B4D22400);
    v48 = v65;
    if ((v65)(v47, 1, v42) == 1)
    {
      v49 = v62;
      sub_1B4D17BBC();
      v50 = v49 + v42[5];
      *v50 = 0;
      *(v50 + 8) = 1;
      v51 = v49 + v42[6];
      *v51 = 0;
      *(v51 + 8) = 1;
      v52 = (v49 + v42[7]);
      *v52 = 0;
      v52[1] = 0;
      *(v49 + v42[8]) = 2;
      v53 = (v49 + v42[9]);
      *v53 = 0;
      v53[1] = 0;
      v54 = v49 + v42[10];
      *v54 = 0;
      *(v54 + 8) = 1;
      if (v48(v47, 1, v42) != 1)
      {
        sub_1B4975024(v47, &qword_1EB8A6940, &unk_1B4D22400);
      }
    }

    else
    {
      v49 = v62;
      sub_1B4A32910(v47, v62, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    }

    v45 = v60;
    AnnounceUtteranceResult.init(_:)(v49, v60);
    v46 = 0;
    v44 = v69;
  }

  sub_1B4A329C0(a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  v55 = type metadata accessor for AnnounceUtteranceResult();
  (*(*(v55 - 8) + 56))(v45, v46, 1, v55);
  sub_1B4A32910(v44, v34, type metadata accessor for InferenceRecord);
  v56 = type metadata accessor for InferenceFeedback();
  *(v34 + v56[5]) = v63;
  v57 = (v34 + v56[6]);
  v58 = v68;
  *v57 = v67;
  v57[1] = v58;
  return sub_1B498C368(v45, v34 + v56[7]);
}

uint64_t InferenceFeedback.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4A32978(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A31FC8(uint64_t *a1, uint64_t a2)
{
  v50 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for AnnounceUtteranceResult();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a2;
  v53 = a2;
  sub_1B4A32978(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  v20 = v54;
  result = sub_1B4D17DAC();
  if (!v20)
  {
    v45 = v11;
    v46 = v10;
    v47 = v14;
    v48 = 0;
    v44 = v6;
    v54 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
    v22 = v54[6];
    v23 = v50;
    sub_1B4975024(v50 + v22, &qword_1EB8A83B8, &qword_1B4D22420);
    sub_1B4A32910(v19, v23 + v22, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
    v24 = v23;
    (*(v16 + 56))(v23 + v22, 0, 1, v15);
    v25 = type metadata accessor for InferenceFeedback();
    v26 = v51;
    if (*(v51 + v25[5]))
    {
      v27 = v3;
      v28 = v47;
      v29 = v45;
      if (*(v51 + v25[5]) == 1)
      {
        v30 = 0xE800000000000000;
        v31 = 0x657669746167656ELL;
      }

      else
      {
        v30 = 0xE500000000000000;
        v31 = 0x726568746FLL;
      }
    }

    else
    {
      v30 = 0xE800000000000000;
      v31 = 0x6576697469736F70;
      v27 = v3;
      v28 = v47;
      v29 = v45;
    }

    v32 = v24[1];

    *v24 = v31;
    v24[1] = v30;
    v33 = (v26 + v25[6]);
    v34 = v33[1];
    if (v34)
    {
      v35 = *v33;
      v36 = (v24 + v54[7]);
      v37 = v36[1];

      *v36 = v35;
      v36[1] = v34;
      v27 = v3;
    }

    v38 = v26 + v25[7];
    v39 = v46;
    sub_1B4974FBC(v38, v46, &qword_1EB8A6948, qword_1B4D1E1C0);
    if ((*(v52 + 48))(v39, 1, v29) == 1)
    {
      return sub_1B4975024(v39, &qword_1EB8A6948, qword_1B4D1E1C0);
    }

    else
    {
      v40 = sub_1B4A32910(v39, v28, type metadata accessor for AnnounceUtteranceResult);
      MEMORY[0x1EEE9AC00](v40);
      *(&v43 - 2) = v28;
      sub_1B4A32978(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v41 = v44;
      sub_1B4D17DAC();
      v42 = v54[8];
      sub_1B4975024(v24 + v42, &qword_1EB8A6940, &unk_1B4D22400);
      sub_1B4A32910(v41, v24 + v42, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      (*(v49 + 56))(v24 + v42, 0, 1, v27);
      return sub_1B4A329C0(v28, type metadata accessor for AnnounceUtteranceResult);
    }
  }

  return result;
}

uint64_t sub_1B4A32520(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4A32978(&qword_1EB8A83D8, type metadata accessor for InferenceFeedback);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4A32978(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
    v1 = sub_1B4D17D6C();
    sub_1B4A329C0(v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  }

  return v1;
}

uint64_t sub_1B4A326A0()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4A32978(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4A32760()
{
  result = qword_1EB8A83C0;
  if (!qword_1EB8A83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83C0);
  }

  return result;
}

uint64_t sub_1B4A32860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B4A328A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4A32910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A32978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4A329C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FitnessIntelligence::MilestoneFactType_optional __swiftcall MilestoneFactType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B4A32A58()
{
  result = qword_1EB8A83E8;
  if (!qword_1EB8A83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83E8);
  }

  return result;
}

unint64_t sub_1B4A32B74()
{
  result = qword_1EB8A83F0;
  if (!qword_1EB8A83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83F0);
  }

  return result;
}

BOOL RingsRepresentable.isNil.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v29 - v18;
  (*(a2 + 64))(a1, a2, v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  sub_1B4975024(v19, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v21 != 1)
  {
    return 0;
  }

  (*(a2 + 72))(a1, a2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v23 = *(*(v22 - 8) + 48);
  v24 = v23(v14, 1, v22);
  sub_1B4975024(v14, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v24 != 1)
  {
    return 0;
  }

  (*(a2 + 80))(a1, a2);
  v25 = v23(v11, 1, v22);
  sub_1B4975024(v11, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v25 != 1)
  {
    return 0;
  }

  (*(a2 + 88))(a1, a2);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v27 = (*(*(v26 - 8) + 48))(v7, 1, v26) == 1;
  sub_1B4975024(v7, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  return v27;
}

uint64_t RingsRepresentable.measure<A>(metric:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(void, void)@<X3>, uint64_t a5@<X8>)
{
  v57[1] = a3;
  v58 = a5;
  v59 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = v57 - v30;
  v32 = *a1;
  if (v32 > 2)
  {
    if (*a1 > 4u)
    {
      if (v32 == 5)
      {
        a4[13](v59, a4);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        if ((*(*(v38 - 8) + 48))(v15, 1, v38) == 1)
        {
          v34 = &qword_1EB8A6D18;
          v35 = &unk_1B4D1BCA0;
          v36 = v15;
          goto LABEL_21;
        }
      }

      else
      {
        a4[14](v59, a4);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        if ((*(*(v42 - 8) + 48))(v10, 1, v42) == 1)
        {
          v34 = &qword_1EB8A6CC0;
          v35 = &unk_1B4D1BC00;
          v36 = v10;
          goto LABEL_21;
        }
      }
    }

    else if (v32 == 3)
    {
      a4[7](v59, a4);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      if ((*(*(v33 - 8) + 48))(v20, 1, v33) == 1)
      {
        v34 = &qword_1EB8A6D18;
        v35 = &unk_1B4D1BCA0;
        v36 = v20;
LABEL_21:
        sub_1B4975024(v36, v34, v35);
        v43 = sub_1B4D1746C();
        return (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
      }
    }

    else
    {
      a4[12](v59, a4);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      if ((*(*(v41 - 8) + 48))(v18, 1, v41) == 1)
      {
        v34 = &qword_1EB8A6D18;
        v35 = &unk_1B4D1BCA0;
        v36 = v18;
        goto LABEL_21;
      }
    }

    goto LABEL_27;
  }

  if (!*a1)
  {
    a4[4](v59, a4);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    if ((*(*(v39 - 8) + 48))(v31, 1, v39) == 1)
    {
      v34 = &qword_1EB8A6CA8;
      v35 = &unk_1B4D1C2B0;
      v36 = v31;
      goto LABEL_21;
    }

LABEL_27:
    v45 = sub_1B4D1746C();
    v54 = v58;
    v55 = swift_dynamicCast();
    v48 = *(*(v45 - 8) + 56);
    if (v55)
    {
      v49 = v54;
      goto LABEL_29;
    }

    v49 = v54;
    goto LABEL_31;
  }

  if (v32 == 1)
  {
    a4[5](v59, a4);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    if ((*(*(v37 - 8) + 48))(v27, 1, v37) == 1)
    {
      v34 = &qword_1EB8A6C90;
      v35 = &unk_1B4D1BBD0;
      v36 = v27;
      goto LABEL_21;
    }

    v45 = sub_1B4D1746C();
    v46 = v58;
    v47 = swift_dynamicCast();
    v48 = *(*(v45 - 8) + 56);
    if (v47)
    {
      v49 = v46;
LABEL_29:
      v53 = 0;
LABEL_32:
      v56 = v45;
      return v48(v49, v53, 1, v56);
    }

    v49 = v46;
LABEL_31:
    v53 = 1;
    goto LABEL_32;
  }

  a4[6](v59, a4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  if ((*(*(v40 - 8) + 48))(v25, 1, v40) == 1)
  {
    v34 = &qword_1EB8A6C90;
    v35 = &unk_1B4D1BBD0;
    v36 = v25;
    goto LABEL_21;
  }

  v50 = sub_1B4D1746C();
  v51 = v58;
  v52 = swift_dynamicCast();
  v48 = *(*(v50 - 8) + 56);
  if (v52)
  {
    v49 = v51;
    v53 = 0;
  }

  else
  {
    v49 = v51;
    v53 = 1;
  }

  v56 = v50;
  return v48(v49, v53, 1, v56);
}

uint64_t RingsRepresentable.moveRingPercentage.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v86 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v86 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v102 = *(v14 - 8);
  v15 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v86 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v93 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v92 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v97 = &v86 - v35;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v86 - v38;
  v95 = *(a2 + 64);
  v95(a1, a2, v37);
  v94 = v5;
  v40 = *(v5 + 48);
  v101 = v4;
  v96 = v40;
  LODWORD(v4) = v40(v39, 1, v4);
  v41 = v39;
  v42 = v14;
  sub_1B4975024(v41, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v43 = v4 == 1;
  v44 = v102;
  if (v43)
  {
    (*(a2 + 72))(a1, a2);
    v45 = (*(v44 + 48))(v30, 1, v14);
    sub_1B4975024(v30, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v45 == 1)
    {
      *&result = 0.0;
      return result;
    }
  }

  v47 = (*(a2 + 120))(a1, a2);
  v48 = a2;
  v49 = a1;
  if ((v50 & 1) != 0 || v47 != 2)
  {
    v57 = v97;
    (v95)(v49, a2);
    v58 = v101;
    v59 = v96;
    if (v96(v57, 1, v101) != 1)
    {
      v60 = v48;
      v61 = v94;
      v62 = v49;
      v63 = *(v94 + 32);
      v63(v100, v57, v58);
      v57 = v92;
      (*(v60 + 32))(v62, v60);
      if (v59(v57, 1, v58) != 1)
      {
        v64 = v90;
        v63(v90, v57, v58);
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v66 = [ObjCClassFromMetadata baseUnit];
        v67 = v89;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v69 = v68;
        v70 = *(v61 + 8);
        v70(v67, v58);
        v71 = [ObjCClassFromMetadata baseUnit];
        v72 = v91;
        v73 = v100;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v75 = v74;
        v70(v72, v58);
        v70(v64, v58);
        v70(v73, v58);
        goto LABEL_18;
      }

      (*(v61 + 8))(v100, v58);
    }

    v54 = &qword_1EB8A6CA8;
    v55 = &unk_1B4D1C2B0;
    v56 = v57;
    goto LABEL_15;
  }

  v51 = v98;
  (*(a2 + 72))(a1, a2);
  v52 = *(v44 + 48);
  if (v52(v51, 1, v14) == 1)
  {
LABEL_10:
    v54 = &qword_1EB8A6C90;
    v55 = &unk_1B4D1BBD0;
    v56 = v51;
LABEL_15:
    sub_1B4975024(v56, v54, v55);
    *&result = 0.0;
    return result;
  }

  v53 = *(v44 + 32);
  v53(v99, v51, v14);
  v51 = v93;
  (*(v48 + 40))(v49, v48);
  if (v52(v51, 1, v14) == 1)
  {
    (*(v44 + 8))(v99, v14);
    goto LABEL_10;
  }

  v76 = v87;
  v53(v87, v51, v14);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v77 = swift_getObjCClassFromMetadata();
  v78 = [v77 baseUnit];
  v79 = v86;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v69 = v80;
  v81 = *(v44 + 8);
  v81(v79, v42);
  v82 = [v77 baseUnit];
  v83 = v88;
  v84 = v99;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v75 = v85;
  v81(v83, v42);
  v81(v76, v42);
  v81(v84, v42);
LABEL_18:
  *&result = v69 / v75;
  return result;
}

uint64_t RingsRepresentable.exerciseRingPercentage.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v45 = &v40 - v23;
  (*(a2 + 80))(a1, a2, v22);
  v44 = v12;
  v24 = *(v12 + 48);
  if (v24(v10, 1, v11) == 1)
  {
    v25 = v10;
LABEL_5:
    sub_1B4975024(v25, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    *&result = 0.0;
    return result;
  }

  v41 = v20;
  v42 = v15;
  v26 = *(v44 + 32);
  v26(v45, v10, v11);
  (*(a2 + 48))(a1, a2);
  if (v24(v7, 1, v11) == 1)
  {
    (*(v44 + 8))(v45, v11);
    v25 = v7;
    goto LABEL_5;
  }

  v28 = v41;
  v26(v41, v7, v11);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [ObjCClassFromMetadata baseUnit];
  v31 = v43;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v33 = v32;
  v34 = *(v44 + 8);
  v34(v31, v11);
  v35 = [ObjCClassFromMetadata baseUnit];
  v36 = v42;
  v37 = v45;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v39 = v38;
  v34(v36, v11);
  v34(v28, v11);
  v34(v37, v11);
  *&result = v33 / v39;
  return result;
}

uint64_t RingsRepresentable.standRingPercentage.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v45 = &v40 - v23;
  (*(a2 + 88))(a1, a2, v22);
  v44 = v12;
  v24 = *(v12 + 48);
  if (v24(v10, 1, v11) == 1)
  {
    v25 = v10;
LABEL_5:
    sub_1B4975024(v25, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    *&result = 0.0;
    return result;
  }

  v41 = v20;
  v42 = v15;
  v26 = *(v44 + 32);
  v26(v45, v10, v11);
  (*(a2 + 56))(a1, a2);
  if (v24(v7, 1, v11) == 1)
  {
    (*(v44 + 8))(v45, v11);
    v25 = v7;
    goto LABEL_5;
  }

  v28 = v41;
  v26(v41, v7, v11);
  v29 = type metadata accessor for UnitCount();
  v30 = [v29 baseUnit];
  v31 = v43;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v33 = v32;
  v34 = *(v44 + 8);
  v34(v31, v11);
  v35 = [v29 baseUnit];
  v36 = v42;
  v37 = v45;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v39 = v38;
  v34(v36, v11);
  v34(v28, v11);
  v34(v37, v11);
  *&result = v33 / v39;
  return result;
}

uint64_t RingsRepresentable.delta<A>(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(void, void)@<X3>, uint64_t a5@<X8>)
{
  v112 = a2;
  v113 = a4;
  v114 = a3;
  v115 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v100 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v96 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v102 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v96 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v110 = *(v29 - 8);
  v111 = v29;
  v30 = *(v110 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v99 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v97 = &v96 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v105 = &v96 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v98 = &v96 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v96 = &v96 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v96 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v47 = &v96 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v96 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v96 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v96 - v57;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v63 = v112;
      v62 = v113;
      v113[10](v112, v113);
      v64 = v110;
      v65 = v111;
      v66 = *(v110 + 48);
      if (v66(v24, 1, v111) == 1)
      {
LABEL_9:
        v69 = v115;
        v70 = &qword_1EB8A6C90;
        v71 = &unk_1B4D1BBD0;
LABEL_16:
        v82 = v24;
LABEL_23:
        sub_1B4975024(v82, v70, v71);
        v84 = sub_1B4D1746C();
        return (*(*(v84 - 8) + 56))(v69, 1, 1, v84);
      }

      v67 = v64;
      v68 = *(v64 + 32);
      v68(v105, v24, v65);
      v24 = v103;
      v62[6](v63, v62);
      if (v66(v24, 1, v65) == 1)
      {
        (*(v67 + 8))(v105, v65);
        goto LABEL_9;
      }

      v86 = v97;
      v68(v97, v24, v65);
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v87 = v105;
LABEL_26:
      sub_1B4D1744C();
      v88 = *(v67 + 8);
      v88(v86, v65);
      v88(v87, v65);
      v89 = sub_1B4D1746C();
      v90 = v115;
      goto LABEL_30;
    }

    v79 = v112;
    v78 = v113;
    v24 = v106;
    v113[11](v112, v113);
    v67 = v108;
    v65 = v109;
    v80 = *(v108 + 48);
    if (v80(v24, 1, v109) != 1)
    {
      v81 = *(v67 + 32);
      v81(v107, v24, v65);
      v24 = v104;
      v78[7](v79, v78);
      if (v80(v24, 1, v65) != 1)
      {
        v86 = v100;
        v81(v100, v24, v65);
        type metadata accessor for UnitCount();
        v87 = v107;
        goto LABEL_26;
      }

      (*(v67 + 8))(v107, v65);
    }

    v69 = v115;
    v70 = &qword_1EB8A6D18;
    v71 = &unk_1B4D1BCA0;
    goto LABEL_16;
  }

  if (*a1)
  {
    v73 = v112;
    v72 = v113;
    v113[9](v112, v113);
    v74 = v110;
    v75 = v111;
    v76 = *(v110 + 48);
    if (v76(v28, 1, v111) == 1)
    {
      v77 = v28;
    }

    else
    {
      v109 = *(v74 + 32);
      v109(v42, v28, v75);
      v83 = v102;
      v72[5](v73, v72);
      v77 = v83;
      if (v76(v83, 1, v75) != 1)
      {
        v92 = v96;
        v109(v96, v83, v75);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        sub_1B4D1744C();
        v93 = *(v74 + 8);
        v93(v92, v75);
        v93(v42, v75);
        v89 = sub_1B4D1746C();
        v90 = v115;
        goto LABEL_30;
      }

      (*(v74 + 8))(v42, v75);
    }

    v69 = v115;
    v70 = &qword_1EB8A6C90;
    v71 = &unk_1B4D1BBD0;
    v82 = v77;
    goto LABEL_23;
  }

  v59 = v112;
  v60 = v113;
  v61 = v56;
  v113[8](v112, v113);
  v111 = v61;
  v110 = *(v61 + 48);
  if ((v110)(v49, 1, v50) == 1)
  {
    v47 = v49;
LABEL_19:
    v69 = v115;
    v70 = &qword_1EB8A6CA8;
    v71 = &unk_1B4D1C2B0;
    v82 = v47;
    goto LABEL_23;
  }

  v109 = *(v111 + 32);
  v109(v58, v49, v50);
  v60[4](v59, v60);
  if ((v110)(v47, 1, v50) == 1)
  {
    (*(v111 + 8))(v58, v50);
    goto LABEL_19;
  }

  v109(v55, v47, v50);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  sub_1B4D1744C();
  v91 = *(v111 + 8);
  v91(v55, v50);
  v91(v58, v50);
  v89 = sub_1B4D1746C();
  v90 = v115;
LABEL_30:
  if (swift_dynamicCast())
  {
    v94 = v90;
    v95 = 0;
  }

  else
  {
    v94 = v90;
    v95 = 1;
  }

  return (*(*(v89 - 8) + 56))(v94, v95, 1, v89);
}

uint64_t ClosedAllRingsFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4A35540()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A355B4()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A35608@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_1B4A356A4()
{
  result = qword_1EB8A83F8;
  if (!qword_1EB8A83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83F8);
  }

  return result;
}

unint64_t sub_1B4A356FC()
{
  result = qword_1EB8A8400;
  if (!qword_1EB8A8400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A8408, &qword_1B4D22358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8400);
  }

  return result;
}

unint64_t sub_1B4A35764()
{
  result = qword_1EB8A8410;
  if (!qword_1EB8A8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8410);
  }

  return result;
}

unint64_t sub_1B4A357BC()
{
  result = qword_1EB8A8418;
  if (!qword_1EB8A8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8418);
  }

  return result;
}

unint64_t sub_1B4A35810(uint64_t a1)
{
  result = sub_1B4A35838();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A35838()
{
  result = qword_1EB8A8420;
  if (!qword_1EB8A8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8420);
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_InferenceResult.hasAnnounceUtteranceResult.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v0 + *(v5 + 40), v4, &qword_1EB8A6940, &unk_1B4D22400);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A6940, &unk_1B4D22400);
  return v7;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.announceUtteranceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v1 + *(v7 + 40), v6, &qword_1EB8A6940, &unk_1B4D22400);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  sub_1B4D17BBC();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v8[8]) = 2;
  v13 = (a1 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6940, &unk_1B4D22400);
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_InferenceResult.hasVoice.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v0 + *(v5 + 44), v4, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A6938, &qword_1B4D1ACF8);
  return v7;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v1 + *(v7 + 44), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.duration.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.announceUtteranceResult.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  sub_1B4975024(v1 + v3, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.voice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  sub_1B4975024(v1 + v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

double Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesisDuration.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesizedAudioLength.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_1B4A361A4(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B4A36280(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesisDuration.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesizedAudioLength.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceDuration.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceResult.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_1B4A363E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1B4A36490(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A36504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.streamDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A76C8, &unk_1B4D22410);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v10 = a1 + *(v8 + 52);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A76C8, &unk_1B4D22410);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.intensity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(v1 + *(v7 + 36), v6, &qword_1EB8A76C0, &qword_1B4D1E798);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A76C0, &qword_1B4D1E798);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.streamDescription.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A76C8, &unk_1B4D22410);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.voice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.intensity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 36);
  sub_1B4975024(v1 + v3, &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.record.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A83B8, &qword_1B4D22420);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EB8A8440;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A83B8, &qword_1B4D22420);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.utteranceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A6940, &unk_1B4D22400);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  sub_1B4D17BBC();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v8[8]) = 2;
  v13 = (a1 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6940, &unk_1B4D22400);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.record.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A83B8, &qword_1B4D22420);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.utteranceResult.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.uuid.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1B4A37168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1B4A371C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_1B4A463BC(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = v8[3];
  v8[2] = v4;
  v8[3] = v3;
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.uuid.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4A463BC(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = v9[3];
  v9[2] = a1;
  v9[3] = a2;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.uuid.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_1B4A373C0;
}

void sub_1B4A373C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_1B4A463BC(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = v10[3];
    v10[2] = v3;
    v10[3] = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = sub_1B4A463BC(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = v20[3];
    v20[2] = v3;
    v20[3] = v5;
  }

  free(v2);
}

double Apple_Fitness_Intelligence_InferenceRecord.createdAt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1B4A3753C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4A463BC(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  v7[4] = v3;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.createdAt.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4A463BC(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  v7[4] = a1;
  return result;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.createdAt.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 32);
  return sub_1B4A37714;
}

void sub_1B4A37714(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_1B4A463BC(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  v7[4] = v2;

  free(v1);
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A8748, &qword_1B4D22428);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  sub_1B4D17BBC();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v9[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = (a1 + v9[8]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v9[9];
  v17 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  v18 = (a1 + v9[10]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v9[11]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8748, &qword_1B4D22428);
  }

  return result;
}

uint64_t sub_1B4A37A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4A463BC(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4A3CCD0(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A8748, &qword_1B4D22428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.request.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4A463BC(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4A3CCD0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A8748, &qword_1B4D22428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v2[7];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[9];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  result = (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v11 = (a1 + v2[10]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v2[11]) = 2;
  return result;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.request.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8748, &qword_1B4D22428);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v9[7];
    v22 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    v23 = (v14 + v9[8]);
    *v23 = 0;
    v23[1] = 0;
    v24 = v9[9];
    v25 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    v26 = (v14 + v9[10]);
    *v26 = 0;
    v26[1] = 0;
    *(v14 + v9[11]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8748, &qword_1B4D22428);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  return sub_1B4A38188;
}

void sub_1B4A38188(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4A467C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4A463BC(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4A3CCD0(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A8748, &qword_1B4D22428);
    swift_endAccess();
    sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4A463BC(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4A3CCD0(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A8748, &qword_1B4D22428);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A8758, &qword_1B4D22430);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  sub_1B4D17BBC();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v9[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v9[7]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[9]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v9[10];
  v17 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  v18 = v9[11];
  v19 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8758, &qword_1B4D22430);
  }

  return result;
}

uint64_t sub_1B4A3867C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4A463BC(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4A3CCD0(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A8758, &qword_1B4D22430);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.result.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4A463BC(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4A3CCD0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A8758, &qword_1B4D22430);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[10];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = v2[11];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1 + v10, 1, 1, v11);
}

void (*Apple_Fitness_Intelligence_InferenceRecord.result.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8758, &qword_1B4D22430);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = (v14 + v9[7]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[8]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v14 + v9[9]);
    *v23 = 0;
    v23[1] = 0;
    v24 = v9[10];
    v25 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    v26 = v9[11];
    v27 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
    (*(*(v27 - 8) + 56))(v14 + v26, 1, 1, v27);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8758, &qword_1B4D22430);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  return sub_1B4A38E04;
}

void sub_1B4A38E04(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4A467C0(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4A463BC(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4A3CCD0(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A8758, &qword_1B4D22430);
    swift_endAccess();
    sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4A463BC(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4A3CCD0(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A8758, &qword_1B4D22430);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_1B4A39084(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_1B4974FBC(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1B4975024(v12, a1, a2);
  return v16;
}

uint64_t sub_1B4A391CC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_1B4A463BC(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1B49A205C(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_InferenceRecord.feedbackID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_1B4A393FC;
}

uint64_t sub_1B4A3942C(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A394A8@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20)) + *a2);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;
}

uint64_t sub_1B4A39530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);

  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1B4A463BC(v12);
    *(a2 + v9) = v12;
  }

  v16 = (v12 + *a5);
  swift_beginAccess();
  v17 = v16[1];
  *v16 = v8;
  v16[1] = v7;
}

uint64_t sub_1B4A395F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4A463BC(v11);
    *(v5 + v8) = v11;
  }

  v15 = (v11 + *a3);
  swift_beginAccess();
  v16 = v15[1];
  *v15 = a1;
  v15[1] = a2;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.osBuildVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_1B4A39774;
}

void sub_1B4A39780(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(*a1 + 80);

    v10 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 96);
      v14 = *(v4 + 88);
      v15 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v12 = sub_1B4A463BC(v12);
      *(v14 + v13) = v12;
    }

    v18 = (v12 + *a3);
    swift_beginAccess();
    v19 = v18[1];
    *v18 = v5;
    v18[1] = v7;

    v20 = *(v4 + 80);
  }

  else
  {
    v21 = *(v8 + v6);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v8 + v6);
    if ((v22 & 1) == 0)
    {
      v24 = *(v4 + 96);
      v25 = *(v4 + 88);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4A463BC(v23);
      *(v25 + v24) = v23;
    }

    v29 = (v23 + *a3);
    swift_beginAccess();
    v30 = v29[1];
    *v29 = v5;
    v29[1] = v7;
  }

  free(v4);
}

BOOL sub_1B4A398D8(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t sub_1B4A39944(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4A463BC(v7);
    *(v3 + v4) = v7;
  }

  v11 = (v7 + *a1);
  swift_beginAccess();
  v12 = v11[1];
  *v11 = 0;
  v11[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EB8A8440;
}

uint64_t sub_1B4A39AA4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A39B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.adapter.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.prompt.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.audioSynthesisSettings.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A8778, &qword_1B4D22438);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a1 = 0;
  v10 = &a1[*(v8 + 20)];
  sub_1B4D17BBC();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A39F24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A8778, &qword_1B4D22438);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a2 = 0;
  v11 = &a2[*(v9 + 20)];
  sub_1B4D17BBC();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A3A0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.audioSynthesisSettings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v3 = &a1[*(v2 + 20)];
  sub_1B4D17BBC();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*Apple_Fitness_Intelligence_InferenceRequest.audioSynthesisSettings.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8778, &qword_1B4D22438);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = &v14[*(v9 + 20)];
    sub_1B4D17BBC();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8778, &qword_1B4D22438);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  return sub_1B4A3A598;
}

uint64_t sub_1B4A3A664(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A3A6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.osBuildVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.telemetryIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(v1 + *(v7 + 36), v6, &qword_1EB8A8780, &qword_1B4D22440);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v10 = a1 + *(v8 + 24);
  sub_1B4D17BBC();
  v11 = (a1 + *(v8 + 28));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8780, &qword_1B4D22440);
  }

  return result;
}

uint64_t sub_1B4A3A98C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v8 + 36), v7, &qword_1EB8A8780, &qword_1B4D22440);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v11 = a2 + *(v9 + 24);
  sub_1B4D17BBC();
  v12 = (a2 + *(v9 + 28));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8780, &qword_1B4D22440);
  }

  return result;
}

uint64_t sub_1B4A3AB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 36);
  sub_1B4975024(a2 + v9, &qword_1EB8A8780, &qword_1B4D22440);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.telemetryIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 36);
  sub_1B4975024(v1 + v3, &qword_1EB8A8780, &qword_1B4D22440);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v3 = a1 + *(v2 + 24);
  result = sub_1B4D17BBC();
  v5 = (a1 + *(v2 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_InferenceRequest.telemetryIdentifier.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8780, &qword_1B4D22440);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v17 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    v18 = (v14 + *(v9 + 28));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8780, &qword_1B4D22440);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  return sub_1B4A3AF64;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.requestIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4A3B06C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4A3B0D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.requestIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceRequest.clearRequestIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.streamAudio.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.streamAudio.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A3B338;
}

uint64_t sub_1B4A3B3D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4A3B440(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 20));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.utterance.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3B5A8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.settings.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A8778, &qword_1B4D22438);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a1 = 0;
  v10 = &a1[*(v8 + 20)];
  sub_1B4D17BBC();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A3B788@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A8778, &qword_1B4D22438);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a2 = 0;
  v11 = &a2[*(v9 + 20)];
  sub_1B4D17BBC();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A3B92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.settings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.settings.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8778, &qword_1B4D22438);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = &v14[*(v9 + 20)];
    sub_1B4D17BBC();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8778, &qword_1B4D22438);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  return sub_1B4A60864;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.bypassSiriAnnounce.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.bypassSiriAnnounce.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

uint64_t sub_1B4A3BF08@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4A3BF70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 32));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.requestIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3C0D8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.streamAudio.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.streamAudio.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = v2[6];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v2[7]) = 2;
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v2[9]) = 2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesisDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AnnounceUtteranceResult.clearSynthesisDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AnnounceUtteranceResult.clearAnnounceDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.debugAudioURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceResult.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceSource.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesizedAudioLength.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AnnounceUtteranceResult.clearSynthesizedAudioLength()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *Apple_Fitness_Intelligence_AnnounceUtteranceResult.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + result[8]) = 2;
  v6 = (a1 + result[9]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A3C930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A3CAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.voice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoice.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1B4A3CCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.voice.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A60880;
}

BOOL sub_1B4A3CFB8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 28), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4A3D0F0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadProgress.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A8788, &qword_1B4D22448);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  }

  *a1 = 0;
  a1[1] = 0;
  v10 = a1 + *(v8 + 24);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8788, &qword_1B4D22448);
  }

  return result;
}

uint64_t sub_1B4A3D370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8A8788, &qword_1B4D22448);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  }

  *a2 = 0;
  a2[1] = 0;
  v11 = a2 + *(v9 + 24);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8788, &qword_1B4D22448);
  }

  return result;
}

uint64_t sub_1B4A3D4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A8788, &qword_1B4D22448);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadProgress.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A8788, &qword_1B4D22448);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadProgress.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8788, &qword_1B4D22448);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v17 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8788, &qword_1B4D22448);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  }

  return sub_1B4A3D908;
}

BOOL sub_1B4A3D980(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 32), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4A3DB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C3A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B4A3DC10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A3DCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v3 = a1 + v2[6];
  sub_1B4D17BBC();
  v4 = v2[7];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoice.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3DF98(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A3DFF4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4A3E05C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 24));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_1B4A3E0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoice.language.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3E210(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.duration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

uint64_t sub_1B4A3E3D4(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceResult.clearDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_1B4A3E464@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4A3E4CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.debugAudioURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3E634(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.systemVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3E73C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 36));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4A3E7A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 36));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.modelVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A3E8AC;
}

uint64_t sub_1B4A3E8C8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1B4A3E908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  sub_1B4975024(a2 + v9, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceResult.announceUtteranceResult.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6940, &unk_1B4D22400);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    *(v14 + v9[8]) = 2;
    v20 = (v14 + v9[9]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v14 + v9[10];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6940, &unk_1B4D22400);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  return sub_1B4A3ECA0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceResult.clearAnnounceUtteranceResult()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  sub_1B4975024(v0 + v1, &qword_1EB8A6940, &unk_1B4D22400);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4A3ED68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(a1 + *(v8 + 44), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A3EED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  sub_1B4975024(a2 + v9, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceResult.voice.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A3F230;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceResult.clearVoice()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  sub_1B4975024(v0 + v1, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4A3F318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A83B8, &qword_1B4D22420);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  }

  sub_1B4D17BBC();
  v11 = *(v9 + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_1EB8A8440;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A83B8, &qword_1B4D22420);
  }

  return result;
}

uint64_t sub_1B4A3F4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A83B8, &qword_1B4D22420);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceFeedback.record.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A83B8, &qword_1B4D22420);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(v9 + 20);
    if (qword_1EB8A6038 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8A8440;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A83B8, &qword_1B4D22420);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  }

  return sub_1B4A3F850;
}

BOOL sub_1B4A3F8C8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 24), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4A3FA00(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.sentiment.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.sentiment.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceFeedback.userDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3FBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceFeedback.utteranceResult.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6940, &unk_1B4D22400);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    *(v14 + v9[8]) = 2;
    v20 = (v14 + v9[9]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v14 + v9[10];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6940, &unk_1B4D22400);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  return sub_1B4A6088C;
}

uint64_t sub_1B4A3FFD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  v3 = &a1[v2[5]];
  sub_1B4D17BBC();
  v4 = v2[6];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = &a1[v2[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = v2[8];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a1[v7], 1, 1, v8);
}

void Apple_Fitness_Intelligence_InferenceAvailability.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceAvailability.reason.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A40364@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A40400(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t Apple_Fitness_Intelligence_InferenceAvailability.AvailabilityValue.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.AvailabilityValue.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B4A40528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C3FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  v3 = a1 + *(v2 + 20);
  result = sub_1B4D17BBC();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A40750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A408C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.voice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.voice.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A60880;
}

uint64_t sub_1B4A40DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C450();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v3 = a1 + *(v2 + 20);
  sub_1B4D17BBC();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.voiceSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A8790, &qword_1B4D22450);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8790, &qword_1B4D22450);
  }

  return result;
}

uint64_t sub_1B4A41064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A8790, &qword_1B4D22450);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8790, &qword_1B4D22450);
  }

  return result;
}

uint64_t sub_1B4A41210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A8790, &qword_1B4D22450);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.voiceSelection.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A8790, &qword_1B4D22450);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_AudioSynthesisSettings.voiceSelection.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8790, &qword_1B4D22450);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v17 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8790, &qword_1B4D22450);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  return sub_1B4A4165C;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.deviceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

void sub_1B4A41888(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.generativeModels.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 24);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A41B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v8 + 20), v7, &qword_1EB8A8798, &qword_1B4D22458);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  v11 = a2 + *(v9 + 24);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A41CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.generativeModels.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0) + 24);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.generativeModels.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    v17 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A42104;
}

BOOL Apple_Fitness_Intelligence_DeviceInferenceAvailability.hasGenerativeModels.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v0 + *(v5 + 20), v4, &qword_1EB8A8798, &qword_1B4D22458);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A8798, &qword_1B4D22458);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_DeviceInferenceAvailability.clearGenerativeModels()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  sub_1B4975024(v0 + v1, &qword_1EB8A8798, &qword_1B4D22458);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.siri.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 24);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A42430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A8798, &qword_1B4D22458);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  v11 = a2 + *(v9 + 24);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A425A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.siri.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.siri.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    v17 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A60890;
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.selectedVoiceAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 24);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A42BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A8798, &qword_1B4D22458);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  v11 = a2 + *(v9 + 24);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A42D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.selectedVoiceAsset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.selectedVoiceAsset.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    v17 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A60890;
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 24);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A43310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8A8798, &qword_1B4D22458);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  v11 = a2 + *(v9 + 24);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A43484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.locale.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    v17 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A60890;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceRecordV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D17BCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceRecordV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_1B4D17BCC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.unavailableReasons.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B4A43B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C4A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v7(a1 + v2[6], 1, 1, v4);
  v7(a1 + v2[7], 1, 1, v4);
  v5 = a1 + v2[8];

  return (v7)(v5, 1, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_AnnounceCancellationResult.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0) + 20)];
  return sub_1B4D17BBC();
}

unint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.Intensity.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B4A440D0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A4413C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C4F8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B4A44188()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A44250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A76C8, &unk_1B4D22410);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = a1 + *(v2 + 52);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_StreamingAudioAvailable.streamDescription.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A76C8, &unk_1B4D22410);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *(v14 + 32) = 0;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    v17 = v14 + *(v9 + 52);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A76C8, &unk_1B4D22410);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  }

  return sub_1B4A44680;
}

uint64_t sub_1B4A44754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v11 = (a2 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A448C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_StreamingAudioAvailable.voice.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A60880;
}