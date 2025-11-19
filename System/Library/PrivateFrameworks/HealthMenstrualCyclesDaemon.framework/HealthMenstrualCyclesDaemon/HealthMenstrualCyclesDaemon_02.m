uint64_t sub_229437D24(void *a1)
{
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F174();
  __swift_project_value_buffer(v2, qword_2813DBFB8);
  v3 = a1;
  v4 = sub_22944F154();
  v5 = sub_22944FA84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315394;
    v8 = sub_22944FF44();
    v10 = sub_2293D4824(v8, v9, v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = [v3 debugDescription];
    sub_22944F894();

    sub_22944FE34();
    v12 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_22944FB34();
    swift_unknownObjectRelease();
    v13 = sub_22944F8A4();
    v15 = sub_2293D4824(v13, v14, v18);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_2293D1000, v4, v5, "[%s] Will insert new record %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v7, -1, -1);
    MEMORY[0x22AACCC00](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v16);
  swift_beginAccess();
  sub_2293DB818();
  sub_22944F724();
  return swift_endAccess();
}

uint64_t sub_229437FD8(uint64_t a1, void *a2)
{
  sub_22943AC44(0, &qword_2813DBF48, MEMORY[0x277CFB7B8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25[-v5];
  sub_2293DB9D8();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v25[-v18];
  sub_22942BEC4(a2, &v25[-v18]);
  sub_22943A71C(v19, v17, type metadata accessor for CoherentExperienceSetupRecord);
  v20 = sub_22944F7D4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = sub_22943ABE0(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord);

  MEMORY[0x22AACB440](v22, v17, v6, v13, v21);
  swift_getKeyPath();
  v23 = sub_22944F704();
  sub_2293DBB38(0);
  sub_22944F514();
  v23(v25, 0);

  (*(v9 + 8))(v12, v8);
  return sub_22943AB80(v19, type metadata accessor for CoherentExperienceSetupRecord);
}

uint64_t HDCodableMenstrualCyclesExperienceModel.deleteRecord(with:)(void *a1)
{
  v104 = a1;
  ObjectType = swift_getObjectType();
  v93 = sub_22944F0B4();
  v96 = *(v93 - 8);
  v2 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  v95 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22944F5A4();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x28223BE20](v4);
  v99 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB9D8();
  v103 = v7;
  v105 = *(v7 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DBB38(0);
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = *(v101 + 64);
  MEMORY[0x28223BE20](v11);
  v100 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818();
  v106 = v14;
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  sub_22943A094(0);
  v23 = v22;
  v24 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v83 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v83 - v31;
  v33 = v107;
  result = sub_2294364B8();
  if (!v33)
  {
    v87 = v23;
    v89 = v27;
    v90 = v19;
    v92 = v10;
    v83 = v1;
    v35 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    v36 = result;
    v107 = 0;
    swift_beginAccess();
    v37 = v15[2];
    v84 = v35;
    v38 = &v36[v35];
    v39 = v106;
    v86 = v15 + 2;
    v85 = v37;
    v37(v21, v38, v106);
    swift_getKeyPath();
    v40 = v36;
    v41 = v100;
    sub_22944F6D4();

    v42 = v15[1];
    v91 = v15 + 1;
    v88 = v42;
    v43 = (v42)(v21, v39);
    MEMORY[0x28223BE20](v43);
    v44 = v104;
    *(&v83 - 2) = v36;
    *(&v83 - 1) = v44;
    v45 = v107;
    sub_22941F040(sub_22943A6E0, (&v83 - 4), v32);
    v107 = v45;
    (*(v101 + 8))(v41, v102);
    sub_22943A71C(v32, v30, sub_22943A094);
    v46 = v105;
    v47 = v103;
    v48 = (*(v105 + 48))(v30, 1, v103);
    v102 = v32;
    if (v48 == 1)
    {
      v106 = v40;
      sub_22943AB80(v30, sub_22943A094);
      if (qword_2813DBFB0 != -1)
      {
        swift_once();
      }

      v49 = sub_22944F174();
      __swift_project_value_buffer(v49, qword_2813DBFB8);
      v50 = v95;
      v51 = v96;
      v52 = v93;
      (*(v96 + 16))(v95, v44, v93);
      v53 = sub_22944F154();
      v54 = sub_22944FA64();
      v55 = os_log_type_enabled(v53, v54);
      v56 = ObjectType;
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v109 = v58;
        *v57 = 136315394;
        v108 = v56;
        swift_getMetatypeMetadata();
        v59 = sub_2293D47B8();
        v61 = sub_2293D4824(v59, v60, &v109);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        sub_22943ABE0(&qword_2813DC480, MEMORY[0x277CC95F0]);
        v62 = sub_22944FDF4();
        v64 = v63;
        (*(v51 + 8))(v50, v52);
        v65 = sub_2293D4824(v62, v64, &v109);

        *(v57 + 14) = v65;
        _os_log_impl(&dword_2293D1000, v53, v54, "[%s] Unable to delete record that does not exist: %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACCC00](v58, -1, -1);
        MEMORY[0x22AACCC00](v57, -1, -1);
      }

      else
      {

        (*(v51 + 8))(v50, v52);
      }

      return sub_22943AB80(v102, sub_22943A094);
    }

    else
    {
      v66 = *(v46 + 32);
      v67 = v92;
      v68 = v66(v92, v30, v47);
      MEMORY[0x28223BE20](v68);
      *(&v83 - 2) = v67;
      v69 = v84;
      swift_beginAccess();
      v70 = v40;
      v71 = v89;
      v72 = v107;
      sub_22944F724();
      if (v72)
      {
        result = swift_endAccess();
        __break(1u);
      }

      else
      {
        swift_endAccess();
        sub_22943AB80(v71, sub_22943A094);
        sub_22944F7B4();
        v73 = sub_22944F7A4();
        v74 = v97;
        v75 = v98;
        (*(v97 + 104))(v99, *MEMORY[0x277CFB5F0], v98);
        v76 = &v70[v69];
        v77 = v90;
        v85(v90, v76, v106);
        v78 = sub_22944F6F4();
        v79 = v74;
        v81 = v80;
        v88(v77, v106);
        v82 = sub_22944EF84();
        sub_22943A0D8(v78, v81);
        [v83 setMenstrualCyclesExperienceModelData_];

        (*(v79 + 8))(v99, v75);
        sub_22943AB80(v102, sub_22943A094);
        return (*(v105 + 8))(v92, v47);
      }
    }
  }

  return result;
}

uint64_t sub_229438CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v29 = a1;
  v4 = sub_22944F0B4();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942B5AC();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  swift_beginAccess();
  (*(v18 + 16))(v21, a2 + v22, v17);
  sub_22943ABE0(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord);
  sub_22944F754();
  (*(v18 + 8))(v21, v17);
  v23 = v28;
  (*(v8 + 16))(v11, &v15[*(v12 + 20)], v28);
  sub_22943AB80(v15, type metadata accessor for CoherentExperienceSetupRecord);
  v24 = v30;
  sub_22944F1E4();
  (*(v8 + 8))(v11, v23);
  v25 = v24;
  LOBYTE(v24) = sub_22944F084();
  (*(v31 + 8))(v25, v32);
  return v24 & 1;
}

uint64_t sub_229439020()
{
  swift_getKeyPath();
  v0 = sub_22944F704();
  sub_2293DBB38(0);
  sub_22944F524();
  v0(&v2, 0);
}

uint64_t sub_2294390CC()
{
  sub_2293DB818();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22944F5A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2294364B8();
  if (!v1)
  {
    v14 = result;
    v26 = v0;
    v27 = v9;
    v28 = v8;
    v15 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    swift_beginAccess();
    sub_22944F724();
    swift_endAccess();
    sub_22944F7B4();
    v16 = sub_22944F7A4();
    v17 = v27;
    (*(v27 + 104))(v12, *MEMORY[0x277CFB5F0], v28);
    v18 = v14 + v15;
    v19 = v16;
    (*(v4 + 16))(v7, v18, v3);
    v20 = sub_22944F6F4();
    v21 = v7;
    v23 = v22;
    (*(v4 + 8))(v21, v3);
    v24 = sub_22944EF84();
    sub_22943A0D8(v20, v23);
    [v26 setMenstrualCyclesExperienceModelData_];

    return (*(v17 + 8))(v12, v28);
  }

  return result;
}

uint64_t sub_2294393C4()
{
  swift_getKeyPath();
  v0 = sub_22944F704();
  sub_2293DBB38(0);
  sub_22944F534();
  v0(&v2, 0);
}

BOOL HDCodableMenstrualCyclesExperienceModel.isEqual(_:)(uint64_t a1)
{
  sub_2293DBB38(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  sub_2293DB818();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  sub_22943A71C(a1, v41, sub_22943A784);
  if (v42)
  {
    sub_2293D30DC(0, &qword_2813DBE18, 0x277D10638);
    if (swift_dynamicCast())
    {
      v38 = v1;
      v39 = v5;
      v21 = v40;
      v37 = sub_2294364B8();
      v36 = sub_2294364B8();
      v35 = v21;
      v23 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
      v24 = v37;
      swift_beginAccess();
      v34 = v14[2];
      v34(v20, v24 + v23, v13);
      swift_getKeyPath();
      sub_22944F6D4();

      v25 = v14[1];
      v25(v20, v13);
      v26 = v25;
      v27 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
      v28 = v36;
      swift_beginAccess();
      v34(v18, v28 + v27, v13);
      swift_getKeyPath();
      sub_22944F6D4();

      v26(v18, v13);
      sub_2293DB9D8();
      sub_22943ABE0(&qword_2813DBF70, sub_2293DB9D8);
      sub_22943ABE0(&qword_2813DBF68, sub_2293DB9D8);
      v29 = sub_22944F4E4();
      v30 = *(v39 + 8);
      v30(v9, v4);
      v30(v11, v4);
      if (v29)
      {
        v31 = [v38 epoch];
        v32 = v35;
        v33 = [v35 epoch];

        return v31 == v33;
      }
    }
  }

  else
  {
    sub_22943AB80(v41, sub_22943A784);
  }

  return 0;
}

BOOL sub_2294398C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = HDCodableMenstrualCyclesExperienceModel.isEqual(_:)(v8);

  sub_22943AB80(v8, sub_22943A784);
  return v6;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDCodableMenstrualCyclesExperienceModel.purgeCoherentMetadataAndIncrementEpoch()()
{
  v2 = sub_22944F5A4();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22944F7D4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for CoherentExperienceSetupRecordDatabase(0);
  v9 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v62 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DBB38(0);
  v12 = v11;
  v61 = *(v11 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818();
  v17 = v16;
  v67 = *(v16 - 8);
  v18 = *(v67 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v63 = v53 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v53 - v24;
  v26 = sub_2294364B8();
  if (!v1)
  {
    v58 = v21;
    v59 = v5;
    v60 = v2;
    v53[0] = v0;
    v27 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    v28 = v26;
    swift_beginAccess();
    v29 = v67;
    v54 = *(v67 + 16);
    v55 = v67 + 16;
    v54(v25, &v28[v27], v17);
    swift_getKeyPath();

    sub_22944F6D4();

    v56 = *(v29 + 8);
    v57 = v29 + 8;
    v56(v25, v17);
    type metadata accessor for CoherentExperienceSetupRecord(0);
    v53[1] = v28;
    v30 = sub_22944F4F4();
    (*(v61 + 8))(v15, v12);
    v31 = type metadata accessor for CoherentExperienceSetupRecordDatabaseWrapper(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v61 = swift_allocObject();
    sub_2293DB9D8();
    sub_22943ABE0(&qword_2813DBF70, sub_2293DB9D8);
    sub_22943ABE0(&qword_2813DBF68, sub_2293DB9D8);
    v34 = v62;
    sub_22944F544();
    *&v34[*(v64 + 20)] = MEMORY[0x277D84F98];
    sub_22944F7C4();
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase);
    v35 = v63;
    v36 = sub_22944F744();
    MEMORY[0x28223BE20](v36);
    v53[-2] = v30;
    sub_22944F724();
    v37 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    v38 = v61;
    (*(v67 + 32))(v61 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule, v35, v17);

    sub_22944F7B4();

    v39 = sub_22944F7A4();
    v40 = v66;
    v42 = v59;
    v41 = v60;
    (*(v66 + 104))(v59, *MEMORY[0x277CFB5F0], v60);
    swift_beginAccess();
    v43 = v38 + v37;
    v44 = v58;
    v54(v58, v43, v17);
    v45 = sub_22944F6F4();
    v47 = v46;
    v56(v44, v17);
    v48 = sub_22944EF84();
    sub_22943A0D8(v45, v47);
    v49 = v53[0];
    [v53[0] setMenstrualCyclesExperienceModelData_];

    (*(v40 + 8))(v42, v41);
    v50 = [v49 epoch];
    if (__OFADD__(v50, 1))
    {
      __break(1u);

      v51 = *(*v61 + 48);
      v52 = *(*v61 + 52);
      swift_deallocPartialClassInstance();
      __break(1u);
    }

    else
    {
      [v49 setEpoch_];
    }
  }
}

uint64_t sub_22943A0D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t HDCodableMenstrualCyclesExperienceModel.logDescription.getter()
{
  swift_getObjectType();
  strcpy(v3, " backingData=");
  HIWORD(v3[1]) = -4864;
  sub_2294364B8();
  type metadata accessor for CoherentExperienceSetupRecordDatabaseWrapper(0);

  v0 = sub_22944F8A4();
  MEMORY[0x22AACB740](v0);

  v1 = v3[0];
  v3[0] = sub_22944FF44();
  MEMORY[0x22AACB740](32, 0xE100000000000000);
  MEMORY[0x22AACB740](v1, v3[1]);

  return v3[0];
}

uint64_t HDCodableMenstrualCyclesExperienceModel.Failure.hashValue.getter()
{
  sub_22944FEC4();
  MEMORY[0x22AACBD40](0);
  return sub_22944FEE4();
}

uint64_t sub_22943A2F4()
{
  sub_22944FEC4();
  MEMORY[0x22AACBD40](0);
  return sub_22944FEE4();
}

uint64_t sub_22943A360()
{
  sub_22944FEC4();
  MEMORY[0x22AACBD40](0);
  return sub_22944FEE4();
}

id (*sub_22943A3F0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 epoch];
  return sub_22943A444;
}

void sub_22943A490(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AACBA60](a1, a2, v7);
      sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
    if (sub_22944FBB4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22944FBC4();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_22944FAF4();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_22944FB04();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_22943A71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22943A784()
{
  if (!qword_2813DBD88)
  {
    v0 = sub_22944FB14();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBD88);
    }
  }
}

unint64_t sub_22943A7F4()
{
  result = qword_2813DBD90;
  if (!qword_2813DBD90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DBD90);
  }

  return result;
}

unint64_t sub_22943A85C()
{
  result = qword_27D86E9D8;
  if (!qword_27D86E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E9D8);
  }

  return result;
}

uint64_t _s7FailureOwet(unsigned int *a1, int a2)
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

_WORD *_s7FailureOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_22943A990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoherentExperienceSetupRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22943A9F4()
{
  if (!qword_27D86E9E0)
  {
    sub_2293D30DC(255, &qword_2813DBE38, 0x277D119C0);
    sub_2293D6A84(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
    v0 = sub_22944F9F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E9E0);
    }
  }
}

