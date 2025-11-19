void sub_25B706484(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v80 = a7;
  v78 = a6;
  LODWORD(v79) = a4;
  v82[18] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  v18 = sub_25B716250();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v77 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  v24 = a1;
  v26 = v25;
  v28 = v27;
  sub_25B701984(v24, v17, &unk_27FA4A4C8, &qword_25B7383E0);
  if ((*(v28 + 48))(v17, 1, v26) == 1)
  {
    sub_25B7019EC(v17, &unk_27FA4A4C8, &qword_25B7383E0);
    [a2 lock];
    swift_beginAccess();
    *(a5 + 16) = 1;
    [a2 unlock];
  }

  else
  {
    (*(v28 + 32))(v23, v17, v26);
    [a2 lock];
    (*(v28 + 16))(v15, v23, v26);
    (*(v28 + 56))(v15, 0, 1, v26);
    swift_beginAccess();
    sub_25B706D74(v15, v79);
    swift_endAccess();
    [a2 unlock];
    (*(v28 + 8))(v23, v26);
  }

  v29 = a3;
  swift_beginAccess();
  if (*(a5 + 16))
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  if (*(*(a3 + 16) + 16) != 3)
  {
    goto LABEL_25;
  }

  v30 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  v31 = v78;
  swift_beginAccess();
  v32 = *(v31 + v30);
  if (!v32)
  {
    goto LABEL_25;
  }

  v33 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  v34 = v78;
  swift_beginAccess();
  v35 = v77;
  (*(v28 + 16))(v77, v34 + v33, v26);
  swift_unknownObjectRetain();
  sub_25B716200();
  sub_25B716210();
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v36 = sub_25B716340();
  v37 = __swift_project_value_buffer(v36, qword_2810C3228);

  v78 = v37;
  v38 = sub_25B716320();
  v39 = sub_25B7168E0();

  v40 = os_log_type_enabled(v38, v39);
  v75 = v26;
  v76 = v28;
  v79 = v32;
  if (v40)
  {
    v73 = v39;
    v41 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v82[0] = v72;
    *v41 = 136315394;
    *(v41 + 4) = sub_25B6F69F0(0x6F626D6F63, 0xE500000000000000, v82);
    *(v41 + 12) = 2080;
    swift_beginAccess();
    v74 = v29;
    v42 = *(v29 + 16);
    v43 = *(v42 + 16);
    if (v43)
    {
      v70 = v38;
      v44 = sub_25B710328(v43, 0);
      v71 = sub_25B7120A8(v81, (v44 + ((*(v76 + 80) + 32) & ~*(v76 + 80))), v43, v42);

      sub_25B715530();
      if (v71 != v43)
      {
        goto LABEL_27;
      }

      v26 = v75;
      v28 = v76;
      v35 = v77;
      v32 = v79;
      v38 = v70;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
      v28 = v76;
    }

    v45 = MEMORY[0x25F86AF00](v44, v26);
    v47 = v46;

    v48 = sub_25B6F69F0(v45, v47, v82);

    *(v41 + 14) = v48;
    _os_log_impl(&dword_25B6D4000, v38, v73, "Combining cloud textures for level: %s %s", v41, 0x16u);
    v49 = v72;
    swift_arrayDestroy();
    MEMORY[0x25F86BDB0](v49, -1, -1);
    MEMORY[0x25F86BDB0](v41, -1, -1);

    v29 = v74;
  }

  else
  {
  }

  swift_beginAccess();
  v50 = *(v29 + 16);
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = sub_25B710328(*(v50 + 16), 0);
    v53 = sub_25B7120A8(v81, (v52 + ((*(v28 + 80) + 32) & ~*(v28 + 80))), v51, v50);

    sub_25B715530();
    if (v53 == v51)
    {
      v26 = v75;
      v28 = v76;
      v35 = v77;
      v32 = v79;
      goto LABEL_19;
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

LABEL_19:
  v54 = sub_25B716830();

  v55 = sub_25B7161F0();
  v81[0] = 0;
  v56 = [v32 combineFilesAt:v54 to:v55 error:v81];

  if (v56)
  {
    v57 = v81[0];
    swift_unknownObjectRelease();
LABEL_24:
    (*(v28 + 8))(v35, v26);
    goto LABEL_25;
  }

  v58 = v81[0];
  v59 = sub_25B7161C0();

  swift_willThrow();
  v60 = v59;
  v61 = sub_25B716320();
  v62 = sub_25B7168C0();

  if (!os_log_type_enabled(v61, v62))
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  v63 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v81[0] = v64;
  *v63 = 136315394;
  *(v63 + 4) = sub_25B6F69F0(0x6F626D6F63, 0xE500000000000000, v81);
  *(v63 + 12) = 2080;
  swift_getErrorValue();
  v65 = sub_25B716B20();
  v67 = v28;
  v68 = sub_25B6F69F0(v65, v66, v81);

  *(v63 + 14) = v68;
  _os_log_impl(&dword_25B6D4000, v61, v62, "Failed to combine cloud textures for level: %s. Error: %s.", v63, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F86BDB0](v64, -1, -1);
  MEMORY[0x25F86BDB0](v63, -1, -1);
  swift_unknownObjectRelease();

  (*(v67 + 8))(v77, v75);
LABEL_25:
  dispatch_group_leave(v80);
  v69 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25B706D74(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_25B716250();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25B7019EC(a1, &unk_27FA4A4C8, &qword_25B7383E0);
    v15 = *v3;
    v16 = sub_25B6FC4E8(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25B710D2C();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_25B7108C8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_25B7019EC(v9, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_25B710B18(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_25B706FC4(char *a1, uint64_t a2, uint64_t a3, int64_t a4, void (*a5)(char *, uint64_t, uint64_t))
{
  v10 = sub_25B716250();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A558, &qword_25B738688);
  v13 = *(*(v60 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v60);
  v59 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = v53 - v16;
  v17 = a2 + 16;
  v18 = *&a1[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25B715424;
  *(v20 + 24) = v19;
  aBlock[4] = sub_25B7157B8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B706188;
  aBlock[3] = &block_descriptor_191;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
LABEL_21:
    __break(1u);
  }

  else if (qword_2810C3220 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v23 = sub_25B716340();
  __swift_project_value_buffer(v23, qword_2810C3228);

  v24 = sub_25B716320();
  v25 = sub_25B7168E0();

  v26 = os_log_type_enabled(v24, v25);
  v53[2] = a5;
  v54 = a4;
  v53[1] = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    swift_beginAccess();
    v29 = *(a3 + 16);
    sub_25B7154DC();

    v30 = sub_25B716780();
    v32 = v31;

    v33 = sub_25B6F69F0(v30, v32, aBlock);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_25B6D4000, v24, v25, "Finished loading cloud textures. Urls: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x25F86BDB0](v28, -1, -1);
    MEMORY[0x25F86BDB0](v27, -1, -1);
  }

  swift_beginAccess();
  v34 = *(a3 + 16);
  v35 = v34 + 64;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 64);
  v19 = (v36 + 63) >> 6;
  v56 = v64 + 16;
  v39 = v64 + 32;
  v61 = v34;
  swift_bridgeObjectRetain_n();
  a4 = 0;
  v40 = MEMORY[0x277D84F90];
  v57 = v10;
  v55 = v39;
  if (v38)
  {
    while (1)
    {
      a3 = v10;
LABEL_13:
      v42 = __clz(__rbit64(v38)) | (a4 << 6);
      v43 = v60;
      v44 = *(v61 + 56);
      v45 = *(*(v61 + 48) + v42);
      v46 = v64;
      v62 = *(v64 + 72);
      v47 = v58;
      (*(v64 + 16))(&v58[*(v60 + 48)], v44 + v62 * v42, a3);
      *v47 = v45;
      v48 = v59;
      sub_25B715474(v47, v59, &unk_27FA4A558, &qword_25B738688);
      a5 = *(v46 + 32);
      a5(v63, v48 + *(v43 + 48), a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_25B710150(0, v40[2] + 1, 1, v40);
      }

      v50 = v40[2];
      v49 = v40[3];
      if (v50 >= v49 >> 1)
      {
        v40 = sub_25B710150(v49 > 1, v50 + 1, 1, v40);
      }

      v38 &= v38 - 1;
      v40[2] = v50 + 1;
      v51 = v40 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + v50 * v62;
      v10 = v57;
      a5(v51, v63, v57);
      if (!v38)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v41 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v41 >= v19)
    {
      break;
    }

    v38 = *(v35 + 8 * v41);
    ++a4;
    if (v38)
    {
      a3 = v10;
      a4 = v41;
      goto LABEL_13;
    }
  }

  v54(v40);
}

uint64_t sub_25B7075BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25B707600(char a1)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  result = swift_beginAccess();
  if ((*(v1 + v3) & 1) == 0)
  {
    v5 = v1 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_backoffInterval;
    if (a1)
    {
      *v5 = 0;
      *(v5 + 8) = 1;
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v6 = sub_25B716340();
      __swift_project_value_buffer(v6, qword_2810C3228);
      v7 = sub_25B716320();
      v8 = sub_25B7168E0();
      if (!os_log_type_enabled(v7, v8))
      {
        v10 = 3600.0;
        goto LABEL_18;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25B6D4000, v7, v8, "Resetting backoff.", v9, 2u);
      v10 = 3600.0;
    }

    else
    {
      v11 = *v5 + *v5;
      if (*(v5 + 8))
      {
        v11 = 600.0;
      }

      if (v11 <= 86400.0)
      {
        v10 = v11;
      }

      else
      {
        v10 = 86400.0;
      }

      *v5 = v10;
      *(v5 + 8) = 0;
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v12 = sub_25B716340();
      __swift_project_value_buffer(v12, qword_2810C3228);
      v7 = sub_25B716320();
      v13 = sub_25B7168E0();
      if (!os_log_type_enabled(v7, v13))
      {
        goto LABEL_18;
      }

      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v10;
      _os_log_impl(&dword_25B6D4000, v7, v13, "Incrementing backoff to %f seconds.", v9, 0xCu);
    }

    MEMORY[0x25F86BDB0](v9, -1, -1);
LABEL_18:

    return sub_25B707850(v10);
  }

  return result;
}

uint64_t sub_25B707850(double a1)
{
  v2 = sub_25B7166C0();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v58 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v57 = (&v53 - v6);
  v68 = sub_25B716730();
  v56 = *(v68 - 8);
  v7 = *(v56 + 64);
  v8 = MEMORY[0x28223BE20](v68);
  v66 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v53 - v10;
  v65 = sub_25B7166D0();
  v69 = *(v65 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B7166F0();
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25B716970();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7151BC(0, &qword_2810C3168, 0x277D85CA0);
  aBlock = MEMORY[0x277D84F90];
  sub_25B715538(&unk_2810C3170, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A528, &qword_25B738660);
  sub_25B701E14(&qword_2810C3190, &unk_27FA4A528, &qword_25B738660);
  sub_25B7169F0();
  v22 = sub_25B716980();
  (*(v18 + 8))(v21, v17);
  ObjectType = swift_getObjectType();
  v24 = swift_allocObject();
  v25 = v67;
  *(v24 + 16) = v67;
  v74 = sub_25B715204;
  v75 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v61 = &v72;
  v72 = sub_25B7157A8;
  v73 = &block_descriptor_80;
  v26 = _Block_copy(&aBlock);
  v54 = v25;
  v27 = v62;
  sub_25B7166E0();
  sub_25B708710();
  sub_25B716990();
  _Block_release(v26);
  v28 = *(v69 + 8);
  v69 += 8;
  v29 = v65;
  v28(v13, v65);
  v30 = v64;
  v31 = *(v63 + 8);
  v31(v27, v64);

  v74 = sub_25B708628;
  v75 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_25B7157A8;
  v73 = &block_descriptor_83;
  v32 = _Block_copy(&aBlock);
  sub_25B7166E0();
  sub_25B708710();
  v63 = ObjectType;
  v67 = v22;
  sub_25B7169A0();
  _Block_release(v32);
  v28(v13, v29);
  v31(v27, v30);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v33 = sub_25B716340();
  __swift_project_value_buffer(v33, qword_2810C3228);
  v34 = sub_25B716320();
  v35 = sub_25B7168E0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = a1;
    _os_log_impl(&dword_25B6D4000, v34, v35, "Setting up DispatchSourceTimer with %f seconds.", v36, 0xCu);
    MEMORY[0x25F86BDB0](v36, -1, -1);
  }

  v37 = v66;
  result = sub_25B716720();
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v39 = v57;
  *v57 = a1;
  v41 = v59;
  v40 = v60;
  v42 = *(v59 + 104);
  v42(v39, *MEMORY[0x277D85188], v60);
  v43 = v55;
  MEMORY[0x25F86AE00](v37, v39);
  v44 = *(v41 + 8);
  v44(v39, v40);
  v45 = *(v56 + 8);
  v45(v37, v68);
  v42(v39, *MEMORY[0x277D85180], v40);
  v46 = v58;
  *v58 = 0;
  v42(v46, *MEMORY[0x277D85168], v40);
  MEMORY[0x25F86B080](v43, v39, v46, v63);
  v44(v46, v40);
  v44(v39, v40);
  v47 = v43;
  v48 = v67;
  v45(v47, v68);
  sub_25B7169C0();
  v49 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer;
  v50 = v54;
  if (*&v54[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer])
  {
    v51 = *&v54[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_25B7169B0();
    swift_unknownObjectRelease();
    v52 = *&v50[v49];
  }

  *&v50[v49] = v48;
  return swift_unknownObjectRelease();
}

uint64_t sub_25B7080B0(char *a1)
{
  v2 = sub_25B7166D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B7166F0();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v11 = sub_25B716340();
  __swift_project_value_buffer(v11, qword_2810C3228);
  v12 = sub_25B716320();
  v13 = sub_25B7168E0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25B6D4000, v12, v13, "DispatchSourceTimer triggered.", v14, 2u);
    MEMORY[0x25F86BDB0](v14, -1, -1);
  }

  v15 = *&a1[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer];
  *&a1[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer] = 0;
  swift_unknownObjectRelease();
  result = sub_25B7061B0();
  if (result)
  {
    v17 = sub_25B716320();
    v18 = sub_25B7168E0();
    v19 = os_log_type_enabled(v17, v18);
    v31 = v7;
    if (v19)
    {
      v30 = v3;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      if (qword_2810C3240 != -1)
      {
        swift_once();
      }

      v22 = sub_25B7167D0();
      v24 = sub_25B6F69F0(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_25B6D4000, v17, v18, "Posting %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F86BDB0](v21, -1, -1);
      MEMORY[0x25F86BDB0](v20, -1, -1);

      v3 = v30;
    }

    else
    {
    }

    sub_25B7151BC(0, &qword_2810C3180, 0x277D85C78);
    v25 = sub_25B716930();
    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    aBlock[4] = sub_25B71520C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25B7157A8;
    aBlock[3] = &block_descriptor_89;
    v27 = _Block_copy(aBlock);
    v28 = a1;

    sub_25B7166E0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v10, v6, v27);
    _Block_release(v27);

    (*(v3 + 8))(v6, v2);
    return (*(v32 + 8))(v10, v31);
  }

  return result;
}

void sub_25B708588()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_2810C3240 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_2810C3250 object:0];
}

void sub_25B708628()
{
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v0 = sub_25B716340();
  __swift_project_value_buffer(v0, qword_2810C3228);
  oslog = sub_25B716320();
  v1 = sub_25B7168E0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25B6D4000, oslog, v1, "DispatchSourceTimer cancelled.", v2, 2u);
    MEMORY[0x25F86BDB0](v2, -1, -1);
  }
}

