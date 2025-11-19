uint64_t sub_2556DBCB0(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  result = sub_2556E2B44(a3, a4, &v36);
  if (!v5)
  {
    if (*(&v36 + 1) >> 60 == 15)
    {
      v37 = v6;
      v12 = v6;
      swift_getAtKeyPath();

      sub_2556A15B8(v35, *(&v35 + 1));
      if (*(&v35 + 1) >> 60 != 15)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v13 = sub_25574F2C0();
        __swift_project_value_buffer(v13, qword_27F7BDD70);
        v14 = a2;

        v15 = sub_25574F2A0();
        v16 = sub_255750760();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v35 = v34;
          *v17 = 136446978;
          v37 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF088, &qword_25575A0A8);
          v18 = sub_2557501D0();
          log = v15;
          v20 = v14;
          v21 = sub_2556E474C(v18, v19, &v35);

          *(v17 + 4) = v21;
          *(v17 + 12) = 2082;
          v22 = sub_255750920();
          v24 = sub_2556E474C(v22, v23, &v35);

          *(v17 + 14) = v24;
          *(v17 + 22) = 2082;
          *(v17 + 24) = sub_2556E474C(a3, a4, &v35);
          *(v17 + 32) = 2080;
          v25 = [v20 recordID];
          v26 = [v25 recordName];

          v27 = sub_2557501B0();
          v29 = v28;

          v30 = sub_2556E474C(v27, v29, &v35);

          *(v17 + 34) = v30;
          _os_log_impl(&dword_255661000, log, v16, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v17, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v34, -1, -1);
          MEMORY[0x259C3F520](v17, -1, -1);
        }

        else
        {
        }
      }
    }

    v31 = v36;
    v35 = v36;
    v37 = v6;
    v32 = v6;
    sub_25567625C(v31, *(&v31 + 1));
    swift_setAtReferenceWritableKeyPath();

    return sub_2556A15B8(v31, *(&v31 + 1));
  }

  return result;
}

void sub_2556DBFF4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v43 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v39 - v13;
  v15 = sub_25574F0D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v20 = sub_2556E27C4(a3, a4);
  if (!v4 && v21)
  {
    v39[0] = v20;
    v39[1] = 0;
    v40 = v21;
    sub_25574F030();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_255674B20(v14, &unk_27F7BED20, &unk_2557551D0);
      if (qword_27F7BD6B8 != -1)
      {
        swift_once();
      }

      v22 = sub_25574F2C0();
      __swift_project_value_buffer(v22, qword_27F7BDD70);
      v23 = a2;

      v24 = sub_25574F2A0();
      v25 = sub_255750780();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44 = v27;
        *v26 = 136315906;
        v28 = sub_2556E474C(v39[0], v40, &v44);

        *(v26 + 4) = v28;
        *(v26 + 12) = 2082;
        v29 = sub_255750920();
        v31 = sub_2556E474C(v29, v30, &v44);

        *(v26 + 14) = v31;
        *(v26 + 22) = 2082;
        *(v26 + 24) = sub_2556E474C(v41, a4, &v44);
        *(v26 + 32) = 2080;
        v32 = [v23 recordID];
        v33 = [v32 recordName];

        v34 = sub_2557501B0();
        v36 = v35;

        v37 = sub_2556E474C(v34, v36, &v44);

        *(v26 + 34) = v37;
        _os_log_impl(&dword_255661000, v24, v25, "Unable to get UUID from %s in %{public}s.%{public}s record. ID: %s)", v26, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v27, -1, -1);
        MEMORY[0x259C3F520](v26, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      (*(v16 + 32))(v19, v14, v15);
      (*(v16 + 16))(v12, v19, v15);
      (*(v16 + 56))(v12, 0, 1, v15);
      v44 = v42;
      v38 = v42;
      swift_setAtReferenceWritableKeyPath();
      (*(v16 + 8))(v19, v15);
    }
  }
}

uint64_t sub_2556DC464()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF000);
  v1 = __swift_project_value_buffer(v0, qword_27F7BF000);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static JournalEntryMO.newObjectFromRecord(_:context:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v9 = [a1 recordID];
  v10 = [v9 recordName];

  sub_2557501B0();
  sub_25574F030();

  v11 = sub_25574F0D0();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v13 = sub_25574F050();
    (*(v12 + 8))(v7, v11);
  }

  [v8 setId_];

  [v8 setIsUploadedToCloud_];
  [v8 setIsRemovedFromCloud_];
  sub_2556DC848(a1);
  return v8;
}

uint64_t sub_2556DC848(void *a1)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  sub_2556DB520(KeyPath, a1, 0x7461447972746E65, 0xE900000000000065, &qword_27F7BF098, &qword_25575A0B8);

  if (!v2)
  {
    v7 = swift_getKeyPath();
    sub_2556DB978(v7, a1, 0x7079547972746E65, 0xE900000000000065);

    v8 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v9 = [v8 encodedData];
    v10 = sub_25574EF90();
    v12 = v11;

    v13 = sub_25574EF80();
    sub_2556755A8(v10, v12);
    [v3 setRecordSystemFields_];

    v14 = swift_getKeyPath();
    sub_2556DBCB0(v14, a1, 0x656C746974, 0xE500000000000000);

    v15 = swift_getKeyPath();
    sub_2556DBCB0(v15, a1, 1954047348, 0xE400000000000000);

    v16 = swift_getKeyPath();
    sub_2556DBCB0(v16, a1, 0x64724F7465737361, 0xED0000676E697265);

    v17 = swift_getKeyPath();
    sub_2556DB520(v17, a1, 0x4464657461657263, 0xEB00000000657461, &qword_27F7BF098, &qword_25575A0B8);

    v18 = swift_getKeyPath();
    sub_2556DB520(v18, a1, 0x4464657461647075, 0xEB00000000657461, &qword_27F7BF098, &qword_25575A0B8);

    v19 = swift_getKeyPath();
    sub_2556DB520(v19, a1, 0x6E45656C646E7562, 0xED00006574614464, &qword_27F7BF098, &qword_25575A0B8);

    v20 = swift_getKeyPath();
    sub_2556DB978(v20, a1, 0x72756F5365746164, 0xEA00000000006563);

    v21 = swift_getKeyPath();
    sub_2556DBCB0(v21, a1, 0x74706D6F7270, 0xE600000000000000);

    v22 = sub_2556E3764(0x64656767616C66, 0xE700000000000000);
    if (v22 != 2)
    {
      [v3 setFlagged_];
    }

    v23 = swift_getKeyPath();
    sub_2556DBFF4(v23, a1, 0x6449656C646E7562, 0xE800000000000000);

    v24 = swift_getKeyPath();
    sub_2556DB520(v24, a1, 0x6144656C646E7562, 0xEA00000000006574, &qword_27F7BF098, &qword_25575A0B8);

    v25 = sub_2556E33D8(0x676E654C74786574, 0xEA00000000006874);
    if ((v25 & 0x10000) == 0)
    {
      [v3 setTextLength_];
    }

    v26 = swift_getKeyPath();
    sub_2556DBCB0(v26, a1, 0x697463656C666572, 0xEE006E6F63496E6FLL);

    v27 = swift_getKeyPath();
    sub_2556DB978(v27, a1, 0x697463656C666572, 0xEE00657079546E6FLL);

    v28 = swift_getKeyPath();
    sub_2556DBCB0(v28, a1, 0xD000000000000010, 0x8000000255759CA0);

    v29 = sub_2556E3764(0xD000000000000015, 0x8000000255752EF0);
    if (v29 != 2)
    {
      [v3 setShowPhotoMemoryBanner_];
    }

    v30 = sub_2556E3764(0x6C746954776F6873, 0xE900000000000065);
    if (v30 != 2)
    {
      [v3 setShowTitle_];
    }

    v31 = sub_2556E33D8(0xD00000000000001ALL, 0x8000000255752ED0);
    if ((v31 & 0x10000) == 0)
    {
      [v3 setMinimumSupportedAppVersion_];
    }

    v32 = sub_2556E33D8(0xD00000000000001ELL, 0x8000000255752F10);
    if ((v32 & 0x10000) == 0)
    {
      [v3 setMinimumSupportedAppVersionMode_];
    }

    v38 = &type metadata for JournalFeatureFlags;
    v33 = sub_255663AC0();
    v39 = v33;
    LOBYTE(v37[0]) = 8;
    v34 = sub_25574F1E0();
    __swift_destroy_boxed_opaque_existential_1(v37);
    if (v34)
    {
      sub_2556DF18C(a1);
    }

    v38 = &type metadata for JournalFeatureFlags;
    v39 = v33;
    LOBYTE(v37[0]) = 4;
    v35 = sub_25574F1E0();
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    if (v35)
    {
      v36 = swift_getKeyPath();
      sub_2556DB520(v36, a1, 0x4F646574656C6564, 0xED0000657461446ELL, &qword_27F7BF098, &qword_25575A0B8);
    }
  }

  return result;
}