void sub_22943AA9C()
{
  if (!qword_2813DBFA8)
  {
    sub_2293D7574(255);
    sub_22942B818();
    v0 = sub_22944F204();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBFA8);
    }
  }
}

void sub_22943AB00()
{
  if (!qword_2813DBF98)
  {
    sub_22943AC44(255, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    sub_22942B62C();
    v0 = sub_22944F204();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF98);
    }
  }
}

uint64_t sub_22943AB80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22943ABE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22943AC44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22944FB14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22943AC98()
{
  result = qword_27D86E9E8;
  if (!qword_27D86E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E9E8);
  }

  return result;
}

uint64_t sub_22943AD04()
{
  v0 = sub_22944F174();
  __swift_allocate_value_buffer(v0, qword_2813DBFB8);
  __swift_project_value_buffer(v0, qword_2813DBFB8);
  return sub_22944F164();
}

uint64_t static Logger.menstrualCycles.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F174();
  v3 = __swift_project_value_buffer(v2, qword_2813DBFB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id HDMCExperienceStoreServer.__allocating_init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_22944F074();
  v11 = [v9 initWithUUID:v10 configuration:a2 client:a3 delegate:a4];

  swift_unknownObjectRelease();
  v12 = sub_22944F0B4();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id HDMCExperienceStoreServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  v10 = [a3 profile];
  v11 = [v10 profileExtensionWithIdentifier_];

  if (v11)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_22943DAD8(v23, sub_22943A784);
    goto LABEL_8;
  }

  sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v14 = 0;
    v12 = 0;
    *&v5[OBJC_IVAR___HDMCExperienceStoreServer_experienceModelManager] = 0;
    goto LABEL_9;
  }

  v12 = v19;
  v13 = [v19 experienceModelManager];
  *&v5[OBJC_IVAR___HDMCExperienceStoreServer_experienceModelManager] = v13;
  v14 = [v19 pregnancyManager];
LABEL_9:
  swift_unknownObjectWeakAssign();

  v15 = sub_22944F074();
  v20.receiver = v5;
  v20.super_class = type metadata accessor for HDMCExperienceStoreServer();
  v16 = objc_msgSendSuper2(&v20, sel_initWithUUID_configuration_client_delegate_, v15, a2, a3, a4);

  swift_unknownObjectRelease();
  v17 = sub_22944F0B4();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v16;
}

uint64_t sub_22943B398(uint64_t (*a1)(uint64_t, void))
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v4 = sub_22944F174();
  __swift_project_value_buffer(v4, qword_2813DBFB8);
  v5 = sub_22944F154();
  v6 = sub_22944FA84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_22944FF44();
    v11 = sub_2293D4824(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2293D1000, v5, v6, "[%{public}s] Starting observation", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AACCC00](v8, -1, -1);
    MEMORY[0x22AACCC00](v7, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR___HDMCExperienceStoreServer_experienceModelManager);
  if (v12)
  {
    [v12 registerWithObserver_];
  }

  return a1(1, 0);
}

void sub_22943B56C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22944EF64();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_22943B5DC()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F174();
  __swift_project_value_buffer(v2, qword_2813DBFB8);
  v3 = sub_22944F154();
  v4 = sub_22944FA84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_22944FF44();
    v9 = sub_2293D4824(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2293D1000, v3, v4, "[%{public}s] Stopping observation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AACCC00](v6, -1, -1);
    MEMORY[0x22AACCC00](v5, -1, -1);
  }

  result = *(v1 + OBJC_IVAR___HDMCExperienceStoreServer_experienceModelManager);
  if (result)
  {

    return [result removeWithObserver_];
  }

  return result;
}

void sub_22943B7C8(void (*a1)(void *, void))
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v4 = sub_22944F174();
  __swift_project_value_buffer(v4, qword_2813DBFB8);
  v5 = sub_22944F154();
  v6 = sub_22944FA84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v9 = sub_22944FF44();
    v11 = sub_2293D4824(v9, v10, &v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2293D1000, v5, v6, "[%{public}s] Fetching experience model", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AACCC00](v8, -1, -1);
    MEMORY[0x22AACCC00](v7, -1, -1);
  }

  v12 = [v2 client];
  v13 = [v12 profile];

  type metadata accessor for HDMCExperienceDaemonStore();
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  v15 = objc_allocWithZone(MEMORY[0x277D10718]);
  v16 = v13;
  v17 = sub_22944F864();
  v18 = [v15 initWithCategory:100 domainName:v17 profile:v16];

  *(inited + 24) = v18;
  v19 = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
  sub_2294364B8();
  v20 = sub_22944320C();

  v21 = v20;
  a1(v20, 0);
}