uint64_t sub_25B708710()
{
  sub_25B7166D0();
  sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
  sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
  return sub_25B7169F0();
}

uint64_t sub_25B7087FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue);

    MEMORY[0x28223BE20](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A540, &qword_25B738670);
    sub_25B716940();
  }

  return a4(a1);
}

void sub_25B70890C(unsigned __int8 a1@<W1>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    sub_25B711BCC(a1, &v6);
    swift_endAccess();
  }

  *a2 = 0;
}

uint64_t sub_25B7089B4(unsigned __int8 *a1)
{
  v2 = v1;
  v109 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v102 - v6;
  v7 = sub_25B716290();
  v106 = *(v7 - 8);
  v8 = *(v106 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v103 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v102 - v11;
  v13 = sub_25B716250();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  v21 = *a1;
  v104 = v12;
  if (v21 >= 4)
  {
  }

  else
  {
    v22 = sub_25B716AF0();

    if ((v22 & 1) == 0)
    {
      v23 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
      swift_beginAccess();
      (*(v14 + 16))(v18, v2 + v23, v13);
      v107 = 0x61632D632D333070;
      v108 = 0xEF2D65706F696C6CLL;
      v24 = 0xE500000000000000;
      v25 = 6580589;
      if (v21 != 2)
      {
        v25 = 7827308;
      }

      v26 = 1751607656;
      if (v21)
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v26 = 0x6C61746F74;
      }

      if (v21 <= 1)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      if (v21 <= 1)
      {
        v28 = v24;
      }

      else
      {
        v28 = 0xE300000000000000;
      }

      MEMORY[0x25F86AEB0](v27, v28);

      sub_25B716200();

      sub_25B716210();
      v20 = v18;
      goto LABEL_30;
    }
  }

  v29 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v14 + 16))(v20, v2 + v29, v13);
  v30 = 0xE500000000000000;
  v107 = 0x61632D632D333070;
  v108 = 0xEF2D65706F696C6CLL;
  v31 = 0xE300000000000000;
  v32 = 6580589;
  v33 = 0xE300000000000000;
  v34 = 7827308;
  if (v21 != 3)
  {
    v34 = 0x6F626D6F63;
    v33 = 0xE500000000000000;
  }

  if (v21 != 2)
  {
    v32 = v34;
    v31 = v33;
  }

  v35 = 1751607656;
  if (v21)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v35 = 0x6C61746F74;
  }

  if (v21 <= 1)
  {
    v36 = v35;
  }

  else
  {
    v36 = v32;
  }

  if (v21 <= 1)
  {
    v37 = v30;
  }

  else
  {
    v37 = v31;
  }

  MEMORY[0x25F86AEB0](v36, v37);

  sub_25B716200();

  sub_25B716210();
LABEL_30:
  v38 = sub_25B716230();
  v40 = v39;
  (*(v14 + 8))(v20, v13);
  v41 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_operationsInProgress;
  swift_beginAccess();
  v42 = *(v2 + v41);

  v43 = sub_25B709650(v21, v42);

  if (v43)
  {
    goto LABEL_37;
  }

  v44 = objc_opt_self();
  v45 = [v44 defaultManager];
  v46 = v7;
  v47 = v38;
  v48 = sub_25B7167A0();
  v49 = [v45 fileExistsAtPath_];

  v38 = v47;
  v50 = v46;
  v51 = v106;
  if (!v49)
  {
LABEL_37:
    v69 = v43 ^ 1;
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v70 = sub_25B716340();
    __swift_project_value_buffer(v70, qword_2810C3228);

    v71 = sub_25B716320();
    v72 = sub_25B7168B0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v107 = v74;
      *v73 = 136315394;
      v75 = v38;
      if (v21 <= 1)
      {
        if (v21)
        {
          v76 = 0xE400000000000000;
          v77 = 1751607656;
        }

        else
        {
          v76 = 0xE500000000000000;
          v77 = 0x6C61746F74;
        }
      }

      else if (v21 == 2)
      {
        v76 = 0xE300000000000000;
        v77 = 6580589;
      }

      else if (v21 == 3)
      {
        v76 = 0xE300000000000000;
        v77 = 7827308;
      }

      else
      {
        v76 = 0xE500000000000000;
        v77 = 0x6F626D6F63;
      }

      v98 = sub_25B6F69F0(v77, v76, &v107);

      *(v73 + 4) = v98;
      *(v73 + 12) = 2080;
      v99 = sub_25B6F69F0(v75, v40, &v107);

      *(v73 + 14) = v99;
      _os_log_impl(&dword_25B6D4000, v71, v72, "Cached file for %s not found. File Name: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86BDB0](v74, -1, -1);
      MEMORY[0x25F86BDB0](v73, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v52 = [v44 defaultManager];
    v53 = sub_25B7167A0();
    v107 = 0;
    v54 = [v52 attributesOfItemAtPath:v53 error:&v107];

    v55 = v107;
    if (v54)
    {
      type metadata accessor for FileAttributeKey();
      sub_25B715538(&qword_27FA4A0F0, type metadata accessor for FileAttributeKey);
      v56 = sub_25B716770();
      v57 = v55;

      if (*(v56 + 16) && (v58 = sub_25B6FC454(*MEMORY[0x277CCA150]), (v59 & 1) != 0))
      {
        sub_25B6F7068(*(v56 + 56) + 32 * v58, &v107);

        v60 = v105;
        v61 = swift_dynamicCast();
        (*(v51 + 56))(v60, v61 ^ 1u, 1, v50);
        if ((*(v51 + 48))(v60, 1, v50) != 1)
        {

          v62 = v104;
          (*(v51 + 32))(v104, v60, v50);
          v63 = v103;
          sub_25B716280();
          sub_25B716260();
          v65 = v64;
          v66 = *(v51 + 8);
          v66(v63, v50);
          sub_25B716260();
          v68 = v67;
          v66(v62, v50);
          v69 = v65 - v68 > 3600.0;
          goto LABEL_62;
        }
      }

      else
      {

        v60 = v105;
        (*(v51 + 56))(v105, 1, 1, v50);
      }

      sub_25B7019EC(v60, &unk_27FA4A518, &qword_25B738658);
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v78 = sub_25B716340();
      __swift_project_value_buffer(v78, qword_2810C3228);

      v79 = sub_25B716320();
      v80 = sub_25B7168C0();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v107 = v82;
        *v81 = 136315138;
        v83 = sub_25B6F69F0(v38, v40, &v107);

        *(v81 + 4) = v83;
        _os_log_impl(&dword_25B6D4000, v79, v80, "No last modified data attribute for file. This may cause serious issues in refresh policy. File: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x25F86BDB0](v82, -1, -1);
        MEMORY[0x25F86BDB0](v81, -1, -1);
      }

      else
      {
      }

      v69 = 0;
    }

    else
    {
      v84 = v107;
      v85 = sub_25B7161C0();

      swift_willThrow();
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v86 = sub_25B716340();
      __swift_project_value_buffer(v86, qword_2810C3228);

      v87 = v85;
      v88 = sub_25B716320();
      v89 = sub_25B7168C0();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = v38;
        v93 = v91;
        v107 = v91;
        *v90 = 136315394;
        v94 = sub_25B6F69F0(v92, v40, &v107);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2080;
        swift_getErrorValue();
        v95 = sub_25B716B20();
        v97 = sub_25B6F69F0(v95, v96, &v107);

        *(v90 + 14) = v97;
        _os_log_impl(&dword_25B6D4000, v88, v89, "No last modified data attribute for file %s. Error: %s", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F86BDB0](v93, -1, -1);
        MEMORY[0x25F86BDB0](v90, -1, -1);
      }

      else
      {
      }

      v69 = 0;
    }
  }

LABEL_62:
  v100 = *MEMORY[0x277D85DE8];
  return v69 & 1;
}

uint64_t sub_25B709650(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_38;
  }

  v4 = 0x6C61746F74;
  v5 = *(a2 + 40);
  sub_25B716B70();
  sub_25B7167F0();

  v6 = sub_25B716B90();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v23 = ~v7;
    v9 = 1751607656;
    v10 = 7827308;
    while (1)
    {
      v11 = *(*(a2 + 48) + v8);
      if (v11 <= 1)
      {
        v12 = *(*(a2 + 48) + v8) ? 1751607656 : v4;
        v13 = *(*(a2 + 48) + v8) ? 0xE400000000000000 : 0xE500000000000000;
      }

      else if (v11 == 2)
      {
        v13 = 0xE300000000000000;
        v12 = 6580589;
      }

      else
      {
        v12 = v11 == 3 ? 7827308 : 0x6F626D6F63;
        v13 = v11 == 3 ? 0xE300000000000000 : 0xE500000000000000;
      }

      v14 = a1;
      v15 = a1;
      if (a1 == 3)
      {
        v16 = 0xE300000000000000;
      }

      else
      {
        v10 = 0x6F626D6F63;
        v16 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v10 = 6580589;
        v16 = 0xE300000000000000;
      }

      v17 = v4;
      if (v15)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v9 = v4;
        v18 = 0xE500000000000000;
      }

      v19 = v15 <= 1 ? v9 : v10;
      v20 = v15 <= 1 ? v18 : v16;
      if (v12 == v19 && v13 == v20)
      {
        break;
      }

      v21 = sub_25B716AF0();

      if ((v21 & 1) == 0)
      {
        v8 = (v8 + 1) & v23;
        v4 = v17;
        a1 = v14;
        v9 = 1751607656;
        v10 = 7827308;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v21 & 1;
    }

    v21 = 1;
  }

  else
  {
LABEL_38:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_25B7098C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v37 - v3;
  v5 = sub_25B716290();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - v11;
  v12 = sub_25B7166D0();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25B7166F0();
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v39);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25B7061B0())
  {
    sub_25B7151BC(0, &qword_2810C3180, 0x277D85C78);
    v38 = sub_25B716930();
    v20 = swift_allocObject();
    *(v20 + 16) = v0;
    aBlock[4] = sub_25B7151B4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25B7157A8;
    aBlock[3] = &block_descriptor_74;
    v21 = _Block_copy(aBlock);
    v22 = v0;

    sub_25B7166E0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B7169F0();
    v23 = v38;
    MEMORY[0x25F86B000](0, v19, v15, v21);
    _Block_release(v21);

    (*(v40 + 8))(v15, v12);
    return (*(v16 + 8))(v19, v39);
  }

  else
  {
    sub_25B70A6C4(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_25B7019EC(v4, &unk_27FA4A518, &qword_25B738658);
    }

    else
    {
      v25 = v38;
      (*(v6 + 32))(v38, v4, v5);
      sub_25B716280();
      sub_25B716260();
      v27 = v26;
      v28 = *(v6 + 8);
      v28(v10, v5);
      sub_25B716260();
      v30 = v29 - v27;
      v31 = 3600.0;
      if (qword_2810C3220 != -1)
      {
        *&v40 = 3600.0;
        swift_once();
        v31 = *&v40;
      }

      v32 = v30 + v31;
      v33 = sub_25B716340();
      __swift_project_value_buffer(v33, qword_2810C3228);
      v34 = sub_25B716320();
      v35 = sub_25B7168E0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = v32;
        _os_log_impl(&dword_25B6D4000, v34, v35, "Scheduling time to check for clouds textures expiration. Remaining interval %f", v36, 0xCu);
        MEMORY[0x25F86BDB0](v36, -1, -1);
      }

      sub_25B707850(v32);
      return (v28)(v25, v5);
    }
  }
}