void *JournalEntryMO.cloudKitRecord.getter()
{
  v1 = v0;
  swift_getObjectType();
  v268 = type metadata accessor for MergeableEntryAttributes(0);
  v2 = *(*(v268 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v268);
  v267 = v259 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v269 = v259 - v5;
  v6 = sub_25574F020();
  v7 = *(v6 - 8);
  v282 = v6;
  v283 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v266 = v259 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25574F0D0();
  v277 = *(v10 - 8);
  v278 = v10;
  v11 = *(v277 + 64);
  MEMORY[0x28223BE20](v10);
  v262 = v259 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v259 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v273 = v259 - v19;
  MEMORY[0x28223BE20](v18);
  v274 = v259 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v260 = v259 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v263 = v259 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v261 = v259 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v264 = v259 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v265 = v259 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v275 = v259 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v276 = v259 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v279 = v259 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v272 = v259 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v270 = v259 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v271 = v259 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = v259 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = v259 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = v259 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = v259 - v54;
  v56 = sub_2556AF848();
  v57 = v56;
  if (v56)
  {
    [v56 encryptedValues];
    sub_2556E26E0(&unk_27F7BF020, type metadata accessor for JournalEntryMO);
    v58 = sub_25568AB28();
    if (v59)
    {
      v60 = MEMORY[0x277CBBE08];
      v61 = MEMORY[0x277D837D0];
    }

    else
    {
      v58 = 0;
      v61 = 0;
      v60 = 0;
      *&v286 = 0;
    }

    *&v285 = v58;
    *(&v285 + 1) = v59;
    *(&v286 + 1) = v61;
    v287 = v60;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v72 = [v57 encryptedValues];
    v73 = [v0 title];
    if (v73)
    {
      v74 = v73;
      v75 = sub_25574EF90();
      v77 = v76;

      v78 = MEMORY[0x277CBBBE0];
      v79 = MEMORY[0x277CC9318];
    }

    else
    {
      v75 = 0;
      v77 = 0;
      v79 = 0;
      v78 = 0;
      *&v286 = 0;
    }

    *&v285 = v75;
    *(&v285 + 1) = v77;
    *(&v286 + 1) = v79;
    v287 = v78;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v80 = [v57 encryptedValues];
    v81 = [v0 text];
    if (v81)
    {
      v82 = v81;
      v83 = sub_25574EF90();
      v85 = v84;

      v86 = MEMORY[0x277CBBBE0];
      v87 = MEMORY[0x277CC9318];
    }

    else
    {
      v83 = 0;
      v85 = 0;
      v87 = 0;
      v86 = 0;
      *&v286 = 0;
    }

    *&v285 = v83;
    *(&v285 + 1) = v85;
    *(&v286 + 1) = v87;
    v287 = v86;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v88 = [v57 encryptedValues];
    v89 = [v0 assetOrdering];
    if (v89)
    {
      v90 = v89;
      v91 = sub_25574EF90();
      v93 = v92;

      v94 = MEMORY[0x277CBBBE0];
      v95 = MEMORY[0x277CC9318];
    }

    else
    {
      v91 = 0;
      v93 = 0;
      v95 = 0;
      v94 = 0;
      *&v286 = 0;
    }

    v96 = v282;
    *&v285 = v91;
    *(&v285 + 1) = v93;
    *(&v286 + 1) = v95;
    v287 = v94;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v97 = [v57 encryptedValues];
    v98 = [v0 updatedDate];
    if (v98)
    {
      v99 = v98;
      sub_25574EFF0();

      v100 = v283;
      v101 = *(v283 + 56);
      v102 = v53;
      v103 = 0;
    }

    else
    {
      v100 = v283;
      v101 = *(v283 + 56);
      v102 = v53;
      v103 = 1;
    }

    v281 = v101;
    v101(v102, v103, 1, v96);
    sub_255675060(v53, v55, &qword_27F7BEB40, &unk_255754E40);
    v104 = v100 + 48;
    v284 = *(v100 + 48);
    if (v284(v55, 1, v96) == 1)
    {
      sub_255674B20(v55, &qword_27F7BEB40, &unk_255754E40);
      v285 = 0u;
      v286 = 0u;
      v287 = 0;
    }

    else
    {
      *(&v286 + 1) = v96;
      v287 = MEMORY[0x277CBBBE8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v285);
      (*(v100 + 32))(boxed_opaque_existential_1, v55, v96);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v106 = [v57 encryptedValues];
    v107 = [v0 createdDate];
    v108 = v281;
    if (v107)
    {
      v109 = v107;
      sub_25574EFF0();

      v100 = v283;
      v110 = 0;
    }

    else
    {
      v110 = 1;
    }

    v280 = v100 + 56;
    v108(v47, v110, 1, v96);
    sub_255675060(v47, v50, &qword_27F7BEB40, &unk_255754E40);
    if (v284(v50, 1, v96) == 1)
    {
      sub_255674B20(v50, &qword_27F7BEB40, &unk_255754E40);
      v285 = 0u;
      v286 = 0u;
      v287 = 0;
    }

    else
    {
      *(&v286 + 1) = v96;
      v287 = MEMORY[0x277CBBBE8];
      v111 = __swift_allocate_boxed_opaque_existential_1(&v285);
      (*(v100 + 32))(v111, v50, v96);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v112 = [v57 encryptedValues];
    v113 = [v0 entryDate];
    v114 = v270;
    if (v113)
    {
      v115 = v113;
      sub_25574EFF0();

      v116 = 0;
    }

    else
    {
      v116 = 1;
    }

    v117 = v279;
    v108(v114, v116, 1, v96);
    v118 = v114;
    v119 = v271;
    sub_255675060(v118, v271, &qword_27F7BEB40, &unk_255754E40);
    if (v284(v119, 1, v96) == 1)
    {
      sub_255674B20(v119, &qword_27F7BEB40, &unk_255754E40);
      v285 = 0u;
      v286 = 0u;
      v287 = 0;
    }

    else
    {
      *(&v286 + 1) = v96;
      v287 = MEMORY[0x277CBBBE8];
      v120 = __swift_allocate_boxed_opaque_existential_1(&v285);
      (*(v100 + 32))(v120, v119, v96);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v121 = [v57 encryptedValues];
    v122 = [v0 bundleEndDate];
    if (v122)
    {
      v123 = v122;
      sub_25574EFF0();

      v117 = v279;
      v124 = 0;
    }

    else
    {
      v124 = 1;
    }

    v108(v117, v124, 1, v96);
    v125 = v117;
    v126 = v272;
    sub_255675060(v125, v272, &qword_27F7BEB40, &unk_255754E40);
    if (v284(v126, 1, v96) == 1)
    {
      sub_255674B20(v126, &qword_27F7BEB40, &unk_255754E40);
      v285 = 0u;
      v286 = 0u;
      v287 = 0;
    }

    else
    {
      *(&v286 + 1) = v96;
      v287 = MEMORY[0x277CBBBE8];
      v127 = __swift_allocate_boxed_opaque_existential_1(&v285);
      (*(v100 + 32))(v127, v126, v96);
    }

    v128 = v273;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v129 = [v57 encryptedValues];
    v130 = [v0 dateSource];
    if (v130)
    {
      v131 = v130;
      v132 = sub_2557501B0();
      v134 = v133;

      v135 = MEMORY[0x277CBBE08];
      v136 = MEMORY[0x277D837D0];
    }

    else
    {
      v132 = 0;
      v134 = 0;
      v136 = 0;
      v135 = 0;
      *&v286 = 0;
    }

    *&v285 = v132;
    *(&v285 + 1) = v134;
    *(&v286 + 1) = v136;
    v287 = v135;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v137 = [v57 encryptedValues];
    swift_getObjectType();
    v138 = [v0 minimumSupportedAppVersion];
    *(&v286 + 1) = MEMORY[0x277D84958];
    v287 = MEMORY[0x277CBBEE8];
    LOWORD(v285) = v138;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v139 = [v57 encryptedValues];
    v140 = [v0 prompt];
    if (v140)
    {
      v141 = v140;
      v142 = sub_25574EF90();
      v144 = v143;

      v145 = MEMORY[0x277CBBBE0];
      v146 = MEMORY[0x277CC9318];
    }

    else
    {
      v142 = 0;
      v144 = 0;
      v146 = 0;
      v145 = 0;
      *&v286 = 0;
    }

    v147 = v281;
    *&v285 = v142;
    *(&v285 + 1) = v144;
    *(&v286 + 1) = v146;
    v287 = v145;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v148 = [v57 encryptedValues];
    swift_getObjectType();
    v149 = [v0 flagged];
    *(&v286 + 1) = MEMORY[0x277D839B0];
    v287 = MEMORY[0x277CBBE18];
    LOBYTE(v285) = v149;
    sub_2557508E0();
    swift_unknownObjectRelease();
    [v57 encryptedValues];
    v150 = [v0 bundleId];
    v151 = MEMORY[0x277D84958];
    if (v150)
    {
      v152 = v150;
      sub_25574F080();

      v153 = 0;
    }

    else
    {
      v153 = 1;
    }

    v154 = v274;
    v155 = v277;
    v156 = v278;
    (*(v277 + 56))(v128, v153, 1, v278);
    sub_255675060(v128, v154, &unk_27F7BED20, &unk_2557551D0);
    if ((*(v155 + 48))(v154, 1, v156))
    {
      sub_255674B20(v154, &unk_27F7BED20, &unk_2557551D0);
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      *&v286 = 0;
    }

    else
    {
      v161 = v262;
      (*(v155 + 16))(v262, v154, v156);
      sub_255674B20(v154, &unk_27F7BED20, &unk_2557551D0);
      v162 = v156;
      v163 = v155;
      v159 = sub_25574F040();
      v160 = v164;
      v165 = v161;
      v151 = MEMORY[0x277D84958];
      (*(v163 + 8))(v165, v162);
      v158 = MEMORY[0x277CBBE08];
      v157 = MEMORY[0x277D837D0];
    }

    v166 = v275;
    *(&v286 + 1) = v157;
    v287 = v158;
    *&v285 = v159;
    *(&v285 + 1) = v160;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v167 = [v57 encryptedValues];
    v168 = [v1 bundleDate];
    if (v168)
    {
      v169 = v168;
      sub_25574EFF0();

      v170 = 0;
    }

    else
    {
      v170 = 1;
    }

    v171 = v282;
    v172 = v283;
    v147(v166, v170, 1, v282);
    v173 = v276;
    sub_255675060(v166, v276, &qword_27F7BEB40, &unk_255754E40);
    if (v284(v173, 1, v171) == 1)
    {
      sub_255674B20(v173, &qword_27F7BEB40, &unk_255754E40);
      v285 = 0u;
      v286 = 0u;
      v287 = 0;
    }

    else
    {
      *(&v286 + 1) = v171;
      v287 = MEMORY[0x277CBBBE8];
      v174 = __swift_allocate_boxed_opaque_existential_1(&v285);
      (*(v172 + 32))(v174, v173, v171);
    }

    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v175 = [v57 encryptedValues];
    v176 = [v1 entryType];
    if (v176)
    {
      v177 = v176;
      v178 = sub_2557501B0();
      v180 = v179;

      v181 = MEMORY[0x277CBBE08];
      v182 = MEMORY[0x277D837D0];
    }

    else
    {
      v178 = 0;
      v180 = 0;
      v182 = 0;
      v181 = 0;
      *&v286 = 0;
    }

    *&v285 = v178;
    *(&v285 + 1) = v180;
    *(&v286 + 1) = v182;
    v287 = v181;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v183 = [v57 encryptedValues];
    swift_getObjectType();
    v184 = [v1 textLength];
    *(&v286 + 1) = v151;
    v287 = MEMORY[0x277CBBEE8];
    LOWORD(v285) = v184;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v185 = [v57 encryptedValues];
    v186 = [v1 reflectionIcon];
    if (v186)
    {
      v187 = v186;
      v188 = sub_25574EF90();
      v190 = v189;

      v191 = MEMORY[0x277CBBBE0];
      v192 = MEMORY[0x277CC9318];
    }

    else
    {
      v188 = 0;
      v190 = 0;
      v192 = 0;
      v191 = 0;
      *&v286 = 0;
    }

    *&v285 = v188;
    *(&v285 + 1) = v190;
    *(&v286 + 1) = v192;
    v287 = v191;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v193 = [v57 encryptedValues];
    v194 = [v1 reflectionPrompt];
    if (v194)
    {
      v195 = v194;
      v196 = sub_25574EF90();
      v198 = v197;

      v199 = MEMORY[0x277CBBBE0];
      v200 = MEMORY[0x277CC9318];
    }

    else
    {
      v196 = 0;
      v198 = 0;
      v200 = 0;
      v199 = 0;
      *&v286 = 0;
    }

    *&v285 = v196;
    *(&v285 + 1) = v198;
    *(&v286 + 1) = v200;
    v287 = v199;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v201 = [v57 encryptedValues];
    v202 = [v1 reflectionType];
    v259[1] = v104;
    if (v202)
    {
      v203 = v202;
      v204 = sub_2557501B0();
      v206 = v205;

      v207 = MEMORY[0x277CBBE08];
      v208 = MEMORY[0x277D837D0];
    }

    else
    {
      v204 = 0;
      v206 = 0;
      v208 = 0;
      v207 = 0;
      *&v286 = 0;
    }

    v209 = v282;
    *&v285 = v204;
    *(&v285 + 1) = v206;
    *(&v286 + 1) = v208;
    v287 = v207;
    swift_getObjectType();
    sub_2557508E0();
    swift_unknownObjectRelease();
    v210 = [v57 encryptedValues];
    swift_getObjectType();
    v211 = [v1 showPhotoMemoryBanner];
    v212 = MEMORY[0x277D839B0];
    *(&v286 + 1) = MEMORY[0x277D839B0];
    v213 = MEMORY[0x277CBBE18];
    v287 = MEMORY[0x277CBBE18];
    LOBYTE(v285) = v211;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v214 = [v57 encryptedValues];
    swift_getObjectType();
    v215 = [v1 showTitle];
    *(&v286 + 1) = v212;
    v287 = v213;
    LOBYTE(v285) = v215;
    sub_2557508E0();
    swift_unknownObjectRelease();
    v216 = [v57 encryptedValues];
    swift_getObjectType();
    v217 = [v1 minimumSupportedAppVersionMode];
    *(&v286 + 1) = MEMORY[0x277D84958];
    v287 = MEMORY[0x277CBBEE8];
    LOWORD(v285) = v217;
    sub_2557508E0();
    swift_unknownObjectRelease();
    *(&v286 + 1) = &type metadata for JournalFeatureFlags;
    v287 = sub_255663AC0();
    LOBYTE(v285) = 4;
    v218 = sub_25574F1E0();
    __swift_destroy_boxed_opaque_existential_1(&v285);
    if (v218)
    {
      v219 = [v57 encryptedValues];
      v220 = [v1 deletedOnDate];
      if (v220)
      {
        v221 = v264;
        v222 = v220;
        sub_25574EFF0();

        v223 = 0;
        v224 = v266;
      }

      else
      {
        v223 = 1;
        v224 = v266;
        v221 = v264;
      }

      v281(v221, v223, 1, v209);
      v225 = v265;
      sub_255675060(v221, v265, &qword_27F7BEB40, &unk_255754E40);
      if (v284(v225, 1, v209) == 1)
      {
        sub_255674B20(v225, &qword_27F7BEB40, &unk_255754E40);
        v285 = 0u;
        v286 = 0u;
        v287 = 0;
      }

      else
      {
        *(&v286 + 1) = v209;
        v287 = MEMORY[0x277CBBBE8];
        v226 = __swift_allocate_boxed_opaque_existential_1(&v285);
        (*(v283 + 32))(v226, v225, v209);
      }

      swift_getObjectType();
      sub_2557508E0();
      swift_unknownObjectRelease();
      v227 = [v1 deletedOnDate];
      if (!v227)
      {
        goto LABEL_83;
      }

      v228 = v227;
      sub_25574EFF0();

      v229 = [v57 expirationDate];
      if (v229)
      {
        v230 = v261;
        v231 = v229;
        sub_25574EFF0();

        (*(v283 + 8))(v224, v209);
        v281(v230, 0, 1, v209);
        sub_255674B20(v230, &qword_27F7BEB40, &unk_255754E40);
LABEL_83:
        v232 = [v57 expirationDate];
        if (v232)
        {
          v233 = v263;
          v234 = v232;
          sub_25574EFF0();

          v235 = v281;
          v281(v233, 0, 1, v209);
          sub_255674B20(v233, &qword_27F7BEB40, &unk_255754E40);
          v236 = [v1 deletedOnDate];
          if (v236)
          {
            v237 = v260;
            v238 = v236;
            sub_25574EFF0();

            v235(v237, 0, 1, v209);
            sub_255674B20(v237, &qword_27F7BEB40, &unk_255754E40);
          }

          else
          {
            v248 = v260;
            v235(v260, 1, 1, v209);
            sub_255674B20(v248, &qword_27F7BEB40, &unk_255754E40);
            [v57 setExpirationAfterTimeInterval_];
          }
        }

        else
        {
          v239 = v263;
          v281(v263, 1, 1, v209);
          sub_255674B20(v239, &qword_27F7BEB40, &unk_255754E40);
        }

        goto LABEL_95;
      }

      v240 = v261;
      v281(v261, 1, 1, v209);
      sub_255674B20(v240, &qword_27F7BEB40, &unk_255754E40);
      sub_25574EFE0();
      v242 = v241 + 2678400.0;
      if (v242 < 0.0)
      {
        v243 = 0.0;
      }

      else
      {
        v243 = v242;
      }

      v244 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v57 setExpirationAfterTimeInterval_];

      (*(v283 + 8))(v224, v209);
    }

LABEL_95:
    v249 = [v1 mergeableAttributes];
    if (v249)
    {
      v250 = v249;
      v251 = v267;
      sub_255678960(v249 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v267, type metadata accessor for MergeableEntryAttributes);

      v252 = v269;
      sub_2556DFBE0(v251, v269);
      if (qword_27F7BD768 != -1)
      {
        swift_once();
      }

      if (qword_27F7BD760 != -1)
      {
        swift_once();
      }

      v253 = sub_25574F770();
      __swift_project_value_buffer(v253, qword_27F7C0570);
      sub_2556E26E0(&unk_27F7BF030, type metadata accessor for MergeableEntryAttributes);
      v254 = sub_25574F4B0();
      v256 = v255;
      v257 = [v57 encryptedValues];
      swift_getObjectType();
      *(&v286 + 1) = MEMORY[0x277CC9318];
      v287 = MEMORY[0x277CBBBE0];
      *&v285 = v254;
      *(&v285 + 1) = v256;
      sub_255674F54(v254, v256);
      sub_2557508E0();
      swift_unknownObjectRelease();
      sub_2556755A8(v254, v256);
      sub_2556C0F6C(v252, type metadata accessor for MergeableEntryAttributes);
    }

    return v57;
  }

  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v62 = sub_25574F2C0();
  __swift_project_value_buffer(v62, qword_27F7BF000);
  v63 = v0;
  v64 = sub_25574F2A0();
  v65 = sub_255750780();

  v66 = os_log_type_enabled(v64, v65);
  v67 = v278;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v285 = v69;
    *v68 = 136315138;
    v70 = [v63 id];
    if (v70)
    {
      v71 = v70;
      sub_25574F080();

      (*(v277 + 56))(v17, 0, 1, v67);
    }

    else
    {
      (*(v277 + 56))(v17, 1, 1, v67);
    }

    v245 = sub_2557501D0();
    v247 = sub_2556E474C(v245, v246, &v285);

    *(v68 + 4) = v247;
    _os_log_impl(&dword_255661000, v64, v65, "Failed to create partial CKRecord for JournalEntryMO with id: %s.", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x259C3F520](v69, -1, -1);
    MEMORY[0x259C3F520](v68, -1, -1);
  }

  return v57;
}

void sub_2556DF18C(void *a1)
{
  sub_2556DFC44(a1, 0xD000000000000013, 0x8000000255752490);
  if (v1)
  {
    if (qword_27F7BD790 != -1)
    {
      swift_once();
    }

    v2 = sub_25574F2C0();
    __swift_project_value_buffer(v2, qword_27F7BF000);
    v3 = v1;
    v4 = sub_25574F2A0();
    v5 = sub_255750780();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    v10 = "Error updating mergeable attributes: %@";
LABEL_6:
    _os_log_impl(&dword_255661000, v4, v5, v10, v6, 0xCu);
    sub_255674B20(v7, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v7, -1, -1);
    MEMORY[0x259C3F520](v6, -1, -1);
LABEL_7:

    swift_willThrow();
    return;
  }

  v17[3] = &type metadata for JournalFeatureFlags;
  v17[4] = sub_255663AC0();
  LOBYTE(v17[0]) = 7;
  v11 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v11)
  {
    JournalEntryMO.cacheJournalRelationships()();
    if (v12)
    {
      if (qword_27F7BD790 != -1)
      {
        swift_once();
      }

      v13 = sub_25574F2C0();
      __swift_project_value_buffer(v13, qword_27F7BF000);
      v14 = v12;
      v4 = sub_25574F2A0();
      v5 = sub_255750780();

      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_7;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v16;
      *v7 = v16;
      v10 = "Failed to cache mergeable properties: %@";
      goto LABEL_6;
    }
  }
}

uint64_t static JournalEntryMO.objectsToDeletePredicate.getter()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x80000002557523F0;
  return sub_255750750();
}

uint64_t sub_2556DF548()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x80000002557523F0;
  return sub_255750750();
}

id _s13JournalShared0A7EntryMOC22objectsToSavePredicateSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  if (qword_27F7BD600 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCA0;
  *(v0 + 32) = qword_27F7BDCA0;
  v2 = qword_27F7BD620;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDCC0;
  *(v0 + 40) = qword_27F7BDCC0;
  v5 = qword_27F7BD618;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDCB8;
  *(v0 + 48) = qword_27F7BDCB8;
  v8 = qword_27F7BD5F0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDC90;
  *(v0 + 56) = qword_27F7BDC90;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v11 = v10;
  v12 = sub_255750370();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v13;
}

void sub_2556DFA90()
{
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v0 = sub_25574F2C0();
  __swift_project_value_buffer(v0, qword_27F7BF000);
  v1 = sub_25574F2A0();
  v2 = sub_255750780();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    v5 = sub_255751020();
    v7 = sub_2556E474C(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_255661000, v1, v2, "%s is not yet updated to handle CloudKit deletions.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x259C3F520](v4, -1, -1);
    MEMORY[0x259C3F520](v3, -1, -1);
  }
}

uint64_t sub_2556DFBE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2556DFC44(void *a1, uint64_t (*a2)(uint64_t a1), uint64_t (*a3)(uint64_t a1))
{
  v4 = v3;
  v190 = a2;
  v191 = a3;
  v193 = v4;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF050, qword_255759D18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v183 = &v164 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v178 = *(v9 - 8);
  v179 = v9;
  v10 = *(v178 + 64);
  MEMORY[0x28223BE20](v9);
  v177 = &v164 - v11;
  v12 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v176 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF080, qword_255759D48);
  v15 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v174 = &v164 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v173 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v185 = (&v164 - v21);
  v22 = sub_25574F020();
  v188 = *(v22 - 8);
  v189 = v22;
  v23 = *(v188 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v172 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v182 = &v164 - v27;
  MEMORY[0x28223BE20](v26);
  v187 = &v164 - v28;
  v186 = sub_25574F500();
  v181 = *(v186 - 8);
  v29 = *(v181 + 64);
  MEMORY[0x28223BE20](v186);
  v180 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v164 - v33;
  v35 = type metadata accessor for MergeableEntryAttributes(0);
  v192 = *(v35 - 8);
  v36 = *(v192 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v164 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v164 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v164 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v164 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v164 - v52;
  v54 = v194;
  sub_2556ADC0C(0xD000000000000013, 0x8000000255752490, v34);
  if (v54)
  {
    return;
  }

  v167 = v45;
  v166 = v42;
  v170 = v48;
  v169 = v39;
  v55 = v193;
  v168 = v51;
  v171 = v53;
  v194 = 0;
  if ((*(v192 + 48))(v34, 1, v35) != 1)
  {
    v74 = v35;
    v75 = v171;
    sub_2556DFBE0(v34, v171);
    v76 = [v55 mergeableAttributes];
    v77 = a1;
    if (v76)
    {
      v78 = v76;
      v79 = v167;
      sub_255678960(v76 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v167, type metadata accessor for MergeableEntryAttributes);

      v80 = v170;
      sub_2556DFBE0(v79, v170);
      v81 = sub_25572DB48(v75, v80);
      v82 = v169;
      if (v81 & 1) != 0 && (sub_25572DB5C(v75 + *(v74 + 20), v80 + *(v74 + 20)))
      {
        v192 = v74;
        v83 = v168;
        sub_255678960(v75, v168, type metadata accessor for MergeableEntryAttributes);
        v84 = v180;
        MergeableEntryAttributes.merge(_:)(v80);
        (*(v181 + 8))(v84, v186);
        sub_2556C0F6C(v80, type metadata accessor for MergeableEntryAttributes);
      }

      else
      {
        if (qword_27F7BD790 != -1)
        {
          swift_once();
        }

        v85 = sub_25574F2C0();
        __swift_project_value_buffer(v85, qword_27F7BF000);
        v86 = v77;
        v87 = sub_25574F2A0();
        v88 = sub_2557507A0();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v165 = v77;
          v90 = v196;
          *v89 = 136446722;
          v91 = sub_255751020();
          v93 = sub_2556E474C(v91, v92, &v196);

          *(v89 + 4) = v93;
          *(v89 + 12) = 2082;
          v94 = sub_255750920();
          v96 = sub_2556E474C(v94, v95, &v196);

          *(v89 + 14) = v96;
          *(v89 + 22) = 2080;
          v97 = [v86 recordID];
          v98 = [v97 recordName];

          v99 = sub_2557501B0();
          v101 = v100;

          v102 = sub_2556E474C(v99, v101, &v196);

          *(v89 + 24) = v102;
          _os_log_impl(&dword_255661000, v87, v88, "%{public}s and %{public}s have mergeable attributes without shared history. Falling back to LWW semantics. ID: %s", v89, 0x20u);
          swift_arrayDestroy();
          v103 = v90;
          v77 = v165;
          MEMORY[0x259C3F520](v103, -1, -1);
          v104 = v89;
          v75 = v171;
          MEMORY[0x259C3F520](v104, -1, -1);
        }

        v106 = v188;
        v105 = v189;
        v107 = v185;
        v108 = v194;
        sub_2556E2EE0(0x4464657461647075, 0xEB00000000657461, v185);
        v194 = v108;
        if (v108)
        {
          v109 = v170;
          goto LABEL_43;
        }

        v110 = *(v106 + 48);
        if (v110(v107, 1, v105) == 1)
        {
          sub_25574EFB0();
          if (v110(v107, 1, v105) != 1)
          {
            sub_255674B20(v107, &qword_27F7BEB40, &unk_255754E40);
          }
        }

        else
        {
          (*(v106 + 32))(v187, v107, v105);
        }

        v192 = v74;
        v111 = [v193 updatedDate];
        v165 = v77;
        if (v111)
        {
          v112 = v172;
          v113 = v111;
          sub_25574EFF0();

          v114 = *(v106 + 32);
          v115 = v173;
          v114(v173, v112, v105);
          (*(v106 + 56))(v115, 0, 1, v105);
          v114(v182, v115, v105);
          v116 = v168;
          v117 = v175;
          v118 = v174;
        }

        else
        {
          v119 = v173;
          (*(v106 + 56))(v173, 1, 1, v105);
          sub_25574EFB0();
          v120 = v110(v119, 1, v105);
          v116 = v168;
          v117 = v175;
          v118 = v174;
          if (v120 != 1)
          {
            sub_255674B20(v119, &qword_27F7BEB40, &unk_255754E40);
          }
        }

        v121 = sub_25574EFD0();
        v122 = *(v117 + 48);
        v123 = (v121 & 1) == 0;
        if (v121)
        {
          v124 = v170;
        }

        else
        {
          v124 = v75;
        }

        if (v123)
        {
          v125 = v170;
        }

        else
        {
          v125 = v75;
        }

        v191 = type metadata accessor for MergeableEntryAttributes;
        sub_255678960(v124, v118, type metadata accessor for MergeableEntryAttributes);
        sub_255678960(v125, v118 + v122, type metadata accessor for MergeableEntryAttributes);
        v126 = *(v117 + 48);
        sub_2556DFBE0(v118, v116);
        v127 = v166;
        sub_2556DFBE0(v118 + v126, v166);
        v128 = v192;
        v129 = *(v192 + 24);
        v190 = type metadata accessor for MergeableEntryAssetsPlacement;
        v130 = v176;
        sub_255678960(v127 + v129, v176, type metadata accessor for MergeableEntryAssetsPlacement);
        v131 = v180;
        MergeableEntryAssetsPlacement.merge(_:)(v116 + *(v128 + 24), v180);
        v132 = *(v181 + 8);
        v133 = v186;
        v132(v131, v186);
        v185 = v132;
        MergeableEntryAssetsPlacement.merge(_:)(v130, v131);
        v132(v131, v133);
        sub_2556C0F6C(v130, v190);
        v135 = v177;
        v134 = v178;
        v136 = v179;
        (*(v178 + 16))(v177, &v166[*(v128 + 28)], v179);
        v137 = *(v128 + 28);
        sub_25574FC50();
        v138 = v133;
        v139 = v185;
        v185(v131, v138);
        sub_25574FC50();
        v139(v131, v186);
        v140 = v136;
        v75 = v171;
        (*(v134 + 8))(v135, v140);
        v141 = v191;
        sub_2556C0F6C(v166, v191);
        v142 = v189;
        v143 = *(v188 + 8);
        v143(v182, v189);
        v143(v187, v142);
        sub_2556C0F6C(v170, v141);
        v77 = v165;
        v82 = v169;
        v55 = v193;
        v83 = v168;
      }
    }

    else
    {
      v192 = v74;
      v83 = v168;
      sub_255678960(v75, v168, type metadata accessor for MergeableEntryAttributes);
      v82 = v169;
    }

    sub_255678960(v83, v82, type metadata accessor for MergeableEntryAttributes);
    v144 = type metadata accessor for WrappedMergeableEntryAttributes(0);
    v145 = objc_allocWithZone(v144);
    sub_255678960(v82, v145 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, type metadata accessor for MergeableEntryAttributes);
    v195.receiver = v145;
    v195.super_class = v144;
    v146 = objc_msgSendSuper2(&v195, sel_init);
    sub_2556C0F6C(v82, type metadata accessor for MergeableEntryAttributes);
    [v55 setMergeableAttributes_];

    if ([v55 isUploadedToCloud])
    {
      sub_2556E26E0(&qword_27F7BF060, type metadata accessor for MergeableEntryAttributes);
      v147 = v183;
      sub_25574FD60();
      v148 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
      if ((*(*(v148 - 8) + 48))(v147, 1, v148) == 1)
      {
        sub_2556C0F6C(v83, type metadata accessor for MergeableEntryAttributes);
        sub_2556C0F6C(v75, type metadata accessor for MergeableEntryAttributes);
        sub_255674B20(v147, &qword_27F7BF050, qword_255759D18);
        return;
      }

      sub_255674B20(v147, &qword_27F7BF050, qword_255759D18);
      if (qword_27F7BD790 != -1)
      {
        swift_once();
      }

      v149 = sub_25574F2C0();
      __swift_project_value_buffer(v149, qword_27F7BF000);
      v150 = v77;
      v151 = sub_25574F2A0();
      v152 = sub_255750780();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = v83;
        v155 = v75;
        v156 = swift_slowAlloc();
        v196 = v156;
        *v153 = 136315138;
        v157 = [v150 recordID];
        v158 = [v157 recordName];

        v159 = sub_2557501B0();
        v161 = v160;

        v162 = sub_2556E474C(v159, v161, &v196);

        *(v153 + 4) = v162;
        _os_log_impl(&dword_255661000, v151, v152, "Remote MergeableEntryAttributes need to be updated, but no sync is scheduled! Record id: %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v156);
        MEMORY[0x259C3F520](v156, -1, -1);
        MEMORY[0x259C3F520](v153, -1, -1);

        sub_2556C0F6C(v154, type metadata accessor for MergeableEntryAttributes);
        v163 = v155;
LABEL_44:
        sub_2556C0F6C(v163, type metadata accessor for MergeableEntryAttributes);
        return;
      }
    }

    v109 = v83;
LABEL_43:
    sub_2556C0F6C(v109, type metadata accessor for MergeableEntryAttributes);
    v163 = v75;
    goto LABEL_44;
  }

  sub_255674B20(v34, &qword_27F7BE7E8, &unk_255757F00);
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v56 = sub_25574F2C0();
  __swift_project_value_buffer(v56, qword_27F7BF000);
  v57 = a1;
  v58 = v191;

  v59 = sub_25574F2A0();
  v60 = sub_255750760();

  v61 = os_log_type_enabled(v59, v60);
  v62 = v190;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v196 = v64;
    *v63 = 136446722;
    v65 = sub_255750920();
    v67 = sub_2556E474C(v65, v66, &v196);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v63 + 14) = sub_2556E474C(v62, v58, &v196);
    *(v63 + 22) = 2080;
    v68 = [v57 recordID];
    v69 = [v68 recordName];

    v70 = sub_2557501B0();
    v72 = v71;

    v73 = sub_2556E474C(v70, v72, &v196);

    *(v63 + 24) = v73;
    _os_log_impl(&dword_255661000, v59, v60, "%{public}s record does not have a mergeable value for %{public}s. Retaining local values. Record ID: %s", v63, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v64, -1, -1);
    MEMORY[0x259C3F520](v63, -1, -1);
  }
}