uint64_t sub_22943BC00(void *a1, void (*a2)(void, void))
{
  v4 = sub_22944F0B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 sampleUUID];
  sub_22944F094();

  sub_22943BF70(a1, v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22943BE78(void *a1, uint64_t a2, void (*a3)(void, void))
{
  v5 = sub_22944F0B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22944F094();
  sub_22943BF70(a1, v9, a3);
  return (*(v6 + 8))(v9, v5);
}

void sub_22943BF70(void *a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = v3;
  v36 = a2;
  ObjectType = swift_getObjectType();
  sub_22942A8EC(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v12 = sub_22944F174();
  __swift_project_value_buffer(v12, qword_2813DBFB8);
  v13 = sub_22944F154();
  v14 = sub_22944FA84();
  v15 = os_log_type_enabled(v13, v14);
  v37 = v11;
  v38 = ObjectType;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v4;
    v18 = v17;
    v39 = v17;
    *v16 = 136446210;
    v19 = sub_22944FF44();
    v21 = a3;
    v22 = sub_2293D4824(v19, v20, &v39);

    *(v16 + 4) = v22;
    a3 = v21;
    _os_log_impl(&dword_2293D1000, v13, v14, "[%{public}s] Writing to experience model", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v23 = v18;
    v4 = v35;
    MEMORY[0x22AACCC00](v23, -1, -1);
    MEMORY[0x22AACCC00](v16, -1, -1);
  }

  v24 = [v4 client];
  v25 = [v24 profile];

  type metadata accessor for HDMCExperienceDaemonStore();
  inited = swift_initStackObject();
  *(inited + 16) = v25;
  v27 = objc_allocWithZone(MEMORY[0x277D10718]);
  v28 = v25;
  v29 = sub_22944F864();
  v30 = [v27 initWithCategory:100 domainName:v29 profile:v28];

  *(inited + 24) = v30;
  v31 = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
  v32 = sub_22944F0B4();
  v33 = *(v32 - 8);
  v34 = v37;
  (*(v33 + 16))(v37, v36, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(a1, v34);
  sub_22943DAD8(v34, sub_22942A8EC);
  HDMCExperienceDaemonStore.setModel(_:)(v31);
  a3(1, 0);
}

void sub_22943C5E4(void *a1, void (*a2)(void, void))
{
  v3 = v2;
  v38 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_22944F0B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v10 = sub_22944F174();
  __swift_project_value_buffer(v10, qword_2813DBFB8);
  v11 = sub_22944F154();
  v12 = sub_22944FA84();
  v13 = os_log_type_enabled(v11, v12);
  v39 = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v36 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37 = v6;
    v17 = v16;
    v41 = v16;
    *v15 = 136446210;
    v18 = sub_22944FF44();
    v20 = a2;
    v21 = sub_2293D4824(v18, v19, &v41);

    *(v15 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_2293D1000, v11, v12, "[%{public}s] Deleting record from experience model", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v22 = v17;
    v6 = v37;
    MEMORY[0x22AACCC00](v22, -1, -1);
    v23 = v15;
    v3 = v36;
    MEMORY[0x22AACCC00](v23, -1, -1);
  }

  v24 = [v3 client];
  v25 = [v24 profile];

  type metadata accessor for HDMCExperienceDaemonStore();
  inited = swift_initStackObject();
  *(inited + 16) = v25;
  v27 = objc_allocWithZone(MEMORY[0x277D10718]);
  v28 = v25;
  v29 = sub_22944F864();
  v30 = [v27 initWithCategory:100 domainName:v29 profile:v28];

  *(inited + 24) = v30;
  v31 = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
  v32 = v40;
  v33 = v31;
  v34 = [v38 sampleUUID];
  sub_22944F094();

  HDCodableMenstrualCyclesExperienceModel.deleteRecord(with:)(v32);
  (*(v7 + 8))(v32, v6);
  HDMCExperienceDaemonStore.setModel(_:)(v33);
  a2(1, 0);
}

void sub_22943CB78(void (*a1)(id, void))
{
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F174();
  __swift_project_value_buffer(v2, qword_2813DBFB8);
  v3 = sub_22944F154();
  v4 = sub_22944FA84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_22944FF44();
    v9 = sub_2293D4824(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2293D1000, v3, v4, "[%{public}s] Getting cached model", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AACCC00](v6, -1, -1);
    MEMORY[0x22AACCC00](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = HDMCPregnancyManager.getCurrentPregnancyModel()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D11970]) initWithModel_];
  a1(v13, 0);
}

void sub_22943CD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22944EF64();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_22943CDFC(void (*a1)(uint64_t, void))
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v4 = sub_22944F174();
  __swift_project_value_buffer(v4, qword_2813DBFB8);
  v5 = sub_22944F154();
  v6 = sub_22944FA84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    v9 = sub_22944FF44();
    v11 = sub_2293D4824(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2293D1000, v5, v6, "[%{public}s] Deleting all setup records", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AACCC00](v8, -1, -1);
    MEMORY[0x22AACCC00](v7, -1, -1);
  }

  v12 = [v2 client];
  v13 = [v12 profile];

  type metadata accessor for HDMCExperienceDaemonStore();
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  v15 = objc_allocWithZone(MEMORY[0x277D10718]);
  v16 = v13;
  v17 = sub_22944F864();
  v18 = [v15 initWithCategory:100 domainName:v17 profile:v16];

  *(inited + 24) = v18;
  v19 = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
  sub_2294390CC();
  HDMCExperienceDaemonStore.setModel(_:)(v19);
  a1(1, 0);
}

uint64_t sub_22943D220(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id HDMCExperienceStoreServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDMCExperienceStoreServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall HDMCExperienceStoreServer.experienceModelManagerDidUpdateModel()()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F174();
  __swift_project_value_buffer(v2, qword_2813DBFB8);
  v3 = sub_22944F154();
  v4 = sub_22944FA84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37[0] = v6;
    *v5 = 136446210;
    v7 = sub_22944FF44();
    v9 = sub_2293D4824(v7, v8, v37);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2293D1000, v3, v4, "[%{public}s] Received an update for the experience model", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AACCC00](v6, -1, -1);
    MEMORY[0x22AACCC00](v5, -1, -1);
  }

  v10 = [v1 client];
  v11 = [v10 connection];

  if (!v11 || (v12 = [v11 remoteObjectProxy], v11, sub_22944FB34(), swift_unknownObjectRelease(), sub_22943DB38(), (swift_dynamicCast() & 1) == 0))
  {
    v21 = sub_22944F154();
    v22 = sub_22944FA74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37[0] = v24;
      *v23 = 136315138;
      v25 = sub_22944FF44();
      v27 = sub_2293D4824(v25, v26, v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2293D1000, v21, v22, "[%s] Unexpected client interface", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x22AACCC00](v24, -1, -1);
      MEMORY[0x22AACCC00](v23, -1, -1);
    }

    goto LABEL_10;
  }

  v13 = [v1 client];
  v14 = [v13 profile];

  type metadata accessor for HDMCExperienceDaemonStore();
  inited = swift_initStackObject();
  v16 = objc_allocWithZone(MEMORY[0x277D10718]);
  v17 = v14;
  v18 = sub_22944F864();
  v19 = [v16 initWithCategory:100 domainName:v18 profile:v17];

  *(inited + 24) = v19;
  v20 = HDMCExperienceDaemonStore.fetchLocallyPersistedData()();
  if (v20)
  {
    v28 = v20;
    sub_2294364B8();
    v35 = sub_22944320C();

    [v36 client:v35 experienceModelDidUpdate:?];

    swift_unknownObjectRelease();
    return;
  }

  v21 = sub_22944F154();
  v29 = sub_22944FA84();
  if (!os_log_type_enabled(v21, v29))
  {

    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v37[0] = v31;
  *v30 = 136315138;
  v32 = sub_22944FF44();
  v34 = sub_2293D4824(v32, v33, v37);

  *(v30 + 4) = v34;
  _os_log_impl(&dword_2293D1000, v21, v29, "[%s] Nil experience model", v30, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  MEMORY[0x22AACCC00](v31, -1, -1);
  MEMORY[0x22AACCC00](v30, -1, -1);
  swift_unknownObjectRelease();
}

void sub_22943D9B8(void *a1)
{
  v1 = [a1 entitlements];
  v2 = [v1 hasEntitlement_];

  if (!v2)
  {
    v3 = objc_opt_self();
    sub_22944FC84();

    v4 = sub_22944F894();
    MEMORY[0x22AACB740](v4);

    v5 = sub_22944F864();

    [v3 hk:4 error:v5 description:{0xD00000000000001DLL, 0x80000002294589D0}];

    swift_willThrow();
  }
}

uint64_t sub_22943DAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22943DB38()
{
  result = qword_27D86EA08;
  if (!qword_27D86EA08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D86EA08);
  }

  return result;
}

uint64_t dispatch thunk of HDMCExperienceStoreServer.remote_persistSetupRecord(_:mergeWith:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
}

unint64_t sub_22943DDBC()
{
  result = qword_27D86EAE0;
  if (!qword_27D86EAE0)
  {
    sub_22944F054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86EAE0);
  }

  return result;
}

uint64_t ExperienceModelSyncStateUpdaterDelegate.__allocating_init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v19[1] = a6;
  v19[2] = a8;
  v12 = sub_22944F174();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v9);
  (*(v13 + 16))(v16, a1, v12);
  v19[3] = a7;
  v17 = sub_22944F144();
  (*(v13 + 8))(a1, v12);
  return v17;
}

uint64_t ExperienceModelSyncStateUpdaterDelegate.init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = a8;
  v10 = sub_22944F174();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v16[3] = a7;
  v14 = sub_22944F144();
  (*(v11 + 8))(a1, v10);
  return v14;
}

id ExperienceModelSyncStateUpdaterDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ExperienceModelSyncStateUpdaterDelegate()
{
  result = qword_27D86EAE8;
  if (!qword_27D86EAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22943E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v9 = v8;
  v20[1] = a6;
  v20[2] = a8;
  v12 = sub_22944F174();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a7;
  objc_allocWithZone(v9);
  (*(v13 + 16))(v16, a1, v12);
  v20[3] = v17;
  v18 = sub_22944F144();
  (*(v13 + 8))(a1, v12);
  return v18;
}

uint64_t sub_22943E2C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  sub_22943F22C(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_22944FB54();
  v6 = v27;
  v7 = a1;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    v12 = *(v7 + 36);
    if (*(*(v7 + 48) + result))
    {
      v13 = 0xD000000000000014;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (*(*(v7 + 48) + result))
    {
      v14 = "elSyncStateUpdaterDelegate";
    }

    else
    {
      v14 = "CycleAnalysisChanged";
    }

    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(v7 + 36);
      v26 = result;
      sub_22943F22C((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v7 = a1;
      v12 = v25;
      result = v26;
    }

    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14 | 0x8000000000000000;
    v9 = 1 << *(v7 + 32);
    if (result >= v9)
    {
      goto LABEL_28;
    }

    v18 = *(v3 + 8 * v10);
    if ((v18 & v11) == 0)
    {
      goto LABEL_29;
    }

    if (v12 != *(v7 + 36))
    {
      goto LABEL_30;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 64 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_2294314B8(result, v12, 0);
          v6 = v27;
          v7 = a1;
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_2294314B8(result, v12, 0);
      v6 = v27;
      v7 = a1;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_22943E530(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = [a2 kind];
  if (!v6)
  {
    sub_22944F894();
    v6 = sub_22944F864();
  }

  v7 = sub_22944F894();
  v9 = v8;
  v43 = a1;
  v41 = sub_22944030C(a1);
  v11 = v10;
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v12 = sub_22944F174();
  __swift_project_value_buffer(v12, qword_2813DBFB8);

  v13 = sub_22944F154();
  v14 = sub_22944FA84();

  v46 = v6;
  v47 = v4;
  v44 = v7;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_2293D4824(0xD00000000000001ALL, 0x80000002294554A0, &v48);
    *(v15 + 12) = 2080;
    aBlock = v7;
    v50 = v9;

    sub_22944FE34();
    v17 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_22944FB34();
    swift_unknownObjectRelease();
    v18 = sub_22944F8A4();
    v20 = sub_2293D4824(v18, v19, &v48);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    aBlock = v41;
    v50 = v11;
    sub_22944FE34();
    v21 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_22944FB34();
    swift_unknownObjectRelease();
    v22 = sub_22944F8A4();
    v24 = sub_2293D4824(v22, v23, &v48);

    *(v15 + 24) = v24;
    _os_log_impl(&dword_2293D1000, v13, v14, "[%{public}s] reloading widget kind %s with reason: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v16, -1, -1);
    v25 = v15;
    v4 = v47;
    MEMORY[0x22AACCC00](v25, -1, -1);
  }

  else
  {
  }

  sub_22944030C(v43);
  v26 = sub_22944F864();

  v27 = sub_22944F154();
  v28 = sub_22944FA84();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_2293D4824(0xD00000000000001ALL, 0x80000002294554A0, &v48);
    *(v29 + 12) = 2080;
    aBlock = v7;
    v50 = v9;

    sub_22944FE34();
    v31 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_22944FB34();
    swift_unknownObjectRelease();
    v32 = sub_22944F8A4();
    v34 = sub_2293D4824(v32, v33, &v48);

    *(v29 + 14) = v34;
    v7 = v44;
    _os_log_impl(&dword_2293D1000, v27, v28, "[%{public}s] invalidating widget relevances for kind %s", v29, 0x16u);
    swift_arrayDestroy();
    v35 = v30;
    v4 = v47;
    MEMORY[0x22AACCC00](v35, -1, -1);
    MEMORY[0x22AACCC00](v29, -1, -1);
  }

  v36 = [objc_opt_self() sharedWidgetService];
  v37 = sub_22944F864();
  v38 = swift_allocObject();
  v38[2] = v7;
  v38[3] = v9;
  v38[4] = v4;
  v38[5] = a3;
  v38[6] = a4;
  v53 = sub_229440408;
  v54 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22943ED6C;
  v52 = &block_descriptor_2;
  v39 = _Block_copy(&aBlock);
  v40 = v4;

  [v36 invalidateRelevancesOfKind:v46 inBundle:v37 completion:v39];
  _Block_release(v39);
}

void sub_22943EAF0(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    v12 = a1;
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_22944F174();
    __swift_project_value_buffer(v13, qword_2813DBFB8);
    v14 = a1;

    v15 = a4;

    v16 = sub_22944F154();
    v17 = sub_22944FA64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v18 = 136446978;
      *(v18 + 4) = sub_2293D4824(0xD00000000000001ALL, 0x80000002294554A0, &v24);
      *(v18 + 12) = 2082;
      v19 = a1;
      sub_22943A7F4();
      v20 = sub_22944F8A4();
      v22 = sub_2293D4824(v20, v21, &v24);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2082;
      *(v18 + 24) = sub_2293D4824(a2, a3, &v24);
      *(v18 + 32) = 2082;
      *(v18 + 34) = sub_2293D4824(a5, a6, &v24);
      _os_log_impl(&dword_2293D1000, v16, v17, "[%{public}s] error invalidating relevance %{public}s for widget of kind %{public}s in bundleIdentifier: %{public}s", v18, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v23, -1, -1);
      MEMORY[0x22AACCC00](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22943ED6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

unint64_t HDMCWidgetReloadReason.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t HDMCWidgetReloadReason.hashValue.getter()
{
  v1 = *v0;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v1);
  return sub_22944FEE4();
}

unint64_t sub_22943EEAC()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_22943EEE8()
{
  v1 = *v0;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v1);
  return sub_22944FEE4();
}

uint64_t sub_22943EF5C()
{
  v1 = *v0;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v1);
  return sub_22944FEE4();
}

unint64_t sub_22943EFA4()
{
  result = qword_2813DC3B0;
  if (!qword_2813DC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DC3B0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22943F030(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22943F078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_22943F0C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_229440538(0, &qword_27D86EAF8, sub_22944048C);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_22943F1DC(size_t a1, int64_t a2, char a3)
{
  result = sub_22943F3D8(a1, a2, a3, *v3, &qword_27D86EB10, type metadata accessor for CoherentExperienceSetupRecord, type metadata accessor for CoherentExperienceSetupRecord);
  *v3 = result;
  return result;
}

char *sub_22943F22C(char *a1, int64_t a2, char a3)
{
  result = sub_22943F2BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22943F24C(size_t a1, int64_t a2, char a3)
{
  result = sub_22943F3D8(a1, a2, a3, *v3, &qword_27D86EB08, sub_2293DB9D8, sub_2293DB9D8);
  *v3 = result;
  return result;
}

void *sub_22943F29C(void *a1, int64_t a2, char a3)
{
  result = sub_22943F5B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22943F2BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2294404E4(0, &unk_2813DBDB0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22943F3D8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_229440538(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_22943F5B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_229440538(0, &qword_27D86EB18, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22943F6F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2294401C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22943F75C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22943F75C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22944FDE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22944F964();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22943F924(v7, v8, a1, v4);
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
    return sub_22943F854(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22943F854(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22944FE24(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22943F924(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2294401B4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22943FF00((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22944FE24();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22944FE24();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22943F0C8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22943F0C8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22943FF00((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2294401B4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_229440128(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22944FE24(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22943FF00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22944FE24() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22944FE24() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_229440128(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2294401B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id sub_2294401DC(void *a1)
{
  v1 = [a1 daemon];
  if (v1 && (v2 = v1, v3 = [v1 behavior], v2, LOBYTE(v2) = objc_msgSend(v3, sel_isAppleWatch), v3, (v2 & 1) != 0))
  {
    v4 = MEMORY[0x277D118B0];
    v5 = MEMORY[0x277D118B8];
  }

  else
  {
    v4 = MEMORY[0x277D118A0];
    v5 = MEMORY[0x277D118A8];
  }

  v6 = *v5;
  sub_22944F894();
  v7 = *MEMORY[0x277D118C0];
  v8 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v9 = v7;
  v10 = sub_22944F864();

  v11 = [v8 initWithExtensionBundleIdentifier:v10 kind:v9];

  v12 = *v4;
  sub_22944F894();
  return v11;
}

char *sub_22944030C(uint64_t a1)
{
  v5[0] = sub_22943E2C8(a1);

  sub_22943F6F0(v5);

  v5[0] = 91;
  v5[1] = 0xE100000000000000;
  sub_2294404E4(0, &qword_2813DBF20, MEMORY[0x277D83940]);
  sub_229440418();
  v1 = sub_22944F834();
  v3 = v2;

  MEMORY[0x22AACB740](v1, v3);

  MEMORY[0x22AACB740](93, 0xE100000000000000);
  return v5[0];
}

unint64_t sub_229440418()
{
  result = qword_2813DBF18;
  if (!qword_2813DBF18)
  {
    sub_2294404E4(255, &qword_2813DBF20, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DBF18);
  }

  return result;
}

void sub_22944048C()
{
  if (!qword_27D86EB00)
  {
    v0 = sub_22944FA54();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86EB00);
    }
  }
}

void sub_2294404E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_229440538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22944FE04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void HDMCPregnancyManager.register(_:isUserInitiated:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  sub_22944186C(a1, a2, v2);
}

id HDMCPregnancyManager.unregisterObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_2294418E8(a1, v1);
}

void *HDMCPregnancyManager.getCurrentPregnancyModel()()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel);
  os_unfair_lock_lock((v2 + 24));
  sub_2293DA69C((v2 + 16), ObjectType, &v4);
  os_unfair_lock_unlock((v2 + 24));
  return v4;
}

uint64_t HDMCPregnancyManager.DeriveOperationState.hashValue.getter()
{
  v1 = *v0;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v1);
  return sub_22944FEE4();
}

char *HDMCPregnancyManager.__allocating_init(profile:operation:experienceModelProvider:notificationProvider:calendarCache:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = objc_allocWithZone(v5);
  v13 = sub_229441954(1, a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

char *HDMCPregnancyManager.init(profile:operation:experienceModelProvider:notificationProvider:calendarCache:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = objc_allocWithZone(swift_getObjectType());
  v11 = sub_229441954(1, a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

char *HDMCPregnancyManager.__allocating_init(shouldRequestWorkOnInitialization:profile:operation:experienceModelProvider:notificationProvider:calendarCache:)(int a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_229441954(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v14;
}

char *HDMCPregnancyManager.init(shouldRequestWorkOnInitialization:profile:operation:experienceModelProvider:notificationProvider:calendarCache:)(int a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = sub_229441954(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v10;
}

id sub_229440A98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong dataManager];

    sub_2293D30DC(0, &qword_2813DBED0, 0x277CCD0C0);
    v4 = MEMORY[0x22AACB900](*MEMORY[0x277CCBA68]);
    [v3 addObserver:v0 forDataType:v4];
  }

  return sub_229440D80();
}

id HDMCPregnancyManager.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong dataManager];

    sub_2293D30DC(0, &qword_2813DBED0, 0x277CCD0C0);
    v6 = *MEMORY[0x277CCBA68];
    v7 = v1;
    v8 = MEMORY[0x22AACB900](v6);
    [v5 removeObserver:v7 forDataType:v8];
  }

  [*&v1[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_notificationProvider] removeObserver_];
  v9 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_significantTimeChangeToken;
  if (notify_is_valid_token(**&v1[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_significantTimeChangeToken]))
  {
    notify_cancel(**&v1[v9]);
    MEMORY[0x22AACCC00](*&v1[v9], -1, -1);
  }

  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

id sub_229440D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_significantTimeChangeToken);
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_queue);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_2294425D8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_229441090;
  v6[3] = &block_descriptor_20;
  v4 = _Block_copy(v6);

  notify_register_dispatch("SignificantTimeChangeNotification", v1, v2, v4);
  _Block_release(v4);
  return [*(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_notificationProvider) addObserver:v0 selector:sel_significantTimeChangeDidOccur name:*MEMORY[0x277CBE580] object:0];
}

void sub_229440EA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_229440EFC();
  }
}

void sub_229440EFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v3 = sub_22944F174();
  __swift_project_value_buffer(v3, qword_2813DBFB8);
  v4 = sub_22944F154();
  v5 = sub_22944FA84();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    v12[1] = ObjectType;
    *v6 = 136315138;
    swift_getMetatypeMetadata();
    v8 = sub_2293D47B8();
    v10 = sub_2293D4824(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2293D1000, v4, v5, "[%s] Received a significant time change notification", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AACCC00](v7, -1, -1);
    MEMORY[0x22AACCC00](v6, -1, -1);
  }

  if ([*(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers) count] >= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  sub_2293D42C4(v11, 3u);
}

uint64_t sub_229441090(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id HDMCPregnancyManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2294411CC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD5A8]) initWithState:0 pregnancyStartDate:0 pregnancyEndDate:0 estimatedDueDate:0 pregnancyDuration:0 physiologicalWashoutEndDate:0 behavioralWashoutEndDate:0 trimesters:0 sample:0 educationalStepsCompletedDate:0];
  [a1 pregnancyModelDidUpdate_];
}

Swift::String __swiftcall HDMCPregnancyManager.diagnosticDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState);
  os_unfair_lock_lock((v1 + 20));
  sub_229442154((v1 + 16), v5);
  os_unfair_lock_unlock((v1 + 20));
  v2 = v5[0];
  v3 = v5[1];
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_229441444@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_22944FC84();
  MEMORY[0x22AACB740](0xD00000000000001ELL, 0x8000000229459510);
  v17 = *a1;
  v6 = sub_22944F8A4();
  MEMORY[0x22AACB740](v6);

  MEMORY[0x22AACB740](0x726573626F207C20, 0xEE00203A73726576);
  v7 = *(a2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers);
  [v7 count];
  v8 = sub_22944FDF4();
  MEMORY[0x22AACB740](v8);

  MEMORY[0x22AACB740](0x202C6C61746F7420, 0xE800000000000000);
  [*(a2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers) count];
  v9 = sub_22944FDF4();
  MEMORY[0x22AACB740](v9);

  MEMORY[0x22AACB740](0x6E65746E69616D20, 0xED00002065636E61);
  v10 = [v7 allObservers];
  v11 = sub_229442370();
  v12 = sub_22944F934();

  v13 = MEMORY[0x22AACB7B0](v12, v11);
  v15 = v14;

  MEMORY[0x22AACB740](v13, v15);

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

void sub_22944186C(uint64_t a1, char a2, uint64_t a3)
{
  [*(a3 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers) registerObserver_];
  if (a2)
  {
    [*(a3 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers) registerObserver_];
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  sub_2293D42C4(v6, 4u);
}

id sub_2294418E8(uint64_t a1, uint64_t a2)
{
  [*(a2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers) unregisterObserver_];
  v4 = *(a2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers);

  return [v4 unregisterObserver_];
}

char *sub_229441954(int a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v59 = a5;
  v60 = a6;
  v62 = a4;
  v57 = a3;
  v58 = a2;
  v63 = a1;
  ObjectType = swift_getObjectType();
  v56 = sub_22944FAA4();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22944FAB4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_22944F194();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v55[1] = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_profile;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedOperationState;
  sub_229442448();
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  *&v6[v16] = v17;
  v18 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_lockedPregnancyModel;
  sub_2294424A8();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  *&v6[v18] = v19;
  v55[0] = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_queue;
  sub_2293D30DC(0, &qword_2813DBE48, 0x277D85C90);
  sub_22944F184();
  v66 = MEMORY[0x277D84F90];
  sub_2293D5CA4(&qword_2813DBE50, MEMORY[0x277D852D8]);
  sub_229442580();
  sub_2293D5CA4(qword_2813DBEF0, sub_229442580);
  sub_22944FB44();
  (*(v8 + 104))(v11, *MEMORY[0x277D85268], v56);
  v20 = v57;
  v21 = sub_22944FAC4();
  v22 = v58;
  *&v7[v55[0]] = v21;
  v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_shouldReRequestWork] = 0;
  swift_unknownObjectWeakAssign();
  v23 = v59;
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_notificationProvider] = v59;
  v24 = v23;
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_significantTimeChangeToken] = swift_slowAlloc();
  if (v20)
  {
    v25 = v20;
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x277D10800]);
    v27 = v22;
    v28 = sub_22944F864();
    v25 = [v26 initWithProfile:v27 debugIdentifier:v28 delegate:0];
  }

  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_protectedDataOperation] = v25;
  v29 = v20;
  v30 = HKLogMenstrualCyclesCategory();
  v31 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v32 = sub_22944F864();
  v33 = [v31 initWithName:v32 loggingCategory:v30];

  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers] = v33;
  v34 = HKLogMenstrualCyclesCategory();
  v35 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v36 = sub_22944F864();
  v37 = [v35 initWithName:v36 loggingCategory:v34];

  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers] = v37;
  v38 = v60;
  *&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_calendarCache] = v60;
  v65.receiver = v7;
  v39 = ObjectType;
  v65.super_class = ObjectType;
  v40 = v38;
  v41 = objc_msgSendSuper2(&v65, sel_init);
  v42 = qword_2813DBFB0;
  v43 = v41;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_22944F174();
  __swift_project_value_buffer(v44, qword_2813DBFB8);
  v45 = sub_22944F154();
  v46 = sub_22944FA84();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v64 = v48;
    *v47 = 136315138;
    v66 = v39;
    swift_getMetatypeMetadata();
    v49 = sub_2293D47B8();
    v51 = sub_2293D4824(v49, v50, &v64);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_2293D1000, v45, v46, "[%s] Initializing", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x22AACCC00](v48, -1, -1);
    MEMORY[0x22AACCC00](v47, -1, -1);
  }

  v52 = *&v43[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_protectedDataOperation];
  v53 = v43;
  [v52 setDelegate_];
  [v62 registerWithObserver_];

  sub_229440A98();
  if (v63)
  {
    sub_2293D42C4(2, 0);
  }

  return v53;
}