void sub_25B709E54()
{
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v0 = sub_25B716340();
  __swift_project_value_buffer(v0, qword_2810C3228);
  v1 = sub_25B716320();
  v2 = sub_25B7168E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25B6D4000, v1, v2, "Clouds textures expired.", v3, 2u);
    MEMORY[0x25F86BDB0](v3, -1, -1);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_2810C3240 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_2810C3250 object:0];
}

uint64_t sub_25B709FB8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v59[7] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v59 - v7 + 32;
  v9 = sub_25B716250();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v14 = *a1;
  v15 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v10 + 16))(v13, v2 + v15, v9);
  v16 = 0xE500000000000000;
  v17 = 0x6C61746F74;
  v59[0] = 0x61632D632D333070;
  v59[1] = 0xEF2D65706F696C6CLL;
  v18 = 0xE300000000000000;
  v19 = 6580589;
  v20 = 0xE300000000000000;
  v21 = 7827308;
  if (v14 != 3)
  {
    v21 = 0x6F626D6F63;
    v20 = 0xE500000000000000;
  }

  if (v14 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (v14)
  {
    v17 = 1751607656;
    v16 = 0xE400000000000000;
  }

  if (v14 <= 1)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (v14 <= 1)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x25F86AEB0](v22, v23);

  sub_25B716200();

  sub_25B716210();
  v24 = sub_25B716230();
  v26 = v25;
  (*(v10 + 8))(v13, v9);
  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  v29 = sub_25B7167A0();
  v30 = [v28 fileExistsAtPath_];

  if (!v30)
  {

LABEL_27:
    v56 = sub_25B716290();
    result = (*(*(v56 - 8) + 56))(a2, 1, 1, v56);
    goto LABEL_28;
  }

  v31 = [v27 defaultManager];
  v32 = sub_25B7167A0();
  v59[0] = 0;
  v33 = [v31 attributesOfItemAtPath:v32 error:v59];

  v34 = v59[0];
  if (!v33)
  {
    v44 = v34;
    v45 = sub_25B7161C0();

    swift_willThrow();
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v46 = sub_25B716340();
    __swift_project_value_buffer(v46, qword_2810C3228);

    v47 = v45;
    v48 = sub_25B716320();
    v49 = sub_25B7168C0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v50 = 136315394;
      v52 = sub_25B6F69F0(v24, v26, v59);

      *(v50 + 4) = v52;
      *(v50 + 12) = 2080;
      swift_getErrorValue();
      v53 = sub_25B716B20();
      v55 = sub_25B6F69F0(v53, v54, v59);

      *(v50 + 14) = v55;
      _os_log_impl(&dword_25B6D4000, v48, v49, "No last modified data attribute for file %s. Error: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86BDB0](v51, -1, -1);
      MEMORY[0x25F86BDB0](v50, -1, -1);
    }

    else
    {
    }

    goto LABEL_27;
  }

  type metadata accessor for FileAttributeKey();
  sub_25B715538(&qword_27FA4A0F0, type metadata accessor for FileAttributeKey);
  v35 = sub_25B716770();

  if (!*(v35 + 16) || (v36 = sub_25B6FC454(*MEMORY[0x277CCA150]), (v37 & 1) == 0))
  {

    v43 = sub_25B716290();
    (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
    goto LABEL_21;
  }

  sub_25B6F7068(*(v35 + 56) + 32 * v36, v59);

  v38 = sub_25B716290();
  v39 = swift_dynamicCast();
  v40 = *(v38 - 8);
  v41 = *(v40 + 56);
  v41(v8, v39 ^ 1u, 1, v38);
  if ((*(v40 + 48))(v8, 1, v38) == 1)
  {
LABEL_21:
    sub_25B7019EC(v8, &unk_27FA4A518, &qword_25B738658);
    goto LABEL_27;
  }

  (*(v40 + 32))(a2, v8, v38);
  result = (v41)(a2, 0, 1, v38);
LABEL_28:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B70A6C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A518, &qword_25B738658);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v36 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_25B716290();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v14[7];
  v46 = a1;
  v50 = v19;
  v41 = v18;
  v42 = v14 + 7;
  (v18)(a1, 1, 1);
  if (qword_2810C3310 != -1)
  {
LABEL_18:
    swift_once();
  }

  result = qword_2810C3638;
  v49 = *(qword_2810C3638 + 16);
  if (v49)
  {
    v45 = v10;
    v48 = v17;
    v21 = (v14 + 6);
    v22 = (v14 + 4);
    v37 = (v14 + 1);
    v23 = 0;

    v43 = v12;
    v44 = v14;
    v52 = v21;
    v47 = v22;
    while (1)
    {
      if (v23 >= v14[2])
      {
        __break(1u);
        goto LABEL_18;
      }

      v53 = *(v14 + v23 + 32);
      v17 = v51;
      sub_25B709FB8(&v53, v12);
      v24 = *v52;
      v25 = v50;
      if ((*v52)(v12, 1, v50) == 1)
      {
        sub_25B7019EC(v12, &unk_27FA4A518, &qword_25B738658);
      }

      else
      {
        v17 = *v47;
        (*v47)(v48, v12, v25);
        v27 = v45;
        v26 = v46;
        v10 = &qword_25B738658;
        sub_25B701984(v46, v45, &unk_27FA4A518, &qword_25B738658);
        if (v24(v27, 1, v25) == 1)
        {
          sub_25B7019EC(v26, &unk_27FA4A518, &qword_25B738658);
          sub_25B7019EC(v27, &unk_27FA4A518, &qword_25B738658);
          (v17)(v26, v48, v25);
          v41(v26, 0, 1, v25);
          v12 = v43;
          v14 = v44;
        }

        else
        {
          v40 = v17;
          v28 = v26;
          v29 = v25;
          sub_25B7019EC(v27, &unk_27FA4A518, &qword_25B738658);
          v30 = v28;
          v31 = v39;
          sub_25B701984(v28, v39, &unk_27FA4A518, &qword_25B738658);
          result = (v24)(v31, 1, v29);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          v17 = v48;
          v32 = sub_25B716270();
          v33 = v31;
          v34 = *v37;
          (*v37)(v33, v29);
          v12 = v43;
          if (v32)
          {
            v10 = &unk_27FA4A518;
            sub_25B7019EC(v30, &unk_27FA4A518, &qword_25B738658);
            v35 = v38;
            v40(v38, v17, v29);
            v41(v35, 0, 1, v29);
          }

          else
          {
            v34(v17, v29);
            v35 = v38;
            v10 = &unk_27FA4A518;
            sub_25B715474(v30, v38, &unk_27FA4A518, &qword_25B738658);
          }

          v14 = v44;
          sub_25B715474(v35, v30, &unk_27FA4A518, &qword_25B738658);
        }
      }

      if (v49 == ++v23)
      {
      }
    }
  }

  return result;
}

uint64_t sub_25B70AB80(uint64_t a1, void (*a2)(char *), void (*a3)(void, void), uint64_t a4, int a5, void *a6, uint64_t a7, double a8)
{
  v78[1] = a7;
  v79 = a6;
  v87 = a5;
  v90 = a2;
  v91 = a3;
  v11 = sub_25B7166D0();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11);
  v83 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_25B7166F0();
  v82 = *(v84 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_25B716710();
  v80 = *(v89 - 8);
  v16 = *(v80 + 64);
  v17 = MEMORY[0x28223BE20](v89);
  v78[0] = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v78 - v22;
  v24 = sub_25B716250();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = v78 - v31;
  sub_25B701984(a1, v78 - v31, &qword_27FA4A510, &qword_25B738650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v32 != 1 || a4 == 0)
    {
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v34 = sub_25B716340();
      __swift_project_value_buffer(v34, qword_2810C3228);
      v35 = sub_25B716320();
      v36 = sub_25B7168C0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock[0] = v38;
        v39 = v87;
        v40 = 0xE500000000000000;
        *v37 = 136315138;
        v41 = 0xE300000000000000;
        v42 = 6580589;
        v43 = 0xE300000000000000;
        v44 = 7827308;
        if (v39 != 3)
        {
          v44 = 0x6F626D6F63;
          v43 = 0xE500000000000000;
        }

        if (v39 != 2)
        {
          v42 = v44;
          v41 = v43;
        }

        v45 = 1751607656;
        if (v39)
        {
          v40 = 0xE400000000000000;
        }

        else
        {
          v45 = 0x6C61746F74;
        }

        if (v39 <= 1)
        {
          v46 = v45;
        }

        else
        {
          v46 = v42;
        }

        if (v39 <= 1)
        {
          v47 = v40;
        }

        else
        {
          v47 = v41;
        }

        v48 = sub_25B6F69F0(v46, v47, aBlock);

        *(v37 + 4) = v48;
        _os_log_impl(&dword_25B6D4000, v35, v36, "Exhausted retry attempts for %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x25F86BDB0](v38, -1, -1);
        MEMORY[0x25F86BDB0](v37, -1, -1);
      }

      (*(v25 + 56))(v23, 1, 1, v24);
      v90(v23);
      return sub_25B7019EC(v23, &unk_27FA4A4C8, &qword_25B7383E0);
    }

    else
    {
      v50 = a4;
      v51 = v87;
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v52 = sub_25B716340();
      __swift_project_value_buffer(v52, qword_2810C3228);
      v53 = sub_25B716320();
      v54 = sub_25B7168E0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock[0] = v56;
        v57 = 0xE500000000000000;
        *v55 = 136315650;
        v58 = 0xE300000000000000;
        v59 = 6580589;
        v60 = 0xE300000000000000;
        v61 = 7827308;
        if (v51 != 3)
        {
          v61 = 0x6F626D6F63;
          v60 = 0xE500000000000000;
        }

        if (v51 != 2)
        {
          v59 = v61;
          v58 = v60;
        }

        v62 = 1751607656;
        if (v51)
        {
          v57 = 0xE400000000000000;
        }

        else
        {
          v62 = 0x6C61746F74;
        }

        if (v51 <= 1u)
        {
          v63 = v62;
        }

        else
        {
          v63 = v59;
        }

        if (v51 <= 1u)
        {
          v64 = v57;
        }

        else
        {
          v64 = v58;
        }

        v65 = sub_25B6F69F0(v63, v64, aBlock);

        *(v55 + 4) = v65;
        *(v55 + 12) = 2048;
        v50 = a4;
        *(v55 + 14) = a4;
        *(v55 + 22) = 2048;
        *(v55 + 24) = a8;
        _os_log_impl(&dword_25B6D4000, v53, v54, "Attempting to retry download for %s. Remaining retries: %ld. Backoff period: %f", v55, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x25F86BDB0](v56, -1, -1);
        MEMORY[0x25F86BDB0](v55, -1, -1);
      }

      v66 = v90;
      v67 = v91;
      v68 = v78[0];
      sub_25B716700();
      sub_25B716740();
      v91 = *(v80 + 8);
      v91(v68, v89);
      v69 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v71 = swift_allocObject();
      *(v71 + 16) = v69;
      *(v71 + 24) = v51;
      v72 = v79;
      *(v71 + 32) = v79;
      *(v71 + 40) = v50;
      *(v71 + 48) = a8;
      *(v71 + 56) = v66;
      *(v71 + 64) = v67;
      aBlock[4] = sub_25B7157AC;
      aBlock[5] = v71;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25B7157A8;
      aBlock[3] = &block_descriptor_180;
      v73 = _Block_copy(aBlock);

      v72;

      v74 = v81;
      sub_25B7166E0();
      v92 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
      v75 = v83;
      v76 = v86;
      sub_25B7169F0();
      v77 = v88;
      MEMORY[0x25F86AFC0](v88, v74, v75, v73);
      _Block_release(v73);
      (*(v85 + 8))(v75, v76);
      (*(v82 + 8))(v74, v84);
      v91(v77, v89);
    }
  }

  else
  {
    (*(v25 + 32))(v28, v32, v24);
    (*(v25 + 16))(v23, v28, v24);
    (*(v25 + 56))(v23, 0, 1, v24);
    v90(v23);
    sub_25B7019EC(v23, &unk_27FA4A4C8, &qword_25B7383E0);
    return (*(v25 + 8))(v28, v24);
  }
}