uint64_t sub_2556E0ED4(void *a1, void *a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v225 = v4;
  v226 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v221 = &v210 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v223 = &v210 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v224 = &v210 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v213 = &v210 - v15;
  MEMORY[0x28223BE20](v14);
  v214 = &v210 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF050, qword_255759D18);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v215 = &v210 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v222 = &v210 - v22;
  v23 = type metadata accessor for MergeableEntryAttributes(0);
  v217 = *(v23 - 8);
  v218 = v23;
  v24 = *(v217 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v216 = &v210 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v219 = &v210 - v28;
  MEMORY[0x28223BE20](v27);
  v220 = &v210 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v229 = (&v210 - v32);
  v33 = sub_25574F020();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v228 = &v210 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v210 - v38;
  v40 = [a1 recordSystemFields];
  if (!v40)
  {
    goto LABEL_5;
  }

  v41 = v40;
  v42 = sub_25574EF90();
  v44 = v43;

  sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
  v45 = CKRecord.init(systemFields:)(v42, v44);
  if (!v45)
  {
    goto LABEL_5;
  }

  v46 = v45;
  v47 = [v45 recordChangeTag];

  if (v47)
  {
    v48 = sub_2557501B0();
    v50 = v49;
  }

  else
  {
LABEL_5:
    v48 = 0;
    v50 = 0;
  }

  v51 = [a2 recordChangeTag];
  if (!v51)
  {
    if (!v50)
    {
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_22;
  }

  v212 = v48;
  v52 = v39;
  v53 = v33;
  v54 = v34;
  v55 = a2;
  v56 = a1;
  v57 = v51;
  v58 = sub_2557501B0();
  v60 = v59;

  a1 = v56;
  a2 = v55;
  v34 = v54;
  v33 = v53;
  v39 = v52;
  if (!v50)
  {
    if (!v60)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!v60)
  {
    goto LABEL_15;
  }

  if (v212 == v58 && v50 == v60)
  {
  }

  else
  {
    v61 = sub_255750EB0();

    if ((v61 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_17:
  v211 = a1;
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v62 = sub_25574F2C0();
  __swift_project_value_buffer(v62, qword_27F7BF000);
  v63 = a2;
  v64 = sub_25574F2A0();
  v65 = sub_255750760();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v230 = v39;
    v231 = v67;
    v212 = v33;
    v68 = a2;
    v69 = v67;
    *v66 = 136315138;
    v70 = sub_255750920();
    v72 = sub_2556E474C(v70, v71, &v231);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_255661000, v64, v65, "Will reprocess %s record even though local and remote have the same change tag.", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v73 = v69;
    a2 = v68;
    v33 = v212;
    v39 = v230;
    MEMORY[0x259C3F520](v73, -1, -1);
    MEMORY[0x259C3F520](v66, -1, -1);
  }

  a1 = v211;
LABEL_22:
  v74 = [a1 updatedDate];
  if (!v74)
  {
    if (qword_27F7BD790 != -1)
    {
      swift_once();
    }

    v97 = sub_25574F2C0();
    __swift_project_value_buffer(v97, qword_27F7BF000);
    v98 = a1;
    v99 = sub_25574F2A0();
    v100 = sub_255750780();

    v101 = os_log_type_enabled(v99, v100);
    v102 = v226;
    if (v101)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v231 = v104;
      *v103 = 136315138;
      v105 = [v98 id];
      if (v105)
      {
        v106 = v223;
        v107 = v105;
        sub_25574F080();

        v108 = *(v102 + 56);
        v109 = v106;
        v110 = 0;
      }

      else
      {
        v108 = *(v102 + 56);
        v106 = v223;
        v109 = v223;
        v110 = 1;
      }

      v126 = v225;
      v108(v109, v110, 1, v225);
      v127 = v224;
      sub_255675060(v106, v224, &unk_27F7BED20, &unk_2557551D0);
      if ((*(v102 + 48))(v127, 1, v126))
      {
        v128 = 7104878;
        sub_255674B20(v127, &unk_27F7BED20, &unk_2557551D0);
        v129 = 0xE300000000000000;
      }

      else
      {
        v130 = v221;
        (*(v102 + 16))(v221, v127, v126);
        sub_255674B20(v127, &unk_27F7BED20, &unk_2557551D0);
        v131 = v126;
        v128 = sub_25574F040();
        v129 = v132;
        (*(v102 + 8))(v130, v131);
      }

      v133 = sub_2556E474C(v128, v129, &v231);

      *(v103 + 4) = v133;
      _os_log_impl(&dword_255661000, v99, v100, "Journal entry %s has no updatedDate", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x259C3F520](v104, -1, -1);
      MEMORY[0x259C3F520](v103, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v134 = 2;
    return swift_willThrow();
  }

  v75 = v74;
  sub_25574EFF0();

  v76 = [a2 encryptedValues];
  v77 = sub_255750180();
  v78 = [v76 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v230 = v39;
  if (!v78)
  {
    v79 = v229;
    (*(v34 + 56))(v229, 1, 1, v33);
    goto LABEL_36;
  }

  v231 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  v79 = v229;
  v80 = swift_dynamicCast();
  (*(v34 + 56))(v79, v80 ^ 1u, 1, v33);
  if ((*(v34 + 48))(v79, 1, v33) == 1)
  {
LABEL_36:
    sub_255674B20(v79, &qword_27F7BEB40, &unk_255754E40);
    if (qword_27F7BD790 != -1)
    {
      swift_once();
    }

    v111 = sub_25574F2C0();
    __swift_project_value_buffer(v111, qword_27F7BF000);
    v112 = a2;
    v113 = sub_25574F2A0();
    v114 = sub_255750780();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v231 = v116;
      *v115 = 136315138;
      v117 = [v112 recordID];
      v118 = v34;
      v119 = [v117 recordName];

      v120 = sub_2557501B0();
      v122 = v121;

      v34 = v118;
      v123 = sub_2556E474C(v120, v122, &v231);

      *(v115 + 4) = v123;
      _os_log_impl(&dword_255661000, v113, v114, "CKRecord %s has no updatedDate", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x259C3F520](v116, -1, -1);
      MEMORY[0x259C3F520](v115, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v124 = 1;
    swift_willThrow();
    return (*(v34 + 8))(v230, v33);
  }

  v224 = v34;
  v81 = *(v34 + 32);
  v212 = v33;
  v81(v228, v79, v33);
  if (qword_27F7BD790 != -1)
  {
    swift_once();
  }

  v82 = sub_25574F2C0();
  v83 = __swift_project_value_buffer(v82, qword_27F7BF000);
  v84 = a2;
  v85 = sub_25574F2A0();
  v86 = sub_255750770();

  if (os_log_type_enabled(v85, v86))
  {
    v229 = v83;
    v87 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v233 = v223;
    *v87 = 136315650;
    v88 = [v84 recordID];
    v89 = [v88 recordName];

    v90 = sub_2557501B0();
    v92 = v91;

    v93 = sub_2556E474C(v90, v92, &v233);

    *(v87 + 4) = v93;
    *(v87 + 12) = 2080;
    v94 = v227;
    v95 = sub_2556E27C4(0x7265566C65646F6DLL, 0xEC0000006E6F6973);
    if (v94)
    {

      v95 = 0;
      v96 = 0;
    }

    v227 = 0;
    v231 = v95;
    v232 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF068, &unk_255759D38);
    v135 = sub_2557501D0();
    v137 = sub_2556E474C(v135, v136, &v233);

    *(v87 + 14) = v137;
    *(v87 + 22) = 2080;
    if (qword_27F7BD6D8 != -1)
    {
      swift_once();
    }

    v231 = NSManagedObjectModel.modelVersion.getter();
    v232 = v138;
    v139 = sub_2557501D0();
    v141 = sub_2556E474C(v139, v140, &v233);

    *(v87 + 24) = v141;
    _os_log_impl(&dword_255661000, v85, v86, "Entry record %s has model version: %s; compared to current: %s", v87, 0x20u);
    v142 = v223;
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v142, -1, -1);
    MEMORY[0x259C3F520](v87, -1, -1);
  }

  else
  {
  }

  v143 = sub_25574EFD0();
  v144 = v84;
  v145 = sub_25574F2A0();
  v146 = sub_2557507A0();

  v147 = os_log_type_enabled(v145, v146);
  if (v143)
  {
    if (v147)
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v231 = v149;
      *v148 = 136315138;
      v150 = [v144 recordID];
      v151 = [v150 recordName];

      v152 = sub_2557501B0();
      v153 = a1;
      v155 = v154;

      v156 = sub_2556E474C(v152, v155, &v231);
      a1 = v153;

      *(v148 + 4) = v156;
      _os_log_impl(&dword_255661000, v145, v146, "Local change is newer than remote for id %s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x259C3F520](v149, -1, -1);
      MEMORY[0x259C3F520](v148, -1, -1);
    }

    v157 = v212;
    v158 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [v144 encodeSystemFieldsWithCoder_];
    v159 = [v158 encodedData];
    v160 = sub_25574EF90();
    v162 = v161;

    v163 = sub_25574EF80();
    sub_2556755A8(v160, v162);
    [a1 setRecordSystemFields_];

    sub_2556DF18C(v144);
    goto LABEL_62;
  }

  if (v147)
  {
    v164 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    v231 = v229;
    *v164 = 136315138;
    v165 = [v144 recordID];
    v166 = [v165 recordName];

    v167 = sub_2557501B0();
    v168 = a1;
    v170 = v169;

    v171 = sub_2556E474C(v167, v170, &v231);
    a1 = v168;

    *(v164 + 4) = v171;
    _os_log_impl(&dword_255661000, v145, v146, "Remote change is newer than local for id %s.", v164, 0xCu);
    v172 = v229;
    __swift_destroy_boxed_opaque_existential_1(v229);
    MEMORY[0x259C3F520](v172, -1, -1);
    MEMORY[0x259C3F520](v164, -1, -1);
  }

  v157 = v212;
  v173 = v222;
  v174 = v227;
  sub_2556DC848(v144);
  v175 = v174;
  if (v174)
  {

    v175 = 0;
  }

  v176 = [a1 mergeableAttributes];
  if (!v176)
  {
    goto LABEL_62;
  }

  v177 = v176;
  v178 = v219;
  sub_255678960(v176 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v219, type metadata accessor for MergeableEntryAttributes);

  v179 = v220;
  sub_2556DFBE0(v178, v220);
  sub_2556ADC0C(0xD000000000000013, 0x8000000255752490, v173);
  if (v175)
  {
    sub_2556C0F6C(v179, type metadata accessor for MergeableEntryAttributes);
LABEL_62:
    v180 = *(v224 + 8);
    v180(v228, v157);
    return (v180)(v230, v157);
  }

  v181 = (*(v217 + 48))(v173, 1, v218);
  v182 = v224;
  if (v181 == 1)
  {
    sub_2556C0F6C(v179, type metadata accessor for MergeableEntryAttributes);
    v183 = *(v182 + 8);
    v183(v228, v157);
    v183(v230, v157);
    return sub_255674B20(v173, &qword_27F7BE7E8, &unk_255757F00);
  }

  else
  {
    v184 = v173;
    v185 = v216;
    sub_2556DFBE0(v184, v216);
    sub_2556E26E0(&qword_27F7BF060, type metadata accessor for MergeableEntryAttributes);
    v186 = v215;
    sub_25574FD60();
    v187 = type metadata accessor for MergeableEntryAttributes.ObservableDifference(0);
    if ((*(*(v187 - 8) + 48))(v186, 1, v187) == 1)
    {
      sub_2556C0F6C(v185, type metadata accessor for MergeableEntryAttributes);
      sub_2556C0F6C(v179, type metadata accessor for MergeableEntryAttributes);
      v188 = *(v182 + 8);
      v188(v228, v157);
      v188(v230, v157);
      return sub_255674B20(v186, &qword_27F7BF050, qword_255759D18);
    }

    else
    {
      sub_255674B20(v186, &qword_27F7BF050, qword_255759D18);
      if ([a1 isUploadedToCloud])
      {
        v189 = a1;
        v190 = sub_25574F2A0();
        v191 = sub_2557507A0();

        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          v231 = v229;
          *v192 = 136315138;
          v193 = [v189 id];
          if (v193)
          {
            v194 = v213;
            v195 = v193;
            sub_25574F080();

            v196 = 0;
            v197 = v225;
          }

          else
          {
            v196 = 1;
            v197 = v225;
            v194 = v213;
          }

          v198 = v214;
          v200 = v226;
          (*(v226 + 56))(v194, v196, 1, v197);
          sub_255675060(v194, v198, &unk_27F7BED20, &unk_2557551D0);
          if ((*(v200 + 48))(v198, 1, v197))
          {
            v201 = 7104878;
            sub_255674B20(v198, &unk_27F7BED20, &unk_2557551D0);
            v202 = 0xE300000000000000;
          }

          else
          {
            v203 = v221;
            (*(v200 + 16))(v221, v198, v197);
            sub_255674B20(v198, &unk_27F7BED20, &unk_2557551D0);
            v201 = sub_25574F040();
            v202 = v204;
            (*(v200 + 8))(v203, v225);
          }

          v205 = sub_2556E474C(v201, v202, &v231);

          *(v192 + 4) = v205;
          _os_log_impl(&dword_255661000, v190, v191, "Entry %s was updated to match remote, with merged changes. Marking entry as needing upload.", v192, 0xCu);
          v206 = v229;
          __swift_destroy_boxed_opaque_existential_1(v229);
          MEMORY[0x259C3F520](v206, -1, -1);
          MEMORY[0x259C3F520](v192, -1, -1);

          v182 = v224;
        }

        else
        {
        }

        v207 = v216;
        [v189 setIsUploadedToCloud_];
        sub_2556C0F6C(v207, type metadata accessor for MergeableEntryAttributes);
        sub_2556C0F6C(v220, type metadata accessor for MergeableEntryAttributes);
        v208 = *(v182 + 8);
        v209 = v212;
        v208(v228, v212);
        return (v208)(v230, v209);
      }

      else
      {
        sub_2556C0F6C(v216, type metadata accessor for MergeableEntryAttributes);
        sub_2556C0F6C(v179, type metadata accessor for MergeableEntryAttributes);
        v199 = *(v182 + 8);
        v199(v228, v157);
        return (v199)(v230, v157);
      }
    }
  }
}

uint64_t sub_2556E2678(uint64_t a1)
{
  result = sub_2556E26E0(&unk_27F7BF040, type metadata accessor for JournalEntryMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2556E26E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2556E27C4(uint64_t a1, unint64_t a2)
{
  v5 = [v2 encryptedValues];
  v6 = sub_255750180();
  v7 = [v5 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v30 = v7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v29;
  }

  else
  {
    if (qword_27F7BD798 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7BF0B0);
    swift_unknownObjectRetain();
    v10 = v2;

    v11 = sub_25574F2A0();
    v12 = sub_255750780();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 136447234;
      v27 = v12;
      v14 = sub_255750920();
      v16 = sub_2556E474C(v14, v15, &v29);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_2556E474C(a1, a2, &v29);
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_2556E474C(0x676E69727453, 0xE600000000000000, &v29);
      *(v13 + 32) = 2080;
      v30 = v7;
      swift_unknownObjectRetain();
      v17 = sub_2557501D0();
      v19 = sub_2556E474C(v17, v18, &v29);

      *(v13 + 34) = v19;
      *(v13 + 42) = 2080;
      v20 = [v10 recordID];
      v21 = [v20 recordName];

      v22 = sub_2557501B0();
      v24 = v23;

      v25 = sub_2556E474C(v22, v24, &v29);

      *(v13 + 44) = v25;
      _os_log_impl(&dword_255661000, v11, v27, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v13, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v28, -1, -1);
      MEMORY[0x259C3F520](v13, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_2556E2B44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v7 = [v3 encryptedValues];
  v8 = sub_255750180();
  v9 = [v7 objectForKeyedSubscript_];

  result = swift_unknownObjectRelease();
  if (!v9)
  {
    v11 = xmmword_25575A0D0;
    goto LABEL_5;
  }

  v33 = v9;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    result = swift_unknownObjectRelease();
    v11 = v32;
LABEL_5:
    *a3 = v11;
    return result;
  }

  v32 = xmmword_25575A0D0;
  sub_2556A15B8(0, 0xF000000000000000);
  if (qword_27F7BD798 != -1)
  {
    swift_once();
  }

  v12 = sub_25574F2C0();
  __swift_project_value_buffer(v12, qword_27F7BF0B0);
  swift_unknownObjectRetain();
  v13 = v3;

  v14 = sub_25574F2A0();
  v15 = sub_255750780();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v32 = v31;
    *v16 = 136447234;
    v30 = v15;
    v17 = sub_255750920();
    v19 = sub_2556E474C(v17, v18, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_2556E474C(a1, a2, &v32);
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_2556E474C(1635017028, 0xE400000000000000, &v32);
    *(v16 + 32) = 2080;
    v33 = v9;
    swift_unknownObjectRetain();
    v20 = sub_2557501D0();
    v22 = sub_2556E474C(v20, v21, &v32);

    *(v16 + 34) = v22;
    *(v16 + 42) = 2080;
    v23 = [v13 recordID];
    v24 = [v23 recordName];

    v25 = sub_2557501B0();
    v27 = v26;

    v28 = sub_2556E474C(v25, v27, &v32);

    *(v16 + 44) = v28;
    _os_log_impl(&dword_255661000, v14, v30, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v31, -1, -1);
    MEMORY[0x259C3F520](v16, -1, -1);
  }

  sub_25568B1D0();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_2556E2EE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = [v3 encryptedValues];
  v12 = sub_255750180();
  v13 = [v11 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (v13)
  {
    v42 = v13;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
    v14 = sub_25574F020();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      v15 = *(v14 - 8);
      v16 = *(v15 + 56);
      v16(v10, 0, 1, v14);
      (*(v15 + 32))(a3, v10, v14);
      return (v16)(a3, 0, 1, v14);
    }

    else
    {
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      sub_255674B20(v10, &qword_27F7BEB40, &unk_255754E40);
      if (qword_27F7BD798 != -1)
      {
        swift_once();
      }

      v19 = sub_25574F2C0();
      __swift_project_value_buffer(v19, qword_27F7BF0B0);
      swift_unknownObjectRetain();
      v20 = v3;

      v21 = sub_25574F2A0();
      v22 = sub_255750780();

      swift_unknownObjectRelease();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v23 = 136447234;
        v39 = v22;
        v24 = sub_255750920();
        v26 = sub_2556E474C(v24, v25, &v42);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2082;
        *(v23 + 14) = sub_2556E474C(a1, a2, &v42);
        *(v23 + 22) = 2082;
        *(v23 + 24) = sub_2556E474C(1702125892, 0xE400000000000000, &v42);
        *(v23 + 32) = 2080;
        v41 = v13;
        swift_unknownObjectRetain();
        v27 = sub_2557501D0();
        v29 = sub_2556E474C(v27, v28, &v42);

        *(v23 + 34) = v29;
        *(v23 + 42) = 2080;
        v30 = [v20 recordID];
        v31 = [v30 recordName];

        v32 = sub_2557501B0();
        v34 = v33;

        v35 = sub_2556E474C(v32, v34, &v42);

        *(v23 + 44) = v35;
        _os_log_impl(&dword_255661000, v21, v39, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v23, 0x34u);
        v36 = v40;
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v36, -1, -1);
        MEMORY[0x259C3F520](v23, -1, -1);
      }

      sub_25568B1D0();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v18 = sub_25574F020();
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }
}

uint64_t sub_2556E33D8(uint64_t a1, unint64_t a2)
{
  v5 = [v2 encryptedValues];
  v6 = sub_255750180();
  v7 = [v5 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v7)
  {
    v8 = 0;
    return v8 | ((v7 == 0) << 16);
  }

  v30 = v7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    v8 = v29;
    return v8 | ((v7 == 0) << 16);
  }

  if (qword_27F7BD798 != -1)
  {
    swift_once();
  }

  v10 = sub_25574F2C0();
  __swift_project_value_buffer(v10, qword_27F7BF0B0);
  swift_unknownObjectRetain();
  v11 = v2;

  v12 = sub_25574F2A0();
  v13 = sub_255750780();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v14 = 136447234;
    v31 = v13;
    v15 = sub_255750920();
    v17 = sub_2556E474C(v15, v16, &v30);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_2556E474C(a1, a2, &v30);
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_2556E474C(0x3631746E49, 0xE500000000000000, &v30);
    *(v14 + 32) = 2080;
    swift_unknownObjectRetain();
    v18 = sub_2557501D0();
    v20 = sub_2556E474C(v18, v19, &v30);

    *(v14 + 34) = v20;
    *(v14 + 42) = 2080;
    v21 = [v11 recordID];
    v22 = [v21 recordName];

    v23 = sub_2557501B0();
    v25 = v24;

    v26 = sub_2556E474C(v23, v25, &v30);

    *(v14 + 44) = v26;
    _os_log_impl(&dword_255661000, v12, v31, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v14, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x259C3F520](v28, -1, -1);
    MEMORY[0x259C3F520](v14, -1, -1);
  }

  sub_25568B1D0();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_2556E3764(uint64_t a1, unint64_t a2)
{
  v5 = [v2 encryptedValues];
  v6 = sub_255750180();
  v7 = [v5 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v7)
  {
    return 2;
  }

  v30 = v7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v29;
  }

  else
  {
    if (qword_27F7BD798 != -1)
    {
      swift_once();
    }

    v9 = sub_25574F2C0();
    __swift_project_value_buffer(v9, qword_27F7BF0B0);
    swift_unknownObjectRetain();
    v10 = v2;

    v11 = sub_25574F2A0();
    v12 = sub_255750780();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v13 = 136447234;
      v27 = v12;
      v14 = sub_255750920();
      v16 = sub_2556E474C(v14, v15, &v30);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_2556E474C(a1, a2, &v30);
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_2556E474C(1819242306, 0xE400000000000000, &v30);
      *(v13 + 32) = 2080;
      swift_unknownObjectRetain();
      v17 = sub_2557501D0();
      v19 = sub_2556E474C(v17, v18, &v30);

      *(v13 + 34) = v19;
      *(v13 + 42) = 2080;
      v20 = [v10 recordID];
      v21 = [v20 recordName];

      v22 = sub_2557501B0();
      v24 = v23;

      v25 = sub_2556E474C(v22, v24, &v30);

      *(v13 + 44) = v25;
      _os_log_impl(&dword_255661000, v11, v27, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v13, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v28, -1, -1);
      MEMORY[0x259C3F520](v13, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CKRecord.encryptedValueForKey<A>(_:as:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_255750950();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v46 - v13;
  v48 = v5;
  v15 = [v5 encryptedValues];
  v47 = a1;
  v49 = a2;
  v16 = sub_255750180();
  v17 = [v15 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (!v17)
  {
    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }

  v18 = a4;
  v51 = v17;
  swift_unknownObjectRetain();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF058, &qword_255759D30);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    v20 = *(a3 - 8);
    v21 = *(v20 + 56);
    v21(v14, 0, 1, a3);
    (*(v20 + 32))(v18, v14, a3);
    return (v21)(v18, 0, 1, a3);
  }

  else
  {
    v46[1] = v19;
    (*(*(a3 - 8) + 56))(v14, 1, 1, a3);
    (*(v11 + 8))(v14, v10);
    if (qword_27F7BD798 != -1)
    {
      swift_once();
    }

    v23 = sub_25574F2C0();
    __swift_project_value_buffer(v23, qword_27F7BF0B0);
    swift_unknownObjectRetain();
    v24 = v48;
    v25 = v49;

    v26 = sub_25574F2A0();
    v27 = sub_255750780();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v28 = 136447234;
      v29 = sub_255750920();
      v31 = sub_2556E474C(v29, v30, &v51);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_2556E474C(v47, v25, &v51);
      *(v28 + 22) = 2082;
      v32 = sub_255751020();
      v34 = sub_2556E474C(v32, v33, &v51);

      *(v28 + 24) = v34;
      *(v28 + 32) = 2080;
      v50 = v17;
      swift_unknownObjectRetain();
      v35 = sub_2557501D0();
      v37 = sub_2556E474C(v35, v36, &v51);

      *(v28 + 34) = v37;
      *(v28 + 42) = 2080;
      v38 = [v24 recordID];
      v39 = [v38 recordName];

      v40 = sub_2557501B0();
      v42 = v41;

      v43 = sub_2556E474C(v40, v42, &v51);

      *(v28 + 44) = v43;
      _os_log_impl(&dword_255661000, v26, v27, "Found value at %{public}s.%{public}s in record, but not expected type %{public}s. Found value: %s. Record ID: %s", v28, 0x34u);
      v44 = v48;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v44, -1, -1);
      MEMORY[0x259C3F520](v28, -1, -1);
    }

    sub_25568B1D0();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CKRecord.encryptedValueForKey<A>(_:as:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_2556E2B44(a1, a2, &v13);
  if (!v5)
  {
    v10 = *(&v13 + 1);
    if (*(&v13 + 1) >> 60 == 15)
    {
      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    else
    {
      v11 = v13;
      sub_255674F54(v13, *(&v13 + 1));
      v12 = *(a4 + 8);
      sub_25574F4C0();
      (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
      return sub_2556A15B8(v11, v10);
    }
  }

  return result;
}

uint64_t CKRecord.encodedSystemFields.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v0 encodeSystemFieldsWithCoder_];
  v2 = [v1 encodedData];
  v3 = sub_25574EF90();

  return v3;
}

uint64_t sub_2556E43D8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF0B0);
  v1 = __swift_project_value_buffer(v0, qword_27F7BF0B0);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

CKRecord __swiftcall CKRecord.init(recordType:recordName:zone:)(Swift::String recordType, Swift::String recordName, CKRecordZone zone)
{
  sub_2556E4CF4();
  v4 = [(objc_class *)zone.super.isa zoneID];
  sub_255750740();
  v5 = sub_255750910();

  return v5;
}

id CKRecord.init(systemFields:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v5 = sub_2556E4D40();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
  sub_2556755A8(a1, a2);

  if (!v6)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_2556E474C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2556E4818(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_255678EBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2556E4818(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2556E4924(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_255750BA0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2556E4924(uint64_t a1, unint64_t a2)
{
  v4 = sub_2556E4970(a1, a2);
  sub_2556E4AA0(&unk_2867893C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2556E4970(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2556E4B8C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_255750BA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_255750210();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2556E4B8C(v10, 0);
        result = sub_255750AF0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2556E4AA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2556E4C00(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2556E4B8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BF0E0, &unk_25575A0E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2556E4C00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BF0E0, &unk_25575A0E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2556E4CF4()
{
  result = qword_27F7BF0D0;
  if (!qword_27F7BF0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BF0D0);
  }

  return result;
}

id sub_2556E4D40()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25574EF80();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_25574ED90();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MotionActivityAssetMetadata.activityType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MotionActivityAssetMetadata.localizedActivityName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MotionActivityAssetMetadata.steps.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MotionActivityAssetMetadata.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MotionActivityAssetMetadata() + 32);

  return sub_2556700F4(v3, a1);
}

uint64_t type metadata accessor for MotionActivityAssetMetadata()
{
  result = qword_27F7BF130;
  if (!qword_27F7BF130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MotionActivityAssetMetadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MotionActivityAssetMetadata() + 36);

  return sub_2556700F4(v3, a1);
}

uint64_t MotionActivityAssetMetadata.init(activityType:activityTypeEnum:localizedActivityName:steps:startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v13 = type metadata accessor for MotionActivityAssetMetadata();
  sub_2556719B8(a8, a9 + *(v13 + 32));
  v14 = a9 + *(v13 + 36);

  return sub_2556719B8(a10, v14);
}

uint64_t sub_2556E4FEC()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x7370657473;
  v4 = 0x6D69547472617473;
  if (v1 != 4)
  {
    v4 = 0x656D6954646E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
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

uint64_t sub_2556E50B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556E6190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556E50EC(uint64_t a1)
{
  v2 = sub_2556E53EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556E5128(uint64_t a1)
{
  v2 = sub_2556E53EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MotionActivityAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF0F0, &qword_25575A0F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556E53EC();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  v28 = 0;
  sub_255750E00();
  if (!v2)
  {
    v27 = *(v3 + 16);
    v26 = 1;
    sub_2556E5440();
    sub_255750DF0();
    v13 = v3[3];
    v14 = v3[4];
    v25 = 2;
    sub_255750DB0();
    v15 = v3[5];
    v16 = v3[6];
    v24 = 3;
    sub_255750DB0();
    v17 = type metadata accessor for MotionActivityAssetMetadata();
    v18 = *(v17 + 32);
    v23 = 4;
    sub_25574F020();
    sub_255671850(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v19 = *(v17 + 36);
    v22 = 5;
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2556E53EC()
{
  result = qword_27F7BF0F8;
  if (!qword_27F7BF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF0F8);
  }

  return result;
}

unint64_t sub_2556E5440()
{
  result = qword_27F7BF100;
  if (!qword_27F7BF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF100);
  }

  return result;
}

uint64_t MotionActivityAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF108, &qword_25575A100);
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for MotionActivityAssetMetadata();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2556E53EC();
  v20 = v35;
  sub_255750FE0();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v21 = v9;
  v22 = v33;
  v43 = 0;
  *v17 = sub_255750D50();
  *(v17 + 1) = v24;
  v35 = v24;
  v41 = 1;
  sub_2556E590C();
  sub_255750D40();
  v17[16] = v42;
  v40 = 2;
  *(v17 + 3) = sub_255750D00();
  *(v17 + 4) = v25;
  v39 = 3;
  *(v17 + 5) = sub_255750D00();
  *(v17 + 6) = v26;
  sub_25574F020();
  v38 = 4;
  sub_255671850(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  v35 = 0;
  sub_2556719B8(v21, &v17[*(v14 + 32)]);
  v37 = 5;
  v27 = v35;
  sub_255750D40();
  v35 = v27;
  (*(v22 + 8))(v13, v34);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    v28 = *(v17 + 1);

    v29 = *(v17 + 4);

    v30 = *(v17 + 6);

    return sub_255687634(&v17[*(v14 + 32)]);
  }

  else
  {
    sub_2556719B8(v7, &v17[*(v14 + 36)]);
    sub_2556E5960(v17, v32);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_2556E59C4(v17);
  }
}

unint64_t sub_2556E590C()
{
  result = qword_27F7BF110;
  if (!qword_27F7BF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF110);
  }

  return result;
}

uint64_t sub_2556E5960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionActivityAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556E59C4(uint64_t a1)
{
  v2 = type metadata accessor for MotionActivityAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

JournalShared::MotionActivityTypeEnum_optional __swiftcall MotionActivityTypeEnum.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MotionActivityTypeEnum.rawValue.getter()
{
  v1 = 0xD000000000000031;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002ALL;
  }

  *v0;
  return result;
}

uint64_t sub_2556E5B00(uint64_t a1)
{
  *(a1 + 8) = sub_255671850(&qword_27F7BF118, type metadata accessor for MotionActivityAssetMetadata);
  result = sub_255671850(&qword_27F7BF120, type metadata accessor for MotionActivityAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556E5B84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "tMotionActivityTypeWalking";
  v4 = 0xD000000000000031;
  if (v2 == 1)
  {
    v5 = 0xD00000000000002ALL;
  }

  else
  {
    v5 = 0xD000000000000031;
  }

  if (v2 == 1)
  {
    v6 = "tMotionActivityTypeWalking";
  }

  else
  {
    v6 = "tMotionActivityTypeRunning";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002ALL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "oment";
  }

  if (*a2 == 1)
  {
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = "tMotionActivityTypeRunning";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000002ALL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "oment";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255750EB0();
  }

  return v11 & 1;
}

unint64_t sub_2556E5C5C()
{
  result = qword_27F7BF128;
  if (!qword_27F7BF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF128);
  }

  return result;
}

uint64_t sub_2556E5CB0()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556E5D48()
{
  *v0;
  *v0;
  sub_2557501F0();
}

uint64_t sub_2556E5DCC()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

void sub_2556E5E6C(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = "tMotionActivityTypeWalking";
  v4 = 0xD000000000000031;
  if (*v1 == 1)
  {
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = "tMotionActivityTypeRunning";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "oment";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

void sub_2556E5F9C()
{
  sub_25566BFA8(319, &qword_27F7BF140);
  if (v0 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BE538);
    if (v1 <= 0x3F)
    {
      sub_25566E80C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2556E608C()
{
  result = qword_27F7BF148;
  if (!qword_27F7BF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF148);
  }

  return result;
}

unint64_t sub_2556E60E4()
{
  result = qword_27F7BF150;
  if (!qword_27F7BF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF150);
  }

  return result;
}

unint64_t sub_2556E613C()
{
  result = qword_27F7BF158;
  if (!qword_27F7BF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF158);
  }

  return result;
}

uint64_t sub_2556E6190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255752F30 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255752F50 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2556E63A0()
{
  result = qword_27F7BF160;
  if (!qword_27F7BF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF160);
  }

  return result;
}

uint64_t PodcastAssetMetadata.mediaId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PodcastAssetMetadata.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PodcastAssetMetadata.author.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t type metadata accessor for PodcastAssetMetadata()
{
  result = qword_27F7BF1A0;
  if (!qword_27F7BF1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PodcastAssetMetadata.numberOfTimesPlayed.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastAssetMetadata() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PodcastAssetMetadata.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastAssetMetadata();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, char *a12)
{
  v15 = *a12;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v16 = type metadata accessor for PodcastAssetMetadata();
  sub_255675060(a7, a9 + v16[7], &qword_27F7BE270, &unk_25575A3F0);
  result = sub_255675060(a8, a9 + v16[8], &qword_27F7BEB40, &unk_255754E40);
  v18 = a9 + v16[9];
  *v18 = a10;
  v18[8] = a11 & 1;
  *(a9 + v16[10]) = v15;
  return result;
}

unint64_t sub_2556E6684()
{
  v1 = *v0;
  v2 = 0x6449616964656DLL;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x707954616964656DLL;
  }

  v4 = 0x4C5255616964656DLL;
  if (v1 != 3)
  {
    v4 = 0x79616C50656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x726F68747561;
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

uint64_t sub_2556E6764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556E77B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556E6798(uint64_t a1)
{
  v2 = sub_2556E6B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556E67D4(uint64_t a1)
{
  v2 = sub_2556E6B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PodcastAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF168, &qword_25575A400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556E6B34();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_255750E00();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24[14] = 1;
    sub_255750DB0();
    v15 = v3[4];
    v16 = v3[5];
    v24[13] = 2;
    sub_255750DB0();
    v17 = type metadata accessor for PodcastAssetMetadata();
    v18 = v17[7];
    v24[12] = 3;
    sub_25574EF10();
    sub_2556E732C(&qword_27F7BDC20, MEMORY[0x277CC9260]);
    sub_255750DF0();
    v19 = v17[8];
    v24[11] = 4;
    sub_25574F020();
    sub_2556E732C(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v20 = v3 + v17[9];
    v21 = *v20;
    v22 = v20[8];
    v24[10] = 5;
    sub_255750DE0();
    v24[9] = *(v3 + v17[10]);
    v24[8] = 6;
    sub_2556E6B88();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2556E6B34()
{
  result = qword_27F7BF170;
  if (!qword_27F7BF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF170);
  }

  return result;
}

unint64_t sub_2556E6B88()
{
  result = qword_27F7BF178;
  if (!qword_27F7BF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF178);
  }

  return result;
}

uint64_t PodcastAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF180, &qword_25575A408);
  v37 = *(v39 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v36 - v12;
  v14 = type metadata accessor for PodcastAssetMetadata();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v18 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2556E6B34();
  v20 = v40;
  sub_255750FE0();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v21 = v10;
  v22 = v37;
  v23 = v38;
  v49 = 0;
  *v17 = sub_255750D50();
  v17[1] = v25;
  v36 = v25;
  v48 = 1;
  v17[2] = sub_255750D00();
  v17[3] = v26;
  v47 = 2;
  v27 = sub_255750D00();
  v40 = 0;
  v17[4] = v27;
  v17[5] = v28;
  sub_25574EF10();
  v46 = 3;
  sub_2556E732C(&qword_27F7BDC40, MEMORY[0x277CC9260]);
  v29 = v40;
  sub_255750D40();
  if (v29)
  {
    (*(v22 + 8))(v13, v39);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v33 = v17[1];

    v34 = v17[3];

    v35 = v17[5];
  }

  else
  {
    sub_255675060(v21, v17 + v14[7], &qword_27F7BE270, &unk_25575A3F0);
    sub_25574F020();
    v45 = 4;
    sub_2556E732C(&qword_27F7BDC38, MEMORY[0x277CC9578]);
    sub_255750D40();
    sub_255675060(v6, v17 + v14[8], &qword_27F7BEB40, &unk_255754E40);
    v44 = 5;
    v30 = sub_255750D30();
    v31 = v17 + v14[9];
    *v31 = v30;
    v31[8] = v32 & 1;
    v42 = 6;
    sub_2556E7194();
    sub_255750D40();
    (*(v22 + 8))(0, v39);
    *(v17 + v14[10]) = v43;
    sub_2556E71E8(v17, v23);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_2556E724C(v17);
  }
}

unint64_t sub_2556E7194()
{
  result = qword_27F7BF188;
  if (!qword_27F7BF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF188);
  }

  return result;
}

uint64_t sub_2556E71E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556E724C(uint64_t a1)
{
  v2 = type metadata accessor for PodcastAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556E72A8(uint64_t a1)
{
  *(a1 + 8) = sub_2556E732C(&qword_27F7BF190, type metadata accessor for PodcastAssetMetadata);
  result = sub_2556E732C(&qword_27F7BF198, type metadata accessor for PodcastAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556E732C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2556E73CC()
{
  sub_25566BFA8(319, &qword_27F7BE538);
  if (v0 <= 0x3F)
  {
    sub_2556E7508(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_2556E7508(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_25566BFA8(319, &qword_27F7BEC00);
        if (v3 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BF1B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2556E7508(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PodcastAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556E76B0()
{
  result = qword_27F7BF1B8;
  if (!qword_27F7BF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1B8);
  }

  return result;
}

unint64_t sub_2556E7708()
{
  result = qword_27F7BF1C0;
  if (!qword_27F7BF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1C0);
  }

  return result;
}

unint64_t sub_2556E7760()
{
  result = qword_27F7BF1C8;
  if (!qword_27F7BF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1C8);
  }

  return result;
}

uint64_t sub_2556E77B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000255752F70 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_255750EB0();

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

uint64_t JournalFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

unint64_t sub_2556E7AAC()
{
  result = qword_27F7BF1D0;
  if (!qword_27F7BF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF1D0);
  }

  return result;
}

uint64_t static Identifiable<>.fetch(id:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25574F0D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25574F030();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2556B224C(v10);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    static Identifiable<>.fetch(id:context:)(v15, a3, a4);
    if (v4)
    {
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      v18 = v17;
      (*(v12 + 8))(v15, v11);
      return v18;
    }
  }
}

uint64_t static Identifiable<>.fetch(ids:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_2556E84A0(a1, a2, a3, a4, &qword_27F7BEB38, &qword_25575EA60, &qword_27F7BF1E0);
}

{
  return sub_2556E84A0(a1, a2, a3, a4, &qword_27F7BE728, &qword_255757898, &unk_27F7BF210);
}

void static Identifiable<>.fetch(id:context:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v5 = sub_25574F0D0();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_255755060;
  v11 = sub_25574F050();
  *(v10 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v10 + 64) = sub_2556E8720();
  *(v10 + 32) = v11;
  v12 = sub_255750750();
  [v9 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  v13 = sub_2557508C0();
  if (v3)
  {

    return;
  }

  v14 = v13;
  v37 = v8;
  v38 = v9;
  v15 = (v13 >> 62);
  if (v13 >> 62)
  {
    v16 = sub_255750A30();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v5;
  v18 = v40;
  if (v16 < 2)
  {
    goto LABEL_11;
  }

  if (qword_27F7BD5B8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v19 = sub_25574F2C0();
    __swift_project_value_buffer(v19, qword_27F7C04B0);
    v20 = v37;
    (*(v18 + 16))(v37, a1, v17);

    a1 = sub_25574F2A0();
    v21 = sub_255750780();
    if (os_log_type_enabled(a1, v21))
    {
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v18 = 134218498;
      v36 = v21;
      if (v15)
      {
        v22 = sub_255750A30();
      }

      else
      {
        v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v22;

      *(v18 + 12) = 2080;
      v26 = sub_255751020();
      v28 = sub_2556E474C(v26, v27, &v41);

      *(v18 + 14) = v28;
      *(v18 + 22) = 2080;
      sub_2556E8788();
      v29 = v37;
      v30 = sub_255750E60();
      v32 = v31;
      (*(v40 + 8))(v29, v5);
      v33 = sub_2556E474C(v30, v32, &v41);

      *(v18 + 24) = v33;
      _os_log_impl(&dword_255661000, a1, v36, "Found %ld %s objects with id %s", v18, 0x20u);
      v17 = v35;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v17, -1, -1);
      MEMORY[0x259C3F520](v18, -1, -1);

      v24 = v14 & 0xFFFFFFFFFFFFFF8;
      if (!v15)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v23 = *(v18 + 8);
      v18 += 8;
      v23(v20, v17);
LABEL_11:
      v24 = v14 & 0xFFFFFFFFFFFFFF8;
      if (!v15)
      {
LABEL_12:
        v15 = v38;
        if (!*(v24 + 16))
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }
    }

    v34 = sub_255750A30();
    v15 = v38;
    if (!v34)
    {
LABEL_21:

      return;
    }

LABEL_13:
    if ((v14 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v14 + 32);
      swift_unknownObjectRetain();
      goto LABEL_16;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  MEMORY[0x259C3E830](0, v14);
LABEL_16:

  if (!swift_dynamicCastUnknownClass())
  {
    swift_unknownObjectRelease();
  }
}

void static NSManagedObject.iterativeDeleteAll(context:)(void *a1)
{
  v3 = v1;
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (v2)
  {
    goto LABEL_2;
  }

  v6 = sub_255750CC0();

  if (!v6)
  {
    goto LABEL_2;
  }

  if (!sub_255750410())
  {

LABEL_2:

    return;
  }

  v13 = v5;
  for (i = 0; ; ++i)
  {
    v8 = sub_2556E87E0(v12, i, v6, v3);
    v10 = *v9;
    (v8)(v12, 0);
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [a1 deleteObject_];

    if (v11 == sub_255750410())
    {

      return;
    }
  }

  __break(1u);
}

void static NSManagedObject.batchDeleteAll(context:)(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v9[0] = 0;
  v4 = [a1 executeRequest:v3 error:v9];
  if (v4)
  {
    v5 = v4;
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_25574ED90();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2556E84A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v11 = v7;
  v13 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_255755060;
  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *(v14 + 64) = sub_2556E89A0(a7, a5, a6);
  *(v14 + 32) = a1;

  v15 = sub_255750750();
  [v13 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (!v7)
  {
    v11 = sub_255750CC0();

    if (!v11)
    {
      v11 = sub_2557503D0();
    }
  }

  return v11;
}

uint64_t static Identifiable<>.fetchAll(context:)()
{
  v1 = [swift_getObjCClassFromMetadata() fetchRequest];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  sub_2557508C0();
  if (!v0)
  {
    v2 = sub_255750CC0();

    if (!v2)
    {
      v2 = sub_2557503D0();
    }
  }

  return v2;
}

unint64_t sub_2556E8720()
{
  result = qword_27F7BDD68;
  if (!qword_27F7BDD68)
  {
    sub_255669A88(255, &unk_27F7BF1F0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDD68);
  }

  return result;
}

unint64_t sub_2556E8788()
{
  result = qword_27F7BF200;
  if (!qword_27F7BF200)
  {
    sub_25574F0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF200);
  }

  return result;
}

void (*sub_2556E87E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  v13 = sub_2557503F0();
  sub_2557503A0();
  if (v13)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_2556E8954;
  }

  result = sub_255750B50();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return sub_2556E8954;
  }

  __break(1u);
  return result;
}

void sub_2556E8954(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t sub_2556E89A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t MergeableTextList.markerFormatString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MergeableTextList.init(startingItemNumber:markerFormatString:listOptions:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for MergeableTextList(0) + 28);
  sub_25574FB20();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v13 = sub_25574FB30();
  v14 = *(*(v13 - 8) + 40);

  return v14(&a6[v12], a5, v13);
}

uint64_t MergeableTextList.hash(into:)()
{
  MEMORY[0x259C3EC60](*v0);
  v1 = v0[1];
  v2 = v0[2];
  sub_2557501F0();
  MEMORY[0x259C3EC60](v0[3]);
  v3 = *(type metadata accessor for MergeableTextList(0) + 28);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t MergeableTextList.hashValue.getter()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  v1 = v0[1];
  v2 = v0[2];
  sub_2557501F0();
  MEMORY[0x259C3EC60](v0[3]);
  v3 = *(type metadata accessor for MergeableTextList(0) + 28);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E8C5C(uint64_t a1)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v1);
  v3 = v1[1];
  v4 = v1[2];
  sub_2557501F0();
  MEMORY[0x259C3EC60](v1[3]);
  v5 = *(a1 + 28);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E8D20(uint64_t a1, uint64_t a2)
{
  MEMORY[0x259C3EC60](*v2);
  v4 = v2[1];
  v5 = v2[2];
  sub_2557501F0();
  MEMORY[0x259C3EC60](v2[3]);
  v6 = *(a2 + 28);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t sub_2556E8DC8(uint64_t a1, uint64_t a2)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v2);
  v4 = v2[1];
  v5 = v2[2];
  sub_2557501F0();
  MEMORY[0x259C3EC60](v2[3]);
  v6 = *(a2 + 28);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t MergeableTextList.debugDescription.getter()
{
  v6 = v0[1];
  v7 = v0[2];

  MEMORY[0x259C3DED0](23328, 0xE200000000000000);
  v4 = *v0;
  v1 = sub_255750E60();
  MEMORY[0x259C3DED0](v1);

  MEMORY[0x259C3DED0](58, 0xE100000000000000);
  v5 = v0[3];
  v2 = sub_255750E60();
  MEMORY[0x259C3DED0](v2);

  MEMORY[0x259C3DED0](10589, 0xE200000000000000);
  return v6;
}

uint64_t MergeableTextLists.init(textLists:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for MergeableTextLists(0) + 20);
  sub_25574FB20();
  *a3 = a1;
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 40);

  return v8(&a3[v6], a2, v7);
}

uint64_t static MergeableTextLists.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2556E9068(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for MergeableTextLists(0) + 20);

  return sub_25574FAF0();
}

uint64_t sub_2556E9068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableTextList(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_17:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_2556EBDE8(v14, v11, type metadata accessor for MergeableTextList);
      sub_2556EBDE8(v15, v8, type metadata accessor for MergeableTextList);
      if (*v11 != *v8)
      {
        break;
      }

      v17 = v11[1] == v8[1] && v11[2] == v8[2];
      if (!v17 && (sub_255750EB0() & 1) == 0 || v11[3] != v8[3])
      {
        break;
      }

      v18 = *(v4 + 28);
      v19 = sub_25574FAF0();
      sub_2556EC028(v8);
      sub_2556EC028(v11);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_2556EC028(v8);
    sub_2556EC028(v11);
    goto LABEL_17;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t MergeableTextLists.hash(into:)(uint64_t a1)
{
  sub_2556EBAB8(a1, *v1);
  v2 = *(type metadata accessor for MergeableTextLists(0) + 20);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t MergeableTextLists.hashValue.getter()
{
  sub_255750F80();
  sub_2556EBAB8(v3, *v0);
  v1 = *(type metadata accessor for MergeableTextLists(0) + 20);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E939C(uint64_t a1)
{
  sub_255750F80();
  sub_2556EBAB8(v5, *v1);
  v3 = *(a1 + 20);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E9444(uint64_t a1, uint64_t a2)
{
  sub_2556EBAB8(a1, *v2);
  v4 = *(a2 + 20);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  return sub_2557500A0();
}

uint64_t sub_2556E94D0(uint64_t a1, uint64_t a2)
{
  sub_255750F80();
  sub_2556EBAB8(v6, *v2);
  v4 = *(a2 + 20);
  sub_25574FB30();
  sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_2556E9574(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2556E9068(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_25574FAF0();
}

void MergeableTextLists.debugDescription.getter()
{
  v1 = *v0;
  type metadata accessor for MergeableTextList(0);

  JUMPOUT(0x259C3E060);
}

void sub_2556E9624()
{
  v1 = *v0;
  type metadata accessor for MergeableTextList(0);

  JUMPOUT(0x259C3E060);
}

uint64_t MergeableTextLists.copy(renamingReferences:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_25574FB30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v1, a1, type metadata accessor for MergeableTextLists);
  v8 = *v1;
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
  v9 = sub_255750450();
  v10 = *a1;

  *a1 = v9;
  v11 = type metadata accessor for MergeableTextLists(0);
  v12 = v1 + *(v11 + 20);
  sub_25574FB00();
  return (*(v4 + 40))(a1 + *(v11 + 20), v7, v3);
}

uint64_t MergeableTextLists.visitReferences(_:)()
{
  v1 = *v0;
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
  sub_255750440();
  v2 = v0 + *(type metadata accessor for MergeableTextLists(0) + 20);
  return sub_25574FAE0();
}

uint64_t MergeableTextLists.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    v4 = *v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF228, &unk_25575A6E0);
    sub_2556EBD34();
    sub_25574FF80();

    v3 = v0 + *(type metadata accessor for MergeableTextLists(0) + 20);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableTextLists.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v58 - v13;
  v69 = sub_25574FB30();
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v69);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for MergeableTextLists(0) + 20);
  v71 = a2;
  sub_25574FB20();
  v20 = v70;
  v21 = sub_25574FEE0();
  v70 = v20;
  if (v20)
  {

    goto LABEL_3;
  }

  v59 = v14;
  v60 = v12;
  v66 = v8;
  v67 = v7;
  v64 = v18;
  v68 = v21;
  if (sub_25574FF00())
  {
    type metadata accessor for MergeableTextList(0);
    sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
    v25 = v70;
    v26 = sub_255750460();
    v27 = v25;
    if (v25)
    {

LABEL_3:
      v22 = v71;
      v23 = v69;
      return (*(v15 + 8))(v22 + v19, v23);
    }

    v61 = v19;
    v62 = v15;
    v63 = a1;
  }

  else
  {
    v61 = v19;
    v62 = v15;
    v63 = a1;
    type metadata accessor for MergeableTextList(0);
    sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
    v26 = sub_255750430();
    v27 = v70;
  }

  v58[1] = v26;
  *v71 = v26;
  v28 = sub_25574FEF0();
  v29 = sub_255676334(v28);

  v73 = v29;
  sub_255676690(1);
  v30 = v73 + 56;
  v31 = 1 << *(v73 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v73 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = (v65 + 56);
  v36 = v73;

  v37 = 0;
  v70 = MEMORY[0x277D84F90];
  while (1)
  {
    v38 = v37;
    if (!v33)
    {
      break;
    }

LABEL_17:
    v39 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v40 = *(*(v36 + 48) + ((v37 << 9) | (8 * v39)));
    if (sub_25574FF00())
    {
      v43 = v66;
      v42 = v67;
      v44 = *(v66 + 48);
      *v67 = v40;
      v45 = v42;
      sub_25574F310();
      if (v27)
      {
LABEL_32:

        v22 = v71;
        v23 = v69;
        v19 = v61;
        v15 = v62;
        return (*(v15 + 8))(v22 + v19, v23);
      }

      (*v35)(v45, 0, 1, v43);
      v46 = v45;
      v47 = v59;
      sub_2556AA69C(v46, v59);
      sub_2556AA69C(v47, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_25569874C(0, v70[2] + 1, 1, v70);
      }

      v48 = v65;
      v50 = v70[2];
      v49 = v70[3];
      v51 = v60;
      if (v50 >= v49 >> 1)
      {
        v53 = sub_25569874C(v49 > 1, v50 + 1, 1, v70);
        v48 = v65;
        v70 = v53;
        v51 = v60;
      }

      v52 = v70;
      v70[2] = v50 + 1;
      sub_2556AA69C(v51, v52 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50);
    }

    else
    {
      v41 = v67;
      (*v35)(v67, 1, 1, v66);
      sub_2556DB128(v41);
    }
  }

  while (1)
  {
    v37 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v37 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v37);
    ++v38;
    if (v33)
    {
      goto LABEL_17;
    }
  }

  v54 = v70;
  if (v70[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
    v55 = sub_255750C90();
  }

  else
  {
    v55 = MEMORY[0x277D84F98];
  }

  v22 = v71;
  v15 = v62;
  v56 = v69;
  v19 = v61;
  v57 = v64;
  v72 = v55;
  sub_2556EAF20(v54, 1, &v72);
  if (v27)
  {

    v23 = v56;
    return (*(v15 + 8))(v22 + v19, v23);
  }

  sub_25574FB40();

  return (*(v15 + 40))(v22 + v19, v57, v56);
}

uint64_t sub_2556E9F9C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_25574FB30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v2, a2, type metadata accessor for MergeableTextLists);
  v10 = *v2;
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
  v11 = sub_255750450();
  v12 = *a2;

  *a2 = v11;
  v13 = v2 + *(a1 + 20);
  sub_25574FB00();
  return (*(v6 + 40))(a2 + *(a1 + 20), v9, v5);
}

uint64_t sub_2556EA11C()
{
  sub_2556EBCEC(&qword_27F7BE9A0, type metadata accessor for MergeableTextLists);
  sub_2556EBCEC(&qword_27F7BF240, type metadata accessor for MergeableTextLists);

  return sub_25574FDD0();
}

uint64_t sub_2556EA1E8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  type metadata accessor for MergeableTextList(0);
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
  sub_255750440();
  v5 = v2 + *(a2 + 20);
  return sub_25574FAE0();
}

uint64_t sub_2556EA29C(uint64_t a1, uint64_t a2)
{
  result = sub_25574FF70();
  if (!v3)
  {
    v7 = *v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF228, &unk_25575A6E0);
    sub_2556EBD34();
    sub_25574FF80();

    v6 = v2 + *(a2 + 20);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableTextList.copy(renamingReferences:)@<X0>(char *a1@<X8>)
{
  v3 = sub_25574FB30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v1, a1, type metadata accessor for MergeableTextList);
  v8 = v1[1];
  *a1 = *v1;
  v9 = v1[2];
  v10 = *(a1 + 2);

  *(a1 + 1) = v8;
  *(a1 + 2) = v9;
  *(a1 + 3) = v1[3];
  v11 = type metadata accessor for MergeableTextList(0);
  v12 = v1 + *(v11 + 28);
  sub_25574FB00();
  return (*(v4 + 40))(&a1[*(v11 + 28)], v7, v3);
}

uint64_t MergeableTextList.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    v4 = *v0;
    sub_25574FF80();
    v5 = v0[1];
    v7 = v0[2];

    sub_25574FF80();

    v6 = v0[3];
    sub_25574FF80();
    v3 = v0 + *(type metadata accessor for MergeableTextList(0) + 28);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableTextList.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = sub_25574FB30();
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[3] = 0;
  v76 = *(type metadata accessor for MergeableTextList(0) + 28);
  v77 = a2;
  sub_25574FB20();
  v20 = sub_25574FEE0();
  if (v2)
  {

    v21 = v75;
    v22 = v76;
    v23 = v16;
    return (*(v21 + 8))(v77 + v22, v23);
  }

  else
  {
    v25 = v20;
    v69 = v13;
    v70 = v19;
    v68 = v15;
    v73 = v9;
    if (sub_25574FF00())
    {
      v26 = sub_2557505E0();
    }

    else
    {
      v26 = sub_2557505D0();
    }

    *v77 = v26;
    if (sub_25574FF00())
    {
      v27 = sub_255750260();
    }

    else
    {
      v27 = sub_255750250();
    }

    v29 = v28;
    v30 = v77;
    v77[1] = v27;
    v30[2] = v28;
    v31 = sub_25574FF00();
    v71 = v8;
    if (v31)
    {
      v32 = sub_255750970();
      v64 = v29;
      v65 = v16;
      v66 = a1;
      v77[3] = v32;
    }

    else
    {
      v64 = v29;
      v65 = v16;
      v66 = a1;
    }

    v72 = v25;
    v33 = sub_25574FEF0();
    v34 = sub_255676334(v33);

    v79 = v34;
    sub_255676690(1);
    sub_255676690(2);
    sub_255676690(3);
    v35 = v79 + 56;
    v36 = 1 << *(v79 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v79 + 56);
    v39 = (v36 + 63) >> 6;
    v40 = (v74 + 56);
    v41 = v79;

    v42 = 0;
    v67 = MEMORY[0x277D84F90];
    while (1)
    {
      v43 = v42;
      if (!v38)
      {
        break;
      }

LABEL_20:
      v44 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v45 = *(*(v41 + 48) + ((v42 << 9) | (8 * v44)));
      if (sub_25574FF00())
      {
        v47 = *(v73 + 48);
        v48 = v71;
        *v71 = v45;
        sub_25574F310();
        (*v40)(v48, 0, 1, v73);
        v49 = v48;
        v50 = v68;
        sub_2556AA69C(v49, v68);
        sub_2556AA69C(v50, v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_25569874C(0, v67[2] + 1, 1, v67);
        }

        v51 = v74;
        v53 = v67[2];
        v52 = v67[3];
        v54 = v69;
        if (v53 >= v52 >> 1)
        {
          v56 = sub_25569874C(v52 > 1, v53 + 1, 1, v67);
          v51 = v74;
          v67 = v56;
          v54 = v69;
        }

        v55 = v67;
        v67[2] = v53 + 1;
        sub_2556AA69C(v54, v55 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v53);
      }

      else
      {
        v46 = v71;
        (*v40)(v71, 1, 1, v73);
        sub_2556DB128(v46);
      }
    }

    while (1)
    {
      v42 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);

        v23 = v65;
        v22 = v76;
        v21 = v75;
        return (*(v21 + 8))(v77 + v22, v23);
      }

      if (v42 >= v39)
      {
        break;
      }

      v38 = *(v35 + 8 * v42);
      ++v43;
      if (v38)
      {
        goto LABEL_20;
      }
    }

    v57 = v67;
    if (v67[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v58 = sub_255750C90();
    }

    else
    {
      v58 = MEMORY[0x277D84F98];
    }

    v59 = v65;
    v60 = v75;
    v61 = v76;
    v78 = v58;
    sub_2556EB4EC(v57, 1, &v78);
    v62 = v70;
    sub_25574FB40();

    return (*(v60 + 40))(v77 + v61, v62, v59);
  }
}

uint64_t sub_2556EACB8@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = sub_25574FB30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556EBDE8(v2, a2, type metadata accessor for MergeableTextList);
  v10 = v2[1];
  *a2 = *v2;
  v11 = v2[2];
  v12 = *(a2 + 2);

  *(a2 + 1) = v10;
  *(a2 + 2) = v11;
  *(a2 + 3) = v2[3];
  v13 = v2 + *(a1 + 28);
  sub_25574FB00();
  return (*(v6 + 40))(&a2[*(a1 + 28)], v9, v5);
}

uint64_t sub_2556EADFC()
{
  sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
  sub_2556EBCEC(&qword_27F7BF238, type metadata accessor for MergeableTextList);

  return sub_25574FDD0();
}

void sub_2556EAF20(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_2556EBCEC(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD00000000000002CLL;
    v34[1] = 0x80000002557530D0;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

void sub_2556EB4EC(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_2556EBCEC(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD00000000000002BLL;
    v34[1] = 0x80000002557530A0;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_2556EBAB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MergeableTextList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x259C3EC60](v8);
  if (v8)
  {
    v10 = *(v3 + 28);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_2556EBDE8(v11, v7, type metadata accessor for MergeableTextList);
      MEMORY[0x259C3EC60](*v7);
      v13 = v7[1];
      v14 = v7[2];
      sub_2557501F0();
      MEMORY[0x259C3EC60](v7[3]);
      sub_25574FB30();
      sub_2556EBCEC(&qword_27F7BE3B0, MEMORY[0x277CFB650]);
      sub_2557500A0();
      result = sub_2556EC028(v7);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t _s13JournalShared17MergeableTextListV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_255750EB0() & 1) == 0 || a1[3] != a2[3])
  {
    return 0;
  }

  v5 = *(type metadata accessor for MergeableTextList(0) + 28);

  return sub_25574FAF0();
}

uint64_t sub_2556EBCEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2556EBD34()
{
  result = qword_27F7BF230;
  if (!qword_27F7BF230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BF228, &unk_25575A6E0);
    sub_2556EBCEC(&qword_27F7BF220, type metadata accessor for MergeableTextList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF230);
  }

  return result;
}

uint64_t sub_2556EBDE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2556EC028(uint64_t a1)
{
  v2 = type metadata accessor for MergeableTextList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ThirdPartyMediaAssetMetadata.song.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ThirdPartyMediaAssetMetadata.albumName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ThirdPartyMediaAssetMetadata.artistName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for ThirdPartyMediaAssetMetadata()
{
  result = qword_27F7BF348;
  if (!qword_27F7BF348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.appName.getter()
{
  v1 = (v0 + *(type metadata accessor for ThirdPartyMediaAssetMetadata() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

__n128 ThirdPartyMediaAssetMetadata.appBackgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ThirdPartyMediaAssetMetadata() + 44);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ThirdPartyMediaAssetMetadata.appBackgroundColor.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ThirdPartyMediaAssetMetadata() + 44);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.colorVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThirdPartyMediaAssetMetadata();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.colorVariant.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ThirdPartyMediaAssetMetadata();
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t sub_2556EC3C8()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x6B72614479726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_2556EC418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556EE8D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556EC440(uint64_t a1)
{
  v2 = sub_2556EC998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC47C(uint64_t a1)
{
  v2 = sub_2556EC998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2556EC4C4(uint64_t a1)
{
  v2 = sub_2556ECA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC500(uint64_t a1)
{
  v2 = sub_2556ECA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2556EC53C(uint64_t a1)
{
  v2 = sub_2556ECA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC578(uint64_t a1)
{
  v2 = sub_2556ECA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2556EC5B4(uint64_t a1)
{
  v2 = sub_2556EC9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556EC5F0(uint64_t a1)
{
  v2 = sub_2556EC9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThirdPartyMediaAssetMetadata.ColorVariant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF290, &qword_25575AA70);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF298, &qword_25575AA78);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2A0, &qword_25575AA80);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2A8, &qword_25575AA88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556EC998();
  sub_255750FF0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_2556ECA40();
      v12 = v26;
      sub_255750DA0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_2556EC9EC();
      v12 = v29;
      sub_255750DA0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_2556ECA94();
    sub_255750DA0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_2556EC998()
{
  result = qword_27F7BF2B0;
  if (!qword_27F7BF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2B0);
  }

  return result;
}

unint64_t sub_2556EC9EC()
{
  result = qword_27F7BF2B8;
  if (!qword_27F7BF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2B8);
  }

  return result;
}

unint64_t sub_2556ECA40()
{
  result = qword_27F7BF2C0;
  if (!qword_27F7BF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2C0);
  }

  return result;
}

unint64_t sub_2556ECA94()
{
  result = qword_27F7BF2C8;
  if (!qword_27F7BF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2C8);
  }

  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.ColorVariant.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t ThirdPartyMediaAssetMetadata.ColorVariant.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2D0, &qword_25575AA90);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2D8, &qword_25575AA98);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2E0, &qword_25575AAA0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2E8, &qword_25575AAA8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2556EC998();
  v20 = v43;
  sub_255750FE0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_255750D90();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_25569051C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_255750B90();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA8, &qword_25575AAB0) + 48);
      *v30 = &type metadata for ThirdPartyMediaAssetMetadata.ColorVariant;
      sub_255750CF0();
      sub_255750B80();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_2556ECA40();
          sub_255750CE0();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_2556EC9EC();
          v33 = v22;
          sub_255750CE0();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_2556ECA94();
        sub_255750CE0();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

__n128 ThirdPartyMediaAssetMetadata.init(mediaType:song:albumName:artistName:mediaURL:appName:startTime:appBackgroundColor:colorVariant:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14)
{
  v19 = *a1;
  v29 = *a14;
  v20 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v21 = v20[12];
  v22 = a9 + v20[11];
  *(a9 + v21) = 3;
  *a9 = v19;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  sub_255675060(a8, a9 + v20[8], &qword_27F7BE270, &unk_25575A3F0);
  v23 = (a9 + v20[9]);
  *v23 = a10;
  v23[1] = a11;
  sub_255675060(a12, a9 + v20[10], &qword_27F7BEB40, &unk_255754E40);
  result = *a13;
  v25 = *(a13 + 16);
  *v22 = *a13;
  *(v22 + 16) = v25;
  *(v22 + 32) = *(a13 + 32);
  *(a9 + v21) = v29;
  return result;
}

uint64_t sub_2556ED21C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x707954616964656DLL;
    v6 = 0x6D614E6D75626C61;
    if (a1 != 2)
    {
      v6 = 0x614E747369747261;
    }

    if (a1)
    {
      v5 = 1735290739;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D69547472617473;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x726156726F6C6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4C5255616964656DLL;
    if (a1 != 4)
    {
      v3 = 0x656D614E707061;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2556ED344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556EE9E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556ED36C(uint64_t a1)
{
  v2 = sub_2556ED7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556ED3A8(uint64_t a1)
{
  v2 = sub_2556ED7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThirdPartyMediaAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF2F0, &qword_25575AAB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556ED7BC();
  sub_255750FF0();
  LOBYTE(v27[0]) = *v3;
  v29 = 0;
  sub_2556E6B88();
  sub_255750E30();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v27[0]) = 1;
    sub_255750DB0();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v27[0]) = 2;
    sub_255750DB0();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v27[0]) = 3;
    sub_255750DB0();
    v17 = type metadata accessor for ThirdPartyMediaAssetMetadata();
    v18 = v17[8];
    LOBYTE(v27[0]) = 4;
    sub_25574EF10();
    sub_2556EE210(&qword_27F7BDC20, MEMORY[0x277CC9260]);
    sub_255750DF0();
    v19 = (v3 + v17[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v27[0]) = 5;
    sub_255750DB0();
    v22 = v17[10];
    LOBYTE(v27[0]) = 6;
    sub_25574F020();
    sub_2556EE210(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v23 = v3 + v17[11];
    v24 = *(v23 + 32);
    v25 = *(v23 + 16);
    v27[0] = *v23;
    v27[1] = v25;
    v28 = v24;
    v29 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF300, &qword_25575AAC0);
    sub_2556EDFD0(&qword_27F7BF308);
    sub_255750DF0();
    LOBYTE(v27[0]) = *(v3 + v17[12]);
    v29 = 8;
    sub_2556ED810();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2556ED7BC()
{
  result = qword_27F7BF2F8;
  if (!qword_27F7BF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF2F8);
  }

  return result;
}

unint64_t sub_2556ED810()
{
  result = qword_27F7BF310;
  if (!qword_27F7BF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF310);
  }

  return result;
}

uint64_t ThirdPartyMediaAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF318, &qword_25575AAC8);
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 48);
  v18[v19] = 3;
  v20 = a1[3];
  v21 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2556ED7BC();
  v22 = v45;
  sub_255750FE0();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v45 = v9;
  v40 = v19;
  v23 = v43;
  v50 = 0;
  sub_2556E7194();
  v24 = v44;
  sub_255750D80();
  *v18 = v47;
  LOBYTE(v47) = 1;
  *(v18 + 1) = sub_255750D00();
  *(v18 + 2) = v25;
  LOBYTE(v47) = 2;
  *(v18 + 3) = sub_255750D00();
  *(v18 + 4) = v26;
  LOBYTE(v47) = 3;
  v27 = sub_255750D00();
  v39 = v14;
  *(v18 + 5) = v27;
  *(v18 + 6) = v28;
  sub_25574EF10();
  LOBYTE(v47) = 4;
  sub_2556EE210(&qword_27F7BDC40, MEMORY[0x277CC9260]);
  v29 = v45;
  sub_255750D40();
  v30 = v39;
  sub_255675060(v29, &v18[v39[8]], &qword_27F7BE270, &unk_25575A3F0);
  LOBYTE(v47) = 5;
  v31 = sub_255750D00();
  v32 = &v18[v30[9]];
  *v32 = v31;
  v32[1] = v33;
  sub_25574F020();
  LOBYTE(v47) = 6;
  sub_2556EE210(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  sub_255675060(v42, &v18[v30[10]], &qword_27F7BEB40, &unk_255754E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF300, &qword_25575AAC0);
  v50 = 7;
  sub_2556EDFD0(&qword_27F7BF320);
  sub_255750D40();
  v34 = &v18[v30[11]];
  v35 = v49;
  v36 = v48;
  *v34 = v47;
  *(v34 + 1) = v36;
  v34[32] = v35;
  v50 = 8;
  sub_2556EE020();
  sub_255750D40();
  (*(v23 + 8))(v13, v24);
  v37 = v41;
  v18[v40] = v47;
  sub_2556EE074(v18, v37);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return sub_2556EE0D8(v18);
}

uint64_t sub_2556EDFD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BF300, &qword_25575AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2556EE020()
{
  result = qword_27F7BF328;
  if (!qword_27F7BF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF328);
  }

  return result;
}

uint64_t sub_2556EE074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556EE0D8(uint64_t a1)
{
  v2 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2556EE138()
{
  result = qword_27F7BF330;
  if (!qword_27F7BF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF330);
  }

  return result;
}

uint64_t sub_2556EE18C(uint64_t a1)
{
  *(a1 + 8) = sub_2556EE210(&qword_27F7BF338, type metadata accessor for ThirdPartyMediaAssetMetadata);
  result = sub_2556EE210(&qword_27F7BF340, type metadata accessor for ThirdPartyMediaAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556EE210(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2556EE2B0()
{
  sub_25566BFA8(319, &qword_27F7BE538);
  if (v0 <= 0x3F)
  {
    sub_2556E7508(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_2556E7508(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_2556EE3F0();
        if (v3 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BF360);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2556EE3F0()
{
  if (!qword_27F7BF358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BF300, &qword_25575AAC0);
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BF358);
    }
  }
}

unint64_t sub_2556EE4B8()
{
  result = qword_27F7BF368;
  if (!qword_27F7BF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF368);
  }

  return result;
}

unint64_t sub_2556EE510()
{
  result = qword_27F7BF370;
  if (!qword_27F7BF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF370);
  }

  return result;
}

unint64_t sub_2556EE568()
{
  result = qword_27F7BF378;
  if (!qword_27F7BF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF378);
  }

  return result;
}

unint64_t sub_2556EE5C0()
{
  result = qword_27F7BF380;
  if (!qword_27F7BF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF380);
  }

  return result;
}

unint64_t sub_2556EE618()
{
  result = qword_27F7BF388;
  if (!qword_27F7BF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF388);
  }

  return result;
}

unint64_t sub_2556EE670()
{
  result = qword_27F7BF390;
  if (!qword_27F7BF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF390);
  }

  return result;
}

unint64_t sub_2556EE6C8()
{
  result = qword_27F7BF398;
  if (!qword_27F7BF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF398);
  }

  return result;
}

unint64_t sub_2556EE720()
{
  result = qword_27F7BF3A0;
  if (!qword_27F7BF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3A0);
  }

  return result;
}

unint64_t sub_2556EE778()
{
  result = qword_27F7BF3A8;
  if (!qword_27F7BF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3A8);
  }

  return result;
}

unint64_t sub_2556EE7D0()
{
  result = qword_27F7BF3B0;
  if (!qword_27F7BF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3B0);
  }

  return result;
}

unint64_t sub_2556EE828()
{
  result = qword_27F7BF3B8;
  if (!qword_27F7BF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3B8);
  }

  return result;
}

unint64_t sub_2556EE880()
{
  result = qword_27F7BF3C0;
  if (!qword_27F7BF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF3C0);
  }

  return result;
}

uint64_t sub_2556EE8D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B72614479726576 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255750EB0();

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

uint64_t sub_2556EE9E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1735290739 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000255753100 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726156726F6C6F63 && a2 == 0xEC000000746E6169)
  {

    return 8;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t NSAttributedString.getAttributedStringAsData()()
{
  aBlock[15] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v3 = [v2 length];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = ObjectType;
  ObjectType = swift_allocObject();
  ObjectType[2] = sub_2556EF7A0;
  ObjectType[3] = v5;
  aBlock[4] = sub_2556EF7A8;
  aBlock[5] = ObjectType;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2556EF6D0;
  aBlock[3] = &block_descriptor_1;
  v6 = _Block_copy(aBlock);
  v2 = v2;

  [v2 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v7 = [v0 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF3E8, &qword_25575B0C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v9 = *MEMORY[0x277D74090];
  *(inited + 32) = *MEMORY[0x277D74090];
  v10 = *MEMORY[0x277D74130];
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  v12 = v9;
  v13 = v10;
  sub_2556EF914(inited);
  swift_setDeallocating();
  sub_255674B20(inited + 32, &qword_27F7BF3F0, &qword_25575B0C8);
  type metadata accessor for DocumentAttributeKey(0);
  sub_25566CD08(&qword_27F7BDB08, type metadata accessor for DocumentAttributeKey);
  v14 = sub_255750070();

  aBlock[0] = 0;
  v15 = [v0 dataFromRange:0 documentAttributes:v7 error:{v14, aBlock}];

  v16 = aBlock[0];
  if (v15)
  {
    v17 = sub_25574EF90();

    goto LABEL_10;
  }

  v18 = v16;
  ObjectType = sub_25574ED90();

  swift_willThrow();
  if (qword_27F7BD7A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v19 = sub_25574F2C0();
  __swift_project_value_buffer(v19, qword_27F7BF3C8);
  v20 = ObjectType;
  v21 = sub_25574F2A0();
  v22 = sub_255750780();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = ObjectType;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_255661000, v21, v22, "WARNING: failed to turn NSAttributedString to Data: %@", v23, 0xCu);
    sub_255674B20(v24, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v24, -1, -1);
    MEMORY[0x259C3F520](v23, -1, -1);
  }

  else
  {
  }

  v17 = 0;
LABEL_10:
  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_2556EF1A8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF3C8);
  v1 = __swift_project_value_buffer(v0, qword_27F7BF3C8);
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2556EF270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF420, &qword_25575B0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25575B0B0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = *MEMORY[0x277D740E8];
  v3 = *MEMORY[0x277D74118];
  *(inited + 40) = *MEMORY[0x277D740E8];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277D741F0];
  v5 = *MEMORY[0x277D74150];
  *(inited + 56) = *MEMORY[0x277D741F0];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x277D74148];
  v7 = *MEMORY[0x277D74200];
  *(inited + 72) = *MEMORY[0x277D74148];
  *(inited + 80) = v7;
  v8 = *MEMORY[0x277D740C0];
  v9 = *MEMORY[0x277D74060];
  *(inited + 88) = *MEMORY[0x277D740C0];
  *(inited + 96) = v9;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = sub_255725FC8(inited);
  swift_setDeallocating();
  type metadata accessor for Key(0);
  result = swift_arrayDestroy();
  off_27F7BF3E0 = v19;
  return result;
}