void sub_229441FA8(const char *a1, unsigned __int8 a2)
{
  swift_getObjectType();
  if (HKShowSensitiveLogItems())
  {
    v5 = v2;
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_22944F174();
    __swift_project_value_buffer(v6, qword_2813DBFB8);
    v7 = sub_22944F154();
    v8 = sub_22944FA84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_22944FF44();
      v13 = sub_2293D4824(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2293D1000, v7, v8, a1, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x22AACCC00](v10, -1, -1);
      MEMORY[0x22AACCC00](v9, -1, -1);
    }

    v2 = v5;
  }

  if ([*(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers) count] >= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  sub_2293D42C4(v14, a2);
}

unint64_t sub_229442174()
{
  result = qword_27D86EB60;
  if (!qword_27D86EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86EB60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HDMCPregnancyManager.DeriveOperationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HDMCPregnancyManager.DeriveOperationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_229442370()
{
  result = qword_27D86EC50;
  if (!qword_27D86EC50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D86EC50);
  }

  return result;
}

uint64_t sub_2294423D4(uint64_t a1)
{
  sub_229442528(0, &unk_2813DBDF0, &unk_2813DBE00, 0x277D82BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_229442448()
{
  if (!qword_2813DBDC8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22944FCB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBDC8);
    }
  }
}

void sub_2294424A8()
{
  if (!qword_2813DBDC0)
  {
    sub_229442528(255, &qword_2813DBE98, &qword_2813DBEA0, 0x277CCD5A8);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22944FCB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBDC0);
    }
  }
}

void sub_229442528(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2293D30DC(255, a3, a4);
    v5 = sub_22944FB14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_229442580()
{
  if (!qword_2813DBF08)
  {
    sub_22944FAB4();
    v0 = sub_22944F984();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF08);
    }
  }
}

void sub_22944261C()
{
  sub_2294495CC(&unk_283CBA0E0);
  sub_2294431B8(&unk_283CBA100);
  v0 = sub_22944F864();
  v1 = sub_22944F9A4();

  v2 = [objc_opt_self() schemaWithDomain:v0 dataKeys:v1];

  qword_2813DC170 = v2;
}

id static ExperienceModelStateSyncEntity.stateEntitySchema.getter()
{
  if (qword_2813DC168 != -1)
  {
    swift_once();
  }

  v1 = qword_2813DC170;

  return v1;
}

id ExperienceModelStateSyncEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExperienceModelStateSyncEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperienceModelStateSyncEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ExperienceModelStateSyncEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperienceModelStateSyncEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2294429F4(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a1;
  v29 = a3;
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22944F174();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2813DBFB8);
  v24 = *(v5 + 16);
  v24(v10, v11, v4);
  v25 = "ings8@NSUserDefaults16";
  v26 = "SignificantTimeChange";
  type metadata accessor for HDMCExperienceDaemonStore();
  v12 = swift_allocObject();
  v12[2] = a2;
  v13 = objc_allocWithZone(MEMORY[0x277D10718]);
  v14 = a2;
  v15 = sub_22944F864();
  v16 = [v13 initWithCategory:100 domainName:v15 profile:v14];

  v12[3] = v16;
  v17 = objc_allocWithZone(type metadata accessor for ExperienceModelSyncStateUpdaterDelegate());
  v24(v27, v10, v4);
  v30[0] = v12;
  v18 = sub_22944F144();
  (*(v5 + 8))(v10, v4);
  v19 = objc_opt_self();
  v30[0] = 0;
  if ([v19 updateDataWithStateStore:v28 delegate:v18 profile:v14 transaction:v29 error:v30])
  {
    v20 = v30[0];
  }

  else
  {
    v21 = v30[0];
    sub_22944EF74();

    swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_229442D04(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v14 = sub_22944F174();
    __swift_project_value_buffer(v14, qword_2813DBFB8);
    v15 = a2;
    oslog = sub_22944F154();
    v5 = sub_22944FA64();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v6 = 136446466;
      v16 = sub_22944FF44();
      v18 = sub_2293D4824(v16, v17, &v34);

      *(v6 + 4) = v18;
      *(v6 + 12) = 2112;
      v19 = [v15 profileIdentifier];
      *(v6 + 14) = v19;
      *v7 = v19;
      v13 = "[%{public}s] %@ Unable to sync";
      goto LABEL_11;
    }
  }

  else if (a1)
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v21 = sub_22944F174();
    __swift_project_value_buffer(v21, qword_2813DBFB8);
    v22 = a2;
    oslog = sub_22944F154();
    v23 = sub_22944FA64();

    if (os_log_type_enabled(oslog, v23))
    {
      v6 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v6 = 136446722;
      v26 = sub_22944FF44();
      v28 = sub_2293D4824(v26, v27, &v34);

      *(v6 + 4) = v28;
      *(v6 + 12) = 2112;
      v29 = [v22 profileIdentifier];
      *(v6 + 14) = v29;
      *v24 = v29;
      *(v6 + 22) = 2080;
      type metadata accessor for HDCloudSyncStateResult(0);
      v30 = sub_22944F8A4();
      v32 = sub_2293D4824(v30, v31, &v34);

      *(v6 + 24) = v32;
      _os_log_impl(&dword_2293D1000, oslog, v23, "[%{public}s] %@ Unknown sync result: %s", v6, 0x20u);
      sub_2294423D4(v24);
      MEMORY[0x22AACCC00](v24, -1, -1);
      swift_arrayDestroy();
      v20 = v25;
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v3 = sub_22944F174();
    __swift_project_value_buffer(v3, qword_2813DBFB8);
    v4 = a2;
    oslog = sub_22944F154();
    v5 = sub_22944FA84();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v6 = 136446466;
      v9 = sub_22944FF44();
      v11 = sub_2293D4824(v9, v10, &v34);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      v12 = [v4 profileIdentifier];
      *(v6 + 14) = v12;
      *v7 = v12;
      v13 = "[%{public}s] %@ Sync complete!";
LABEL_11:
      _os_log_impl(&dword_2293D1000, oslog, v5, v13, v6, 0x16u);
      sub_2294423D4(v7);
      MEMORY[0x22AACCC00](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      v20 = v8;
LABEL_16:
      MEMORY[0x22AACCC00](v20, -1, -1);
      MEMORY[0x22AACCC00](v6, -1, -1);

      return;
    }
  }
}