uint64_t sub_25B70B58C(double a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void))
{
  v88 = a7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  v12 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v14 = &v81 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v81 - v17;
  v19 = sub_25B716150();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    v85 = v23;
    v26 = a5 - (a5 > 0);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v83 = v26;
    v84 = a6;
    *(v28 + 16) = a6;
    *(v28 + 24) = v88;
    *(v28 + 32) = v26;
    v29 = v28;
    *(v28 + 40) = a1;
    *(v28 + 48) = a3;
    *(v28 + 56) = a4;
    *(v28 + 64) = v27;
    v87 = a3;
    LOBYTE(aBlock[0]) = a3;
    swift_retain_n();
    v30 = a4;
    swift_retain_n();
    v31 = v30;
    sub_25B70E75C(aBlock, v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_25B7019EC(v18, &qword_27FA4A4F8, &qword_25B738638);
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v32 = sub_25B716340();
      __swift_project_value_buffer(v32, qword_2810C3228);
      v33 = sub_25B716320();
      v34 = sub_25B7168C0();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v84;
      if (v35)
      {
        v81 = v31;
        v82 = v27;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock[0] = v38;
        v39 = v87;
        v40 = 0xE500000000000000;
        *v37 = 136315138;
        v41 = 0xE300000000000000;
        v42 = 6580589;
        v43 = 0xE300000000000000;
        v44 = 7827308;
        if (v39 != 3)
        {
          v44 = 0x6F626D6F63;
          v43 = 0xE500000000000000;
        }

        if (v39 != 2)
        {
          v42 = v44;
          v41 = v43;
        }

        v45 = 1751607656;
        if (v39)
        {
          v40 = 0xE400000000000000;
        }

        else
        {
          v45 = 0x6C61746F74;
        }

        if (v39 <= 1)
        {
          v46 = v45;
        }

        else
        {
          v46 = v42;
        }

        if (v39 <= 1)
        {
          v47 = v40;
        }

        else
        {
          v47 = v41;
        }

        v48 = sub_25B6F69F0(v46, v47, aBlock);

        *(v37 + 4) = v48;
        _os_log_impl(&dword_25B6D4000, v33, v34, "Failed to build urlRequest for cloudLevel %s.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x25F86BDB0](v38, -1, -1);
        MEMORY[0x25F86BDB0](v37, -1, -1);

        v31 = v81;
        v27 = v82;
      }

      else
      {
      }

      *v14 = 0;
      swift_storeEnumTagMultiPayload();
      sub_25B70AB80(v14, v36, v88, v83, v87, v31, v27, a1);
      sub_25B7019EC(v14, &qword_27FA4A510, &qword_25B738650);
      goto LABEL_44;
    }

    (*(v20 + 32))(v85, v18, v19);
    v49 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session;
    v50 = *&v25[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session];
    v84 = v20;
    v86 = v19;
    if (!v50)
    {
      v51 = [objc_opt_self() defaultSessionConfiguration];
      [v51 setAllowsConstrainedNetworkAccess_];
      v52 = [objc_opt_self() sessionWithConfiguration_];

      v53 = *&v25[v49];
      *&v25[v49] = v52;
    }

    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v54 = sub_25B716340();
    __swift_project_value_buffer(v54, qword_2810C3228);
    v55 = sub_25B716320();
    v56 = sub_25B7168E0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v49;
      v81 = v31;
      v82 = v27;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      v60 = v87;
      v61 = 0xE500000000000000;
      *v58 = 136315138;
      v62 = 0xE300000000000000;
      v63 = 6580589;
      v64 = 0xE300000000000000;
      v65 = 7827308;
      if (v60 != 3)
      {
        v65 = 0x6F626D6F63;
        v64 = 0xE500000000000000;
      }

      if (v60 != 2)
      {
        v63 = v65;
        v62 = v64;
      }

      v66 = 1751607656;
      if (v60)
      {
        v61 = 0xE400000000000000;
      }

      else
      {
        v66 = 0x6C61746F74;
      }

      if (v60 <= 1)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      if (v60 <= 1)
      {
        v68 = v61;
      }

      else
      {
        v68 = v62;
      }

      v69 = sub_25B6F69F0(v67, v68, aBlock);

      *(v58 + 4) = v69;
      _os_log_impl(&dword_25B6D4000, v55, v56, "Starting download task for cloud data: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x25F86BDB0](v59, -1, -1);
      MEMORY[0x25F86BDB0](v58, -1, -1);

      v31 = v81;
      v70 = *&v25[v57];
      if (v70)
      {
        goto LABEL_39;
      }
    }

    else
    {

      v70 = *&v25[v49];
      if (v70)
      {
LABEL_39:
        v71 = v70;
        v72 = v85;
        v73 = sub_25B716120();
        v74 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v75 = swift_allocObject();
        *(v75 + 16) = v74;
        *(v75 + 24) = v31;
        *(v75 + 32) = sub_25B715808;
        *(v75 + 40) = v29;
        *(v75 + 48) = v87;
        aBlock[4] = sub_25B7157A4;
        aBlock[5] = v75;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25B70CF38;
        aBlock[3] = &block_descriptor_172;
        v76 = _Block_copy(aBlock);
        v77 = v31;
        v78 = v76;
        v79 = v77;

        v80 = [v71 downloadTaskWithRequest:v73 completionHandler:v78];
        _Block_release(v78);

        [v80 resume];
        (*(v84 + 8))(v72, v86);
      }
    }

    (*(v84 + 8))(v85, v86);
LABEL_44:
  }

  return result;
}

uint64_t sub_25B70BE04(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v118 = a8;
  v122 = a6;
  v123 = a7;
  v124 = a5;
  v11 = sub_25B7166D0();
  v121 = *(v11 - 8);
  v12 = v121[8];
  MEMORY[0x28223BE20](v11);
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_25B7166F0();
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v114 - v20;
  v22 = sub_25B716250();
  v116 = *(v22 - 8);
  v23 = v116[8];
  MEMORY[0x28223BE20](v22);
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v70 = sub_25B716340();
    __swift_project_value_buffer(v70, qword_2810C3228);
    v71 = sub_25B716320();
    v72 = sub_25B7168C0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_25B6D4000, v71, v72, "AegirCloudCoverService instance went away. Server response ignored.", v73, 2u);
      MEMORY[0x25F86BDB0](v73, -1, -1);
    }

    v74 = swift_allocObject();
    v75 = v123;
    *(v74 + 16) = v122;
    *(v74 + 24) = v75;
    v130 = sub_25B7157B4;
    v131 = v74;
    aBlock = MEMORY[0x277D85DD0];
    v127 = 1107296256;
    v128 = sub_25B7157A8;
    v129 = &block_descriptor_147;
    v76 = _Block_copy(&aBlock);

    sub_25B7166E0();
    v125 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v17, v14, v76);
    goto LABEL_52;
  }

  v117 = Strong;
  if (!a2 || (objc_opt_self(), (v27 = swift_dynamicCastObjCClass()) == 0))
  {
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v51 = sub_25B716340();
    __swift_project_value_buffer(v51, qword_2810C3228);
    v52 = a3;
    v53 = sub_25B716320();
    v54 = sub_25B7168C0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      v57 = v118;
      v58 = 0xE500000000000000;
      *v55 = 136315394;
      v59 = 0xE300000000000000;
      v60 = 6580589;
      v61 = 0xE300000000000000;
      v62 = 7827308;
      if (v57 != 3)
      {
        v62 = 0x6F626D6F63;
        v61 = 0xE500000000000000;
      }

      if (v57 != 2)
      {
        v60 = v62;
        v59 = v61;
      }

      v63 = 1751607656;
      if (v57)
      {
        v58 = 0xE400000000000000;
      }

      else
      {
        v63 = 0x6C61746F74;
      }

      if (v57 <= 1)
      {
        v64 = v63;
      }

      else
      {
        v64 = v60;
      }

      if (v57 <= 1)
      {
        v65 = v58;
      }

      else
      {
        v65 = v59;
      }

      v66 = sub_25B6F69F0(v64, v65, &aBlock);

      *(v55 + 4) = v66;
      *(v55 + 12) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v67 = sub_25B716B20();
        v69 = v68;
      }

      else
      {
        v67 = 0;
        v69 = 0xE000000000000000;
      }

      v77 = sub_25B6F69F0(v67, v69, &aBlock);

      *(v55 + 14) = v77;
      _os_log_impl(&dword_25B6D4000, v53, v54, "Failed to download cloud data: %s. It did not received a http response. Error: %s.", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86BDB0](v56, -1, -1);
      MEMORY[0x25F86BDB0](v55, -1, -1);
    }

    v78 = swift_allocObject();
    v79 = v123;
    *(v78 + 16) = v122;
    *(v78 + 24) = v79;
    v130 = sub_25B7152E4;
    v131 = v78;
    aBlock = MEMORY[0x277D85DD0];
    v127 = 1107296256;
    v128 = sub_25B7157A8;
    v129 = &block_descriptor_153;
    v76 = _Block_copy(&aBlock);

    sub_25B7166E0();
    v125 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v17, v14, v76);

LABEL_52:
    _Block_release(v76);
LABEL_56:
    (v121[1])(v14, v11);
    (*(v119 + 8))(v17, v120);
  }

  v28 = v27;
  v29 = a2;
  if (a3 || [v28 statusCode] - 200 > 0x63)
  {
    goto LABEL_8;
  }

  sub_25B701984(a1, v21, &unk_27FA4A4C8, &qword_25B7383E0);
  v30 = v116;
  if ((v116[6])(v21, 1, v22) == 1)
  {
    sub_25B7019EC(v21, &unk_27FA4A4C8, &qword_25B7383E0);
LABEL_8:
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v31 = sub_25B716340();
    __swift_project_value_buffer(v31, qword_2810C3228);
    v32 = v29;
    v33 = a3;
    v34 = sub_25B716320();
    v35 = sub_25B7168C0();

    if (os_log_type_enabled(v34, v35))
    {
      v116 = v32;
      v115 = v28;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      aBlock = v114;
      v38 = v118;
      v39 = 0xE500000000000000;
      *v36 = 136315650;
      v40 = 0xE300000000000000;
      v41 = 6580589;
      v42 = 0xE300000000000000;
      v43 = 7827308;
      if (v38 != 3)
      {
        v43 = 0x6F626D6F63;
        v42 = 0xE500000000000000;
      }

      if (v38 != 2)
      {
        v41 = v43;
        v40 = v42;
      }

      v44 = 1751607656;
      if (v38)
      {
        v39 = 0xE400000000000000;
      }

      else
      {
        v44 = 0x6C61746F74;
      }

      if (v38 <= 1)
      {
        v45 = v44;
      }

      else
      {
        v45 = v41;
      }

      if (v38 <= 1)
      {
        v46 = v39;
      }

      else
      {
        v46 = v40;
      }

      v47 = sub_25B6F69F0(v45, v46, &aBlock);

      *(v36 + 4) = v47;
      *(v36 + 12) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v48 = sub_25B716B20();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0xE000000000000000;
      }

      v80 = sub_25B6F69F0(v48, v50, &aBlock);

      *(v36 + 14) = v80;
      *(v36 + 22) = 2112;
      v28 = v115;
      *(v36 + 24) = v115;
      *v37 = v28;
      v81 = v116;
      v82 = v116;
      _os_log_impl(&dword_25B6D4000, v34, v35, "Failed to download cloud data: %s. Error: %s, Response: %@", v36, 0x20u);
      sub_25B7019EC(v37, &qword_27FA4A548, &qword_25B738678);
      v83 = v37;
      v32 = v81;
      MEMORY[0x25F86BDB0](v83, -1, -1);
      v84 = v114;
      swift_arrayDestroy();
      MEMORY[0x25F86BDB0](v84, -1, -1);
      MEMORY[0x25F86BDB0](v36, -1, -1);
    }

    v85 = swift_allocObject();
    v86 = v123;
    v85[2] = v122;
    v85[3] = v86;
    v85[4] = v28;
    v130 = sub_25B715300;
    v131 = v85;
    aBlock = MEMORY[0x277D85DD0];
    v127 = 1107296256;
    v128 = sub_25B7157A8;
    v129 = &block_descriptor_159;
    v87 = _Block_copy(&aBlock);
    v88 = v32;

    sub_25B7166E0();
    v125 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v17, v14, v87);

    _Block_release(v87);
    goto LABEL_56;
  }

  v121 = v29;
  v115 = v28;
  (v30[4])(v25, v21, v22);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v90 = sub_25B716340();
  __swift_project_value_buffer(v90, qword_2810C3228);
  v91 = sub_25B716320();
  v92 = sub_25B7168E0();
  v93 = os_log_type_enabled(v91, v92);
  v94 = v118;
  if (v93)
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock = v96;
    v97 = 0xE500000000000000;
    *v95 = 136315138;
    v98 = 0xE300000000000000;
    v99 = 6580589;
    v100 = 0xE300000000000000;
    v101 = 7827308;
    if (v94 != 3)
    {
      v101 = 0x6F626D6F63;
      v100 = 0xE500000000000000;
    }

    if (v94 != 2)
    {
      v99 = v101;
      v98 = v100;
    }

    v102 = 1751607656;
    if (v94)
    {
      v97 = 0xE400000000000000;
    }

    else
    {
      v102 = 0x6C61746F74;
    }

    if (v94 <= 1u)
    {
      v103 = v102;
    }

    else
    {
      v103 = v99;
    }

    if (v94 <= 1u)
    {
      v104 = v97;
    }

    else
    {
      v104 = v98;
    }

    v105 = sub_25B6F69F0(v103, v104, &aBlock);

    *(v95 + 4) = v105;
    _os_log_impl(&dword_25B6D4000, v91, v92, "Successfully downloaded task for cloud data: %s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x25F86BDB0](v96, -1, -1);
    MEMORY[0x25F86BDB0](v95, -1, -1);
  }

  v106 = v121;
  v107 = sub_25B716320();
  v108 = sub_25B7168B0();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v109 = 138412290;
    v111 = v115;
    *(v109 + 4) = v115;
    *v110 = v111;
    v112 = v106;
    _os_log_impl(&dword_25B6D4000, v107, v108, "Response: %@", v109, 0xCu);
    sub_25B7019EC(v110, &qword_27FA4A548, &qword_25B738678);
    MEMORY[0x25F86BDB0](v110, -1, -1);
    MEMORY[0x25F86BDB0](v109, -1, -1);
  }

  LOBYTE(aBlock) = v94;
  v113 = v117;
  sub_25B70D0AC(v25, &aBlock, v124, v122, v123);

  return (v116[1])(v25, v22);
}