uint64_t static NSAttributedString.allowedAttributes.getter()
{
  if (qword_27F7BD7A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2556EF418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33 = a3;
  v34 = a5;
  v32 = a2;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v36 = v9;
  v37 = v5;
  while (v8)
  {
    v12 = v11;
LABEL_17:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    sub_255678EBC(*(a1 + 56) + 32 * v16, v41);
    *&v38 = v17;
    sub_255663374(v41, (&v38 + 8));
    v18 = v17;
LABEL_18:
    v42[0] = v38;
    v42[1] = v39;
    v43 = v40;
    if (!v38)
    {
    }

    if (qword_27F7BD7A8 != -1)
    {
      swift_once();
    }

    v19 = off_27F7BF3E0;
    if (!*(off_27F7BF3E0 + 2))
    {
      goto LABEL_30;
    }

    v20 = *(off_27F7BF3E0 + 5);
    sub_2557501B0();
    sub_255750F80();
    sub_2557501F0();
    v21 = sub_255750FD0();

    v22 = -1 << v19[32];
    v23 = v21 & ~v22;
    if ((*&v19[((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v23))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = *(*(v19 + 6) + 8 * v23);
        v26 = sub_2557501B0();
        v28 = v27;
        if (v26 == sub_2557501B0() && v28 == v29)
        {
          break;
        }

        v31 = sub_255750EB0();

        if (v31)
        {
          goto LABEL_31;
        }

        v23 = (v23 + 1) & v24;
        if (((*&v19[((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v23) & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      [v34 removeAttribute:v38 range:{v32, v33, v32, v33, v34}];
LABEL_31:
    }

    result = __swift_destroy_boxed_opaque_existential_1(v42 + 1);
    v9 = v36;
    v5 = v37;
  }

  if (v9 <= v11 + 1)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v40 = 0;
      v11 = v14;
      v38 = 0u;
      v39 = 0u;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2556EF6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_25566CD08(&qword_27F7BDB18, type metadata accessor for Key);
  v10 = sub_255750080();
  v9(v10, a3, a4, a5);
}

uint64_t sub_2556EF7A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2556EF7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF448, &qword_25575B110);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, v13, &qword_27F7BF450, &qword_25575B118);
      result = sub_255674984(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_255663374(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2556EF914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF428, &qword_25575B0F0);
    v3 = sub_255750C90();
    v4 = a1 + 32;

    while (1)
    {
      sub_255663294(v4, &v11, &qword_27F7BF3F0, &qword_25575B0C8);
      v5 = v11;
      result = sub_255674870(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_255663374(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id WrappedMergeableAppStorage.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2556CB860(a1, v3 + OBJC_IVAR___WrappedMergeableAppStorage_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556EFB28(a1);
  return v4;
}

id WrappedMergeableAppStorage.init(_:)(uint64_t a1)
{
  sub_2556CB860(a1, v1 + OBJC_IVAR___WrappedMergeableAppStorage_value);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WrappedMergeableAppStorage(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2556EFB28(a1);
  return v3;
}

uint64_t sub_2556EFB28(uint64_t a1)
{
  v2 = type metadata accessor for MergeableAppStorage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WrappedMergeableAppStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2556EFC40(uint64_t a1)
{
  v2 = type metadata accessor for WrappedMergeableAppStorage(0);
  v3 = objc_allocWithZone(v2);
  sub_2556CB860(a1, v3 + OBJC_IVAR___WrappedMergeableAppStorage_value);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2556EFB28(a1);
  return v4;
}

id sub_2556EFD1C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t MusicAssetMetadata.mediaId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for MusicAssetMetadata()
{
  result = qword_27F7BF4A0;
  if (!qword_27F7BF4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicAssetMetadata.artistName.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicAssetMetadata() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MusicAssetMetadata.song.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicAssetMetadata() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MusicAssetMetadata.albumName.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicAssetMetadata() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MusicAssetMetadata.numberOfTimesPlayed.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicAssetMetadata() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MusicAssetMetadata.mediaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicAssetMetadata();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14)
{
  v27 = *a14;
  *a9 = a1;
  a9[1] = a2;
  v20 = type metadata accessor for MusicAssetMetadata();
  sub_255675060(a3, a9 + v20[5], &qword_27F7BE270, &unk_25575A3F0);
  v21 = (a9 + v20[6]);
  *v21 = a4;
  v21[1] = a5;
  v22 = (a9 + v20[7]);
  *v22 = a6;
  v22[1] = a7;
  v23 = (a9 + v20[8]);
  *v23 = a8;
  v23[1] = a10;
  v24 = a9 + v20[9];
  *v24 = a11;
  v24[8] = a12 & 1;
  result = sub_255675060(a13, a9 + v20[10], &qword_27F7BEB40, &unk_255754E40);
  *(a9 + v20[11]) = v27;
  return result;
}

uint64_t sub_2556F00B4()
{
  v1 = *v0;
  v2 = 0x6449616964656DLL;
  v3 = 0x6D69547472617473;
  if (v1 != 6)
  {
    v3 = 0x707954616964656DLL;
  }

  v4 = 0x6D614E6D75626C61;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x614E747369747261;
  if (v1 != 2)
  {
    v5 = 1735290739;
  }

  if (*v0)
  {
    v2 = 0x4C5255616964656DLL;
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

uint64_t sub_2556F01B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556F11C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556F01E8(uint64_t a1)
{
  v2 = sub_2556F0598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556F0224(uint64_t a1)
{
  v2 = sub_2556F0598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF478, &qword_25575B1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556F0598();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  v29[15] = 0;
  sub_255750E00();
  if (!v2)
  {
    v13 = type metadata accessor for MusicAssetMetadata();
    v14 = v13[5];
    v29[14] = 1;
    sub_25574EF10();
    sub_2556F0D7C(&qword_27F7BDC20, MEMORY[0x277CC9260]);
    sub_255750DF0();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v29[13] = 2;
    sub_255750DB0();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v29[12] = 3;
    sub_255750DB0();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    v29[11] = 4;
    sub_255750DB0();
    v24 = v3 + v13[9];
    v25 = *v24;
    v26 = v24[8];
    v29[10] = 5;
    sub_255750DE0();
    v27 = v13[10];
    v29[9] = 6;
    sub_25574F020();
    sub_2556F0D7C(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v29[8] = *(v3 + v13[11]);
    v29[7] = 7;
    sub_2556E6B88();
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2556F0598()
{
  result = qword_27F7BF480;
  if (!qword_27F7BF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF480);
  }

  return result;
}

uint64_t MusicAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF488, &qword_25575B1A8);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for MusicAssetMetadata();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v17 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2556F0598();
  v19 = v43;
  sub_255750FE0();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v43 = v10;
  v39 = v6;
  v20 = v41;
  v53 = 0;
  *v16 = sub_255750D50();
  v16[1] = v21;
  sub_25574EF10();
  v52 = 1;
  sub_2556F0D7C(&qword_27F7BDC40, MEMORY[0x277CC9260]);
  v22 = v43;
  sub_255750D40();
  v23 = v20;
  sub_255675060(v22, v16 + v13[5], &qword_27F7BE270, &unk_25575A3F0);
  v51 = 2;
  v24 = sub_255750D00();
  v25 = (v16 + v13[6]);
  *v25 = v24;
  v25[1] = v26;
  v50 = 3;
  v27 = sub_255750D00();
  v28 = (v16 + v13[7]);
  *v28 = v27;
  v28[1] = v29;
  v49 = 4;
  v30 = sub_255750D00();
  v31 = (v16 + v13[8]);
  *v31 = v30;
  v31[1] = v32;
  v48 = 5;
  v33 = sub_255750D30();
  v34 = v16 + v13[9];
  *v34 = v33;
  v34[8] = v35 & 1;
  sub_25574F020();
  v47 = 6;
  sub_2556F0D7C(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  v36 = v39;
  sub_255750D40();
  sub_255675060(v36, v16 + v13[10], &qword_27F7BEB40, &unk_255754E40);
  v45 = 7;
  sub_2556E7194();
  sub_255750D40();
  (*(v23 + 8))(0, v42);
  *(v16 + v13[11]) = v46;
  sub_2556F0C38(v16, v40);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_2556F0C9C(v16);
}

uint64_t sub_2556F0C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556F0C9C(uint64_t a1)
{
  v2 = type metadata accessor for MusicAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556F0CF8(uint64_t a1)
{
  *(a1 + 8) = sub_2556F0D7C(&qword_27F7BF490, type metadata accessor for MusicAssetMetadata);
  result = sub_2556F0D7C(&qword_27F7BF498, type metadata accessor for MusicAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556F0D7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2556F0E1C()
{
  sub_2556E7508(319, &qword_27F7BDC70, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BE538);
    if (v1 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEC00);
      if (v2 <= 0x3F)
      {
        sub_2556E7508(319, &qword_27F7BDC68, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_25566BFA8(319, &qword_27F7BF1B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MusicAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2556F10BC()
{
  result = qword_27F7BF4B0;
  if (!qword_27F7BF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF4B0);
  }

  return result;
}

unint64_t sub_2556F1114()
{
  result = qword_27F7BF4B8;
  if (!qword_27F7BF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF4B8);
  }

  return result;
}

unint64_t sub_2556F116C()
{
  result = qword_27F7BF4C0;
  if (!qword_27F7BF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF4C0);
  }

  return result;
}

uint64_t sub_2556F11C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255616964656DLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1735290739 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000255752F70 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_255750EB0();

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

uint64_t MergeableEntryAssetsPlacement.gridAssetIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MergeableEntryAssetsPlacement.gridAssetIDs.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2556F1594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_255663294(a1, &v10 - v7, &unk_27F7BED20, &unk_2557551D0);
  sub_255663294(v8, v6, &unk_27F7BED20, &unk_2557551D0);
  LODWORD(a1) = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F370();
  return sub_255674B20(v8, &unk_27F7BED20, &unk_2557551D0);
}

uint64_t MergeableEntryAssetsPlacement.slimAssetID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_255663294(a1, &v7 - v4, &unk_27F7BED20, &unk_2557551D0);
  v5 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F370();
  return sub_255674B20(a1, &unk_27F7BED20, &unk_2557551D0);
}

void (*MergeableEntryAssetsPlacement.slimAssetID.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  *(v3 + 32) = sub_25574F350();
  return sub_25568C2F0;
}

uint64_t sub_2556F183C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  return a1(v3);
}

uint64_t sub_2556F1898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  return a4(v6);
}

uint64_t sub_2556F18F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  sub_25574F3A0();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MergeableEntryAssetsPlacement.$slimAssetID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - v6, a1, v3);
  v7 = v1 + *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  sub_25574F3A0();
  return (*(v4 + 8))(a1, v3);
}

void (*MergeableEntryAssetsPlacement.$slimAssetID.modify(void *a1))(int **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 20);
  sub_25574F390();
  return sub_25568C824;
}

uint64_t MergeableEntryAssetsPlacement.hiddenAssetIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MergeableEntryAssetsPlacement.hiddenAssetIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MergeableEntryAssetsPlacement.canvasAssetIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MergeableEntryAssetsPlacement.canvasAssetIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MergeableEntryAssetsPlacement(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MergeableEntryAssetsPlacement.init(gridAssetIDs:slimAssetID:hiddenAssetIDs:canvasAssetIDs:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v30 = a2;
  v31 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v28 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v28);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  v13 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v14 = *(v13 + 20);
  v29 = v13;
  v15 = sub_25574F0D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_255663294(v12, v10, &unk_27F7BED20, &unk_2557551D0);
  v27[1] = sub_255663D60();
  sub_25574F340();
  sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
  v32 = *(v13 + 32);
  sub_25574F850();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v17 = *(v16 - 8);
  v18 = v31;
  (*(v17 + 16))(a6, v31, v16);
  v19 = v30;
  sub_255663294(v30, v12, &unk_27F7BED20, &unk_2557551D0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  (*(*(v20 - 8) + 8))(a6 + v14, v20);
  sub_255663294(v12, v10, &unk_27F7BED20, &unk_2557551D0);
  sub_25574F340();
  sub_255674B20(v19, &unk_27F7BED20, &unk_2557551D0);
  (*(v17 + 8))(v18, v16);
  sub_255674B20(v12, &unk_27F7BED20, &unk_2557551D0);
  v21 = v29;
  v22 = *(v29 + 24);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  v24 = *(*(v23 - 8) + 32);
  v24(a6 + v22, v33, v23);
  v24(a6 + *(v21 + 28), v34, v23);
  v25 = sub_25574F860();
  return (*(*(v25 - 8) + 40))(a6 + v32, v35, v25);
}

BOOL MergeableEntryAssetsPlacement.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v94 = *(v4 - 8);
  v5 = *(v94 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v89 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v79 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v88 = &v79 - v17;
  MEMORY[0x28223BE20](v16);
  v91 = &v79 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v93 = *(v90 - 8);
  v19 = *(v93 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v87 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v84 = &v79 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v79 - v36;
  v95 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v38 = *(*(v95 - 1) + 64);
  MEMORY[0x28223BE20](v95);
  v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2556FB2D8(v2, v40, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  v96 = a1;
  v41 = MergeableEntryAssetsPlacement.Partial.canMerge(delta:)(a1);
  sub_2556FB278(v40, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  if (v41)
  {
    v82 = v41;
    v81 = v8;
    v83 = v4;
    sub_255663294(v2, v37, &qword_27F7BF4F0, &qword_25575B3D0);
    v80 = v28;
    v42 = v2;
    v43 = *(v28 + 48);
    v44 = v43(v37, 1, v27);
    sub_255674B20(v37, &qword_27F7BF4F0, &qword_25575B3D0);
    if (v44 == 1)
    {
      sub_25568DF1C(v96, v42, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      sub_255663294(v96, v35, &qword_27F7BF4F0, &qword_25575B3D0);
      if (v43(v35, 1, v27) == 1)
      {
        sub_255674B20(v35, &qword_27F7BF4F0, &qword_25575B3D0);
      }

      else
      {
        v45 = v80;
        v46 = v84;
        (*(v80 + 32))(v84, v35, v27);
        if (!v43(v42, 1, v27))
        {
          sub_25574F590();
        }

        (*(v45 + 8))(v46, v27);
      }
    }

    v47 = v93;
    v48 = v95;
    v49 = v95[5];
    sub_255663294(v42 + v49, v26, &qword_27F7BF4F8, &qword_25575B3D8);
    v50 = *(v47 + 48);
    v51 = v90;
    v52 = v50(v26, 1, v90);
    sub_255674B20(v26, &qword_27F7BF4F8, &qword_25575B3D8);
    v53 = v48[5];
    if (v52 == 1)
    {
      sub_25568DF1C(v96 + v53, v42 + v49, &qword_27F7BF4F8, &qword_25575B3D8);
      v54 = v83;
    }

    else
    {
      v55 = v87;
      sub_255663294(v96 + v53, v87, &qword_27F7BF4F8, &qword_25575B3D8);
      v56 = v50(v55, 1, v51);
      v54 = v83;
      if (v56 == 1)
      {
        sub_255674B20(v55, &qword_27F7BF4F8, &qword_25575B3D8);
      }

      else
      {
        v57 = v93;
        v58 = v85;
        (*(v93 + 32))(v85, v55, v51);
        if (!v50((v42 + v49), 1, v51))
        {
          sub_25574F450();
        }

        (*(v57 + 8))(v58, v51);
      }
    }

    v59 = v94;
    v60 = v95;
    v61 = v95[6];
    v62 = v91;
    sub_255663294(v42 + v61, v91, &qword_27F7BF500, &unk_25575B3E0);
    v63 = *(v59 + 48);
    v64 = v63(v62, 1, v54);
    sub_255674B20(v62, &qword_27F7BF500, &unk_25575B3E0);
    v65 = v60[6];
    if (v64 == 1)
    {
      sub_25568DF1C(v96 + v65, v42 + v61, &qword_27F7BF500, &unk_25575B3E0);
    }

    else
    {
      v66 = v88;
      sub_255663294(v96 + v65, v88, &qword_27F7BF500, &unk_25575B3E0);
      if (v63(v66, 1, v54) == 1)
      {
        sub_255674B20(v66, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        v67 = v94;
        v68 = v86;
        (*(v94 + 32))(v86, v66, v54);
        if (!v63(v42 + v61, 1, v54))
        {
          sub_25574FCA0();
        }

        (*(v67 + 8))(v68, v54);
      }
    }

    v69 = v95;
    v70 = v95[7];
    v71 = v92;
    sub_255663294(v42 + v70, v92, &qword_27F7BF500, &unk_25575B3E0);
    v72 = v63(v71, 1, v54);
    sub_255674B20(v71, &qword_27F7BF500, &unk_25575B3E0);
    v73 = v69[7];
    if (v72 == 1)
    {
      sub_25568DF1C(v96 + v73, v42 + v70, &qword_27F7BF500, &unk_25575B3E0);
      LOBYTE(v41) = v82;
    }

    else
    {
      v74 = v89;
      sub_255663294(v96 + v73, v89, &qword_27F7BF500, &unk_25575B3E0);
      v75 = v63(v74, 1, v54);
      LOBYTE(v41) = v82;
      if (v75 == 1)
      {
        sub_255674B20(v74, &qword_27F7BF500, &unk_25575B3E0);
      }

      else
      {
        v76 = v94;
        v77 = v81;
        (*(v94 + 32))(v81, v74, v54);
        if (!v63(v42 + v70, 1, v54))
        {
          sub_25574FCA0();
        }

        (*(v76 + 8))(v77, v54);
      }
    }
  }

  return v41;
}

BOOL MergeableEntryAssetsPlacement.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v58 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v67 = &v58 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v68 = *(v65 - 8);
  v11 = *(v68 + 64);
  v12 = MEMORY[0x28223BE20](v65);
  v58 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v63 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v66 = *(v21 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v62 = &v58 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v58 - v34;
  sub_255663294(a1, v30, &qword_27F7BF4F0, &qword_25575B3D0);
  v36 = *(v32 + 48);
  if (v36(v30, 1, v31) == 1)
  {
    v28 = v30;
    v37 = v69;
LABEL_5:
    sub_255674B20(v28, &qword_27F7BF4F0, &qword_25575B3D0);
    v38 = a1;
    goto LABEL_6;
  }

  (*(v32 + 32))(v35, v30, v31);
  v37 = v69;
  sub_255663294(v69, v28, &qword_27F7BF4F0, &qword_25575B3D0);
  if (v36(v28, 1, v31) == 1)
  {
    (*(v32 + 8))(v35, v31);
    goto LABEL_5;
  }

  v51 = sub_25574F5A0();
  v52 = *(v32 + 8);
  v52(v35, v31);
  v52(v28, v31);
  v38 = a1;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v39 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  sub_255663294(v38 + v39[5], v20, &qword_27F7BF4F8, &qword_25575B3D8);
  v40 = v66;
  v41 = *(v66 + 48);
  if (v41(v20, 1, v21) == 1)
  {
LABEL_9:
    sub_255674B20(v20, &qword_27F7BF4F8, &qword_25575B3D8);
    v43 = v67;
    v44 = v68;
    goto LABEL_10;
  }

  v42 = v62;
  (*(v40 + 32))(v62, v20, v21);
  v20 = v63;
  sub_255663294(v37 + v39[5], v63, &qword_27F7BF4F8, &qword_25575B3D8);
  if (v41(v20, 1, v21) == 1)
  {
    (*(v40 + 8))(v42, v21);
    goto LABEL_9;
  }

  v53 = sub_25574F480();
  v54 = *(v40 + 8);
  v54(v42, v21);
  v54(v20, v21);
  v43 = v67;
  v44 = v68;
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  sub_255663294(v38 + v39[6], v43, &qword_27F7BF500, &unk_25575B3E0);
  v45 = *(v44 + 48);
  v46 = v65;
  if (v45(v43, 1, v65) != 1)
  {
    v47 = v60;
    (*(v44 + 32))(v60, v43, v46);
    v43 = v61;
    sub_255663294(v37 + v39[6], v61, &qword_27F7BF500, &unk_25575B3E0);
    if (v45(v43, 1, v46) != 1)
    {
      LODWORD(v68) = sub_25574FCB0();
      v55 = *(v44 + 8);
      v37 = v69;
      v55(v47, v46);
      v55(v43, v46);
      if ((v68 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v44 + 8))(v47, v46);
  }

  sub_255674B20(v43, &qword_27F7BF500, &unk_25575B3E0);
LABEL_14:
  v48 = v64;
  sub_255663294(v38 + v39[7], v64, &qword_27F7BF500, &unk_25575B3E0);
  if (v45(v48, 1, v46) == 1)
  {
LABEL_17:
    sub_255674B20(v48, &qword_27F7BF500, &unk_25575B3E0);
    return 1;
  }

  v49 = v58;
  (*(v44 + 32))(v58, v48, v46);
  v48 = v59;
  sub_255663294(v37 + v39[7], v59, &qword_27F7BF500, &unk_25575B3E0);
  if (v45(v48, 1, v46) == 1)
  {
    (*(v44 + 8))(v49, v46);
    goto LABEL_17;
  }

  v56 = sub_25574FCB0();
  v57 = *(v44 + 8);
  v57(v49, v46);
  v57(v48, v46);
  return (v56 & 1) != 0;
}

uint64_t MergeableEntryAssetsPlacement.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  sub_255663294(v1, &v26 - v15, &qword_27F7BF4F0, &qword_25575B3D0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_255674B20(v16, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
    sub_25574F570();
    (*(v18 + 8))(v16, v17);
  }

  v19 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  sub_255663294(v1 + v19[5], v12, &qword_27F7BF4F8, &qword_25575B3D8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_255674B20(v12, &qword_27F7BF4F8, &qword_25575B3D8);
  }

  else
  {
    sub_25574F3B0();
    (*(v21 + 8))(v12, v20);
  }

  sub_255663294(v1 + v19[6], v8, &qword_27F7BF500, &unk_25575B3E0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v8, 1, v22) == 1)
  {
    sub_255674B20(v8, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
    sub_25574FC80();
    (*(v23 + 8))(v8, v22);
  }

  sub_255663294(v1 + v19[7], v6, &qword_27F7BF500, &unk_25575B3E0);
  if (v24(v6, 1, v22) == 1)
  {
    return sub_255674B20(v6, &qword_27F7BF500, &unk_25575B3E0);
  }

  sub_25574FC80();
  return (*(v23 + 8))(v6, v22);
}

uint64_t MergeableEntryAssetsPlacement.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v15 = *(v14 - 8);
  v53 = *(v15 + 56);
  v54 = v14;
  v52 = v15 + 56;
  v53(a2, 1, 1);
  v16 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
  v17 = v16[5];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v58 = v17;
  v60 = v20;
  v51 = v19 + 56;
  v20(a2 + v17, 1, 1, v18);
  v21 = v16[6];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v24(a2 + v21, 1, 1, v22);
  v26 = v16[7];
  v24(a2 + v26, 1, 1, v22);
  v27 = v61;
  sub_25574FE90();
  if (v27)
  {

    v28 = a2;
    return sub_2556FB278(v28, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
  }

  v46 = v21;
  v47 = v26;
  v48 = v25;
  v49 = v24;
  v61 = 0;
  v50 = a2;
  if (sub_25574FED0())
  {
    sub_25574F0D0();
    sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v29 = v59;
    v30 = v61;
    sub_25574F580();
    v31 = v60;
    if (v30)
    {
      goto LABEL_13;
    }

    v61 = 0;
    (v53)(v29, 0, 1, v54);
    sub_25568CFC8(v29, v50, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
    v31 = v60;
  }

  v32 = sub_25574FED0();
  v33 = v58;
  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
    sub_255663D60();
    v34 = v57;
    v35 = v61;
    sub_25574F420();
    if (v35)
    {
LABEL_13:

      v28 = v50;
      return sub_2556FB278(v28, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
    }

    v61 = 0;
    v31(v34, 0, 1, v18);
    sub_25568CFC8(v34, v50 + v33, &qword_27F7BF4F8, &qword_25575B3D8);
  }

  v36 = sub_25574FED0();
  v37 = v55;
  v38 = v56;
  v60 = v22;
  if (v36)
  {
    sub_25574F0D0();
    sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v39 = v61;
    sub_25574FC90();
    v40 = v49;
    if (v39)
    {
      goto LABEL_13;
    }

    v61 = 0;
    v49(v37, 0, 1, v60);
    v42 = v50;
    sub_25568CFC8(v37, v50 + v46, &qword_27F7BF500, &unk_25575B3E0);
  }

  else
  {
    v40 = v49;
    v42 = v50;
  }

  v43 = sub_25574FED0();
  v44 = v47;
  if (!v43)
  {
  }

  sub_25574F0D0();
  sub_2556647F4(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v45 = v61;
  sub_25574FC90();

  v28 = v42;
  if (!v45)
  {
    v40(v38, 0, 1, v60);
    return sub_25568CFC8(v38, v42 + v44, &qword_27F7BF500, &unk_25575B3E0);
  }

  return sub_2556FB278(v28, type metadata accessor for MergeableEntryAssetsPlacement.Partial);
}

uint64_t MergeableEntryAssetsPlacement.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v50 = &v47 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF508, &qword_25575E670);
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v55);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v47 - v25;
  v27 = v57;
  result = sub_25574FF10();
  if (!v27)
  {
    v47 = v13;
    v48 = v17;
    v49 = v9;
    v29 = v55;
    v30 = v56;
    v57 = 0;
    sub_255663294(v56, v21, &qword_27F7BF4F0, &qword_25575B3D0);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_255674B20(v21, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      (*(v23 + 32))(v26, v21, v22);
      sub_255669798(&qword_27F7BF528, &qword_27F7BF510, &qword_25575B3F0);
      v31 = v57;
      sub_25574FF60();
      (*(v23 + 8))(v26, v22);
      if (v31)
      {
      }

      v57 = 0;
    }

    v32 = type metadata accessor for MergeableEntryAssetsPlacement.Partial(0);
    v33 = v47;
    sub_255663294(v30 + *(v32 + 20), v47, &qword_27F7BF4F8, &qword_25575B3D8);
    v34 = v54;
    v35 = v14;
    v36 = (*(v54 + 48))(v33, 1, v14);
    v37 = v48;
    v38 = v49;
    if (v36 == 1)
    {
      sub_255674B20(v33, &qword_27F7BF4F8, &qword_25575B3D8);
    }

    else
    {
      (*(v34 + 32))(v48, v33, v35);
      sub_255669798(&qword_27F7BF520, &qword_27F7BEDB0, &unk_255759240);
      v39 = v57;
      sub_25574FF60();
      (*(v34 + 8))(v37, v35);
      if (v39)
      {
      }

      v57 = 0;
    }

    v40 = v50;
    v54 = v32;
    sub_255663294(v30 + *(v32 + 24), v50, &qword_27F7BF500, &unk_25575B3E0);
    v41 = v53;
    v42 = *(v53 + 48);
    v43 = v29;
    if (v42(v40, 1, v29) == 1)
    {
      sub_255674B20(v40, &qword_27F7BF500, &unk_25575B3E0);
      v45 = v51;
      v44 = v52;
LABEL_14:
      sub_255663294(v30 + *(v54 + 28), v44, &qword_27F7BF500, &unk_25575B3E0);
      if (v42(v44, 1, v43) == 1)
      {

        return sub_255674B20(v44, &qword_27F7BF500, &unk_25575B3E0);
      }

      (*(v41 + 32))(v45, v44, v43);
      sub_255669798(&qword_27F7BF518, &qword_27F7BF508, &qword_25575E670);
      sub_25574FF60();
      (*(v41 + 8))(v45, v43);
    }

    (*(v41 + 32))(v38, v40, v29);
    sub_255669798(&qword_27F7BF518, &qword_27F7BF508, &qword_25575E670);
    v46 = v57;
    sub_25574FF60();
    (*(v41 + 8))(v38, v29);
    v45 = v51;
    v44 = v52;
    if (!v46)
    {
      v57 = 0;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t MergeableEntryAssetsPlacement.debugDescription.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF530, &qword_25575B3F8);
  v87 = *(v0 - 8);
  v1 = *(v87 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v89 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v93 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v83 - v7;
  v9 = sub_25574F0D0();
  v90 = *(v9 - 8);
  v10 = *(v90 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v94 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v83 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE090, &qword_255755C40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_255755060;
  *(v15 + 32) = 0xD00000000000001ELL;
  *(v15 + 40) = 0x80000002557532E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BEA98, &qword_27F7BEA90, &unk_25575B390);
  sub_255750650();
  sub_2557506B0();
  v95 = v9;
  if (v96[0] != v98)
  {
    v96[0] = 0;
    v96[1] = 0xE000000000000000;
    sub_255750B00();

    strcpy(v96, "gridAssetIDs: ");
    HIBYTE(v96[1]) = -18;
    v98 = sub_25574F620();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898);
    v16 = sub_2557500C0();
    v18 = v17;

    MEMORY[0x259C3DED0](v16, v18);

    v19 = v96[0];
    v20 = v96[1];
    v22 = *(v15 + 16);
    v21 = *(v15 + 24);
    if (v22 >= v21 >> 1)
    {
      v15 = sub_255698E88((v21 > 1), v22 + 1, 1, v15);
    }

    *(v15 + 16) = v22 + 1;
    v23 = v15 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
    v9 = v95;
  }

  v24 = type metadata accessor for MergeableEntryAssetsPlacement(0);
  v25 = v24[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
  sub_25574F360();
  v26 = v90;
  v27 = (*(v90 + 48))(v8, 1, v9);
  v88 = v0;
  if (v27 == 1)
  {
    sub_255674B20(v8, &unk_27F7BED20, &unk_2557551D0);
  }

  else
  {
    v28 = v24;
    (*(v26 + 32))(v14, v8, v9);
    strcpy(v96, "slimAssetID: ");
    HIWORD(v96[1]) = -4864;
    sub_2556647F4(&qword_27F7BF200, MEMORY[0x277CC95F0]);
    v29 = sub_255750E60();
    MEMORY[0x259C3DED0](v29);

    v30 = v96[0];
    v31 = v96[1];
    v33 = *(v15 + 16);
    v32 = *(v15 + 24);
    if (v33 >= v32 >> 1)
    {
      v15 = sub_255698E88((v32 > 1), v33 + 1, 1, v15);
    }

    v34 = v95;
    (*(v90 + 8))(v14, v95);
    *(v15 + 16) = v33 + 1;
    v35 = v15 + 16 * v33;
    v9 = v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = v31;
    v24 = v28;
  }

  v36 = v24[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  if ((sub_25574FCC0() & 1) == 0)
  {
    v96[0] = 0;
    v96[1] = 0xE000000000000000;
    sub_255750B00();

    v98 = 0xD000000000000010;
    v99 = 0x8000000255753300;
    sub_255669798(&qword_27F7BF538, &qword_27F7BE0C8, &qword_255755C60);
    v37 = sub_255750680();
    v38 = MEMORY[0x277D84F90];
    v85 = v24;
    if (v37)
    {
      v39 = v37;
      v97 = MEMORY[0x277D84F90];
      sub_2556A9D18(0, v37 & ~(v37 >> 63), 0);
      v83 = v36;
      v84 = v97;
      v40 = v93;
      result = sub_255750650();
      if (v39 < 0)
      {
        __break(1u);
        goto LABEL_34;
      }

      v86 = v15;
      v91 = (v90 + 8);
      v92 = (v90 + 16);
      v42 = v84;
      do
      {
        v43 = sub_255750710();
        v44 = v94;
        (*v92)(v94);
        v43(v96, 0);
        v45 = sub_25574F040();
        v93 = v46;
        (*v91)(v44, v9);
        v97 = v42;
        v48 = *(v42 + 16);
        v47 = *(v42 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_2556A9D18((v47 > 1), v48 + 1, 1);
          v42 = v97;
        }

        *(v42 + 16) = v48 + 1;
        v49 = v42 + 16 * v48;
        v50 = v93;
        *(v49 + 32) = v45;
        *(v49 + 40) = v50;
        sub_2557506C0();
        --v39;
        v9 = v95;
      }

      while (v39);
      (*(v87 + 8))(v40, v88);
      v15 = v86;
      v38 = v42;
    }

    v96[0] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898);
    v51 = sub_2557500C0();
    v53 = v52;

    MEMORY[0x259C3DED0](v51, v53);

    v54 = v98;
    v55 = v99;
    v57 = *(v15 + 16);
    v56 = *(v15 + 24);
    if (v57 >= v56 >> 1)
    {
      v15 = sub_255698E88((v56 > 1), v57 + 1, 1, v15);
    }

    *(v15 + 16) = v57 + 1;
    v58 = v15 + 16 * v57;
    *(v58 + 32) = v54;
    *(v58 + 40) = v55;
    v9 = v95;
    v24 = v85;
  }

  v59 = v24[7];
  if (sub_25574FCC0())
  {
LABEL_32:
    v96[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898);
    v80 = sub_2557500C0();
    v82 = v81;

    v96[0] = v80;
    v96[1] = v82;

    MEMORY[0x259C3DED0](62, 0xE100000000000000);

    return v96[0];
  }

  v96[0] = 0;
  v96[1] = 0xE000000000000000;
  sub_255750B00();

  v98 = 0xD000000000000010;
  v99 = 0x8000000255753320;
  sub_255669798(&qword_27F7BF538, &qword_27F7BE0C8, &qword_255755C60);
  v60 = sub_255750680();
  v61 = MEMORY[0x277D84F90];
  if (!v60)
  {
LABEL_29:
    v96[0] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
    sub_255669798(&qword_27F7BE730, &qword_27F7BE728, &qword_255757898);
    v72 = sub_2557500C0();
    v74 = v73;

    MEMORY[0x259C3DED0](v72, v74);

    v75 = v98;
    v76 = v99;
    v78 = *(v15 + 16);
    v77 = *(v15 + 24);
    if (v78 >= v77 >> 1)
    {
      v15 = sub_255698E88((v77 > 1), v78 + 1, 1, v15);
    }

    *(v15 + 16) = v78 + 1;
    v79 = v15 + 16 * v78;
    *(v79 + 32) = v75;
    *(v79 + 40) = v76;
    goto LABEL_32;
  }

  v62 = v60;
  v97 = MEMORY[0x277D84F90];
  sub_2556A9D18(0, v60 & ~(v60 >> 63), 0);
  v61 = v97;
  result = sub_255750650();
  if ((v62 & 0x8000000000000000) == 0)
  {
    v86 = v15;
    v63 = v89;
    v91 = (v90 + 8);
    v92 = (v90 + 16);
    do
    {
      v64 = sub_255750710();
      v65 = v94;
      (*v92)(v94);
      v64(v96, 0);
      v66 = sub_25574F040();
      v93 = v67;
      (*v91)(v65, v9);
      v97 = v61;
      v69 = *(v61 + 16);
      v68 = *(v61 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_2556A9D18((v68 > 1), v69 + 1, 1);
        v61 = v97;
      }

      *(v61 + 16) = v69 + 1;
      v70 = v61 + 16 * v69;
      v71 = v93;
      *(v70 + 32) = v66;
      *(v70 + 40) = v71;
      sub_2557506C0();
      --v62;
      v9 = v95;
    }

    while (v62);
    (*(v87 + 8))(v63, v88);
    v15 = v86;
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}