uint64_t sub_22944320C()
{
  v1 = v0;
  v30 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DBB38(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22944586C(0, &qword_2813DBF50, &qword_2813DC130, &unk_2294558D8, MEMORY[0x277CFB778]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  v18 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  swift_beginAccess();
  (*(v14 + 16))(v17, v1 + v18, v13);
  swift_getKeyPath();
  sub_22944F6D4();

  (*(v14 + 8))(v17, v13);
  v19 = sub_22944F4F4();
  (*(v8 + 8))(v11, v7);
  v20 = *(v19 + 16);
  if (v20)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22944FCF4();
    v21 = 0;
    v22 = v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v21 < *(v19 + 16))
    {
      sub_229445C70(v22 + *(v2 + 72) * v21, v5);
      sub_2294437F8(v5, &v31);
      sub_229445FCC(v5, type metadata accessor for CoherentExperienceSetupRecord);
      ++v21;
      sub_22944FCD4();
      v23 = *(v32 + 16);
      sub_22944FD04();
      sub_22944FD14();
      sub_22944FCE4();
      if (v20 == v21)
      {

        v24 = v32;
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
LABEL_7:
    sub_22944919C(v24);

    v25 = objc_allocWithZone(MEMORY[0x277D119A0]);
    sub_2293DB96C();
    sub_2293DB924(&qword_2813DBE30, sub_2293DB96C);
    v26 = sub_22944F9A4();

    v27 = [v25 initWithPregnancyModeSetupCompletionSet_];

    return v27;
  }

  return result;
}

uint64_t sub_22944364C(uint64_t a1, uint64_t a2)
{
  sub_22944586C(0, &qword_2813DBF50, &qword_2813DC130, &unk_2294558D8, MEMORY[0x277CFB778]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  v9 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  swift_beginAccess();
  (*(v5 + 16))(v8, a2 + v9, v4);
  type metadata accessor for CoherentExperienceSetupRecord(0);
  sub_2293DB924(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord);
  sub_22944F754();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2294437F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v132 = a2;
  sub_229445CF0(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v128 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v127 = &v120 - v7;
  v8 = sub_22944F0B4();
  v130 = *(v8 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v8);
  v135 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293D7574(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v129 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v134 = &v120 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v122 = &v120 - v18;
  MEMORY[0x28223BE20](v17);
  v123 = &v120 - v19;
  v140 = sub_22944F054();
  v145 = *(v140 - 8);
  v20 = *(v145 + 64);
  v21 = MEMORY[0x28223BE20](v140);
  v121 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v124 = &v120 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v147 = &v120 - v26;
  MEMORY[0x28223BE20](v25);
  v146 = &v120 - v27;
  sub_2293DC254(0, &qword_27D86ECD0, sub_229445D24, MEMORY[0x277D83D88]);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v139 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v133 = &v120 - v32;
  sub_229445E6C(0, &qword_27D86ECE0, MEMORY[0x277CFB508]);
  v143 = v33;
  v126 = *(v33 - 8);
  v34 = *(v126 + 64);
  MEMORY[0x28223BE20](v33);
  v144 = &v120 - v35;
  sub_229445D90(0, &qword_27D86ECE8, MEMORY[0x277CFB6D8]);
  v37 = v36;
  v141 = *(v36 - 8);
  v38 = *(v141 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v120 - v39;
  v136 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v41 = v136[8];
  sub_229445D90(0, &qword_2813DBF58, MEMORY[0x277CFB6F0]);
  v42 = sub_229445DF8();
  v43 = sub_22944FA24();
  v137 = a1;
  v131 = v8;
  if (v43)
  {
    v44 = v43;
    v138 = v37;
    v149 = MEMORY[0x277D84F90];
    sub_22943F29C(0, v43 & ~(v43 >> 63), 0);
    v45 = v149;
    v125 = v41;
    sub_22944FA14();
    if (v44 < 0)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
      result = sub_22944FE54();
      __break(1u);
      return result;
    }

    v142 = v42;
    do
    {
      v46 = sub_22944FA44();
      v48 = *v47;
      v49 = v47[1];

      v46(&v148, 0);
      v50 = sub_22944F864();

      v149 = v45;
      v52 = *(v45 + 16);
      v51 = *(v45 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_22943F29C((v51 > 1), v52 + 1, 1);
        v45 = v149;
      }

      *(v45 + 16) = v52 + 1;
      *(v45 + 8 * v52 + 32) = v50;
      sub_22944FA34();
      --v44;
    }

    while (v44);
    v125 = v45;
    (*(v141 + 8))(v40, v138);
  }

  else
  {
    v125 = MEMORY[0x277D84F90];
  }

  v53 = sub_2294310C4(MEMORY[0x277D84F90]);
  v54 = v136[10];
  sub_229445E6C(0, &qword_2813DBF88, MEMORY[0x277CFB510]);
  sub_22944F484();
  v55 = (v145 + 32);
  v141 = v145 + 8;
  v142 = (v145 + 16);
  v138 = v145 + 40;
  v56 = v140;
  v57 = v133;
  while (1)
  {
    v59 = v139;
    sub_22944F4A4();
    sub_229445F38(v59, v57);
    sub_229445D24();
    v61 = v60;
    if ((*(*(v60 - 8) + 48))(v57, 1, v60) == 1)
    {
      break;
    }

    v62 = *v57;
    v63 = v57[1];
    v64 = *v55;
    v65 = v146;
    (*v55)(v146, v57 + *(v61 + 48), v56);
    v66 = sub_22944F864();

    (*v142)(v147, v65, v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v53;
    v68 = sub_22942707C(v66);
    v70 = v53[2];
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v74 = v69;
    if (v53[3] >= v73)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v79 = v68;
      sub_229427D30();
      v68 = v79;
      v53 = v148;
      if (v74)
      {
        goto LABEL_10;
      }

LABEL_18:
      v53[(v68 >> 6) + 8] |= 1 << v68;
      *(v53[6] + 8 * v68) = v66;
      v76 = v145;
      v56 = v140;
      v64((v53[7] + *(v145 + 72) * v68), v147, v140);
      (*(v76 + 8))(v146, v56);
      v77 = v53[2];
      v72 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      if (v72)
      {
        goto LABEL_41;
      }

      v53[2] = v78;
    }

    else
    {
      sub_22942757C(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_22942707C(v66);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_43;
      }

LABEL_17:
      v53 = v148;
      if ((v74 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_10:
      v58 = v145;
      v56 = v140;
      (*(v145 + 40))(v53[7] + *(v145 + 72) * v68, v147, v140);

      (*(v58 + 8))(v146, v56);
    }
  }

  (*(v126 + 8))(v144, v143);
  sub_22942B554();
  sub_22944F1E4();
  if (v148 == 1)
  {
    v80 = v136[9];
    sub_22944602C(0, &qword_2813DBFA8, sub_2293D7574, sub_22942B818);
    v81 = v123;
    sub_22944F1E4();
    if ((*(v145 + 48))(v81, 1, v56) == 1)
    {
      goto LABEL_27;
    }

    (*v55)(v124, v81, v56);
    v82 = *MEMORY[0x277D11930];
    if (v53[2] && (v83 = sub_22942707C(*MEMORY[0x277D11930]), (v84 & 1) != 0))
    {
      v85 = v145;
      v81 = v122;
      (*(v145 + 16))(v122, v53[7] + *(v145 + 72) * v83, v56);
      (*(v85 + 56))(v81, 0, 1, v56);
      (*(v85 + 8))(v124, v56);
LABEL_27:
      sub_229445FCC(v81, sub_2293D7574);
    }

    else
    {
      v86 = v145 + 56;
      v87 = v122;
      (*(v145 + 56))(v122, 1, 1, v56);
      sub_229445FCC(v87, sub_2293D7574);
      v88 = v121;
      v89 = v124;
      (*(v86 - 40))(v121, v124, v56);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v53;
      sub_229427B14(v88, v82, v90);
      (*(v86 - 48))(v89, v56);
    }
  }

  v91 = v134;
  sub_22944F1E4();
  v147 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v92 = v136;
  v93 = v136[5];
  sub_22942B5AC();
  sub_22944F1E4();
  v94 = v92[6];
  sub_22944602C(0, &qword_2813DBF98, sub_229445CF0, sub_22942B62C);
  v95 = v127;
  sub_22944F1E4();
  v96 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
  v97 = *(v96 - 8);
  v98 = 1;
  v146 = *(v97 + 48);
  v144 = (v97 + 48);
  v99 = (v146)(v95, 1, v96);
  v100 = sub_229445CF0;
  if (v99 != 1)
  {
    (*v142)(v91, v95, v56);
    v98 = 0;
    v100 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord;
  }

  sub_229445FCC(v95, v100);
  v101 = *(v145 + 56);
  v102 = 1;
  v101(v91, v98, 1, v56);
  v103 = v137 + v136[7];
  v104 = v128;
  sub_22944F1E4();
  v105 = v104;
  v106 = (v146)(v104, 1, v96);
  v107 = sub_229445CF0;
  v108 = v129;
  if (v106 != 1)
  {
    (*v142)(v129, v105, v56);
    v102 = 0;
    v107 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord;
  }

  sub_229445FCC(v105, v107);
  v101(v108, v102, 1, v56);
  sub_22944950C(v125);

  v146 = sub_22944F074();
  v109 = *(v145 + 48);
  v110 = v134;
  if (v109(v134, 1, v56) == 1)
  {
    v111 = 0;
  }

  else
  {
    v111 = sub_22944EFD4();
    (*v141)(v110, v56);
  }

  if (v109(v108, 1, v56) == 1)
  {
    v112 = 0;
  }

  else
  {
    v112 = sub_22944EFD4();
    (*v141)(v108, v56);
  }

  v113 = objc_allocWithZone(MEMORY[0x277D119C0]);
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_2293DB924(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v114 = sub_22944F9A4();

  v115 = sub_22944F7E4();
  v117 = v146;
  v116 = v147;
  v118 = [v113 initWithVersion:v147 sampleUUID:v146 educationalStepsReviewDate:v111 configurationStepsReviewDate:v112 pregnancyAdjustedFeaturesSet:v114 postPregnancyFeatureAdjustmentCompletionLog:v115];

  (*(v130 + 8))(v135, v131);

  *v132 = v118;
  return result;
}

uint64_t sub_229444794()
{
  v1 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  sub_22944586C(0, &qword_2813DBF50, &qword_2813DC130, &unk_2294558D8, MEMORY[0x277CFB778]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_229444870()
{
  sub_22944586C(319, &qword_2813DBF50, &qword_2813DC130, &unk_2294558D8, MEMORY[0x277CFB778]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_229444938()
{
  sub_2293DBB38(319);
  if (v0 <= 0x3F)
  {
    sub_2294449BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2294449BC()
{
  if (!qword_2813DBF40)
  {
    sub_22944F6B4();
    v0 = sub_22944F804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF40);
    }
  }
}

uint64_t sub_229444A30()
{
  strcpy(&qword_2813DD238, "setupRecords");
  unk_2813DD245 = 0;
  unk_2813DD246 = -5120;
  result = swift_getKeyPath();
  qword_2813DD248 = result;
  return result;
}

uint64_t sub_229444A84(uint64_t a1)
{
  v2 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D840](a1, v2);
}

uint64_t sub_229444AF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_229444B28(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_229444B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2293DB9D8();
  sub_2293DB924(&qword_2813DBF70, sub_2293DB9D8);
  sub_2293DB924(&qword_2813DBF68, sub_2293DB9D8);
  result = sub_22944F544();
  *(a2 + *(a1 + 20)) = MEMORY[0x277D84F98];
  return result;
}

uint64_t sub_229444C10(uint64_t a1)
{
  v2 = sub_2293DB924(&qword_2813DC128, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_229444C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D828](a1, a2, v4);
}

uint64_t sub_229444CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7D0](a1, a2, v4);
}

uint64_t sub_229444D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7F8](a1, a2, v4);
}

uint64_t sub_229444DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D838](a1, a2, v4);
}

uint64_t sub_229444E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D800](a1, a2, a3, v6);
}

uint64_t sub_229444F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D830](a1, a2, v4);
}

uint64_t sub_229444F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D808](a1, a2, v4);
}