uint64_t sub_25B70CD8C(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  *(&v7 - v4) = 0;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_25B7019EC(v5, &qword_27FA4A510, &qword_25B738650);
}

uint64_t sub_25B70CE4C(void (*a1)(BOOL *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  *v8 = [a3 statusCode] - 500 < 0xFFFFFFFFFFFFFF9CLL;
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_25B7019EC(v8, &qword_27FA4A510, &qword_25B738650);
}

uint64_t sub_25B70CF38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_25B716220();
    v14 = sub_25B716250();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_25B716250();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_25B7019EC(v11, &unk_27FA4A4C8, &qword_25B7383E0);
}

uint64_t sub_25B70D0AC(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v137 = a5;
  v135 = a4;
  v139 = a3;
  v134 = a1;
  v154 = *MEMORY[0x277D85DE8];
  v145 = sub_25B7166D0();
  v144 = *(v145 - 8);
  v8 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_25B7166F0();
  v142 = *(v143 - 8);
  v10 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v140 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B716250();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v132 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v131 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v130 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v130 - v21;
  v23 = *a2;
  v24 = [objc_opt_self() defaultManager];
  v25 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  v136 = v13;
  v26 = *(v13 + 16);
  v146 = v12;
  v133 = v26;
  v26(v22, (v6 + v25), v12);
  v27 = 0xE500000000000000;
  aBlock = 0x61632D632D333070;
  v149 = 0xEF2D65706F696C6CLL;
  v28 = 0xE300000000000000;
  v29 = 6580589;
  v30 = 0xE300000000000000;
  v31 = 7827308;
  if (v23 != 3)
  {
    v31 = 0x6F626D6F63;
    v30 = 0xE500000000000000;
  }

  if (v23 != 2)
  {
    v29 = v31;
    v28 = v30;
  }

  v32 = 1751607656;
  if (v23)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v32 = 0x6C61746F74;
  }

  if (v23 <= 1)
  {
    v33 = v32;
  }

  else
  {
    v33 = v29;
  }

  if (v23 <= 1)
  {
    v34 = v27;
  }

  else
  {
    v34 = v28;
  }

  MEMORY[0x25F86AEB0](v33, v34);

  sub_25B716200();

  sub_25B716210();
  sub_25B70E2D4();
  sub_25B716230();
  v35 = sub_25B7167A0();

  v36 = [v24 fileExistsAtPath_];

  v37 = v24;
  v138 = v24;
  if (!v36)
  {
    goto LABEL_17;
  }

  v38 = sub_25B7161F0();
  aBlock = 0;
  v39 = [v24 removeItemAtURL:v38 error:&aBlock];

  if (v39)
  {
    v40 = aBlock;
LABEL_17:
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v41 = sub_25B716340();
    __swift_project_value_buffer(v41, qword_2810C3228);
    v42 = sub_25B716320();
    v43 = sub_25B7168E0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v37;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_25B6D4000, v42, v43, "Fech Completed. Moving textures to cache directory.", v45, 2u);
      v46 = v45;
      v37 = v44;
      MEMORY[0x25F86BDB0](v46, -1, -1);
    }

    v47 = sub_25B7161F0();
    v48 = sub_25B7161F0();
    aBlock = 0;
    v49 = [v37 moveItemAtURL:v47 toURL:v48 error:&aBlock];

    v50 = aBlock;
    if (v49)
    {
      v51 = v146;
      v133(v20, v22, v146);
      v52 = v136;
      v53 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v54 = swift_allocObject();
      v55 = v137;
      *(v54 + 16) = v135;
      *(v54 + 24) = v55;
      (*(v52 + 32))(v54 + v53, v20, v51);
      v152 = sub_25B715150;
      v153 = v54;
      aBlock = MEMORY[0x277D85DD0];
      v149 = 1107296256;
      v150 = sub_25B7157A8;
      v151 = &block_descriptor_62;
      v56 = _Block_copy(&aBlock);
      v57 = v50;

      v58 = v140;
      sub_25B7166E0();
      v147 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
      v59 = v141;
      v60 = v145;
      sub_25B7169F0();
      MEMORY[0x25F86B000](0, v58, v59, v56);
      _Block_release(v56);

      (*(v144 + 8))(v59, v60);
      (*(v142 + 8))(v58, v143);
      (*(v52 + 8))(v22, v51);
    }

    else
    {
      v61 = v138;
      v62 = aBlock;
      v63 = sub_25B7161C0();

      swift_willThrow();
      v64 = v63;
      v65 = sub_25B716320();
      v66 = sub_25B7168C0();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock = v68;
        *v67 = 136315394;
        v69 = 0xE300000000000000;
        v70 = 0xE300000000000000;
        v71 = 7827308;
        if (v23 != 3)
        {
          v71 = 0x6F626D6F63;
          v70 = 0xE500000000000000;
        }

        if (v23 == 2)
        {
          v71 = 6580589;
        }

        else
        {
          v69 = v70;
        }

        v72 = 0xE500000000000000;
        v73 = 1751607656;
        if (v23)
        {
          v72 = 0xE400000000000000;
        }

        else
        {
          v73 = 0x6C61746F74;
        }

        if (v23 <= 1)
        {
          v74 = v73;
        }

        else
        {
          v74 = v71;
        }

        if (v23 <= 1)
        {
          v75 = v72;
        }

        else
        {
          v75 = v69;
        }

        v76 = sub_25B6F69F0(v74, v75, &aBlock);

        *(v67 + 4) = v76;
        *(v67 + 12) = 2080;
        swift_getErrorValue();
        v77 = sub_25B716B20();
        v79 = sub_25B6F69F0(v77, v78, &aBlock);

        *(v67 + 14) = v79;
        _os_log_impl(&dword_25B6D4000, v65, v66, "Failed to move file to cache directory: %s. Error: %s.", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F86BDB0](v68, -1, -1);
        MEMORY[0x25F86BDB0](v67, -1, -1);
      }

      v80 = swift_allocObject();
      v81 = v137;
      *(v80 + 16) = v135;
      *(v80 + 24) = v81;
      v152 = sub_25B7157B4;
      v153 = v80;
      aBlock = MEMORY[0x277D85DD0];
      v149 = 1107296256;
      v150 = sub_25B7157A8;
      v151 = &block_descriptor_56;
      v82 = _Block_copy(&aBlock);

      v83 = v140;
      sub_25B7166E0();
      v147 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
      v84 = v141;
      v85 = v145;
      sub_25B7169F0();
      MEMORY[0x25F86B000](0, v83, v84, v82);

      _Block_release(v82);
      (*(v144 + 8))(v84, v85);
      (*(v142 + 8))(v83, v143);
      (*(v136 + 8))(v22, v146);
    }

    goto LABEL_60;
  }

  v130 = v22;
  v86 = aBlock;
  v87 = sub_25B7161C0();

  swift_willThrow();
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v88 = sub_25B716340();
  __swift_project_value_buffer(v88, qword_2810C3228);
  v89 = v131;
  v90 = v146;
  v91 = v133;
  v133(v131, v134, v146);
  v92 = v132;
  v91(v132, v130, v90);
  v93 = v87;
  v94 = sub_25B716320();
  v95 = sub_25B7168C0();

  if (os_log_type_enabled(v94, v95))
  {
    LODWORD(v134) = v95;
    v96 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    aBlock = v133;
    *v96 = 136315906;
    v97 = 0xE300000000000000;
    v98 = 0xE300000000000000;
    v99 = 7827308;
    if (v23 != 3)
    {
      v99 = 0x6F626D6F63;
      v98 = 0xE500000000000000;
    }

    if (v23 == 2)
    {
      v99 = 6580589;
    }

    else
    {
      v97 = v98;
    }

    v100 = 0xE500000000000000;
    v101 = 1751607656;
    if (v23)
    {
      v100 = 0xE400000000000000;
    }

    else
    {
      v101 = 0x6C61746F74;
    }

    if (v23 <= 1)
    {
      v102 = v101;
    }

    else
    {
      v102 = v99;
    }

    if (v23 <= 1)
    {
      v103 = v100;
    }

    else
    {
      v103 = v97;
    }

    v104 = sub_25B6F69F0(v102, v103, &aBlock);

    *(v96 + 4) = v104;
    *(v96 + 12) = 2080;
    sub_25B715538(&qword_27FA4A4C0, MEMORY[0x277CC9260]);
    v105 = v146;
    v106 = sub_25B716AD0();
    v107 = v89;
    v109 = v108;
    v110 = *(v136 + 8);
    v110(v107, v105);
    v111 = sub_25B6F69F0(v106, v109, &aBlock);

    *(v96 + 14) = v111;
    *(v96 + 22) = 2080;
    v112 = v132;
    v113 = sub_25B716AD0();
    v115 = v114;
    v110(v112, v105);
    v116 = sub_25B6F69F0(v113, v115, &aBlock);

    *(v96 + 24) = v116;
    *(v96 + 32) = 2080;
    swift_getErrorValue();
    v117 = sub_25B716B20();
    v119 = sub_25B6F69F0(v117, v118, &aBlock);

    *(v96 + 34) = v119;
    _os_log_impl(&dword_25B6D4000, v94, v134, "Failed to move tmp file for cloud data: %s from: %s, to: %s. Error: %s", v96, 0x2Au);
    v120 = v133;
    swift_arrayDestroy();
    MEMORY[0x25F86BDB0](v120, -1, -1);
    MEMORY[0x25F86BDB0](v96, -1, -1);
  }

  else
  {

    v110 = *(v136 + 8);
    v110(v92, v90);
    v110(v89, v90);
  }

  v121 = v87;
  v122 = swift_allocObject();
  v123 = v137;
  *(v122 + 16) = v135;
  *(v122 + 24) = v123;
  v152 = sub_25B7157B4;
  v153 = v122;
  aBlock = MEMORY[0x277D85DD0];
  v149 = 1107296256;
  v150 = sub_25B7157A8;
  v151 = &block_descriptor_68;
  v124 = _Block_copy(&aBlock);

  v125 = v140;
  sub_25B7166E0();
  v147 = MEMORY[0x277D84F90];
  sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
  sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
  v126 = v141;
  v127 = v145;
  sub_25B7169F0();
  MEMORY[0x25F86B000](0, v125, v126, v124);

  _Block_release(v124);
  (*(v144 + 8))(v126, v127);
  (*(v142 + 8))(v125, v143);
  v110(v130, v146);
LABEL_60:

  v129 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25B70E1CC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_25B716250();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_25B7019EC(v8, &qword_27FA4A510, &qword_25B738650);
}