uint64_t sub_229445000(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7E8](a1, a2, v4);
}

uint64_t sub_229445084(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7E0](a1, a2, v4);
}

uint64_t sub_229445108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7C8](a1, a2, a3, v6);
}

uint64_t sub_22944519C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7B8](a1, a2, v4);
}

uint64_t sub_229445218(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D810](a1, a2, v4);
}

void sub_22944529C()
{
  sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  JUMPOUT(0x22AACB160);
}

uint64_t sub_229445428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2293DB924(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214E180](a1, a2, a3, v6);
}

uint64_t sub_22944552C(uint64_t a1)
{
  v2 = sub_2293DB924(&unk_2813DC150, type metadata accessor for CoherentExperienceSetupRecordDatabase);

  return MEMORY[0x28214D7C0](a1, v2);
}

void sub_22944586C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = type metadata accessor for CoherentExperienceSetupRecordDatabase(255);
    v10 = sub_2293DB924(a3, type metadata accessor for CoherentExperienceSetupRecordDatabase);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_229445904(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  sub_2293DBB38(0);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  sub_22944586C(0, &qword_2813DBF50, &qword_2813DC130, &unk_2294558D8, MEMORY[0x277CFB778]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  swift_beginAccess();
  v19 = v11[2];
  v19(v17, a1 + v18, v10);
  swift_getKeyPath();
  sub_22944F6D4();

  v20 = v11[1];
  v20(v17, v10);
  v21 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  v22 = v30;
  swift_beginAccess();
  v19(v15, v22 + v21, v10);
  swift_getKeyPath();
  v23 = v29;
  sub_22944F6D4();

  v20(v15, v10);
  sub_2293DB9D8();
  sub_2293DB924(&qword_2813DBF70, sub_2293DB9D8);
  sub_2293DB924(&qword_2813DBF68, sub_2293DB9D8);
  v24 = v23;
  LOBYTE(v21) = sub_22944F4E4();
  v25 = *(v31 + 8);
  v26 = v24;
  v27 = v32;
  v25(v26, v32);
  v25(v8, v27);
  return v21 & 1;
}

uint64_t sub_229445C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoherentExperienceSetupRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_229445D24()
{
  if (!qword_27D86ECD8)
  {
    sub_22944F054();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D86ECD8);
    }
  }
}

void sub_229445D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277CFB7D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_229445DF8()
{
  result = qword_27D86ECF0;
  if (!qword_27D86ECF0)
  {
    sub_229445D90(255, &qword_2813DBF58, MEMORY[0x277CFB6F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86ECF0);
  }

  return result;
}

void sub_229445E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_22944F054();
    v7 = sub_2293DB924(&qword_2813DC4A8, MEMORY[0x277CC9578]);
    v10[0] = MEMORY[0x277D837D0];
    v10[1] = v6;
    v10[2] = MEMORY[0x277CFB7D0];
    v10[3] = MEMORY[0x277D837E0];
    v10[4] = MEMORY[0x277CFB488];
    v10[5] = v7;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_229445F38(uint64_t a1, uint64_t a2)
{
  sub_2293DC254(0, &qword_27D86ECD0, sub_229445D24, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229445FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22944602C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_22944F204();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22944609C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_10:
    sub_229415AF0(&v6);
    return 0;
  }

  v1 = Strong;
  v2 = [Strong profileExtensionWithIdentifier_];

  if (v2)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_10;
  }

  sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

char *HDMCWidgetSchedulingManager.__allocating_init(profile:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_2294401DC(a1);
  v7 = v6;
  v9 = v8;
  v10 = v5;

  v11 = sub_22944F864();
  v12 = HKCreateSerialDispatchQueue();

  v13 = objc_allocWithZone(v2);
  v26[3] = &type metadata for HDMCWidgetTimelineReloader;
  v26[4] = &off_283CBA788;
  v26[0] = v10;
  v26[1] = v7;
  v26[2] = v9;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadReasons] = MEMORY[0x277D84FA0];
  *&v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation] = 0;
  *&v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_previousAnalysis] = 0;
  swift_unknownObjectWeakAssign();
  sub_22942B130(v26, &v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_widgetReloader]);
  *&v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_queue] = v12;
  v14 = &v13[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_didBecomeReady];
  *v14 = 0;
  *(v14 + 1) = 0;
  v25.receiver = v13;
  v25.super_class = v2;
  v15 = v10;

  v16 = v12;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  [a1 registerProfileReadyObserver:v17 queue:0];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = objc_allocWithZone(MEMORY[0x277CCDD98]);
  aBlock[4] = sub_229447EA0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22944787C;
  aBlock[3] = &block_descriptor_4;
  v20 = _Block_copy(aBlock);

  v21 = [v19 initWithMode:1 clock:1 queue:v16 delay:v20 block:1.0];

  _Block_release(v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);

  v22 = *&v17[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation];
  *&v17[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation] = v21;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

char *HDMCWidgetSchedulingManager.init(profile:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2294401DC(a1);
  v5 = v4;
  v7 = v6;
  v8 = v3;

  v9 = sub_22944F864();
  v10 = HKCreateSerialDispatchQueue();

  v11 = objc_allocWithZone(ObjectType);
  v24[3] = &type metadata for HDMCWidgetTimelineReloader;
  v24[4] = &off_283CBA788;
  v24[0] = v8;
  v24[1] = v5;
  v24[2] = v7;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadReasons] = MEMORY[0x277D84FA0];
  *&v11[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation] = 0;
  *&v11[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_previousAnalysis] = 0;
  swift_unknownObjectWeakAssign();
  sub_22942B130(v24, &v11[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_widgetReloader]);
  *&v11[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_queue] = v10;
  v12 = &v11[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_didBecomeReady];
  *v12 = 0;
  *(v12 + 1) = 0;
  v23.receiver = v11;
  v23.super_class = ObjectType;
  v13 = v8;

  v14 = v10;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  [a1 registerProfileReadyObserver:v15 queue:0];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = objc_allocWithZone(MEMORY[0x277CCDD98]);
  aBlock[4] = sub_229448090;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22944787C;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);

  v19 = [v17 initWithMode:1 clock:1 queue:v14 delay:v18 block:1.0];

  _Block_release(v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);

  v20 = *&v15[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation];
  *&v15[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation] = v19;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

char *HDMCWidgetSchedulingManager.__allocating_init(profile:widgetReloader:queue:debounceDelay:didBecomeReady:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = sub_229447EF8(a1, v15, a3, a4, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v16;
}

char *HDMCWidgetSchedulingManager.init(profile:widgetReloader:queue:debounceDelay:didBecomeReady:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_229447C08(a1, v18, a3, a4, a5, v6, v13, v14, a6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v20;
}

void sub_22944695C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2294469B0();
  }
}

uint64_t sub_2294469B0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22944F1A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_22944F1B4();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_2813DBFB0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_22944F174();
  __swift_project_value_buffer(v9, qword_2813DBFB8);
  v10 = sub_22944F154();
  v11 = sub_22944FA84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = sub_22944FF44();
    v16 = sub_2293D4824(v14, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2293D1000, v10, v11, "[%s] requesting widgets reload", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AACCC00](v13, -1, -1);
    MEMORY[0x22AACCC00](v12, -1, -1);
  }

  v17 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_widgetReloader + 24);
  v18 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_widgetReloader + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_widgetReloader), v17);
  v19 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadReasons;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = *(v18 + 8);

  v21(v22, v17, v18);

  v23 = *(v1 + v19);
  *(v1 + v19) = MEMORY[0x277D84FA0];
}

id HDMCWidgetSchedulingManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22944609C();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 _bridging_analysisProviding];

    if (v4)
    {
      v5 = v0;
      [v4 unregisterObserver_];

      swift_unknownObjectRelease();
    }
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t HDMCWidgetSchedulingManager.profileDidBecomeReady(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_22944F174();
  __swift_project_value_buffer(v5, qword_2813DBFB8);
  v6 = sub_22944F154();
  v7 = sub_22944FA84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136315138;
    v10 = sub_22944FF44();
    v12 = sub_2293D4824(v10, v11, v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2293D1000, v6, v7, "[%s] profileDidBecomeReady", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AACCC00](v9, -1, -1);
    MEMORY[0x22AACCC00](v8, -1, -1);
  }

  v13 = sub_22944609C();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 _bridging_analysisProviding];

    if (v15)
    {
      [v15 registerObserver:v2 queue:*(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_queue) userInitiated:0];
    }
  }

  v16 = [a1 database];
  v17 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_queue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = ObjectType;
  v24[4] = sub_22944801C;
  v24[5] = v19;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_22944787C;
  v24[3] = &block_descriptor_12;
  v20 = _Block_copy(v24);

  [v16 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v17 block:v20];
  _Block_release(v20);

  v21 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_didBecomeReady);
  if (v21)
  {
    v22 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_didBecomeReady + 8);
    v21();
  }

  return swift_unknownObjectRelease();
}

void sub_22944712C()
{
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v0 = sub_22944F174();
  __swift_project_value_buffer(v0, qword_2813DBFB8);
  v1 = sub_22944F154();
  v2 = sub_22944FA84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136446210;
    v5 = sub_22944FF44();
    v7 = sub_2293D4824(v5, v6, &v17);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2293D1000, v1, v2, "[%{public}s] first unlock occurred", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x22AACCC00](v4, -1, -1);
    MEMORY[0x22AACCC00](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (sub_229447398())
    {
      LOBYTE(v16) = 0;
      sub_229447584(&v16);
      goto LABEL_11;
    }
  }

  v9 = sub_22944F154();
  v10 = sub_22944FA84();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    v13 = sub_22944FF44();
    v15 = sub_2293D4824(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2293D1000, v9, v10, "[%{public}s] skipping widget refresh - user not onboarded or no relevant data", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AACCC00](v12, -1, -1);
    MEMORY[0x22AACCC00](v11, -1, -1);
  }

LABEL_11:
}