void sub_25B70E2D4()
{
  v1 = v0;
  v42[4] = *MEMORY[0x277D85DE8];
  v2 = sub_25B716250();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  v9 = v3[2];
  v9(v6, &v0[v8], v2);
  sub_25B716230();
  v40 = v3[1];
  v40(v6, v2);
  v10 = sub_25B7167A0();

  v41 = v7;
  v11 = [v7 fileExistsAtPath_];

  if (v11)
  {
  }

  else
  {
    v38 = v9;
    v39 = v1;
    v9(v6, &v1[v8], v2);
    v12 = sub_25B7161F0();
    v40(v6, v2);
    v42[0] = 0;
    v13 = v41;
    v14 = [v41 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v42];

    if (v14)
    {
      v15 = v42[0];
    }

    else
    {
      v16 = v42[0];
      v17 = sub_25B7161C0();

      swift_willThrow();
      if (qword_2810C3220 != -1)
      {
        swift_once();
      }

      v18 = sub_25B716340();
      __swift_project_value_buffer(v18, qword_2810C3228);
      v19 = v39;
      v20 = v39;
      v21 = v17;
      v22 = sub_25B716320();
      v23 = sub_25B7168E0();

      v24 = v23;
      v25 = os_log_type_enabled(v22, v23);
      v26 = v17;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42[0] = v41;
        *v27 = 136315394;
        v38(v6, &v19[v8], v2);
        sub_25B715538(&qword_27FA4A4C0, MEMORY[0x277CC9260]);
        v28 = v26;
        v29 = sub_25B716AD0();
        v31 = v30;
        v40(v6, v2);
        v32 = sub_25B6F69F0(v29, v31, v42);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        swift_getErrorValue();
        v33 = sub_25B716B20();
        v35 = sub_25B6F69F0(v33, v34, v42);

        *(v27 + 14) = v35;
        _os_log_impl(&dword_25B6D4000, v22, v24, "Failed to create destination folder:%s. Error: %s", v27, 0x16u);
        v36 = v41;
        swift_arrayDestroy();
        MEMORY[0x25F86BDB0](v36, -1, -1);
        MEMORY[0x25F86BDB0](v27, -1, -1);
      }

      else
      {
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25B70E75C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v83 = sub_25B7162B0();
  v82 = *(v83 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v87 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_25B716300();
  v89 = *(v90 - 8);
  v6 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B716290();
  v91 = *(v8 - 8);
  v9 = *(v91 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v80 - v12;
  v104 = sub_25B7161B0();
  v107 = *(v104 - 8);
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v104);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v93 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A500, &qword_25B738640);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v103 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - v28;
  v30 = sub_25B716250();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v92 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v95 = &v80 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v80 - v37;
  LODWORD(a1) = *a1;
  v99 = v2;
  v39 = (v2 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_configuration);
  v40 = *v39;
  v41 = v39[1];
  sub_25B716240();
  v42 = v31[6];
  result = v42(v29, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v97 = v42;
    v105 = v31;
    v106 = v30;
    v85 = v31[4];
    v85(v38, v29, v30);
    v44 = v39[2];
    v45 = v39[3];
    v84 = v39;
    sub_25B716200();
    v96 = v8;
    sub_25B716200();

    v100 = v38;
    sub_25B7161D0();
    sub_25B7161A0();

    v46 = *(v107 + 48);
    v47 = v104;
    if (!v46(v23, 1, v104))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A508, &qword_25B738648);
      v48 = *(sub_25B716170() - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      *(swift_allocObject() + 16) = xmmword_25B737F80;
      v51 = *(v99 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_imageScale);
      sub_25B716890();
      sub_25B716160();

      sub_25B716180();
    }

    v52 = sub_25B716150();
    v53 = v23;
    v54 = *(v52 - 8);
    v55 = *(v54 + 56);
    v55(v108, 1, 1, v52);
    v56 = v46(v53, 1, v47);
    v101 = v53;
    if (v56)
    {
      v58 = v105;
      v57 = v106;
      (v105[1])(v100, v106);
      v59 = v103;
      (v58[7])(v103, 1, 1, v57);
LABEL_8:
      sub_25B7019EC(v59, &unk_27FA4A4C8, &qword_25B7383E0);
      v64 = v101;
      v63 = v102;
LABEL_9:
      sub_25B715474(v108, v63, &qword_27FA4A4F8, &qword_25B738638);
      return sub_25B7019EC(v64, &qword_27FA4A500, &qword_25B738640);
    }

    v81 = v54;
    v60 = v107;
    v61 = v98;
    (*(v107 + 16))(v98, v53, v47);
    v59 = v103;
    sub_25B716190();
    (*(v60 + 8))(v61, v47);
    v62 = v106;
    if (v97(v59, 1, v106) == 1)
    {
      (v105[1])(v100, v62);
      goto LABEL_8;
    }

    v65 = v95;
    v85(v95, v59, v62);
    v66 = v92;
    v107 = v105[2];
    (v107)(v92, v65, v62);
    v67 = v93;
    sub_25B716130();
    v55(v67, 0, 1, v52);
    v68 = v67;
    v69 = v108;
    sub_25B7150E0(v68, v108);
    v70 = *(v99 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_authenticator);
    v71 = v94;
    sub_25B716280();
    result = (*(v81 + 48))(v69, 1, v52);
    if (result != 1)
    {
      v73 = v84[4];
      v72 = v84[5];
      v74 = v91;
      (*(v91 + 16))(v86, v71, v96);
      (v107)(v66, v65, v106);

      v75 = v88;
      sub_25B7162F0();
      v76 = *(v70 + 16);
      v77 = v87;
      sub_25B7162C0();
      v64 = v101;
      sub_25B7162A0();
      (*(v82 + 8))(v77, v83);
      sub_25B716140();

      (*(v89 + 8))(v75, v90);
      (*(v74 + 8))(v71, v96);
      v78 = v106;
      v79 = v105[1];
      v79(v65, v106);
      v79(v100, v78);
      v63 = v102;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id AegirCloudCoverService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AegirCloudCoverService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirCloudCoverService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AegirCloudCoverService.urlForCloudLevel(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25B7038C4(a1, a2, v20);
  v5 = v20[0];
  if (v20[0] == 5)
  {
    v6 = sub_25B716250();
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }

  else
  {
    v9 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
    swift_beginAccess();
    v10 = sub_25B716250();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a3, v3 + v9, v10);
    v12 = 0xE500000000000000;
    v13 = 0x6C61746F74;
    v14 = 0xE300000000000000;
    v15 = 6580589;
    v16 = 0xE300000000000000;
    v17 = 7827308;
    if (v5 != 3)
    {
      v17 = 0x6F626D6F63;
      v16 = 0xE500000000000000;
    }

    if (v5 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v5)
    {
      v13 = 1751607656;
      v12 = 0xE400000000000000;
    }

    if (v5 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v5 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    MEMORY[0x25F86AEB0](v18, v19);

    sub_25B716200();

    sub_25B716210();
    return (*(v11 + 56))(a3, 0, 1, v10);
  }
}

uint64_t AegirCloudCoverService.currentURLForCloudLevel(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_25B716250();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  v37[1] = a1;
  v19 = sub_25B7167A0();
  v20 = [v2 urlForCloudLevelWith_];

  if (v20)
  {
    sub_25B716220();

    v21 = *(v5 + 56);
    v22 = v16;
    v23 = 0;
  }

  else
  {
    v21 = *(v5 + 56);
    v22 = v16;
    v23 = 1;
  }

  v38 = v21;
  v21(v22, v23, 1, v4);
  sub_25B715474(v16, v18, &unk_27FA4A4C8, &qword_25B7383E0);
  sub_25B701984(v18, v13, &unk_27FA4A4C8, &qword_25B7383E0);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_25B7019EC(v13, &unk_27FA4A4C8, &qword_25B7383E0);
    return sub_25B715474(v18, v39, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  v24 = v8;
  (*(v5 + 32))(v8, v13, v4);
  v25 = [objc_opt_self() defaultManager];
  sub_25B716230();
  v26 = sub_25B7167A0();

  v27 = [v25 fileExistsAtPath_];

  if (v27)
  {
    (*(v5 + 8))(v8, v4);
    return sub_25B715474(v18, v39, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  type metadata accessor for AegirCloudCoverService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_25B7167A0();
  v32 = sub_25B7167A0();
  v33 = [v30 pathForResource:v31 ofType:v32];

  if (v33)
  {
    sub_25B7167D0();

    sub_25B70E2D4();
    v34 = v39;
    sub_25B7161E0();

    (*(v5 + 8))(v24, v4);
    sub_25B7019EC(v18, &unk_27FA4A4C8, &qword_25B7383E0);
    v35 = v34;
    v36 = 0;
  }

  else
  {
    (*(v5 + 8))(v24, v4);
    sub_25B7019EC(v18, &unk_27FA4A4C8, &qword_25B7383E0);
    v35 = v39;
    v36 = 1;
  }

  return v38(v35, v36, 1, v4);
}

id sub_25B70FE34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_25B7167D0();
  v12 = v11;
  v13 = a1;
  a4(v10, v12);

  v14 = sub_25B716250();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_25B7161F0();
    (*(v15 + 8))(v9, v14);
    v17 = v18;
  }

  return v17;
}

uint64_t sub_25B70FFE8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  sub_25B7137C4(v2, v1, v4, v3);
}

char *sub_25B710044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A328, &qword_25B7381B8);
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

size_t sub_25B710150(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A538, &qword_25B738668);
  v10 = *(sub_25B716250() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25B716250() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_25B710328(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A538, &qword_25B738668);
  v4 = *(sub_25B716250() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_25B710424@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_25B7061B0();
  *a1 = result;
  return result;
}

uint64_t sub_25B710464()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer);
  *(v1 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_25B71047C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

char *sub_25B7104A4(char *a1, int64_t a2, char a3)
{
  result = sub_25B70148C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B7104C4(char *a1, int64_t a2, char a3)
{
  result = sub_25B701380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25B7104E4(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_25B716250();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A568, &unk_25B738690);
  v40 = a2;
  result = sub_25B716A80();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v27 = v24 | (v13 << 6);
      v28 = *(*(v9 + 48) + v27);
      v29 = *(v6 + 72);
      v30 = *(v9 + 56) + v29 * v27;
      if (v40)
      {
        (*v41)(v42, v30, v43);
      }

      else
      {
        (*v38)(v42, v30, v43);
      }

      v31 = *(v12 + 40);
      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v20 = -1 << *(v12 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v19 + 8 * (v21 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v20) >> 6;
        while (++v22 != v33 || (v32 & 1) == 0)
        {
          v34 = v22 == v33;
          if (v22 == v33)
          {
            v22 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v22);
          if (v35 != -1)
          {
            v23 = __clz(__rbit64(~v35)) + (v22 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v19 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v12 + 48) + v23) = v28;
      result = (*v41)(*(v12 + 56) + v29 * v23, v42, v43);
      ++*(v12 + 16);
      v6 = v39;
    }

    v25 = v13;
    while (1)
    {
      v13 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v13 >= v18)
      {
        break;
      }

      v26 = v14[v13];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v17 = (v26 - 1) & v26;
        goto LABEL_18;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_37;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_37:
  *v3 = v12;
  return result;
}

unint64_t sub_25B7108C8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25B716A00() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_25B716250() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25B710B18(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25B6FC4E8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25B710D2C();
      goto LABEL_7;
    }

    sub_25B7104E4(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_25B6FC4E8(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25B716B10();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_25B716250();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25B710C80(v10, a2, a1, v16);
}

uint64_t sub_25B710C80(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_25B716250();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_25B710D2C()
{
  v1 = v0;
  v30 = sub_25B716250();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A568, &unk_25B738690);
  v4 = *v0;
  v5 = sub_25B716A70();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_25B710F94(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_25B716B70();
  sub_25B7167F0();

  v6 = sub_25B716B90();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v25 = ~v8;
    v26 = v4;
    v10 = 1751607656;
    v11 = 7827308;
    while (1)
    {
      v12 = *(*(v4 + 48) + v9);
      if (v12 <= 1)
      {
        v13 = *(*(v4 + 48) + v9) ? 1751607656 : 0x6C61746F74;
        v14 = *(*(v4 + 48) + v9) ? 0xE400000000000000 : 0xE500000000000000;
      }

      else if (v12 == 2)
      {
        v14 = 0xE300000000000000;
        v13 = 6580589;
      }

      else
      {
        v13 = v12 == 3 ? 7827308 : 0x6F626D6F63;
        v14 = v12 == 3 ? 0xE300000000000000 : 0xE500000000000000;
      }

      if (a2 == 3)
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v11 = 0x6F626D6F63;
        v15 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v11 = 6580589;
        v15 = 0xE300000000000000;
      }

      if (a2)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v10 = 0x6C61746F74;
        v16 = 0xE500000000000000;
      }

      v17 = a2 <= 1u ? v10 : v11;
      v18 = a2 <= 1u ? v16 : v15;
      if (v13 == v17 && v14 == v18)
      {
        break;
      }

      v19 = sub_25B716AF0();

      if (v19)
      {
        goto LABEL_38;
      }

      v4 = v26;
      v9 = (v9 + 1) & v25;
      v10 = 1751607656;
      v11 = 7827308;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    result = 0;
    LOBYTE(a2) = *(*(v26 + 48) + v9);
  }

  else
  {
LABEL_36:
    v20 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v23;
    sub_25B7114F0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v23 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25B711228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A550, &qword_25B738680);
  result = sub_25B716A20();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25B7114F0(uint64_t result, unint64_t a2, char a3)
{
  v31 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    sub_25B711228(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_25B7117F4();
      goto LABEL_44;
    }

    sub_25B711934(v5 + 1);
  }

  v7 = 0x6C61746F74;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_25B716B70();
  sub_25B7167F0();

  result = sub_25B716B90();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  v30 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = 0x6F626D6F63;
    v13 = v8;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      if (v14 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v15 = 1751607656;
        }

        else
        {
          v15 = v7;
        }

        if (*(*(v8 + 48) + a2))
        {
          v16 = 0xE400000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }
      }

      else if (v14 == 2)
      {
        v16 = 0xE300000000000000;
        v15 = 6580589;
      }

      else
      {
        if (v14 == 3)
        {
          v15 = 7827308;
        }

        else
        {
          v15 = v12;
        }

        if (v14 == 3)
        {
          v16 = 0xE300000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }
      }

      v17 = v12;
      if (v31 == 3)
      {
        v12 = 7827308;
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      if (v31 == 2)
      {
        v12 = 6580589;
        v18 = 0xE300000000000000;
      }

      v19 = v7;
      v20 = 1751607656;
      if (!v31)
      {
        v20 = v7;
      }

      v21 = 0xE400000000000000;
      if (!v31)
      {
        v21 = 0xE500000000000000;
      }

      v22 = v31 <= 1u ? v20 : v12;
      v23 = v31 <= 1u ? v21 : v18;
      if (v15 == v22 && v16 == v23)
      {
        goto LABEL_47;
      }

      v24 = sub_25B716AF0();

      if (v24)
      {
        goto LABEL_48;
      }

      a2 = (a2 + 1) & v11;
      v7 = v19;
      v12 = v17;
      v8 = v13;
    }

    while (((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_44:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v31;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_47:

LABEL_48:
  result = sub_25B716B00();
  __break(1u);
  return result;
}

void *sub_25B7117F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A550, &qword_25B738680);
  v2 = *v0;
  v3 = sub_25B716A10();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25B711934(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A550, &qword_25B738680);
  result = sub_25B716A20();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_25B716B70();
      sub_25B7167F0();

      result = sub_25B716B90();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_25B711BCC@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_25B716B70();
  sub_25B7167F0();

  result = sub_25B716B90();
  v7 = -1 << *(v4 + 32);
  v8 = result & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v27 = ~v7;
    v9 = 0x6F626D6F63;
    v10 = 1751607656;
    v11 = a1;
    while (1)
    {
      v12 = *(*(v4 + 48) + v8);
      if (v12 <= 1)
      {
        v13 = *(*(v4 + 48) + v8) ? 1751607656 : 0x6C61746F74;
        v14 = *(*(v4 + 48) + v8) ? 0xE400000000000000 : 0xE500000000000000;
      }

      else if (v12 == 2)
      {
        v14 = 0xE300000000000000;
        v13 = 6580589;
      }

      else
      {
        v13 = v12 == 3 ? 7827308 : v9;
        v14 = v12 == 3 ? 0xE300000000000000 : 0xE500000000000000;
      }

      if (v11 == 3)
      {
        v15 = 7827308;
      }

      else
      {
        v15 = v9;
      }

      if (v11 == 3)
      {
        v16 = 0xE300000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      if (v11 == 2)
      {
        v15 = 6580589;
        v16 = 0xE300000000000000;
      }

      if (v11)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v10 = 0x6C61746F74;
        v17 = 0xE500000000000000;
      }

      v18 = v11 <= 1 ? v10 : v15;
      v19 = v11 <= 1 ? v17 : v16;
      if (v13 == v18 && v14 == v19)
      {
        break;
      }

      v20 = v9;
      v21 = sub_25B716AF0();

      if (v21)
      {
        goto LABEL_41;
      }

      v8 = (v8 + 1) & v27;
      v9 = v20;
      v10 = 1751607656;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v22 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v25;
    v28 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B7117F4();
      v24 = v28;
    }

    *a2 = *(*(v24 + 48) + v8);
    result = sub_25B711E78(v8);
    *v25 = v28;
  }

  else
  {
LABEL_39:
    *a2 = 5;
  }

  return result;
}

unint64_t sub_25B711E78(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25B716A00();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_25B716B70();
        sub_25B7167F0();

        v13 = sub_25B716B90() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25B7120A8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_25B716250();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25B71234C(unsigned __int8 *a1, void *a2, char *a3, char *a4, int a5, void *a6, uint64_t a7, unsigned __int8 *a8, double a9, unsigned __int8 a10, void (*a11)(void), uint64_t a12)
{
  v173 = a6;
  v174 = a3;
  LODWORD(v177) = a5;
  v178 = a4;
  v162 = a2;
  v176 = a1;
  v158 = sub_25B7166D0();
  v157 = *(v158 - 8);
  v15 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v155 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_25B7166F0();
  v154 = *(v156 - 8);
  v17 = *(v154 + 64);
  MEMORY[0x28223BE20](v156);
  v153 = v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_25B716710();
  v152 = *(v160 - 8);
  v19 = *(v152 + 64);
  v20 = MEMORY[0x28223BE20](v160);
  v150 = v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v159 = v149 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v151 = v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v167 = v149 - v27;
  v163 = sub_25B716250();
  v168 = *(v163 - 8);
  v28 = *(v168 + 64);
  MEMORY[0x28223BE20](v163);
  v166 = v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A510, &qword_25B738650);
  v30 = *(*(v164 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v164);
  v165 = v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v175 = v149 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = v149 - v36;
  v38 = sub_25B716150();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_allocObject();
  *(v43 + 16) = a8;
  v170 = a10;
  *(v43 + 24) = a10;
  v172 = a11;
  *(v43 + 32) = a11;
  *(v43 + 40) = a12;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_25B715268;
  *(v44 + 24) = v43;
  *(v44 + 32) = v178;
  *(v44 + 40) = a9;
  *(v44 + 48) = v177;
  v45 = v173;
  *(v44 + 56) = v173;
  *(v44 + 64) = a7;
  v171 = *v176;
  LOBYTE(aBlock) = v171;
  v176 = a8;
  v46 = v174;

  v169 = a12;

  v47 = v45;
  v149[1] = a7;

  sub_25B70E75C(&aBlock, v37);
  if ((*(v39 + 48))(v37, 1, v38) != 1)
  {
    v173 = v43;
    (*(v39 + 32))(v42, v37, v38);
    v64 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session;
    if (!*&v46[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session])
    {
      v65 = [objc_opt_self() defaultSessionConfiguration];
      [v65 setAllowsConstrainedNetworkAccess_];
      v66 = [objc_opt_self() sessionWithConfiguration_];

      v67 = *&v46[v64];
      *&v46[v64] = v66;
    }

    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v68 = sub_25B716340();
    __swift_project_value_buffer(v68, qword_2810C3228);
    v69 = sub_25B716320();
    v70 = sub_25B7168E0();
    if (os_log_type_enabled(v69, v70))
    {
      v161 = v44;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock = v72;
      *v71 = 136315138;
      v149[0] = v39;
      v73 = v42;
      v74 = v38;
      if (v171 <= 1)
      {
        if (v171)
        {
          v75 = 0xE400000000000000;
          v76 = 1751607656;
        }

        else
        {
          v76 = 0x6C61746F74;
          v75 = 0xE500000000000000;
        }
      }

      else if (v171 == 2)
      {
        v75 = 0xE300000000000000;
        v76 = 6580589;
      }

      else if (v171 == 3)
      {
        v75 = 0xE300000000000000;
        v76 = 7827308;
      }

      else
      {
        v75 = 0xE500000000000000;
        v76 = 0x6F626D6F63;
      }

      v139 = sub_25B6F69F0(v76, v75, &aBlock);

      *(v71 + 4) = v139;
      _os_log_impl(&dword_25B6D4000, v69, v70, "Starting download task for cloud data: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x25F86BDB0](v72, -1, -1);
      MEMORY[0x25F86BDB0](v71, -1, -1);

      v44 = v161;
      v38 = v74;
      v39 = v149[0];
      v42 = v73;
      v99 = *&v46[v64];
      if (!v99)
      {
        goto LABEL_83;
      }
    }

    else
    {

      v99 = *&v46[v64];
      if (!v99)
      {
        goto LABEL_83;
      }
    }

    v140 = v99;
    v141 = sub_25B716120();
    v142 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v143 = swift_allocObject();
    v144 = v162;
    *(v143 + 16) = v142;
    *(v143 + 24) = v144;
    *(v143 + 32) = sub_25B715278;
    *(v143 + 40) = v44;
    *(v143 + 48) = v171;
    v184 = sub_25B7152E0;
    v185 = v143;
    aBlock = MEMORY[0x277D85DD0];
    v181 = 1107296256;
    v182 = sub_25B70CF38;
    v183 = &block_descriptor_141;
    v145 = _Block_copy(&aBlock);
    v146 = v144;

    v147 = [v140 downloadTaskWithRequest:v141 completionHandler:v145];
    _Block_release(v145);

    [v147 resume];
LABEL_83:
    (*(v39 + 8))(v42, v38);
    goto LABEL_84;
  }

  sub_25B7019EC(v37, &qword_27FA4A4F8, &qword_25B738638);
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v174 = v47;
  v48 = sub_25B716340();
  __swift_project_value_buffer(v48, qword_2810C3228);
  v49 = sub_25B716320();
  v50 = sub_25B7168C0();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v165;
  if (v51)
  {
    v161 = v44;
    v173 = v43;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    v55 = 0xE500000000000000;
    *v53 = 136315138;
    v56 = 0xE300000000000000;
    v57 = 6580589;
    v58 = 0xE300000000000000;
    v59 = 7827308;
    if (v171 != 3)
    {
      v59 = 0x6F626D6F63;
      v58 = 0xE500000000000000;
    }

    if (v171 != 2)
    {
      v57 = v59;
      v56 = v58;
    }

    v60 = 1751607656;
    if (v171)
    {
      v55 = 0xE400000000000000;
    }

    else
    {
      v60 = 0x6C61746F74;
    }

    if (v171 <= 1)
    {
      v61 = v60;
    }

    else
    {
      v61 = v57;
    }

    if (v171 <= 1)
    {
      v62 = v55;
    }

    else
    {
      v62 = v56;
    }

    v63 = sub_25B6F69F0(v61, v62, &aBlock);

    *(v53 + 4) = v63;
    _os_log_impl(&dword_25B6D4000, v49, v50, "Failed to build urlRequest for cloudLevel %s.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x25F86BDB0](v54, -1, -1);
    MEMORY[0x25F86BDB0](v53, -1, -1);

    v43 = v173;
    v44 = v161;
  }

  else
  {
  }

  v77 = v175;
  v78 = v176;
  *v175 = 0;
  swift_storeEnumTagMultiPayload();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v170;
  v80 = v169;
  *(v79 + 32) = v172;
  *(v79 + 40) = v80;
  sub_25B701984(v77, v52, &qword_27FA4A510, &qword_25B738650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v81 = *v52;
    swift_retain_n();
    swift_retain_n();
    v82 = sub_25B716320();
    v83 = v178;
    if (v81 == 1 && v178)
    {
      v173 = v43;
      v84 = sub_25B7168E0();
      v85 = os_log_type_enabled(v82, v84);
      v161 = v44;
      if (v85)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        aBlock = v87;
        v88 = v177;
        v89 = v177;
        v90 = 0xE500000000000000;
        *v86 = 136315650;
        v91 = 0xE300000000000000;
        v92 = 6580589;
        v93 = 0xE300000000000000;
        v94 = 7827308;
        if (v89 != 3)
        {
          v94 = 0x6F626D6F63;
          v93 = 0xE500000000000000;
        }

        if (v89 != 2)
        {
          v92 = v94;
          v91 = v93;
        }

        v95 = 1751607656;
        if (v89)
        {
          v90 = 0xE400000000000000;
        }

        else
        {
          v95 = 0x6C61746F74;
        }

        if (v89 <= 1)
        {
          v96 = v95;
        }

        else
        {
          v96 = v92;
        }

        if (v89 <= 1)
        {
          v97 = v90;
        }

        else
        {
          v97 = v91;
        }

        v98 = sub_25B6F69F0(v96, v97, &aBlock);

        *(v86 + 4) = v98;
        *(v86 + 12) = 2048;
        *(v86 + 14) = v83;
        *(v86 + 22) = 2048;
        *(v86 + 24) = a9;
        _os_log_impl(&dword_25B6D4000, v82, v84, "Attempting to retry download for %s. Remaining retries: %ld. Backoff period: %f", v86, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x25F86BDB0](v87, -1, -1);
        MEMORY[0x25F86BDB0](v86, -1, -1);
      }

      else
      {

        v88 = v177;
      }

      v129 = v150;
      sub_25B716700();
      sub_25B716740();
      v177 = *(v152 + 8);
      v177(v129, v160);
      v130 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v132 = swift_allocObject();
      *(v132 + 16) = v130;
      *(v132 + 24) = v88;
      v133 = v174;
      *(v132 + 32) = v174;
      *(v132 + 40) = v83;
      *(v132 + 48) = a9;
      *(v132 + 56) = sub_25B715788;
      *(v132 + 64) = v79;
      v184 = sub_25B7152DC;
      v185 = v132;
      aBlock = MEMORY[0x277D85DD0];
      v181 = 1107296256;
      v182 = sub_25B7157A8;
      v183 = &block_descriptor_133;
      v134 = _Block_copy(&aBlock);
      v178 = v133;

      v135 = v153;
      sub_25B7166E0();
      v179 = MEMORY[0x277D84F90];
      sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
      sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
      v136 = v155;
      v137 = v158;
      sub_25B7169F0();
      v138 = v159;
      MEMORY[0x25F86AFC0](v159, v135, v136, v134);
      _Block_release(v134);
      (*(v157 + 8))(v136, v137);
      (*(v154 + 8))(v135, v156);
      v177(v138, v160);

      goto LABEL_77;
    }

    v110 = sub_25B7168C0();
    if (os_log_type_enabled(v82, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      aBlock = v112;
      v113 = v177;
      v114 = 0xE500000000000000;
      *v111 = 136315138;
      v115 = 0xE300000000000000;
      v116 = 6580589;
      v117 = 0xE300000000000000;
      v118 = 7827308;
      if (v113 != 3)
      {
        v118 = 0x6F626D6F63;
        v117 = 0xE500000000000000;
      }

      if (v113 != 2)
      {
        v116 = v118;
        v115 = v117;
      }

      v119 = 1751607656;
      if (v113)
      {
        v114 = 0xE400000000000000;
      }

      else
      {
        v119 = 0x6C61746F74;
      }

      if (v113 <= 1)
      {
        v120 = v119;
      }

      else
      {
        v120 = v116;
      }

      if (v113 <= 1)
      {
        v121 = v114;
      }

      else
      {
        v121 = v115;
      }

      v122 = sub_25B6F69F0(v120, v121, &aBlock);

      *(v111 + 4) = v122;
      _os_log_impl(&dword_25B6D4000, v82, v110, "Exhausted retry attempts for %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x25F86BDB0](v112, -1, -1);
      MEMORY[0x25F86BDB0](v111, -1, -1);
    }

    else
    {
    }

    v124 = v151;
    (*(v168 + 56))(v151, 1, 1, v163);
    swift_beginAccess();
    v125 = swift_unknownObjectWeakLoadStrong();
    if (v125)
    {
      v126 = v125;
      v127 = *(v125 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue);

      MEMORY[0x28223BE20](v128);
      v149[-2] = v176;
      LOBYTE(v149[-1]) = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A540, &qword_25B738670);
      sub_25B716940();
    }

    v172(v124);
    sub_25B7019EC(v124, &unk_27FA4A4C8, &qword_25B7383E0);
  }

  else
  {
    v100 = v168;
    v101 = v166;
    v102 = v52;
    v103 = v163;
    (*(v168 + 32))(v166, v102, v163);
    v104 = v167;
    (*(v100 + 16))(v167, v101, v103);
    (*(v100 + 56))(v104, 0, 1, v103);
    swift_beginAccess();
    v105 = swift_unknownObjectWeakLoadStrong();
    if (v105)
    {
      v106 = *(v105 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue);
      v107 = v105;
      swift_retain_n();
      swift_retain_n();
      v108 = v106;

      MEMORY[0x28223BE20](v109);
      v149[-2] = v176;
      LOBYTE(v149[-1]) = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A540, &qword_25B738670);
      sub_25B716940();
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
    }

    v123 = v167;
    v172(v167);
    sub_25B7019EC(v123, &unk_27FA4A4C8, &qword_25B7383E0);
    (*(v168 + 8))(v166, v103);
  }

LABEL_77:
  sub_25B7019EC(v175, &qword_27FA4A510, &qword_25B738650);
LABEL_84:
}

void sub_25B7137C4(void *a1, char *a2, void (*a3)(void), uint64_t a4)
{
  v134 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v111 - v9;
  v132 = sub_25B716250();
  v141 = *(v132 - 8);
  v11 = *(v141 + 8);
  MEMORY[0x28223BE20](v132);
  v125 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25B7166D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v120 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25B7166F0();
  v119 = *(v17 - 8);
  v18 = *(v119 + 64);
  MEMORY[0x28223BE20](v17);
  v118 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v126 = v20;
  v21 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

  v143 = [v21 init];
  v22 = dispatch_group_create();
  v144 = swift_allocObject();
  *(v144 + 16) = MEMORY[0x277D84F98];
  v137 = a2;
  v23 = sub_25B7061B0();
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v24 = sub_25B716340();
  v138 = __swift_project_value_buffer(v24, qword_2810C3228);
  v25 = sub_25B716320();
  v26 = sub_25B7168E0();
  v27 = os_log_type_enabled(v25, v26);
  v139 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v23;
    _os_log_impl(&dword_25B6D4000, v25, v26, "Retrieving all cloud textures. Will Fetch Data: %{BOOL}d", v28, 8u);
    v29 = v28;
    v22 = v139;
    MEMORY[0x25F86BDB0](v29, -1, -1);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  if (v23)
  {
    v142 = v30;
    v31 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer;
    v32 = v137;
    if (*&v137[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer])
    {
      v33 = *&v137[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_25B7169B0();
      swift_unknownObjectRelease();
      v34 = *&v32[v31];
    }

    v114 = v17;
    *&v32[v31] = 0;
    swift_unknownObjectRelease();
    if (qword_2810C3310 != -1)
    {
      swift_once();
    }

    v36 = qword_2810C3638;
    v37 = *(qword_2810C3638 + 16);
    if (v37)
    {
      v131 = v10;
      v112 = v14;
      v113 = v13;
      v38 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
      v39 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
      v130 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_operationsInProgress;

      v40 = v137;
      v133 = v38;
      swift_beginAccess();
      v117 = v39;
      swift_beginAccess();
      v129 = v141 + 16;
      v116 = (v141 + 8);
      v128 = v141 + 56;
      v41 = 32;
      *&v42 = 136315138;
      v127 = v42;
      *&v42 = 136315394;
      v115 = v42;
      v135 = v36;
      do
      {
        v71 = *(v36 + v41);
        dispatch_group_enter(v22);
        if (v71 >= 4)
        {
        }

        else
        {
          v72 = sub_25B716AF0();

          if ((v72 & 1) == 0)
          {
            v73 = sub_25B716320();
            v74 = sub_25B7168E0();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              aBlock = v76;
              *v75 = v127;
              v77 = 7827308;
              if (v71 == 2)
              {
                v77 = 6580589;
              }

              v78 = 0x6C61746F74;
              if (v71)
              {
                v78 = 1751607656;
              }

              v79 = 0xE500000000000000;
              if (v71)
              {
                v79 = 0xE400000000000000;
              }

              if (v71 <= 1)
              {
                v80 = v78;
              }

              else
              {
                v80 = v77;
              }

              if (v71 <= 1)
              {
                v81 = v79;
              }

              else
              {
                v81 = 0xE300000000000000;
              }

              v82 = sub_25B6F69F0(v80, v81, &aBlock);

              *(v75 + 4) = v82;
              _os_log_impl(&dword_25B6D4000, v73, v74, "Fetching cloud textures for level: %s", v75, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v76);
              MEMORY[0x25F86BDB0](v76, -1, -1);
              MEMORY[0x25F86BDB0](v75, -1, -1);

              v22 = v139;
            }

            else
            {
            }

            v83 = swift_allocObject();
            v84 = v144;
            *(v83 + 16) = v143;
            *(v83 + 24) = v84;
            *(v83 + 32) = v71;
            *(v83 + 40) = v142;
            *(v83 + 48) = v40;
            *(v83 + 56) = v22;
            LOBYTE(aBlock) = v71;
            swift_retain_n();
            swift_retain_n();
            v85 = v40;
            v86 = v143;
            v87 = v22;
            v88 = v85;
            v89 = v86;
            v90 = v87;
            v91 = sub_25B7089B4(&aBlock);
            v140 = v90;
            v141 = v89;
            if (v91)
            {
              swift_beginAccess();
              sub_25B710F94(&v145, v71);
              swift_endAccess();
              v92 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v93 = qword_27FA4A008;

              if (v93 != -1)
              {
                swift_once();
              }

              v94 = qword_27FA4AD90;
              v95 = *&qword_27FA4AD98;
              LOBYTE(aBlock) = v71;
              v96 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v97 = v134;
              sub_25B71234C(&aBlock, v97, v88, v94, v71, v97, v96, v92, v95, v71, sub_25B715244, v83);

              v40 = v137;
            }

            else
            {
              v98 = v88;
              v99 = sub_25B716320();
              v100 = sub_25B7168A0();
              v101 = os_log_type_enabled(v99, v100);
              v136 = v98;
              if (v101)
              {
                v122 = v99;
                v123 = v100;
                v43 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                v145 = v121;
                *v43 = v115;
                v44 = v125;
                v45 = v132;
                v124 = *v129;
                v124(v125, &v40[v133]);
                aBlock = 0x61632D632D333070;
                v147 = 0xEF2D65706F696C6CLL;
                v46 = 0x6F626D6F63;
                if (v71 == 3)
                {
                  v46 = 7827308;
                  v47 = 0xE300000000000000;
                }

                else
                {
                  v47 = 0xE500000000000000;
                }

                if (v71 == 2)
                {
                  v46 = 6580589;
                  v47 = 0xE300000000000000;
                }

                v48 = 0x6C61746F74;
                if (v71)
                {
                  v48 = 1751607656;
                }

                v49 = 0xE400000000000000;
                if (!v71)
                {
                  v49 = 0xE500000000000000;
                }

                if (v71 <= 1)
                {
                  v50 = v48;
                }

                else
                {
                  v50 = v46;
                }

                if (v71 <= 1)
                {
                  v51 = v49;
                }

                else
                {
                  v51 = v47;
                }

                MEMORY[0x25F86AEB0](v50, v51);

                sub_25B716200();

                sub_25B716210();
                sub_25B715538(&qword_27FA4A4C0, MEMORY[0x277CC9260]);
                v52 = sub_25B716AD0();
                v54 = v53;
                (*v116)(v44, v45);
                v55 = sub_25B6F69F0(v52, v54, &v145);

                *(v43 + 4) = v55;
                *(v43 + 12) = 1024;
                v40 = v137;
                LODWORD(v55) = v137[v117];
                v56 = v136;

                *(v43 + 14) = v55;
                v57 = v122;
                _os_log_impl(&dword_25B6D4000, v122, v123, "Retrieving cloud texture from local cache: %s - Is Fetch Disabled: %{BOOL}d", v43, 0x12u);
                v58 = v121;
                __swift_destroy_boxed_opaque_existential_0(v121);
                MEMORY[0x25F86BDB0](v58, -1, -1);
                MEMORY[0x25F86BDB0](v43, -1, -1);

                v59 = v45;
                v60 = v124;
              }

              else
              {

                v60 = *v129;
                v59 = v132;
              }

              v61 = v131;
              v60(v131, &v40[v133], v59);
              aBlock = 0x61632D632D333070;
              v147 = 0xEF2D65706F696C6CLL;
              v62 = 0x6F626D6F63;
              if (v71 == 3)
              {
                v62 = 7827308;
                v63 = 0xE300000000000000;
              }

              else
              {
                v63 = 0xE500000000000000;
              }

              if (v71 == 2)
              {
                v62 = 6580589;
                v63 = 0xE300000000000000;
              }

              v64 = 0x6C61746F74;
              if (v71)
              {
                v64 = 1751607656;
              }

              v65 = 0xE400000000000000;
              if (!v71)
              {
                v65 = 0xE500000000000000;
              }

              if (v71 <= 1)
              {
                v66 = v64;
              }

              else
              {
                v66 = v62;
              }

              if (v71 <= 1)
              {
                v67 = v65;
              }

              else
              {
                v67 = v63;
              }

              MEMORY[0x25F86AEB0](v66, v67);

              sub_25B716200();

              sub_25B716210();
              (*v128)(v61, 0, 1, v59);
              v69 = v140;
              v68 = v141;
              v70 = v136;
              sub_25B706484(v61, v141, v144, v71, v142, v136, v140);
              sub_25B7019EC(v61, &unk_27FA4A4C8, &qword_25B7383E0);
            }

            v22 = v139;
            v36 = v135;
          }
        }

        ++v41;
        --v37;
      }

      while (v37);

      v13 = v113;
      v14 = v112;
    }

    v102 = swift_allocObject();
    v103 = v14;
    v104 = v137;
    v105 = v142;
    v102[2] = v137;
    v102[3] = v105;
    v102[4] = v144;
    v102[5] = sub_25B71521C;
    v102[6] = v126;
    v150 = sub_25B715258;
    v151 = v102;
    aBlock = MEMORY[0x277D85DD0];
    v147 = 1107296256;
    v148 = sub_25B7157A8;
    v149 = &block_descriptor_112;
    v106 = _Block_copy(&aBlock);

    v107 = v104;

    v108 = v22;
    v109 = v118;
    sub_25B7166E0();
    v145 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8);
    v110 = v120;
    sub_25B7169F0();
    sub_25B7168F0();
    _Block_release(v106);

    (*(v103 + 8))(v110, v13);
    (*(v119 + 8))(v109, v114);
  }

  else
  {
    sub_25B704FCC();
    a3();

    v35 = v143;
  }
}

uint64_t _s12NanoUniverse22AegirCloudCoverServiceC03allD14LevelFileNamesSaySSGvg_0()
{
  if (qword_2810C3310 != -1)
  {
    swift_once();
  }

  v0 = qword_2810C3638;
  v1 = *(qword_2810C3638 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];

    sub_25B7104C4(0, v1, 0);
    v3 = 32;
    v2 = v16;
    do
    {
      v4 = *(v0 + v3);
      v5 = 7827308;
      if (v4 != 3)
      {
        v5 = 0x6F626D6F63;
      }

      v6 = 0xE500000000000000;
      if (v4 == 3)
      {
        v7 = 0xE300000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      if (v4 == 2)
      {
        v5 = 6580589;
        v7 = 0xE300000000000000;
      }

      v8 = 0x6C61746F74;
      if (*(v0 + v3))
      {
        v8 = 1751607656;
        v6 = 0xE400000000000000;
      }

      if (*(v0 + v3) <= 1u)
      {
        v9 = v8;
      }

      else
      {
        v9 = v5;
      }

      if (*(v0 + v3) <= 1u)
      {
        v10 = v6;
      }

      else
      {
        v10 = v7;
      }

      v11 = v0;
      MEMORY[0x25F86AEB0](v9, v10);

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25B7104C4((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = 0x61632D632D333070;
      *(v14 + 40) = 0xEF2D65706F696C6CLL;
      ++v3;
      --v1;
      v0 = v11;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_25B7149C8()
{
  result = qword_2810C32F0;
  if (!qword_2810C32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810C32F0);
  }

  return result;
}

uint64_t sub_25B714A68()
{
  result = sub_25B716250();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25B714E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25B714EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AegirCloudCoverService.RetryStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AegirCloudCoverService.RetryStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AegirCloudCoverService.CloudLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AegirCloudCoverService.CloudLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25B7150E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F8, &qword_25B738638);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B715150()
{
  v1 = *(sub_25B716250() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_25B70E1CC(v2, v3, v4);
}

uint64_t sub_25B7151BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25B71521C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_118Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_121Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_137Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t objectdestroy_129Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25B715424()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  return sub_25B707600((*v2 & 1) == 0);
}

uint64_t sub_25B715474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25B7154DC()
{
  result = qword_2810C3300;
  if (!qword_2810C3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810C3300);
  }

  return result;
}

uint64_t sub_25B715538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AegirCloudCoverService.ServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AegirCloudCoverService.ServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B7156E8()
{
  result = qword_27FA4A570;
  if (!qword_27FA4A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A570);
  }

  return result;
}

void _NUNICreateImageFromURL_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "AegirResourceManager: unable to open png %@ ", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void NUNILoadMtlTextureFromMemory_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "_loadMtlTextureFromMemory:%@ failed to get backing", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}