uint64_t sub_229447398()
{
  v16 = *MEMORY[0x277D85DE8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_12:
    sub_229415AF0(&v14);
    goto LABEL_13;
  }

  v1 = Strong;
  v2 = [Strong profileExtensionWithIdentifier_];

  if (v2)
  {
    sub_22944FB34();
    swift_unknownObjectRelease();
  }

  else
  {
    *v12 = 0u;
    v13 = 0u;
  }

  v14 = *v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_12;
  }

  sub_2293D30DC(0, &qword_2813DBE80, off_278659B00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v3 = [v12[0] featureAvailabilityExtensionForFeatureIdentifier_];
  if (!v3)
  {

    goto LABEL_13;
  }

  *&v14 = 0;
  v4 = [v3 isCurrentOnboardingVersionCompletedWithError_];
  if (!v4)
  {
    v10 = v14;
    v11 = sub_22944EF74();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  v5 = v4;
  v6 = v14;
  v7 = [v5 BOOLValue];

  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = 1;
LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_229447584(unsigned __int8 *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22944F1A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_queue);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_22944F1B4();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    if (qword_2813DBFB0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_22944F174();
  __swift_project_value_buffer(v12, qword_2813DBFB8);
  v13 = sub_22944F154();
  v14 = sub_22944FA84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24[0] = v16;
    *v15 = 136315394;
    v17 = sub_22944FF44();
    v19 = sub_2293D4824(v17, v18, v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    if (v9)
    {
      v20 = 0xD000000000000014;
    }

    else
    {
      v20 = 0xD000000000000010;
    }

    if (v9)
    {
      v21 = "elSyncStateUpdaterDelegate";
    }

    else
    {
      v21 = "CycleAnalysisChanged";
    }

    v22 = sub_2293D4824(v20, v21 | 0x8000000000000000, v24);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_2293D1000, v13, v14, "[%s] running reload operation with reason: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v16, -1, -1);
    MEMORY[0x22AACCC00](v15, -1, -1);
  }

  swift_beginAccess();
  sub_229424544(&v25, v9);
  swift_endAccess();
  result = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation);
  if (result)
  {
    return [result execute];
  }

  return result;
}

uint64_t sub_22944787C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id HDMCWidgetSchedulingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void HDMCWidgetSchedulingManager.didUpdate(_:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_previousAnalysis;
  v5 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_previousAnalysis);
  if (v5)
  {
    sub_2293D30DC(0, &qword_2813DBEE8, 0x277D11960);
    v6 = a1;
    v7 = v5;
    v8 = sub_22944FB04();

    if (v8)
    {
      return;
    }

    v9 = *(v2 + v4);
  }

  else
  {
    v9 = 0;
  }

  *(v2 + v4) = a1;

  v10 = qword_2813DBFB0;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_22944F174();
  __swift_project_value_buffer(v12, qword_2813DBFB8);
  v13 = sub_22944F154();
  v14 = sub_22944FA84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    v17 = sub_22944FF44();
    v19 = sub_2293D4824(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2293D1000, v13, v14, "[%s] Received cycle analysis update", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AACCC00](v16, -1, -1);
    MEMORY[0x22AACCC00](v15, -1, -1);
  }

  v21 = 1;
  sub_229447584(&v21);
}

char *sub_229447C08(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, double a9)
{
  ObjectType = swift_getObjectType();
  v31[3] = a7;
  v31[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadReasons] = MEMORY[0x277D84FA0];
  *&a6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation] = 0;
  *&a6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_previousAnalysis] = 0;
  swift_unknownObjectWeakAssign();
  sub_22942B130(v31, &a6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_widgetReloader]);
  *&a6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_queue] = a3;
  v20 = &a6[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_didBecomeReady];
  *v20 = a4;
  v20[1] = a5;
  v21 = a3;
  sub_229428914(a4);
  v30.receiver = a6;
  v30.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  [a1 registerProfileReadyObserver:v22 queue:0];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = objc_allocWithZone(MEMORY[0x277CCDD98]);
  aBlock[4] = sub_229448090;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22944787C;
  aBlock[3] = &block_descriptor_20_0;
  v25 = _Block_copy(aBlock);

  v26 = [v24 initWithMode:1 clock:1 queue:v21 delay:v25 block:a9];
  _Block_release(v25);
  sub_229448074(a4);

  __swift_destroy_boxed_opaque_existential_0Tm(v31);

  v27 = *&v22[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation];
  *&v22[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon27HDMCWidgetSchedulingManager_reloadOperation] = v26;

  return v22;
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

char *sub_229447EF8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a8 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v21);
  (*(v17 + 16))(v20, a2, a8);
  return sub_229447C08(a1, v20, a3, a4, a5, v22, a8, a9, a6);
}

void sub_22944801C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22944712C();
}

uint64_t sub_229448074(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *HDMCExperienceModelManager.init(notificationProvider:)(void *a1)
{
  v2 = v1;
  v25 = a1;
  v24 = sub_22944FAA4();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22944FAB4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22944F194();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v23 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager_queue;
  sub_22944844C();
  sub_22944F184();
  v27 = MEMORY[0x277D84F90];
  sub_229448498(&qword_2813DBE50, MEMORY[0x277D852D8]);
  sub_229442580();
  sub_229448498(qword_2813DBEF0, sub_229442580);
  sub_22944FB44();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v24);
  *&v1[v23] = sub_22944FAC4();
  v11 = v25;
  *&v1[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager_notificationProvider] = v25;
  v12 = v11;
  v13 = HKLogMenstrualCyclesCategory();
  v14 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v15 = sub_22944F864();
  v16 = [v14 initWithName:v15 loggingCategory:v13];

  *&v2[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager_observers] = v16;
  v17 = type metadata accessor for HDMCExperienceModelManager();
  v26.receiver = v2;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager_notificationProvider];
  v20 = v18;
  v21 = sub_22944F864();
  [v19 addObserver:v20 selector:sel_didReceiveExperienceModelUpdateNotification name:v21 object:0];

  return v20;
}

unint64_t sub_22944844C()
{
  result = qword_2813DBE48;
  if (!qword_2813DBE48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DBE48);
  }

  return result;
}

uint64_t sub_229448498(unint64_t *a1, void (*a2)(uint64_t))
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

id HDMCExperienceModelManager.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager_notificationProvider] removeObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDMCExperienceModelManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22944863C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F174();
  __swift_project_value_buffer(v2, qword_2813DBFB8);
  v3 = sub_22944F154();
  v4 = sub_22944FA84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    v7 = sub_22944FF44();
    v9 = sub_2293D4824(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2293D1000, v3, v4, "[%s] Received a experience model update notification, notifying clients", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AACCC00](v6, -1, -1);
    MEMORY[0x22AACCC00](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon26HDMCExperienceModelManager_observers);
  v12[4] = sub_229448824;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2293D89A8;
  v12[3] = &block_descriptor_5;
  v11 = _Block_copy(v12);
  [v10 notifyObservers_];
  _Block_release(v11);
}

id HDMCExperienceModelManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t HDMCExperienceDaemonStore.__allocating_init(profile:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x277D10718]);
  v4 = a1;
  v5 = sub_22944F864();
  v6 = [v3 initWithCategory:100 domainName:v5 profile:v4];

  *(v2 + 24) = v6;
  return v2;
}

void HDMCExperienceDaemonStore.setModel(_:)(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v5 = sub_22944EF54();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v9 = sub_22944F174();
  __swift_project_value_buffer(v9, qword_2813DBFB8);
  v10 = a1;
  v11 = sub_22944F154();
  v12 = sub_22944FA84();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38[1] = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    *&v41[0] = v15;
    *v14 = 136446466;
    v16 = sub_22944FF44();
    v18 = sub_2293D4824(v16, v17, v41);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = HDCodableMenstrualCyclesExperienceModel.logDescription.getter();
    v21 = sub_2293D4824(v19, v20, v41);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_2293D1000, v11, v12, "[%{public}s] Setting state to %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v15, -1, -1);
    MEMORY[0x22AACCC00](v14, -1, -1);
  }

  v22 = v1[3];
  v23 = [v10 data];
  if (v23)
  {
    v24 = v23;
    v25 = sub_22944EF94();
    v27 = v26;

    v28 = sub_22944EF84();
    sub_22943A0D8(v25, v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_22944F864();
  *&v41[0] = 0;
  v30 = [v22 setData:v28 forKey:v29 error:v41];

  v31 = *&v41[0];
  if (v30)
  {
    v32 = objc_opt_self();
    v33 = v31;
    v34 = [v32 defaultCenter];
    sub_22944F864();
    memset(v41, 0, sizeof(v41));
    sub_22944EF44();
    v35 = sub_22944EF34();
    (*(v39 + 8))(v8, v40);
    [v34 postNotification_];
  }

  else
  {
    v36 = *&v41[0];
    sub_22944EF74();

    swift_willThrow();
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t HDMCExperienceDaemonStore.init(profile:)(void *a1)
{
  *(v1 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x277D10718]);
  v4 = a1;
  v5 = sub_22944F864();
  v6 = [v3 initWithCategory:100 domainName:v5 profile:v4];

  *(v1 + 24) = v6;
  return v1;
}

void HDMCExperienceDaemonStore.fetchPersistedOrDefaultExperienceModel()()
{
  v1 = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
  if (!v0)
  {
    v2 = v1;
    sub_2294364B8();
    sub_22944320C();
  }
}

unint64_t HDMCExperienceDaemonStore.Failure.debugDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000021;
  }

  v2 = *v0;
  sub_22944FC84();

  MEMORY[0x22AACB740](v2, v1);
  return 0xD00000000000001BLL;
}

unint64_t sub_229449020()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000021;
  }

  v2 = *v0;
  sub_22944FC84();

  MEMORY[0x22AACB740](v2, v1);
  return 0xD00000000000001BLL;
}

void sub_2294490E4()
{
  v2 = *v0;
  v3 = HDMCExperienceDaemonStore.fetchPersistedOrDefaultState()();
  if (!v1)
  {
    v4 = v3;
    sub_2294364B8();
    sub_22944320C();
  }
}

unint64_t sub_2294491CC()
{
  result = qword_27D86ED50;
  if (!qword_27D86ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86ED50);
  }

  return result;
}

void sub_229449220()
{
  if (!qword_27D86ED58)
  {
    sub_2293D30DC(255, &qword_27D86ED60, 0x277CCA9B8);
    v0 = sub_22944FB14();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86ED58);
    }
  }
}

uint64_t sub_229449288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2294492DC(uint64_t a1, uint64_t a2)
{
  result = sub_229449334(&qword_2813DC478, a2, type metadata accessor for HDMCExperienceDaemonStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_229449334(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_229449420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_229449470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2294494C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2294494DC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_22944950C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  v4 = v3;
  v5 = sub_229449334(&qword_27D86E500, 255, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  result = MEMORY[0x22AACB840](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_229423F68(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2294495CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AACB840](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2294243F4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void _UserCharacteristicOfType_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9(&dword_2293D1000, v0, v1, "Error retrieving user characteristic of type: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void _UserCharacteristicModificationDayOfType_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9(&dword_2293D1000, v0, v1, "Error retrieving user characteristic modification date of type: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}