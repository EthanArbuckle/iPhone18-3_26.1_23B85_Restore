uint64_t sub_2456A0F78()
{
  v42[4] = *MEMORY[0x277D85DE8];
  v41 = sub_2456CAF58();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v36[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36[-v3];
  v5 = sub_2456CAE98();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v36[-v10];
  v12 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  swift_beginAccess();
  sub_24569BF14(v0 + v12, v4, &qword_27EE210F0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_24569BFE0(v4, &qword_27EE210F0);
  }

  (*(v6 + 32))(v11, v4, v5);
  sub_2456CAE58();
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_2456CAE48();
  v16 = sub_2456CAE48();
  v42[0] = 0;
  v17 = [v14 copyItemAtURL:v15 toURL:v16 error:v42];

  if (v17)
  {
    v18 = *(v6 + 8);
    v19 = v42[0];
    v18(v9, v5);
    return (v18)(v11, v5);
  }

  else
  {
    v20 = v42[0];
    v21 = sub_2456CAE08();

    swift_willThrow();
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v22 = v41;
    v23 = __swift_project_value_buffer(v41, qword_27EE20D08);
    v25 = v39;
    v24 = v40;
    (*(v39 + 16))(v40, v23, v22);
    v26 = v21;
    v27 = sub_2456CAF38();
    v28 = sub_2456CB1D8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42[0] = v38;
      *v29 = 136315138;
      swift_getErrorValue();
      v37 = v28;
      v30 = sub_2456CB578();
      v32 = v25;
      v33 = sub_2456A3F34(v30, v31, v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_245686000, v27, v37, "Audit Data Recorder could not persist liveness video: %s", v29, 0xCu);
      v34 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x245D6F740](v34, -1, -1);
      MEMORY[0x245D6F740](v29, -1, -1);

      (*(v32 + 8))(v40, v41);
    }

    else
    {

      (*(v25 + 8))(v24, v22);
    }

    v35 = *(v6 + 8);
    v35(v9, v5);
    return (v35)(v11, v5);
  }
}

uint64_t sub_2456A14AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v30 = a2;
  v35 = a1;
  v5 = sub_2456CAF58();
  v29[1] = *(v5 - 8);
  v29[2] = v5;
  MEMORY[0x28223BE20](v5);
  v36 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2456CAE38();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v29 - v10;
  v12 = sub_2456CAE98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v29 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v29 - v20;
  v22 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  swift_beginAccess();
  sub_24569BF14(v4 + v22, v11, &qword_27EE210F0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24569BFE0(v11, &qword_27EE210F0);
  }

  (*(v13 + 32))(v21, v11, v12);
  sub_2456CAE58();
  if (sub_2456A49B4(v19))
  {
    v37 = v30;
    v38 = v32;

    MEMORY[0x245D6E590](1735290926, 0xE400000000000000);
    v25 = v33;
    v24 = v34;
    v26 = v31;
    (*(v33 + 104))(v31, *MEMORY[0x277CC91D8], v34);
    sub_2456A4E48();
    sub_2456CAE88();
    (*(v25 + 8))(v26, v24);

    sub_2456A4E9C(v35);
    v28 = *(v13 + 8);
    v28(v16, v12);
    v28(v19, v12);
    return (v28)(v21, v12);
  }

  else
  {
    v27 = *(v13 + 8);
    v27(v19, v12);
    return (v27)(v21, v12);
  }
}

uint64_t sub_2456A1A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v40 = a1;
  v41 = a4;
  v37 = a3;
  v35 = a2;
  v34 = sub_2456CAF58();
  v43 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2456CAE38();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_2456CAE98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v22 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  swift_beginAccess();
  v23 = v5 + v22;
  v24 = v13;
  sub_24569BF14(v23, v11, &qword_27EE210F0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24569BFE0(v11, &qword_27EE210F0);
  }

  (*(v13 + 32))(v21, v11, v12);
  sub_2456CAE58();
  if (sub_2456A49B4(v19))
  {
    v33 = v21;
    v44 = v35;
    v45 = v37;

    MEMORY[0x245D6E590](1735290926, 0xE400000000000000);
    v27 = v38;
    v26 = v39;
    v28 = v36;
    (*(v38 + 104))(v36, *MEMORY[0x277CC91D8], v39);
    sub_2456A4E48();
    sub_2456CAE88();
    (*(v27 + 8))(v28, v26);

    sub_2456A4E9C(v40);
    v30 = *(v24 + 8);
    v30(v16, v12);
    v31 = v33;
    swift_beginAccess();
    v32 = v41;
    MEMORY[0x245D6E5E0]();
    if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2456CB0F8();
    }

    sub_2456CB118();
    swift_endAccess();
    v30(v19, v12);
    return (v30)(v31, v12);
  }

  else
  {
    v29 = *(v13 + 8);
    v29(v19, v12);
    return (v29)(v21, v12);
  }
}

uint64_t sub_2456A210C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v5;
  if ((result & 1) == 0)
  {
    result = sub_2456A3184(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *(v1 + 24) = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_2456A3184((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = v2;
  *(v9 + 40) = v3;
  *(v9 + 44) = v4;
  *(v1 + 24) = v5;
  return result;
}

uint64_t sub_2456A21CC()
{
  v1 = v0;
  v94[4] = *MEMORY[0x277D85DE8];
  v2 = sub_2456CAF58();
  v92 = *(v2 - 8);
  v93 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v91 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v84[-v6];
  MEMORY[0x28223BE20](v5);
  v90 = &v84[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v84[-v10];
  v12 = sub_2456CAE98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v84[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v84[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v84[-v19];
  v21 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  swift_beginAccess();
  sub_24569BF14(v1 + v21, v11, &qword_27EE210F0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24569BFE0(v11, &qword_27EE210F0);
  }

  v23 = v12;
  (*(v13 + 32))(v20, v11, v12);
  v88 = objc_opt_self();
  v24 = [v88 defaultManager];
  v25 = v20;
  sub_2456CAE78();
  v26 = sub_2456CAFD8();

  v94[0] = 0;
  v27 = [v24 contentsOfDirectoryAtPath:v26 error:v94];

  v28 = v94[0];
  if (v27)
  {
    v29 = sub_2456CB0D8();
    v30 = v28;

    v32 = v92;
    v31 = v93;
  }

  else
  {
    v33 = v94[0];
    v34 = sub_2456CAE08();

    swift_willThrow();
    v31 = v93;
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v31, qword_27EE20D08);
    v36 = v92;
    (*(v92 + 16))(v7, v35, v31);
    (*(v13 + 16))(v18, v25, v23);
    v37 = v34;
    v38 = sub_2456CAF38();
    v39 = sub_2456CB1D8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v94[0] = v86;
      *v40 = 136315394;
      v85 = v39;
      v41 = sub_2456CAE78();
      v43 = v42;
      (*(v13 + 8))(v18, v23);
      v44 = sub_2456A3F34(v41, v43, v94);
      v31 = v93;

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v45 = sub_2456CB578();
      v47 = sub_2456A3F34(v45, v46, v94);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_245686000, v38, v85, "Could not finalize audit data capture at directory %s: %s", v40, 0x16u);
      v48 = v86;
      swift_arrayDestroy();
      MEMORY[0x245D6F740](v48, -1, -1);
      MEMORY[0x245D6F740](v40, -1, -1);

      v32 = v92;
      (*(v92 + 8))(v7, v31);
      v29 = MEMORY[0x277D84F90];
    }

    else
    {

      (*(v13 + 8))(v18, v23);
      (*(v36 + 8))(v7, v31);
      v29 = MEMORY[0x277D84F90];
      v32 = v36;
    }
  }

  v49 = *(v29 + 16);

  v50 = v91;
  if (v49)
  {
    return (*(v13 + 8))(v25, v23);
  }

  v51 = [v88 defaultManager];
  v52 = sub_2456CAE48();
  v94[0] = 0;
  v53 = [v51 removeItemAtURL:v52 error:v94];

  if (v53)
  {
    v54 = qword_27EE20D00;
    v55 = v94[0];
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v31, qword_27EE20D08);
    v57 = v90;
    (*(v32 + 16))(v90, v56, v31);
    v58 = sub_2456CAF38();
    v59 = sub_2456CB1C8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_245686000, v58, v59, "Removed Audit Data capture directory because it was empty.", v60, 2u);
      MEMORY[0x245D6F740](v60, -1, -1);
    }

    (*(v32 + 8))(v57, v31);
    return (*(v13 + 8))(v25, v23);
  }

  v87 = v23;
  v61 = v94[0];
  v62 = sub_2456CAE08();

  swift_willThrow();
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v31, qword_27EE20D08);
  (*(v32 + 16))(v50, v63, v31);
  v64 = v89;
  v65 = v87;
  (*(v13 + 16))(v89, v25, v87);
  v66 = v62;
  v67 = sub_2456CAF38();
  v68 = v31;
  v69 = sub_2456CB1D8();

  if (os_log_type_enabled(v67, v69))
  {
    v70 = swift_slowAlloc();
    v88 = v67;
    v71 = v70;
    v72 = swift_slowAlloc();
    v94[0] = v72;
    *v71 = 136315394;
    v73 = sub_2456CAE78();
    v90 = v25;
    v74 = v32;
    v76 = v75;
    v77 = *(v13 + 8);
    v77(v64, v65);
    v78 = sub_2456A3F34(v73, v76, v94);

    *(v71 + 4) = v78;
    *(v71 + 12) = 2080;
    swift_getErrorValue();
    v79 = sub_2456CB578();
    v81 = sub_2456A3F34(v79, v80, v94);

    *(v71 + 14) = v81;
    v82 = v88;
    _os_log_impl(&dword_245686000, v88, v69, "Could not remove Audit Data capture directory at %s: %s", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D6F740](v72, -1, -1);
    MEMORY[0x245D6F740](v71, -1, -1);

    (*(v74 + 8))(v91, v93);
    return (v77)(v90, v87);
  }

  else
  {

    v83 = *(v13 + 8);
    v83(v64, v65);
    (*(v32 + 8))(v50, v68);
    return (v83)(v25, v65);
  }
}

uint64_t sub_2456A2BF4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
  v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  sub_2456C9C54(MEMORY[0x277D84F90]);
  type metadata accessor for CIImageRepresentationOption(0);
  sub_2456A551C(&qword_27EE20E98, type metadata accessor for CIImageRepresentationOption);
  v4 = sub_2456CAFA8();

  v5 = [v2 JPEGRepresentationOfImage:v1 colorSpace:DeviceRGB options:v4];

  if (v5)
  {
    v6 = sub_2456CAED8();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_2456A2D48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2456A2E40;

  return v6(a1);
}

uint64_t sub_2456A2E40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_2456A2F38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2456A303C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE211A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE211B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2456A3184(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21180);
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

char *sub_2456A329C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_2456A346C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_2456A35A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21198);
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

char *sub_2456A36A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21190);
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

char *sub_2456A37C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_2456A38C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2456A39C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_2456A3AC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2456A3C10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21148);
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

char *sub_2456A3D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21138);
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

char *sub_2456A3E28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2456A3F34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2456A4000(v11, 0, 0, 1, a1, a2);
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
    sub_2456A530C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2456A4000(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2456A410C(a5, a6);
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
    result = sub_2456CB378();
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

uint64_t sub_2456A410C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2456A4158(a1, a2);
  sub_2456A4288(&unk_285873328);
  return v3;
}

uint64_t sub_2456A4158(uint64_t a1, unint64_t a2)
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

  v6 = sub_2456B6B44(v5, 0);
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

  result = sub_2456CB378();
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
        v10 = sub_2456CB078();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2456B6B44(v10, 0);
        result = sub_2456CB338();
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

uint64_t sub_2456A4288(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2456A4374(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2456A4374(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21188);
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

unint64_t sub_2456A4468()
{
  result = qword_27EE21100;
  if (!qword_27EE21100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21100);
  }

  return result;
}

uint64_t sub_2456A44C0(uint64_t a1)
{
  v4 = *(sub_2456CAE98() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 280) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2456A45E0;

  return sub_24569E154(a1, v8, v9, v1 + 32, v1 + v6, v1 + v7);
}

uint64_t sub_2456A45E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  v1 = sub_2456CAE98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 280) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_2456A4840(uint64_t a1)
{
  v4 = *(sub_2456CAE98() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 280) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2456A45E0;

  return sub_24569F2A8(a1, v8, v9, v1 + 32, v1 + v6, v1 + v7);
}

uint64_t sub_2456A4960(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2456A49B4(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2456CAE98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2456CAF58();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  sub_2456CAE78();
  v11 = sub_2456CAFD8();

  v12 = [v10 fileExistsAtPath:v11 isDirectory:&v39];

  if (v12 && (v39 & 1) != 0)
  {
    return 1;
  }

  v13 = [v9 defaultManager];
  v14 = sub_2456CAE48();
  v40[0] = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v40];

  if (v15)
  {
    v16 = v40[0];
    return 1;
  }

  v18 = v40[0];
  v19 = sub_2456CAE08();

  swift_willThrow();
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v20 = v38;
  v21 = __swift_project_value_buffer(v38, qword_27EE20D08);
  v22 = v37;
  (*(v37 + 16))(v8, v21, v20);
  (*(v3 + 16))(v5, a1, v2);
  v23 = v19;
  v24 = sub_2456CAF38();
  v25 = sub_2456CB1D8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v26 = 136315394;
    v27 = sub_2456CAE78();
    v29 = v28;
    (*(v3 + 8))(v5, v2);
    v30 = sub_2456A3F34(v27, v29, v40);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    swift_getErrorValue();
    v31 = sub_2456CB578();
    v33 = sub_2456A3F34(v31, v32, v40);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_245686000, v24, v25, "Could not create Audit Data directory at %s: %s", v26, 0x16u);
    v34 = v36;
    swift_arrayDestroy();
    MEMORY[0x245D6F740](v34, -1, -1);
    MEMORY[0x245D6F740](v26, -1, -1);

    (*(v37 + 8))(v8, v38);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v22 + 8))(v8, v20);
  }

  return 0;
}

unint64_t sub_2456A4E48()
{
  result = qword_27EE21108;
  if (!qword_27EE21108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21108);
  }

  return result;
}

void sub_2456A4E9C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  [v1 extent];
  v3 = [v2 createCGImage:v1 fromRect:?];
  if (v3 && (v4 = sub_2456A2BF4(), v5 >> 60 != 15))
  {
    v13 = v4;
    v14 = v5;
    sub_2456CAEE8();
    sub_2456A52F8(v13, v14);
  }

  else
  {
    sub_2456C9B24(MEMORY[0x277D84F90]);
    v6 = sub_2456CB008();
    v8 = v7;
    v17 = MEMORY[0x277D837D0];
    *&v16 = 0xD00000000000001FLL;
    *(&v16 + 1) = 0x80000002456D0BE0;
    sub_2456A52E8(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34(v15, v6, v8, isUniquelyReferenced_nonNull_native);

    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v11 = sub_2456CAFD8();
    v12 = sub_2456CAFA8();

    [v10 initWithDomain:v11 code:-10 userInfo:v12];

    swift_willThrow();
  }
}

uint64_t type metadata accessor for PADSWAuditDataRecorder()
{
  result = qword_27EE21110;
  if (!qword_27EE21110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2456A510C()
{
  sub_2456A528C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2456A528C()
{
  if (!qword_27EE21120)
  {
    sub_2456CAE98();
    v0 = sub_2456CB298();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE21120);
    }
  }
}

_OWORD *sub_2456A52E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2456A52F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2456A4960(a1, a2);
  }

  return a1;
}

uint64_t sub_2456A530C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2456A5368()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456A53A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2456A556C;

  return sub_2456A2D48(a1, v4);
}

uint64_t sub_2456A5458(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2456A54AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2456A551C(unint64_t *a1, void (*a2)(uint64_t))
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

id PADInternalClassifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PADInternalClassifier.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  *&v0[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier] = 0;
  v4 = &v0[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_gestureStartBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_incorrectGestureDetectedBlock];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onGesturesFinishedBlock];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlockAccessSemaphore;
  *&v0[v8] = dispatch_semaphore_create(1);
  v9 = &v0[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_isClassifierLoading];
  v10 = dispatch_semaphore_create(1);
  *v9 = 0;
  *(v9 + 1) = v10;
  v11 = &v0[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onClassifierLoaded];
  v12 = type metadata accessor for PADInternalClassifier();
  *v11 = 0;
  *(v11 + 1) = 0;
  v21.receiver = v0;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  v14 = &v13[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_isClassifierLoading];
  swift_beginAccess();
  v15 = v13;
  sub_2456CB238();
  *v14 = 1;
  sub_2456CB248();
  swift_endAccess();
  sub_2456CB148();
  v16 = sub_2456CB168();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_2456A60EC(0, 0, v3, &unk_2456CDF30, v18);

  sub_24569BFE0(v3, &qword_27EE210F8);
  return v15;
}

uint64_t sub_2456A5810()
{
  MEMORY[0x245D6F7E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2456A5848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_2456CAF58();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456A5908, 0, 0);
}

uint64_t sub_2456A5908()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v3 = v2;
    if (v2)
    {
      v2 = type metadata accessor for PADInternalClassifier();
      v4 = &protocol witness table for PADInternalClassifier;
    }

    else
    {
      v4 = 0;
      v0[3] = 0;
      v0[4] = 0;
    }

    v0[2] = v3;
    v0[5] = v2;
    v0[6] = v4;
    type metadata accessor for PADSWClassifier();
    v23 = swift_task_alloc();
    v0[27] = v23;
    *v23 = v0;
    v23[1] = sub_2456A5C20;

    return PADSWClassifier.__allocating_init(delegate:)((v0 + 2));
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v6 = v0[24];
    v5 = v0[25];
    v7 = v0[23];
    v8 = __swift_project_value_buffer(v7, qword_27EE20D08);
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_2456CAF38();
    v10 = sub_2456CB1C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245686000, v9, v10, "PADInternalClassifier:init(), PADSWClassifier loaded", v11, 2u);
      MEMORY[0x245D6F740](v11, -1, -1);
    }

    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];

    (*(v13 + 8))(v12, v14);
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_isClassifierLoading);
      v17 = v15;
      swift_beginAccess();
      sub_2456CB238();
      *v16 = 0;
      sub_2456CB248();
      swift_endAccess();
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onClassifierLoaded);
      v20 = v18;
      sub_2456AB054(v19);

      if (v19)
      {
        v19();
        sub_2456AA36C(v19);
      }
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2456A5C20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {

    v5 = sub_2456A5F94;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_2456A5D50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2456A5D50()
{
  v1 = v0[26];
  v2 = *&v1[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier];
  *&v1[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier] = v0[29];

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = __swift_project_value_buffer(v5, qword_27EE20D08);
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_2456CAF38();
  v8 = sub_2456CB1C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245686000, v7, v8, "PADInternalClassifier:init(), PADSWClassifier loaded", v9, 2u);
    MEMORY[0x245D6F740](v9, -1, -1);
  }

  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];

  (*(v11 + 8))(v10, v12);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = (Strong + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_isClassifierLoading);
    v15 = Strong;
    swift_beginAccess();
    sub_2456CB238();
    *v14 = 0;
    sub_2456CB248();
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onClassifierLoaded);
    v18 = v16;
    sub_2456AB054(v17);

    if (v17)
    {
      v17();
      sub_2456AA36C(v17);
    }
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2456A5F94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456A5FF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2456A6038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456A45E0;

  return sub_2456A5848(a1, v4, v5, v6);
}

uint64_t sub_2456A60EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24569BF14(a3, v22 - v9, &qword_27EE210F8);
  v11 = sub_2456CB168();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24569BFE0(v10, &qword_27EE210F8);
  }

  else
  {
    sub_2456CB158();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2456CB138();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2456CB048() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2456A637C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v41 = a6;
  v42 = a7;
  v39 = a2;
  v40 = a4;
  v12 = sub_2456CAF58();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_isClassifierLoading;
  swift_beginAccess();
  v20 = *v19;
  v21 = *(v19 + 8);
  sub_2456CB238();
  sub_2456CB248();

  if (v20 <= 0)
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v12, qword_27EE20D08);
    (*(v13 + 16))(v18, v34, v12);
    v35 = sub_2456CAF38();
    v36 = sub_2456CB1C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      MEMORY[0x245D6F740](v37, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
    return sub_2456A6B14(a1, v39, a3, v40, a5, v41, v42);
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v12, qword_27EE20D08);
    (*(v13 + 16))(v16, v22, v12);
    v23 = sub_2456CAF38();
    v24 = sub_2456CB1C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      MEMORY[0x245D6F740](v25, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 2) = v26;
    *(v27 + 3) = a1;
    v28 = v40;
    *(v27 + 4) = v39;
    *(v27 + 5) = a3;
    *(v27 + 6) = v28;
    *(v27 + 7) = a5;
    v29 = v42;
    *(v27 + 8) = v41;
    *(v27 + 9) = v29;
    v30 = (v8 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onClassifierLoaded);
    v31 = *(v8 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onClassifierLoaded);
    *v30 = sub_2456AA358;
    v30[1] = v27;

    v32 = a1;

    sub_2456AA36C(v31);
  }
}

void sub_2456A6744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v13 = sub_2456CAF58();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_27EE20D08);
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2456CAF38();
  v19 = sub_2456CB1C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = a4;
    v21 = a5;
    v22 = a6;
    v23 = a7;
    v24 = a8;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_245686000, v18, v19, "PADInternalClassifier: Classifier loaded. Starting liveness from earlier call.", v20, 2u);
    v26 = v25;
    a8 = v24;
    a7 = v23;
    a6 = v22;
    a5 = v21;
    a4 = v30;
    MEMORY[0x245D6F740](v26, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_2456A6B14(v31, v32, a4, a5, a6, a7, a8);
  }
}

void sub_2456A6AB0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2456CADF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2456A6B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v13 = sub_2456CAF58();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  if (v17)
  {
    v18 = (v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_gestureStartBlock);
    v19 = *(v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_gestureStartBlock);
    *v18 = a2;
    v18[1] = a3;
    v20 = v17;

    sub_2456AA36C(v19);
    v21 = (v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_incorrectGestureDetectedBlock);
    v22 = *(v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_incorrectGestureDetectedBlock);
    *v21 = a4;
    v21[1] = a5;

    sub_2456AA36C(v22);
    v23 = (v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onGesturesFinishedBlock);
    v24 = *(v7 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onGesturesFinishedBlock);
    *v23 = v31;
    v23[1] = a7;

    sub_2456AA36C(v24);
    sub_2456A6D9C(v33);
    v32[0] = v33[0];
    v32[1] = v33[1];
    sub_245698714(v32);
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v13, qword_27EE20D08);
    (*(v14 + 16))(v16, v26, v13);
    v27 = sub_2456CAF38();
    v28 = sub_2456CB1D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      MEMORY[0x245D6F740](v29, -1, -1);
    }

    return (*(v14 + 8))(v16, v13);
  }
}

char *sub_2456A6D9C@<X0>(char **a1@<X8>)
{
  v3 = [v1 gestures];
  sub_2456AB00C(0, &qword_27EE21068);
  v4 = sub_2456CB0D8();

  v16 = v1;
  if (v4 >> 62)
  {
LABEL_22:
    v5 = sub_2456CB3F8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x245D6E880](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = [v8 integerValue];

    ++v6;
    if (v11 <= 0xA && ((1 << v11) & 0x73F) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2456A37B0(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_2456A37B0((v13 > 1), v14 + 1, 1, v7);
      }

      *(v7 + 2) = v14 + 1;
      *&v7[8 * v14 + 32] = v11;
      v6 = v10;
    }
  }

  result = [v16 minNumberOfGestures];
  *a1 = v7;
  a1[1] = result;
  return result;
}

void sub_2456A6F74(void *a1, int a2, unint64_t a3)
{
  v6 = sub_2456AA79C(a1);
  v7 = *(v3 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  if (v7)
  {
    if (a3 >= 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3;
    }

    *(*&v7[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_ta] + 185) = v8;
    v11[0] = BYTE1(a2) & 1;
    v11[1] = BYTE2(a2) & 1;
    v11[2] = a2 & 1;
    v10 = v6;
    v9 = v7;
    sub_245698930(v10, v11);

    v6 = v9;
  }
}

void sub_2456A71BC(void (*a1)(void))
{
  v2 = *(v1 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  if (v2)
  {
    v4 = v2;
    a1();
  }
}

void sub_2456A7250(char *a1, uint64_t a2, void (*a3)(void))
{
  v3 = *&a1[OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier];
  if (v3)
  {
    v6 = a1;
    v5 = v3;
    a3();
  }
}

void sub_2456A72E4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_2456CB238();
  v9 = (v4 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  v10 = *(v4 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  *v9 = a3;
  v9[1] = a4;

  sub_2456AA36C(v10);
  sub_2456CB248();
  v11 = sub_2456AA79C(a1);
  v12 = *(v4 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  if (v12)
  {
    v14 = v11;
    v13 = v12;
    sub_24569B174(v14, a2 & 1);

    v11 = v14;
  }
}

void sub_2456A7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2456CADF8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_2456A74D8(uint64_t a1, uint64_t a2)
{
  sub_2456CB238();
  v5 = (v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  v6 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  *v5 = a1;
  v5[1] = a2;

  sub_2456AA36C(v6);
  sub_2456CB248();
  v7 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  if (v7)
  {
    v8 = v7;
    sub_245698B6C();
  }
}

void sub_2456A75D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2456CAF58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2456CB238();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = (v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  v12 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  *v11 = sub_2456AABEC;
  v11[1] = v10;

  sub_2456AA36C(v12);
  sub_2456CB248();
  v13 = OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier;
  v14 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
    swift_beginAccess();
    sub_24569BF14(v14 + v15, v28, &qword_27EE213C0);
    if (v29)
    {
      sub_24569B370(v28, v25);
      v16 = v14;
      sub_24569BFE0(v28, &qword_27EE213C0);
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v18 + 56))(0, v17, v18);

      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      sub_24569BFE0(v28, &qword_27EE213C0);
    }
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_27EE20D08);
  (*(v7 + 16))(v9, v19, v6);
  v20 = sub_2456CAF38();
  v21 = sub_2456CB1C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_245686000, v20, v21, "PADInternalClassifier:cancelWithCompletion(), set PADSWClassifier to nil", v22, 2u);
    MEMORY[0x245D6F740](v22, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v23 = *(v3 + v13);
  *(v3 + v13) = 0;
}

uint64_t sub_2456A7904(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id PADInternalClassifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PADInternalClassifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall PADInternalClassifier.padClassifierDidFinishGestureDetection()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onGesturesFinishedBlock);
  if (v1)
  {

    v1(0);

    sub_2456AA36C(v1);
  }
}

void PADInternalClassifier.padClassifierWillStartDetectingGesture(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_gestureStartBlock);
  if (v1)
  {

    v2 = sub_2456CB198();
    v1();
    sub_2456AA36C(v1);
  }
}

void PADInternalClassifier.padClassifierDidDetectIncorrectGesture(duringDetectionOfGesture:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_incorrectGestureDetectedBlock);
  if (v1)
  {

    v1(v2);

    sub_2456AA36C(v1);
  }
}

void sub_2456A7C08()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_27EE20D38 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_27EE212F8 object:0];
}

uint64_t sub_2456A7CA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void PADInternalClassifier.padClassifierDidCompleteAssessment(withResult:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_2456CAF58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = a1[13];
  v52 = a1[12];
  v53 = v11;
  v54 = a1[14];
  v55 = *(a1 + 30);
  v12 = a1[9];
  v48 = a1[8];
  v49 = v12;
  v13 = a1[11];
  v50 = a1[10];
  v51 = v13;
  v14 = a1[5];
  v44 = a1[4];
  v45 = v14;
  v15 = a1[7];
  v46 = a1[6];
  v47 = v15;
  v16 = a1[1];
  v40 = *a1;
  v41 = v16;
  v17 = a1[3];
  v42 = a1[2];
  v43 = v17;
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_27EE20D08);
  v19 = *(v5 + 16);
  v38 = v18;
  v39 = v5 + 16;
  v37 = v19;
  (v19)(v10);
  v20 = sub_2456CAF38();
  v21 = sub_2456CB1C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_245686000, v20, v21, "PADInternalClassifier padClassifierDidCompleteAssessment", v22, 2u);
    MEMORY[0x245D6F740](v22, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v10, v4);
  sub_2456CB238();
  v24 = (v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  v25 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  if (v25)
  {
    v35 = v23;

    v26 = sub_2456A8064();
    v36 = v8;
    v27 = v2;
    v28 = v26;
    v25(v26, 0);
    v23 = v35;
    sub_2456AA36C(v25);

    v2 = v27;
    v8 = v36;
    v29 = *v24;
  }

  else
  {
    v29 = 0;
  }

  *v24 = 0;
  v24[1] = 0;
  sub_2456AA36C(v29);
  sub_2456CB248();
  v37(v8, v38, v4);
  v30 = sub_2456CAF38();
  v31 = sub_2456CB1C8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_245686000, v30, v31, "PADInternalClassifier:padClassifierDidCompleteAssessment(), set PADSWClassifier to nil", v32, 2u);
    MEMORY[0x245D6F740](v32, -1, -1);
  }

  v23(v8, v4);
  v33 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  *(v2 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier) = 0;
}

uint64_t sub_2456A8064()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v123 = *(v0 + 48);
  v124 = *(v0 + 56);
  v129 = *(v0 + 40);
  v131 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 88);
  v6 = *(v0 + 92);
  v8 = *(v0 + 96);
  v9 = *(v0 + 100);
  v10 = *(v0 + 104);
  v125 = *(v0 + 80);
  v126 = *(v0 + 112);
  v122 = *(v0 + 120);
  v127 = *(v0 + 128);
  v11 = [objc_allocWithZone(PADClassifierResult) init];
  v12 = sub_2456CB198();
  [v11 setLivenessLabel_];

  v13 = *(v1 + 16);
  if (v13)
  {
    time.value = MEMORY[0x277D84F90];
    sub_2456CB3A8();
    v14 = v1 + 32;
    do
    {
      v14 += 8;
      sub_2456CB198();
      sub_2456CB388();
      sub_2456CB3B8();
      sub_2456CB3C8();
      sub_2456CB398();
      --v13;
    }

    while (v13);
  }

  sub_2456AB00C(0, &qword_27EE21068);
  v15 = sub_2456CB0C8();

  [v11 setGestureSequence_];

  v16 = *(v2 + 16);
  if (v16)
  {
    time.value = MEMORY[0x277D84F90];
    sub_2456CB3A8();
    v17 = v2 + 32;
    do
    {
      v17 += 8;
      sub_2456CB198();
      sub_2456CB388();
      sub_2456CB3B8();
      sub_2456CB3C8();
      sub_2456CB398();
      --v16;
    }

    while (v16);
  }

  v18 = sub_2456CB0C8();

  [v11 setAssessmentsFAC_];

  v19 = *(v3 + 16);
  if (v19)
  {
    v20 = v3 + 56;
    v21 = MEMORY[0x277D84F90];
    do
    {
      v22 = sub_2456A9518();
      v23 = sub_2456A99CC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2456A3448(0, v21[2] + 1, 1, v21);
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_2456A3448((v24 > 1), v25 + 1, 1, v21);
      }

      v21[2] = v25 + 1;
      v21[v25 + 4] = v23;
      v20 += 32;
      --v19;
    }

    while (v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21170);
  v26 = sub_2456CB0C8();

  [v11 setAssessmentsPRD_];

  v27 = *(v4 + 16);
  if (v27)
  {
    v28 = v4 + 44;
    v29 = MEMORY[0x277D84F90];
    do
    {
      v30 = sub_2456A9770();
      v31 = sub_2456A99CC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_2456A3448(0, v29[2] + 1, 1, v29);
      }

      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        v29 = sub_2456A3448((v32 > 1), v33 + 1, 1, v29);
      }

      v29[2] = v33 + 1;
      v29[v33 + 4] = v31;
      v28 += 16;
      --v27;
    }

    while (v27);
  }

  v34 = sub_2456CB0C8();

  [v11 setAssessmentsTA_];

  v35 = MEMORY[0x277D84F90];
  v36 = v129;
  v37 = *(v129 + 16);
  v38 = MEMORY[0x277CBECE8];
  if (v37)
  {
    v133 = MEMORY[0x277D84F90];
    v128 = v37;
    result = sub_2456C5C18(0, v37, 0);
    v40 = v128;
    v41 = 0;
    v42 = v133;
    v43 = *v38;
    while (v41 < *(v36 + 16))
    {
      v44 = *(v129 + 32 + 8 * v41);
      v45 = *(v44 + 16);
      if (v45)
      {

        v46 = 32;
        v47 = v35;
        do
        {
          CMTimeMake(&time, *(v44 + v46), 1000000000);
          v48 = CMTimeCopyAsDictionary(&time, v43);
          if (v48)
          {
            v49 = v48;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              time.value = 0;
              sub_2456CAFB8();

              if (time.value)
              {
                v50 = sub_2456AA038(time.value);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = sub_2456A3424(0, v47[2] + 1, 1, v47);
                }

                v52 = v47[2];
                v51 = v47[3];
                if (v52 >= v51 >> 1)
                {
                  v47 = sub_2456A3424((v51 > 1), v52 + 1, 1, v47);
                }

                v47[2] = v52 + 1;
                v47[v52 + 4] = v50;
              }
            }

            else
            {
            }
          }

          v46 += 8;
          --v45;
        }

        while (v45);

        v40 = v128;
        v36 = v129;
        v35 = MEMORY[0x277D84F90];
      }

      else
      {
        v47 = v35;
      }

      v133 = v42;
      v54 = *(v42 + 16);
      v53 = *(v42 + 24);
      if (v54 >= v53 >> 1)
      {
        result = sub_2456C5C18((v53 > 1), v54 + 1, 1);
        v40 = v128;
        v42 = v133;
      }

      ++v41;
      *(v42 + 16) = v54 + 1;
      *(v42 + 8 * v54 + 32) = v47;
      if (v41 == v40)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

LABEL_41:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE211F8);
  v55 = sub_2456CB0C8();

  [v11 setTimestampsFAC_];

  v56 = *(v131 + 16);
  v57 = MEMORY[0x277D84F90];
  if (v56)
  {
    time.value = MEMORY[0x277D84F90];
    v130 = v56;
    result = sub_2456C5BD8(0, v56, 0);
    v59 = v130;
    v58 = v131;
    v60 = 0;
    value = time.value;
    while (v60 < *(v58 + 16))
    {
      v62 = *(v131 + 32 + 8 * v60);
      v63 = *(v62 + 16);
      if (v63)
      {
        v133 = v57;

        sub_2456CB3A8();
        v64 = 32;
        do
        {
          v65 = *(v62 + v64);
          v66 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          LODWORD(v67) = v65;
          [v66 initWithFloat_];
          sub_2456CB388();
          sub_2456CB3B8();
          sub_2456CB3C8();
          sub_2456CB398();
          v64 += 4;
          --v63;
        }

        while (v63);

        v68 = v133;
        v59 = v130;
        v58 = v131;
        v57 = MEMORY[0x277D84F90];
      }

      else
      {
        v68 = v57;
      }

      time.value = value;
      v70 = *(value + 16);
      v69 = *(value + 24);
      if (v70 >= v69 >> 1)
      {
        result = sub_2456C5BD8((v69 > 1), v70 + 1, 1);
        v59 = v130;
        v58 = v131;
        value = time.value;
      }

      ++v60;
      *(value + 16) = v70 + 1;
      *(value + 8 * v70 + 32) = v68;
      if (v60 == v59)
      {
        goto LABEL_52;
      }
    }

LABEL_82:
    __break(1u);
    return result;
  }

LABEL_52:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21550);
  v71 = sub_2456CB0C8();

  [v11 setFaceprintsID_];

  v72 = *(v123 + 16);
  if (v72)
  {
    v73 = *MEMORY[0x277CBECE8];
    v74 = (v123 + 32);
    v75 = MEMORY[0x277D84F90];
    do
    {
      v76 = *v74++;
      CMTimeMake(&time, v76, 1000000000);
      v77 = CMTimeCopyAsDictionary(&time, v73);
      if (v77)
      {
        v78 = v77;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          time.value = 0;
          sub_2456CAFB8();

          if (time.value)
          {
            v79 = sub_2456AA038(time.value);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_2456A3424(0, v75[2] + 1, 1, v75);
            }

            v81 = v75[2];
            v80 = v75[3];
            if (v81 >= v80 >> 1)
            {
              v75 = sub_2456A3424((v80 > 1), v81 + 1, 1, v75);
            }

            v75[2] = v81 + 1;
            v75[v81 + 4] = v79;
          }
        }

        else
        {
        }
      }

      --v72;
    }

    while (v72);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21160);
  v82 = sub_2456CB0C8();

  [v11 setTimestampsID_];

  v83 = *(v124 + 16);
  if (v83)
  {
    v84 = *MEMORY[0x277CBECE8];
    v85 = (v124 + 32);
    v86 = MEMORY[0x277D84F90];
    do
    {
      v87 = *v85++;
      CMTimeMake(&time, v87, 1000000000);
      v88 = CMTimeCopyAsDictionary(&time, v84);
      if (v88)
      {
        v89 = v88;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          time.value = 0;
          sub_2456CAFB8();

          if (time.value)
          {
            v90 = sub_2456AA038(time.value);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v86 = sub_2456A3424(0, v86[2] + 1, 1, v86);
            }

            v92 = v86[2];
            v91 = v86[3];
            if (v92 >= v91 >> 1)
            {
              v86 = sub_2456A3424((v91 > 1), v92 + 1, 1, v86);
            }

            v86[2] = v92 + 1;
            v86[v92 + 4] = v90;
          }
        }

        else
        {
        }
      }

      --v83;
    }

    while (v83);
  }

  v93 = sub_2456CB0C8();

  [v11 setTimestampsButtonPressed_];

  v94 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v95) = v5;
  v96 = [v94 &selRef_UTF8String + 5];
  [v11 setAssessmentFAC_];

  v97 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v11 setAssessmentTA_];

  v98 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v99) = v9;
  v100 = [v98 &selRef_UTF8String + 5];
  [v11 setMaxNccLow_];

  v101 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v102) = v10;
  v103 = [v101 &selRef_UTF8String + 5];
  [v11 setMaxNccHigh_];

  v104 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v11 setIgnoredStitches_];

  v105 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v106) = v7;
  v107 = [v105 &selRef_UTF8String + 5];
  [v11 setAssessmentFakePRD_];

  v108 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v109) = v6;
  v110 = [v108 &selRef_UTF8String + 5];
  [v11 setAssessmentLivePRD_];

  v111 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v112) = v8;
  v113 = [v111 &selRef_UTF8String + 5];
  [v11 setAssessmentID_];

  if (v127)
  {
    v114 = sub_2456CAFD8();
  }

  else
  {
    v114 = 0;
  }

  [v11 setDeviceInfo_];

  v115 = sub_2456CAFD8();

  [v11 setAgeLabel_];

  v116 = sub_2456CAFD8();

  [v11 setSexLabel_];

  v117 = sub_2456CAFD8();

  [v11 setSkintoneLabel_];

  v118 = sub_2456CAFD8();

  [v11 setEthnicityLabel_];

  v119 = sub_2456CAFD8();

  [v11 setFaceHairLabel_];

  v120 = sub_2456CAFD8();

  [v11 setHeadgearLabel_];

  v121 = sub_2456CAFD8();

  [v11 setGlassesLabel_];

  return v11;
}

void PADInternalClassifier.padClassifierDidCancelWithError(_:)(void *a1)
{
  v2 = sub_2456CAF58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27EE20D08);
  v29 = *(v3 + 16);
  v30 = v8;
  v29(v7);
  v9 = a1;
  v10 = sub_2456CAF38();
  v11 = sub_2456CB1C8();

  if (os_log_type_enabled(v10, v11))
  {
    v28 = v3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v14 = sub_2456CB578();
      v16 = v15;
    }

    else
    {
      v16 = 0x80000002456D0C20;
      v14 = 0xD000000000000017;
    }

    v18 = sub_2456A3F34(v14, v16, &v33);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_245686000, v10, v11, "PADInternalClassifier padClassifierDidCancelWithError: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D6F740](v13, -1, -1);
    MEMORY[0x245D6F740](v12, -1, -1);

    v17 = *(v28 + 8);
    v17(v7, v2);
  }

  else
  {

    v17 = *(v3 + 8);
    v17(v7, v2);
  }

  v19 = v32;
  sub_2456CB238();
  v20 = (v19 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  v21 = *(v19 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_selfieCompletionBlock);
  if (v21)
  {

    v21(0, a1);
    sub_2456AA36C(v21);
    v22 = *v20;
  }

  else
  {
    v22 = 0;
  }

  *v20 = 0;
  v20[1] = 0;
  sub_2456AA36C(v22);
  sub_2456CB248();
  v23 = v31;
  (v29)(v31, v30, v2);
  v24 = sub_2456CAF38();
  v25 = sub_2456CB1C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_245686000, v24, v25, "PADInternalClassifier:padClassifierDidCancelWithError(), set PADSWClassifier to nil", v26, 2u);
    MEMORY[0x245D6F740](v26, -1, -1);
  }

  v17(v23, v2);
  v27 = *(v19 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier);
  *(v19 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_classifier) = 0;
}

void sub_2456A9350()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_gestureStartBlock);
  if (v1)
  {

    v2 = sub_2456CB198();
    v1();
    sub_2456AA36C(v1);
  }
}

void sub_2456A93EC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_incorrectGestureDetectedBlock);
  if (v1)
  {

    v1(v2);

    sub_2456AA36C(v1);
  }
}

void sub_2456A9460()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10CoreIDVPAD21PADInternalClassifier_onGesturesFinishedBlock);
  if (v1)
  {

    v1(0);

    sub_2456AA36C(v1);
  }
}

uint64_t sub_2456A9518()
{
  v16 = *MEMORY[0x277D85DE8];
  sub_2456CAD88();
  swift_allocObject();
  sub_2456CAD78();
  sub_245696454();
  v0 = sub_2456CAD68();
  v2 = v1;

  v3 = objc_opt_self();
  v4 = sub_2456CAEC8();
  *&v15[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:4 error:v15];

  v6 = *&v15[0];
  if (v5)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v8 = sub_2456CAE08();

    swift_willThrow();
    memset(v15, 0, sizeof(v15));
  }

  sub_24569BF14(v15, &v12, &qword_27EE21210);
  if (!v13 || (sub_2456A52E8(&v12, &v11), sub_2456AB00C(0, &qword_27EE21208), (swift_dynamicCast() & 1) == 0) || (v9 = v14) == 0)
  {
    sub_2456AB00C(0, &qword_27EE21208);
    v9 = sub_2456CB1A8();
  }

  sub_2456A4960(v0, v2);
  sub_24569BFE0(v15, &qword_27EE21210);
  return v9;
}

uint64_t sub_2456A9770()
{
  v16 = *MEMORY[0x277D85DE8];
  sub_2456CAD88();
  swift_allocObject();
  sub_2456CAD78();
  sub_24569652C();
  v0 = sub_2456CAD68();
  v2 = v1;

  v3 = objc_opt_self();
  v4 = sub_2456CAEC8();
  *&v15[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:4 error:v15];

  v6 = *&v15[0];
  if (v5)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v8 = sub_2456CAE08();

    swift_willThrow();
    memset(v15, 0, sizeof(v15));
  }

  sub_24569BF14(v15, &v12, &qword_27EE21210);
  if (!v13 || (sub_2456A52E8(&v12, &v11), sub_2456AB00C(0, &qword_27EE21208), (swift_dynamicCast() & 1) == 0) || (v9 = v14) == 0)
  {
    sub_2456AB00C(0, &qword_27EE21208);
    v9 = sub_2456CB1A8();
  }

  sub_2456A4960(v0, v2);
  sub_24569BFE0(v15, &qword_27EE21210);
  return v9;
}

uint64_t sub_2456A99CC()
{
  v1 = v0;
  v2 = sub_2456CAE28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 keyEnumerator];
  sub_2456CB1B8();

  sub_2456CAE18();
  if (!v64)
  {
    v7 = MEMORY[0x277D84F98];
LABEL_46:
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  v7 = MEMORY[0x277D84F98];
  v8 = 0x278E83000uLL;
  while (1)
  {
    sub_2456A52E8(&v63, &v61);
    sub_2456A530C(&v61, &v59);
    if (!swift_dynamicCast())
    {
      goto LABEL_4;
    }

    v55 = v57;
    __swift_project_boxed_opaque_existential_1(&v61, v62);
    v9 = [v1 *(v8 + 3992)];
    swift_unknownObjectRelease();
    if (v9)
    {
      sub_2456CB2A8();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v59 = v57;
    v60 = v58;
    if (!*(&v58 + 1))
    {
      break;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    if (v10)
    {
      v53 = v10;
      v54 = v1;
      v11 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v7;
      v14 = sub_2456C85D4(v55, *(&v55 + 1));
      v15 = v7[2];
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_48;
      }

      v18 = v13;
      if (v7[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2456C968C();
        }
      }

      else
      {
        sub_2456C8724(v17, isUniquelyReferenced_nonNull_native);
        v19 = sub_2456C85D4(v55, *(&v55 + 1));
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_51;
        }

        v14 = v19;
      }

      v2 = v11;
      v1 = v54;
      if (v18)
      {

        v7 = v59;
        v44 = *(v59 + 56);
        v45 = *(v44 + 8 * v14);
        *(v44 + 8 * v14) = v53;

        v8 = 0x278E83000;
      }

      else
      {
        v7 = v59;
        *(v59 + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v46 = (v7[6] + 16 * v14);
        v47 = *(&v55 + 1);
        *v46 = v55;
        v46[1] = v47;
        *(v7[7] + 8 * v14) = v53;
        v48 = v7[2];
        v29 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v29)
        {
          goto LABEL_50;
        }

        v7[2] = v49;
        v8 = 0x278E83000;
      }
    }

    else
    {
      *&v55 = sub_2456C85D4(v55, *(&v55 + 1));
      v34 = v33;

      if (v34)
      {
        v35 = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = v7;
        if (!v35)
        {
          sub_2456C968C();
          v7 = v59;
        }

        v36 = v55;

        sub_2456AA37C(v36, v7);
      }
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(&v61);
    sub_2456CAE18();
    if (!v64)
    {
      goto LABEL_46;
    }
  }

  sub_24569BFE0(&v59, &qword_27EE21210);
LABEL_17:
  __swift_project_boxed_opaque_existential_1(&v61, v62);
  v21 = [v1 *(v8 + 3992)];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59 = v57;
  v60 = v58;
  if (!*(&v58 + 1))
  {

    sub_24569BFE0(&v59, &qword_27EE21210);
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_4;
  }

  v54 = v1;
  v22 = v8;
  v53 = v2;
  v23 = sub_2456CB128();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v59 = v7;
  v25 = sub_2456C85D4(v55, *(&v55 + 1));
  v27 = v7[2];
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (!v29)
  {
    v31 = v26;
    if (v7[3] >= v30)
    {
      if ((v24 & 1) == 0)
      {
        v50 = v25;
        sub_2456C968C();
        v25 = v50;
      }
    }

    else
    {
      sub_2456C8724(v30, v24);
      v25 = sub_2456C85D4(v55, *(&v55 + 1));
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_51;
      }
    }

    v8 = v22;
    v1 = v54;
    if (v31)
    {
      v37 = v25;

      v7 = v59;
      v38 = *(v59 + 56);
      v39 = *(v38 + 8 * v37);
      *(v38 + 8 * v37) = v23;
    }

    else
    {
      v7 = v59;
      *(v59 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v40 = (v7[6] + 16 * v25);
      v41 = *(&v55 + 1);
      *v40 = v55;
      v40[1] = v41;
      *(v7[7] + 8 * v25) = v23;
      v42 = v7[2];
      v29 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v29)
      {
        goto LABEL_49;
      }

      v7[2] = v43;
    }

    v2 = v53;
    goto LABEL_4;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_2456CB568();
  __break(1u);
  return result;
}

uint64_t sub_2456AA038(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21200);
    v2 = sub_2456CB428();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2456A530C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2456A52E8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2456A52E8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2456A52E8(v31, v32);
    result = sub_2456CB2D8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2456A52E8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2456AA300()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2456AA36C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2456AA37C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2456CB2C8() + 1) & ~v5;
    do
    {
      sub_2456CB588();

      sub_2456CB058();
      v9 = sub_2456CB5A8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2456AA52C(char a1)
{
  v2 = sub_2456CAF68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2456CAF88();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_2456AB00C(0, &qword_27EE21218);
    v11 = sub_2456CB208();
    aBlock[4] = sub_2456A7C08;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2456A7CA8;
    aBlock[3] = &block_descriptor_0;
    v12 = _Block_copy(aBlock);
    sub_2456CAF78();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2456AAF50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21228);
    sub_2456AAFA8();
    sub_2456CB2B8();
    MEMORY[0x245D6E740](0, v10, v5, v12);
    _Block_release(v12);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_2456AA79C(void *a1)
{
  v2 = [a1 gestureToDetect];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 10;
  }

  v5 = sub_2456B651C(v4);
  v7 = v6;
  v8 = [a1 faces];
  sub_2456AB00C(0, &qword_27EE21238);
  v9 = sub_2456CB0D8();

  if (v9 >> 62)
  {
    v10 = sub_2456CB3F8();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = a1;
  if (v10)
  {
    v51 = MEMORY[0x277D84F90];
    result = sub_2456CB3A8();
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x245D6E880](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v14 facePose];
      [v23 pitch];
      v25 = v24;
      [v23 yaw];
      v27 = v26;
      [v23 roll];
      v29 = v28;
      v30 = type metadata accessor for PADSWPose();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch] = v25;
      *&v31[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw] = v27;
      *&v31[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll] = v29;
      v55.receiver = v31;
      v55.super_class = v30;
      v32 = objc_msgSendSuper2(&v55, sel_init);

      v33 = type metadata accessor for PADSWFace();
      v34 = objc_allocWithZone(v33);
      v35 = &v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
      *v35 = v16;
      *(v35 + 1) = v18;
      *(v35 + 2) = v20;
      *(v35 + 3) = v22;
      *&v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_pose] = v32;
      v54.receiver = v34;
      v54.super_class = v33;
      v36 = v32;
      objc_msgSendSuper2(&v54, sel_init);

      sub_2456CB388();
      sub_2456CB3B8();
      sub_2456CB3C8();
      sub_2456CB398();
    }

    while (v10 != v12);

    v37 = v51;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    v38 = 10;
  }

  else
  {
    v38 = v5;
  }

  [v49 time];
  v39 = v51;
  v40 = v53;
  v41 = v52;
  v42 = [v49 buffer];
  v43 = [v49 orientation];
  v44 = type metadata accessor for PADSWFrame();
  v45 = objc_allocWithZone(v44);
  v46 = &v45[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time];
  *v46 = v39;
  *(v46 + 1) = v41;
  *(v46 + 2) = v40;
  *&v45[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer] = v42;
  *&v45[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces] = v37;
  *&v45[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_gesture] = v38;
  *&v45[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation] = v43;
  v50.receiver = v45;
  v50.super_class = v44;
  v47 = v42;
  v48 = objc_msgSendSuper2(&v50, sel_init);

  return v48;
}

uint64_t sub_2456AABB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456AAECC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2456AAF50()
{
  result = qword_27EE21220;
  if (!qword_27EE21220)
  {
    sub_2456CAF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21220);
  }

  return result;
}

unint64_t sub_2456AAFA8()
{
  result = qword_27EE21230;
  if (!qword_27EE21230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE21228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21230);
  }

  return result;
}

uint64_t sub_2456AB00C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2456AB054(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2456AB084()
{
  v1[2] = v0;
  v2 = sub_2456CAF58();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2456CAE98();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456AB1A0, 0, 0);
}

uint64_t sub_2456AB1A0()
{
  *(v0[2] + 16) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v0[9] = v1;
  [v1 setComputeUnits_];
  v0[10] = type metadata accessor for PADFacePoseModel();
  sub_2456CA3BC();
  sub_2456AB894();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_2456AB29C;
  v3 = v0[8];

  return MEMORY[0x2821119B0](v3, v1);
}

uint64_t sub_2456AB29C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    (*(v4[7] + 8))(v4[8], v4[6]);
    v5 = sub_2456AB3DC;
  }

  else
  {
    v4[13] = a1;
    v5 = sub_2456AB468;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2456AB3DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456AB468()
{
  v26 = v0;
  v1 = v0[13];
  v2 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v2 + 16) = v3;

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = __swift_project_value_buffer(v6, qword_27EE20D08);
  (*(v5 + 16))(v4, v7, v6);

  v8 = sub_2456CAF38();
  v9 = sub_2456CB1C8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[9];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  if (v10)
  {
    v24 = v0[5];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    v17 = sub_2456AB6CC();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_2456A3F34(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_245686000, v8, v9, "Successfully loaded FacePose v%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245D6F740](v16, -1, -1);
    MEMORY[0x245D6F740](v15, -1, -1);

    (*(v13 + 8))(v24, v14);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = v0[1];
  v22 = v0[2];

  return v21(v22);
}

uint64_t sub_2456AB6CC()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = [*(v1 + 16) modelDescription];
  v3 = [v2 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_2456AB83C();
  v4 = sub_2456CAFC8();

  if (!*(v4 + 16) || (v5 = sub_2456C8690(*MEMORY[0x277CBFEA8]), (v6 & 1) == 0))
  {

    return 0;
  }

  sub_2456A530C(*(v4 + 56) + 32 * v5, v9);

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2456AB7E0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2456AB83C()
{
  result = qword_27EE20EA8;
  if (!qword_27EE20EA8)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20EA8);
  }

  return result;
}

unint64_t sub_2456AB894()
{
  result = qword_27EE21240;
  if (!qword_27EE21240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE21240);
  }

  return result;
}

uint64_t sub_2456AB8E0(char a1)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = [v3 persistentDomainForName_];

    if (!v4)
    {
      return 0;
    }

    v5 = sub_2456CAFC8();

    if (!v5)
    {
      return 0;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0xD00000000000001BLL;
      }

      else
      {
        v6 = 0xD00000000000001DLL;
      }

      if (a1 == 1)
      {
        v7 = "CIDVPAD.show-padframe-logging";
      }

      else
      {
        v7 = "r";
      }

      if (*(v5 + 16))
      {
LABEL_12:
        v8 = sub_2456C85D4(v6, v7 | 0x8000000000000000);
        v10 = v9;

        if (v10)
        {
          sub_2456A530C(*(v5 + 56) + 32 * v8, v12);

          if (swift_dynamicCast())
          {
            return v11;
          }

          return 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v6 = 0xD00000000000001CLL;
      v7 = "CIDVPAD.use-verbose-logging";
      if (*(v5 + 16))
      {
        goto LABEL_12;
      }
    }

LABEL_17:

    return 0;
  }

  return result;
}

uint64_t sub_2456ABA80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_2456ABB40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2456CB3F8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2456C5C58(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x245D6E880](i, a1);
        sub_2456ABF04();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2456C5C58((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2456A52E8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2456ABF04();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2456C5C58((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2456A52E8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_2456ABD0C()
{
  v1 = [*v0 results];
  if (v1)
  {
    sub_2456ABF04();
    v2 = sub_2456CB0D8();

    v1 = sub_2456ABB40(v2);
  }

  return v1;
}

uint64_t sub_2456ABDB8()
{
  v0 = sub_2456C9B24(MEMORY[0x277D84F90]);
  v1 = sub_2456CB008();
  v3 = v2;
  v11 = MEMORY[0x277D837D0];
  *&v10 = 0xD00000000000003BLL;
  *(&v10 + 1) = 0x80000002456D0EB0;
  sub_2456A52E8(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v0;
  sub_2456C8F34(v9, v1, v3, isUniquelyReferenced_nonNull_native);

  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_2456CAFD8();
  v7 = sub_2456CAFA8();

  [v5 initWithDomain:v6 code:0 userInfo:v7];

  return swift_willThrow();
}

unint64_t sub_2456ABF04()
{
  result = qword_27EE21248;
  if (!qword_27EE21248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE21248);
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_2456ABF8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 208))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2456ABFAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 208) = v3;
  return result;
}

unint64_t sub_2456AC01C()
{
  v48 = *MEMORY[0x277D85DE8];
  sub_2456CAD88();
  swift_allocObject();
  sub_2456CAD78();
  v1 = v0[11];
  v47[9] = v0[10];
  v47[10] = v1;
  v47[11] = v0[12];
  v2 = v0[7];
  v47[5] = v0[6];
  v47[6] = v2;
  v3 = v0[9];
  v47[7] = v0[8];
  v47[8] = v3;
  v4 = v0[3];
  v47[1] = v0[2];
  v47[2] = v4;
  v5 = v0[5];
  v47[3] = v0[4];
  v47[4] = v5;
  v6 = v0[1];
  v46 = *v0;
  v47[0] = v6;
  sub_2456AE6FC();
  v8 = sub_2456CAD68();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_2456CAEC8();
  *&v46 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:&v46];

  if (!v13)
  {
    v37 = v46;
    v38 = sub_2456CAE08();

    swift_willThrow();
    sub_2456A4960(v8, v10);

    return sub_2456C9B10(MEMORY[0x277D84F90]);
  }

  v14 = v46;
  sub_2456CB2A8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2456A4960(v8, v10);
    return sub_2456C9B10(MEMORY[0x277D84F90]);
  }

  v41 = v8;
  v42 = v10;
  v15 = v45[0];
  v16 = v45[0] + 64;
  v17 = 1 << *(v45[0] + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v45[0] + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_12:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v21 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_2456A530C(*(v15 + 56) + 32 * v24, v47);
    *&v46 = v27;
    *(&v46 + 1) = v26;
    sub_2456A530C(v47, v45);

    if (swift_dynamicCast())
    {
      v28 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v29 = [v28 initWithInteger_];
      goto LABEL_17;
    }

    sub_2456A530C(v47, v45);
    if (swift_dynamicCast())
    {
      v30 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v29 = [v30 initWithDouble_];
LABEL_17:
      v31 = v29;
      sub_2456AE750(&v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2456A303C(0, v43[2] + 1, 1, v43);
      }

      v33 = v43[2];
      v32 = v43[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v36 = sub_2456A303C((v32 > 1), v33 + 1, 1, v43);
        v34 = v33 + 1;
        v43 = v36;
      }

      v43[2] = v34;
      v35 = &v43[3 * v33];
      v35[4] = v27;
      v35[5] = v26;
      v35[6] = v31;
    }

    else
    {
      sub_2456AE750(&v46);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  if (v43[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21280);
    v39 = sub_2456CB428();
  }

  else
  {
    v39 = MEMORY[0x277D84F98];
  }

  *&v46 = v39;

  sub_2456ACE68(v40, 1, &v46);
  sub_2456A4960(v41, v42);

  return v46;
}

unint64_t sub_2456AC4F0(char a1)
{
  result = 0x65736F507466656CLL;
  switch(a1)
  {
    case 1:
      return 0x736F507468676972;
    case 2:
      return 0x654465736F507075;
    case 3:
      return 0x65736F506E776F64;
    case 4:
      return 0x52776F7262657965;
    case 5:
      return 0x7461526874756F6DLL;
    case 6:
      return 0x6F69746152657965;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0xD000000000000013;
    case 9:
    case 10:
      return 0x4146726566667562;
    case 11:
      return 0xD000000000000012;
    case 12:
      return 0x4154726566667562;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 16:
      v3 = 5;
      goto LABEL_26;
    case 15:
      return 0xD000000000000010;
    case 17:
      return 0x7365726854636166;
    case 18:
      return 0x6873657268546174;
    case 19:
      return 0x6873657268546469;
    case 20:
      v3 = 9;
      goto LABEL_26;
    case 21:
      return 0xD000000000000018;
    case 22:
      v3 = 10;
      goto LABEL_26;
    case 23:
      v3 = 11;
LABEL_26:
      result = v3 | 0xD000000000000010;
      break;
    case 24:
    case 25:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2456AC830(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21260);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456AE6A8();
  sub_2456CB5C8();
  v9 = 0;
  sub_2456CB4C8();
  if (!v1)
  {
    v9 = 1;
    sub_2456CB4C8();
    v9 = 2;
    sub_2456CB4C8();
    v9 = 3;
    sub_2456CB4C8();
    v9 = 4;
    sub_2456CB4C8();
    v9 = 5;
    sub_2456CB4C8();
    v9 = 6;
    sub_2456CB4C8();
    v9 = 7;
    sub_2456CB4E8();
    v9 = 8;
    sub_2456CB4E8();
    v9 = 9;
    sub_2456CB4E8();
    v9 = 10;
    sub_2456CB4E8();
    v9 = 11;
    sub_2456CB4C8();
    v9 = 12;
    sub_2456CB4E8();
    v9 = 13;
    sub_2456CB4C8();
    v9 = 14;
    sub_2456CB4C8();
    v9 = 15;
    sub_2456CB4C8();
    v9 = 16;
    sub_2456CB4C8();
    v9 = 17;
    sub_2456CB4C8();
    v9 = 18;
    sub_2456CB4E8();
    v9 = 19;
    sub_2456CB4C8();
    v9 = 20;
    sub_2456CB4C8();
    v9 = 21;
    sub_2456CB4C8();
    v9 = 22;
    sub_2456CB4C8();
    v9 = 23;
    sub_2456CB4C8();
    v9 = 24;
    sub_2456CB4E8();
    v9 = 25;
    sub_2456CB4E8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2456ACD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2456AD8CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2456ACD6C(uint64_t a1)
{
  v2 = sub_2456AE6A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456ACDA8(uint64_t a1)
{
  v2 = sub_2456AE6A8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_2456ACDE4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2456AE0D4(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v10[12];
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_2456ACE68(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_2456C85D4(v7, v6);
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
    sub_2456C8724(v16, v5 & 1);
    v11 = sub_2456C85D4(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_2456CB568();
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

  v21 = v11;
  sub_2456C968C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21288);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2456CB348();
    MEMORY[0x245D6E590](0xD00000000000001BLL, 0x80000002456D0F40);
    sub_2456CB3D8();
    MEMORY[0x245D6E590](39, 0xE100000000000000);
    sub_2456CB3E8();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_2456C85D4(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_2456C8724(v33, 1);
        v29 = sub_2456C85D4(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_2456AD1F8@<X0>(uint64_t a1@<X8>)
{
  v47 = sub_2456CAF58();
  v45 = *(v47 - 8);
  v2 = MEMORY[0x28223BE20](v47);
  v44[2] = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v44 - v4;
  v46 = sub_2456CAE98();
  v6 = *(v46 - 8);
  v7 = MEMORY[0x28223BE20](v46);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v44 - v10;
  type metadata accessor for PADSWClassifier();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_2456CAFD8();
  v15 = sub_2456CAFD8();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_2456CAE68();

    (*(v6 + 32))(v11, v9, v46);
    v24 = sub_2456CAEA8();
    v26 = v25;
    sub_2456CADB8();
    swift_allocObject();
    sub_2456CADA8();
    sub_2456AE7B8();
    sub_2456CAD98();
    (*(v6 + 8))(v11, v46);

    result = sub_2456A4960(v24, v26);
    v29 = v48;
    v28 = v49;
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    v42 = v62;
    v43 = v63;
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v17 = v47;
    v18 = __swift_project_value_buffer(v47, qword_27EE20D08);
    v19 = v45;
    (*(v45 + 16))(v5, v18, v17);
    v20 = sub_2456CAF38();
    v21 = sub_2456CB1C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v19;
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245686000, v20, v21, "No PADModelConfiguration plist found in bundle. Using default values.", v23, 2u);
      MEMORY[0x245D6F740](v23, -1, -1);

      result = (*(v22 + 8))(v5, v47);
    }

    else
    {

      result = (*(v19 + 8))(v5, v47);
    }

    v39 = 0;
    v33 = xmmword_2456CE010;
    v32 = xmmword_2456CE020;
    v41 = xmmword_2456CE030;
    v40 = xmmword_2456CE040;
    v37 = xmmword_2456CE050;
    v36 = xmmword_2456CE060;
    v30 = xmmword_2456CE070;
    v28 = xmmword_2456CE080;
    v42 = 0x3FC3333333333333;
    v43 = vdupq_n_s64(3uLL);
    v38 = 0.5;
    v29 = xmmword_2456CE090;
    v31 = 0x3FD3333333333333;
    v34 = 0x3F966CF41F212D77;
    v35 = 10;
  }

  *a1 = v29;
  *(a1 + 16) = v28;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  *(a1 + 56) = v32;
  *(a1 + 72) = v33;
  *(a1 + 88) = v34;
  *(a1 + 96) = v35;
  *(a1 + 104) = v36;
  *(a1 + 120) = v37;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 168) = v41;
  *(a1 + 184) = v42;
  *(a1 + 192) = v43;
  return result;
}

uint64_t sub_2456AD8CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736F507466656CLL && a2 == 0xEE00656572676544;
  if (v4 || (sub_2456CB538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736F507468676972 && a2 == 0xEF65657267654465 || (sub_2456CB538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654465736F507075 && a2 == 0xEC00000065657267 || (sub_2456CB538() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736F506E776F64 && a2 == 0xEE00656572676544 || (sub_2456CB538() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x52776F7262657965 && a2 == 0xEC0000006F697461 || (sub_2456CB538() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461526874756F6DLL && a2 == 0xEA00000000006F69 || (sub_2456CB538() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746152657965 && a2 == 0xE800000000000000 || (sub_2456CB538() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002456D0F60 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002456D0F80 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4146726566667562 && a2 == 0xE900000000000043 || (sub_2456CB538() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4146726566667562 && a2 == 0xEC00000065794543 || (sub_2456CB538() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002456D0FA0 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4154726566667562 && a2 == 0xE800000000000000 || (sub_2456CB538() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002456D0FC0 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002456D0FE0 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002456D1000 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002456D1020 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7365726854636166 && a2 == 0xEC000000646C6F68 || (sub_2456CB538() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6873657268546174 && a2 == 0xEB00000000646C6FLL || (sub_2456CB538() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6873657268546469 && a2 == 0xEB00000000646C6FLL || (sub_2456CB538() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002456D1040 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002456D1060 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002456D1080 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002456D10A0 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002456D10C0 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002456D10E0 == a2)
  {

    return 25;
  }

  else
  {
    v6 = sub_2456CB538();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t sub_2456AE0D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456AE6A8();
  sub_2456CB5B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v61 = 0;
  sub_2456CB468();
  v10 = v9;
  v61 = 1;
  sub_2456CB468();
  v12 = v11;
  v61 = 2;
  sub_2456CB468();
  v14 = v13;
  v61 = 3;
  sub_2456CB468();
  v16 = v15;
  v61 = 4;
  sub_2456CB468();
  v18 = v17;
  v61 = 5;
  sub_2456CB468();
  v20 = v19;
  v61 = 6;
  sub_2456CB468();
  v22 = v21;
  v61 = 7;
  v23 = sub_2456CB488();
  v61 = 8;
  v24 = sub_2456CB488();
  v61 = 9;
  v60 = sub_2456CB488();
  v61 = 10;
  v59 = sub_2456CB488();
  v61 = 11;
  sub_2456CB468();
  v26 = v25;
  v61 = 12;
  v58 = sub_2456CB488();
  v61 = 13;
  sub_2456CB468();
  v57 = v27;
  v61 = 14;
  sub_2456CB468();
  v56 = v28;
  v61 = 15;
  sub_2456CB468();
  v55 = v29;
  v61 = 16;
  sub_2456CB468();
  v54 = v30;
  v61 = 17;
  sub_2456CB468();
  v53 = v31;
  v61 = 18;
  v52 = sub_2456CB488();
  v61 = 19;
  sub_2456CB468();
  v51 = v32;
  v61 = 20;
  sub_2456CB468();
  v50 = v33;
  v61 = 21;
  sub_2456CB468();
  v49 = v34;
  v61 = 22;
  sub_2456CB468();
  v48 = v35;
  v61 = 23;
  sub_2456CB468();
  v47 = v36;
  v61 = 24;
  v46 = sub_2456CB488();
  v61 = 25;
  v45 = sub_2456CB488();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v20;
  a2[6] = v22;
  a2[7] = v23;
  a2[8] = v24;
  v38 = v59;
  a2[9] = v60;
  a2[10] = v38;
  a2[11] = v26;
  a2[12] = v58;
  v39 = v56;
  a2[13] = v57;
  a2[14] = v39;
  v40 = v54;
  a2[15] = v55;
  a2[16] = v40;
  a2[17] = v53;
  a2[18] = v52;
  v41 = v50;
  a2[19] = v51;
  a2[20] = v41;
  v42 = v48;
  a2[21] = v49;
  a2[22] = v42;
  a2[23] = v47;
  v43 = v45;
  a2[24] = v46;
  a2[25] = v43;
  return result;
}

unint64_t sub_2456AE6A8()
{
  result = qword_27EE21258;
  if (!qword_27EE21258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21258);
  }

  return result;
}

unint64_t sub_2456AE6FC()
{
  result = qword_27EE21268;
  if (!qword_27EE21268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21268);
  }

  return result;
}

uint64_t sub_2456AE750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2456AE7B8()
{
  result = qword_27EE21290;
  if (!qword_27EE21290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PADModelConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PADModelConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2456AE960()
{
  result = qword_27EE21298;
  if (!qword_27EE21298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21298);
  }

  return result;
}

unint64_t sub_2456AE9B8()
{
  result = qword_27EE212A0;
  if (!qword_27EE212A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE212A0);
  }

  return result;
}

unint64_t sub_2456AEA10()
{
  result = qword_27EE212A8;
  if (!qword_27EE212A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE212A8);
  }

  return result;
}

uint64_t sub_2456AEA64()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2456AEAC0(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_2456CAE98();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456AEB80, 0, 0);
}

uint64_t sub_2456AEB80()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v2 + 16))(v1, v0[27], v3);
  v4 = sub_2456CAE48();
  v5 = [objc_opt_self() assetWithURL_];
  v0[32] = v5;

  v6 = *(v2 + 8);
  v0[33] = v6;
  v0[34] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = *MEMORY[0x277CE5EA8];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_2456AED40;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE212C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2456AF1D4;
  v0[13] = &block_descriptor_1;
  v0[14] = v8;
  [v5 loadTracksWithMediaType:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2456AED40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_2456AF114;
  }

  else
  {
    v2 = sub_2456AEE50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456AEE50()
{
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
    result = sub_2456CB3F8();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = *(v0 + 264);
    v13 = *(v0 + 256);
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);

    sub_2456C9B24(MEMORY[0x277D84F90]);
    v16 = sub_2456CB008();
    v18 = v17;
    *(v0 + 168) = MEMORY[0x277D837D0];
    *(v0 + 144) = 0xD00000000000002BLL;
    *(v0 + 152) = 0x80000002456D11C0;
    sub_2456A52E8((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34((v0 + 176), v16, v18, isUniquelyReferenced_nonNull_native);

    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = sub_2456CAFD8();
    v22 = sub_2456CAFA8();

    [v20 initWithDomain:v21 code:-2 userInfo:v22];

    swift_willThrow();
    v12(v15, v14);
    type metadata accessor for PADAVAssetReader();
    swift_deallocPartialClassInstance();

    v23 = *(v0 + 8);

    return v23();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x245D6E880](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = *(v0 + 264);
  v6 = *(v0 + 256);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);

  v5(v9, v7);
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;

  v10 = *(v0 + 8);
  v11 = *(v0 + 224);

  return v10(v11);
}

uint64_t sub_2456AF114()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v4 = v0[27];
  swift_willThrow();

  v1(v4, v3);
  type metadata accessor for PADAVAssetReader();
  swift_deallocPartialClassInstance();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2456AF1D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21288);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2456B08CC();
    **(*(v4 + 64) + 40) = sub_2456CB0D8();

    return MEMORY[0x282200950](v4);
  }
}

id sub_2456AF2B4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v46 = *MEMORY[0x277D85DE8];
  v39 = *a1;
  v40 = a1[1];
  v41 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE212B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2456CE280;
  *(inited + 32) = sub_2456CB008();
  *(inited + 40) = v10;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1111970369;
  sub_2456C9B24(inited);
  swift_setDeallocating();
  sub_2456B0240(inited + 32);
  if ((a4 & 1) == 0)
  {
    v11 = sub_2456CB008();
    v13 = v12;
    v14 = MEMORY[0x277D85048];
    *(&v43 + 1) = MEMORY[0x277D85048];
    *&v42 = a2;
    sub_2456A52E8(&v42, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34(v45, v11, v13, isUniquelyReferenced_nonNull_native);

    v16 = sub_2456CB008();
    v18 = v17;
    *(&v43 + 1) = v14;
    *&v42 = a3;
    sub_2456A52E8(&v42, v45);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34(v45, v16, v18, v19);
  }

  v20 = *(v5 + 24);
  v21 = objc_allocWithZone(MEMORY[0x277CE6430]);
  v22 = MEMORY[0x277D837D0];
  v23 = sub_2456CAFA8();

  v24 = [v21 initWithTrack:v20 outputSettings:v23];

  [v24 setAlwaysCopiesSampleData_];
  v25 = *(v5 + 16);
  v26 = objc_allocWithZone(MEMORY[0x277CE6410]);
  *&v42 = 0;
  v27 = v25;
  v28 = [v26 initWithAsset:v27 error:&v42];
  if (!v28)
  {
    v29 = v42;
    sub_2456CAE08();

LABEL_8:
    swift_willThrow();

    return v29;
  }

  v29 = v28;
  v30 = v42;

  if (([v29 canAddOutput_] & 1) == 0)
  {
    sub_2456C9B24(MEMORY[0x277D84F90]);
    v31 = sub_2456CB008();
    v33 = v32;
    *(&v43 + 1) = v22;
    *&v42 = 0xD000000000000025;
    *(&v42 + 1) = 0x80000002456D1170;
    sub_2456A52E8(&v42, v45);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34(v45, v31, v33, v34);

    v35 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v36 = sub_2456CAFD8();
    v37 = sub_2456CAFA8();

    [v35 initWithDomain:v36 code:-2 userInfo:v37];

    v27 = v29;
    goto LABEL_8;
  }

  v42 = v39;
  v43 = v40;
  v44 = v41;
  [v29 setTimeRange_];
  [v29 addOutput_];
  [v29 startReading];
  return v29;
}

uint64_t sub_2456AF6EC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2456AF750(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2456B022C(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_2456CB508();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v17 = v2;
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          result = sub_2456CB268();
          if ((result & 1) == 0)
          {
            break;
          }

          result = *(v12 + 2);
          v14 = *(v12 + 6);
          v13 = *(v12 + 7);
          v15 = *(v12 + 4);
          *(v12 + 4) = *(v12 + 1);
          *(v12 + 1) = *(v12 - 8);
          *(v12 - 1) = result;
          *v12 = v14;
          *(v12 + 1) = v13;
          *(v12 + 1) = v15;
          v12 -= 24;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }

      v2 = v17;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for CMTime(0);
      v7 = sub_2456CB108();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_2456AF918(v18, v20, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2456AF918(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_87:
    v8 = *v89;
    if (!*v89)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_119:
      result = sub_2456B0218(v7);
      v7 = result;
    }

    v83 = *(v7 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = *&v7[16 * v83];
        v85 = *&v7[16 * v83 + 24];
        sub_2456AFF40((*a3 + 24 * v84), (*a3 + 24 * *&v7[16 * v83 + 16]), *a3 + 24 * v85, v8);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2456B0218(v7);
        }

        if (v83 - 2 >= *(v7 + 2))
        {
          goto LABEL_113;
        }

        v86 = &v7[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        result = sub_2456B018C(v83 - 1);
        v83 = *(v7 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_123;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 24;
  while (1)
  {
    v9 = v6++;
    if (v6 < v5)
    {
      v10 = *a3;
      result = sub_2456CB268();
      v11 = result;
      v6 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v12 = v10 + 24 * v9 + 64;
        while (1)
        {
          result = sub_2456CB268();
          if ((v11 & 1) != (result & 1))
          {
            break;
          }

          v12 += 24;
          if (v5 == ++v6)
          {
            v6 = v5;
            break;
          }
        }
      }

      if (v11)
      {
        if (v6 < v9)
        {
          goto LABEL_116;
        }

        if (v9 < v6)
        {
          v13 = 24 * v6 - 8;
          v14 = 24 * v9;
          v15 = v6;
          v16 = v9;
          do
          {
            if (v16 != --v15)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v17 = (v23 + v14);
              v18 = (v23 + v13);
              v19 = *v17;
              v20 = v17[2];
              v21 = v17[1];
              v22 = *v18;
              *v17 = *(v18 - 1);
              v17[2] = v22;
              *(v18 - 2) = v19;
              *(v18 - 1) = v21;
              *v18 = v20;
            }

            ++v16;
            v13 -= 24;
            v14 += 24;
          }

          while (v16 < v15);
        }
      }
    }

    v24 = a3[1];
    if (v6 < v24)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_115;
      }

      if (v6 - v9 < a4)
      {
        v25 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_117;
        }

        if (v25 >= v24)
        {
          v25 = a3[1];
        }

        if (v25 < v9)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v6 != v25)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v6 < v9)
    {
      goto LABEL_114;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2456A35A0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 2);
    v37 = *(v7 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_2456A35A0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v39;
    v40 = &v7[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v6;
    v41 = *v89;
    if (!*v89)
    {
      goto LABEL_124;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 4);
          v44 = *(v7 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_56:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v7[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v7[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v69 = &v7[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_70:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v7[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_77:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_118;
        }

        if (!*a3)
        {
          goto LABEL_121;
        }

        v81 = *&v7[16 * v80 + 32];
        v8 = *&v7[16 * v42 + 40];
        sub_2456AFF40((*a3 + 24 * v81), (*a3 + 24 * *&v7[16 * v42 + 32]), *a3 + 24 * v8, v41);
        if (v4)
        {
        }

        if (v8 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2456B0218(v7);
        }

        if (v80 >= *(v7 + 2))
        {
          goto LABEL_100;
        }

        v82 = &v7[16 * v80];
        *(v82 + 4) = v81;
        *(v82 + 5) = v8;
        result = sub_2456B018C(v42);
        v39 = *(v7 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v7[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v7[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v7[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v5 = a3[1];
    v8 = 24;
    if (v6 >= v5)
    {
      goto LABEL_87;
    }
  }

  v87 = v9;
  v26 = *a3;
  v27 = *a3 + 24 * v6 - 24;
  v28 = v9 - v6;
  v90 = v25;
LABEL_29:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    result = sub_2456CB268();
    if ((result & 1) == 0)
    {
LABEL_28:
      ++v6;
      v27 += 24;
      --v28;
      v8 = 24;
      if (v6 != v90)
      {
        goto LABEL_29;
      }

      v6 = v90;
      v9 = v87;
      goto LABEL_36;
    }

    if (!v26)
    {
      break;
    }

    v32 = *(v30 + 32);
    v31 = *(v30 + 36);
    v33 = *(v30 + 40);
    v35 = *(v30 + 16);
    v34 = *(v30 + 24);
    *(v30 + 24) = *v30;
    *(v30 + 40) = v35;
    *v30 = v34;
    *(v30 + 8) = v32;
    *(v30 + 12) = v31;
    *(v30 + 16) = v33;
    v30 -= 24;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_28;
    }
  }

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
  return result;
}

uint64_t sub_2456AFF40(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (sub_2456CB268())
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v17 -= 24;
      v18 = (v5 + 24);
      if (sub_2456CB268())
      {
        if (v18 != v6)
        {
          v20 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v19 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v19;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_2456B018C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2456B0218(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2456B0240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE212B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2456B02A8(CMTimeValue a1)
{
  start.value = a1;

  sub_2456AF750(&start);
  if (v1)
  {
LABEL_15:

    __break(1u);
  }

  else
  {
    value = start.value;
    v3 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    v4 = *(start.value + 16);
    if (v4)
    {
      v5 = 0;
      v6 = start.value + 48;
      v19 = start.value + 48;
      do
      {
        v20 = v3;
        v7 = (v6 + 24 * v5);
        while (1)
        {
          if (v5 >= *(value + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          v8 = *v7;
          v9 = *(v7 - 2);
          v21 = *(v7 - 1);
          CMTimeMake(&start, 100000, v21);
          v10 = start.value;
          v11 = *&start.timescale;
          duration.epoch = start.epoch;
          start.value = v9;
          *&start.timescale = v21;
          start.epoch = v8;
          duration.value = v10;
          *&duration.timescale = v11;
          CMTimeRangeMake(&v24, &start, &duration);
          v12 = sub_2456AF2B4(&v24.start.value, 0, 0, 1);
          v14 = v13;
          v15 = [v13 copyNextSampleBuffer];
          if (v15)
          {
            break;
          }

          ++v5;

          v7 += 3;
          if (v4 == v5)
          {
            v3 = v20;
            goto LABEL_13;
          }
        }

        v16 = v15;
        MEMORY[0x245D6E5E0]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2456CB0F8();
        }

        sub_2456CB118();

        v3 = v25;
        v6 = v19;
      }

      while (v4 - 1 != v5++);
    }

LABEL_13:

    return v3;
  }

  return result;
}

char *sub_2456B04B8(CMTimeValue a1)
{
  v3 = sub_2456B02A8(a1);
  if (!v1)
  {
    v4 = v3;
    if (v3 >> 62)
    {
LABEL_29:
      v41 = v4 & 0xFFFFFFFFFFFFFF8;
      v5 = sub_2456CB3F8();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v41 = v3 & 0xFFFFFFFFFFFFFF8;
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v40 = v4 & 0xC000000000000001;
        v2 = MEMORY[0x277D84F90];
        v33 = v1;
        v38 = v5;
        v39 = v4;
        while (1)
        {
          v34 = v2;
          v7 = v6;
          while (1)
          {
            if (v40)
            {
              v10 = MEMORY[0x245D6E880](v7, v4);
            }

            else
            {
              if (v7 >= *(v41 + 16))
              {
                goto LABEL_28;
              }

              v10 = *(v4 + 8 * v7 + 32);
            }

            v9 = v10;
            v8 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v11 = CMSampleBufferGetImageBuffer(v10);
            if (v11)
            {
              break;
            }

LABEL_8:

            ++v7;
            if (v8 == v5)
            {
              v2 = v34;
              goto LABEL_31;
            }
          }

          v12 = v11;
          v42 = v7 + 1;
          CVPixelBufferLockBaseAddress(v11, 1uLL);
          BaseAddress = CVPixelBufferGetBaseAddress(v12);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v12);
          Width = CVPixelBufferGetWidth(v12);
          Height = CVPixelBufferGetHeight(v12);
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v18 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          Image = CGBitmapContextCreateImage(v18);
          if (!Image)
          {
            goto LABEL_18;
          }

          v21 = Image;
          CVPixelBufferUnlockBaseAddress(v12, 1uLL);
          v37 = v21;
          v22 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
          v23 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
          v35 = CGColorSpaceCreateDeviceRGB();
          sub_2456C9C54(MEMORY[0x277D84F90]);
          type metadata accessor for CIImageRepresentationOption(0);
          sub_2456B085C();
          v24 = sub_2456CAFA8();

          v25 = [v23 JPEGRepresentationOfImage:v22 colorSpace:v35 options:v24];

          if (!v25)
          {

            DeviceRGB = v19;
            v19 = v37;
            v26 = v12;
            v12 = v9;
            v9 = v26;
LABEL_18:
            v8 = v7 + 1;

            DeviceRGB = v19;
            v5 = v38;
            v4 = v39;
LABEL_7:

            v9 = v12;
            goto LABEL_8;
          }

          v27 = sub_2456CAED8();
          v36 = v28;

          v6 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2456A36A4(0, *(v34 + 2) + 1, 1, v34);
          }

          v30 = *(v34 + 2);
          v29 = *(v34 + 3);
          if (v30 >= v29 >> 1)
          {
            v34 = sub_2456A36A4((v29 > 1), v30 + 1, 1, v34);
          }

          v2 = v34;
          *(v34 + 2) = v30 + 1;
          v31 = &v34[16 * v30];
          *(v31 + 4) = v27;
          *(v31 + 5) = v36;
          v5 = v38;
          v4 = v39;
          v1 = v33;
          if (v42 == v38)
          {
LABEL_31:

            return v2;
          }
        }

        v5 = v38;
        v4 = v39;
        v8 = v7 + 1;
        goto LABEL_7;
      }
    }

    v2 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  return v2;
}

unint64_t sub_2456B085C()
{
  result = qword_27EE20E98;
  if (!qword_27EE20E98)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20E98);
  }

  return result;
}

unint64_t sub_2456B08CC()
{
  result = qword_27EE212C8;
  if (!qword_27EE212C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE212C8);
  }

  return result;
}

uint64_t sub_2456B0918(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2456B09D8(v9);
  if (*(v3 + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    v7[12] = v9[12];
    v7[13] = v9[13];
    v7[14] = v9[14];
    v8 = v10;
    v7[8] = v9[8];
    v7[9] = v9[9];
    v7[10] = v9[10];
    v7[11] = v9[11];
    v7[4] = v9[4];
    v7[5] = v9[5];
    v7[6] = v9[6];
    v7[7] = v9[7];
    v7[0] = v9[0];
    v7[1] = v9[1];
    v7[2] = v9[2];
    v7[3] = v9[3];
    sub_24569CE7C(v7, a2, a3);
  }

  return sub_245697AFC(v9);
}

void sub_2456B09D8(uint64_t a1@<X8>)
{
  v221[4] = *MEMORY[0x277D85DE8];
  v2 = [v1 livenessLabel];
  v186 = [v2 integerValue];

  v193 = v1;
  v3 = [v1 gestureSequence];
  sub_24569B080();
  v4 = sub_2456CB0D8();

  if (v4 >> 62)
  {
    v5 = sub_2456CB3F8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v220[0] = MEMORY[0x277D84F90];
    sub_2456C5CB8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_158;
    }

    v7 = 0;
    v8 = *&v220[0];
    do
    {
      v9 = v8;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245D6E880](v7, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = [v10 integerValue];

      if (v12 > 0xA)
      {
        v13 = 10;
      }

      else
      {
        v13 = qword_2456CE340[v12];
      }

      v8 = v9;
      *&v220[0] = v9;
      v14 = *(v9 + 16);
      v15 = *(v8 + 24);
      if (v14 >= v15 >> 1)
      {
        sub_2456C5CB8((v15 > 1), v14 + 1, 1);
        v8 = *&v220[0];
      }

      ++v7;
      *(v8 + 16) = v14 + 1;
      *(v8 + 8 * v14 + 32) = v13;
    }

    while (v5 != v7);
    v185 = v8;
  }

  else
  {

    v185 = MEMORY[0x277D84F90];
  }

  v16 = [v193 assessmentsFAC];
  v17 = sub_2456CB0D8();

  if (v17 >> 62)
  {
    v18 = sub_2456CB3F8();
    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_19:
      *&v220[0] = v6;
      sub_2456C5B08(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        goto LABEL_159;
      }

      v19 = 0;
      v20 = *&v220[0];
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x245D6E880](v19, v17);
        }

        else
        {
          v21 = *(v17 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = [v21 integerValue];

        if (v23 >= 5)
        {
          v24 = 2;
        }

        else
        {
          v24 = v23;
        }

        *&v220[0] = v20;
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2456C5B08((v25 > 1), v26 + 1, 1);
          v20 = *&v220[0];
        }

        ++v19;
        *(v20 + 16) = v26 + 1;
        *(v20 + 8 * v26 + 32) = v24;
      }

      while (v18 != v19);

      goto LABEL_34;
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_34:
  v184 = v20;
  v27 = [v193 assessmentsPRD];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21170);
  v28 = sub_2456CB0D8();

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = 0;
    v190 = MEMORY[0x277D84F90];
    do
    {
      v32 = v30;
      while (1)
      {
        if (v32 >= *(v28 + 16))
        {
          goto LABEL_151;
        }

        v35 = objc_opt_self();

        v36 = sub_2456CAFA8();
        *&v220[0] = 0;
        v37 = [v35 dataWithJSONObject:v36 options:4 error:v220];

        v38 = *&v220[0];
        if (v37)
        {
          break;
        }

        v33 = v38;
        v34 = sub_2456CAE08();

        swift_willThrow();

        v31 = 0;
        if (v29 == ++v32)
        {
          goto LABEL_48;
        }
      }

      v39 = sub_2456CAED8();
      v41 = v40;

      sub_2456CAD58();
      swift_allocObject();
      sub_2456CAD48();
      sub_2456978A0();
      sub_2456CAD38();

      sub_2456A4960(v39, v41);

      v201 = v220[1];
      v205 = v220[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v190 = sub_2456A39C4(0, *(v190 + 2) + 1, 1, v190);
      }

      v43 = *(v190 + 2);
      v42 = *(v190 + 3);
      if (v43 >= v42 >> 1)
      {
        v190 = sub_2456A39C4((v42 > 1), v43 + 1, 1, v190);
      }

      v30 = v32 + 1;
      *(v190 + 2) = v43 + 1;
      v44 = &v190[32 * v43];
      *(v44 + 2) = v205;
      *(v44 + 3) = v201;
    }

    while (v29 - 1 != v32);
  }

  else
  {
    v31 = 0;
    v190 = MEMORY[0x277D84F90];
  }

LABEL_48:

  v45 = [v193 assessmentsTA];
  v46 = sub_2456CB0D8();

  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = 0;
    v189 = MEMORY[0x277D84F90];
    do
    {
      v49 = v48;
      while (1)
      {
        if (v49 >= *(v46 + 16))
        {
          goto LABEL_152;
        }

        v52 = objc_opt_self();

        v53 = sub_2456CAFA8();
        *&v220[0] = 0;
        v54 = [v52 dataWithJSONObject:v53 options:4 error:v220];

        v55 = *&v220[0];
        if (v54)
        {
          break;
        }

        v50 = v55;
        v51 = sub_2456CAE08();

        swift_willThrow();

        v31 = 0;
        if (v47 == ++v49)
        {
          goto LABEL_61;
        }
      }

      v56 = sub_2456CAED8();
      v58 = v57;

      sub_2456CAD58();
      swift_allocObject();
      sub_2456CAD48();
      sub_245697978();
      sub_2456CAD38();

      sub_2456A4960(v56, v58);

      v59 = *&v220[0];
      v60 = BYTE8(v220[0]);
      v61 = HIDWORD(v220[0]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = sub_2456A3184(0, *(v189 + 2) + 1, 1, v189);
      }

      v63 = *(v189 + 2);
      v62 = *(v189 + 3);
      if (v63 >= v62 >> 1)
      {
        v189 = sub_2456A3184((v62 > 1), v63 + 1, 1, v189);
      }

      *(v189 + 2) = v63 + 1;
      v64 = &v189[16 * v63];
      *(v64 + 4) = v59;
      v48 = v49 + 1;
      v64[40] = v60;
      *(v64 + 11) = v61;
      v31 = 0;
    }

    while (v47 - 1 != v49);
  }

  else
  {
    v189 = MEMORY[0x277D84F90];
  }

LABEL_61:

  v65 = [v193 timestampsFAC];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE211F8);
  v66 = sub_2456CB0D8();

  v67 = *(v66 + 16);
  v68 = MEMORY[0x277CC08E8];
  if (v67)
  {
    v219 = MEMORY[0x277D84F90];
    sub_2456C5AC8(0, v67, 0);
    v69 = 0;
    v70 = v219;
    v202 = v66 + 32;
    v71 = *v68;
    v198 = v66;
    while (1)
    {
      if (v69 >= *(v66 + 16))
      {
        goto LABEL_156;
      }

      v206 = v70;
      v208 = v31;
      v72 = *(v202 + 8 * v69);
      v73 = *(v72 + 16);

      if (!v73)
      {
        v212 = MEMORY[0x277D84F90];
        goto LABEL_81;
      }

      v74 = 0;
      v212 = MEMORY[0x277D84F90];
      do
      {
        v75 = v74;
        while (1)
        {
          if (v75 >= *(v72 + 16))
          {
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
          }

          v76 = *(v72 + 32 + 8 * v75);

          v77 = v71;
          v216 = sub_2456CB028();
          sub_2456CB2F8();
          if (*(v76 + 16))
          {
            v78 = sub_2456C864C(v220);
            if (v79)
            {
              break;
            }
          }

          sub_2456B3054(v220);
LABEL_68:
          if (v73 == ++v75)
          {
            goto LABEL_81;
          }
        }

        sub_2456A530C(*(v76 + 56) + 32 * v78, v221);
        sub_2456B3054(v220);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_68;
        }

        v191 = [v216 longLongValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v212 = sub_2456A38C0(0, *(v212 + 2) + 1, 1, v212);
        }

        v81 = *(v212 + 2);
        v80 = *(v212 + 3);
        if (v81 >= v80 >> 1)
        {
          v212 = sub_2456A38C0((v80 > 1), v81 + 1, 1, v212);
        }

        v74 = v75 + 1;
        *(v212 + 2) = v81 + 1;
        *&v212[8 * v81 + 32] = v191;
      }

      while (v73 - 1 != v75);
LABEL_81:

      v70 = v206;
      v83 = *(v206 + 16);
      v82 = *(v206 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_2456C5AC8((v82 > 1), v83 + 1, 1);
        v70 = v206;
      }

      ++v69;
      *(v70 + 16) = v83 + 1;
      v84 = v70 + 8 * v83;
      v31 = v208;
      *(v84 + 32) = v212;
      v66 = v198;
      if (v69 == v67)
      {
        v207 = v70;

        goto LABEL_86;
      }
    }
  }

  v207 = MEMORY[0x277D84F90];
LABEL_86:
  v85 = MEMORY[0x277D84F90];
  v86 = [v193 faceprintsID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21550);
  v87 = sub_2456CB0D8();

  v88 = *(v87 + 16);
  v89 = 0x1FA982000;
  if (v88)
  {
    *&v220[0] = v85;
    sub_2456C5C78(0, v88, 0);
    v89 = 0x1FA982000;
    v90 = 0;
    v91 = *&v220[0];
    v209 = v87 + 32;
    v199 = v87;
    v203 = v88;
    while (1)
    {
      if (v90 >= *(v87 + 16))
      {
        goto LABEL_153;
      }

      v92 = *(v209 + 8 * v90);
      if (v92 >> 62)
      {
        v93 = sub_2456CB3F8();
        if (v93)
        {
LABEL_91:
          v221[0] = v85;

          sub_2456C5CE8(0, v93 & ~(v93 >> 63), 0);
          if (v93 < 0)
          {
            goto LABEL_157;
          }

          v213 = v91;
          v94 = v31;
          v95 = 0;
          v96 = v221[0];
          v89 = 0x278E83000uLL;
          do
          {
            if ((v92 & 0xC000000000000001) != 0)
            {
              v97 = MEMORY[0x245D6E880](v95, v92);
            }

            else
            {
              v97 = *(v92 + 8 * v95 + 32);
            }

            v98 = v97;
            [v97 *(v89 + 3824)];
            v100 = v99;

            v221[0] = v96;
            v102 = *(v96 + 16);
            v101 = *(v96 + 24);
            if (v102 >= v101 >> 1)
            {
              sub_2456C5CE8((v101 > 1), v102 + 1, 1);
              v89 = 0x278E83000;
              v96 = v221[0];
            }

            ++v95;
            *(v96 + 16) = v102 + 1;
            *(v96 + 4 * v102 + 32) = v100;
          }

          while (v93 != v95);

          v91 = v213;
          v85 = MEMORY[0x277D84F90];
          v87 = v199;
          goto LABEL_102;
        }
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93)
        {
          goto LABEL_91;
        }
      }

      v94 = v31;
      v96 = v85;
LABEL_102:
      *&v220[0] = v91;
      v104 = *(v91 + 16);
      v103 = *(v91 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_2456C5C78((v103 > 1), v104 + 1, 1);
        v89 = 0x1FA982000;
        v91 = *&v220[0];
      }

      ++v90;
      *(v91 + 16) = v104 + 1;
      *(v91 + 8 * v104 + 32) = v96;
      v31 = v94;
      if (v90 == v203)
      {
        v214 = v91;

        goto LABEL_107;
      }
    }
  }

  v214 = MEMORY[0x277D84F90];
LABEL_107:
  v105 = [v193 timestampsID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21160);
  v106 = sub_2456CB0D8();

  v107 = *(v106 + 16);
  if (v107)
  {
    v108 = 0;
    v109 = *MEMORY[0x277CC08E8];
    v204 = MEMORY[0x277D84F90];
    while (1)
    {
      v210 = v31;
      v110 = v108;
      while (1)
      {
        if (v110 >= *(v106 + 16))
        {
          goto LABEL_154;
        }

        v111 = *(v106 + 32 + 8 * v110);

        v112 = v109;
        v217 = sub_2456CB028();
        sub_2456CB2F8();
        if (*(v111 + 16))
        {
          v113 = sub_2456C864C(v220);
          if (v114)
          {
            break;
          }
        }

        sub_2456B3054(v220);
LABEL_111:
        ++v110;
        v89 = 0x1FA982000;
        if (v107 == v110)
        {
          goto LABEL_126;
        }
      }

      sub_2456A530C(*(v111 + 56) + 32 * v113, v221);
      sub_2456B3054(v220);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v195 = [v217 longLongValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v204 = sub_2456A38C0(0, *(v204 + 2) + 1, 1, v204);
      }

      v116 = *(v204 + 2);
      v115 = *(v204 + 3);
      if (v116 >= v115 >> 1)
      {
        v204 = sub_2456A38C0((v115 > 1), v116 + 1, 1, v204);
      }

      v108 = v110 + 1;
      *(v204 + 2) = v116 + 1;
      *&v204[8 * v116 + 32] = v195;
      v117 = v107 - 1 == v110;
      v31 = v210;
      v89 = 0x1FA982000;
      if (v117)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_111;
  }

  v204 = MEMORY[0x277D84F90];
LABEL_126:

  v118 = [v193 timestampsButtonPressed];
  v119 = sub_2456CB0D8();

  v120 = *(v119 + 16);
  if (!v120)
  {
    v200 = MEMORY[0x277D84F90];
    goto LABEL_143;
  }

  v121 = 0;
  v122 = *MEMORY[0x277CC08E8];
  v200 = MEMORY[0x277D84F90];
  do
  {
    v123 = v121;
    while (1)
    {
      if (v123 >= *(v119 + 16))
      {
        goto LABEL_155;
      }

      v124 = *(v119 + 32 + 8 * v123);

      v125 = v122;
      v218 = sub_2456CB028();
      sub_2456CB2F8();
      if (*(v124 + 16))
      {
        v126 = sub_2456C864C(v220);
        if (v127)
        {
          break;
        }
      }

      sub_2456B3054(v220);
LABEL_130:
      ++v123;
      v89 = 0x1FA982000;
      if (v120 == v123)
      {
        goto LABEL_143;
      }
    }

    sub_2456A530C(*(v124 + 56) + 32 * v126, v221);
    sub_2456B3054(v220);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_130;
    }

    v196 = [v218 longLongValue];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v200 = sub_2456A38C0(0, *(v200 + 2) + 1, 1, v200);
    }

    v129 = *(v200 + 2);
    v128 = *(v200 + 3);
    if (v129 >= v128 >> 1)
    {
      v200 = sub_2456A38C0((v128 > 1), v129 + 1, 1, v200);
    }

    v121 = v123 + 1;
    *(v200 + 2) = v129 + 1;
    *&v200[8 * v129 + 32] = v196;
    v89 = 0x1FA982000;
  }

  while (v120 - 1 != v123);
LABEL_143:

  v130 = [v193 assessmentFAC];
  [v130 (v89 + 1992)];
  v132 = v131;

  v133 = [v193 assessmentTA];
  v215 = [v133 integerValue];

  v134 = [v193 maxNccLow];
  [v134 (v89 + 1992)];
  v136 = v135;

  v137 = [v193 maxNccHigh];
  [v137 (v89 + 1992)];
  v139 = v138;

  v140 = [v193 ignoredStitches];
  v141 = [v140 integerValue];

  v142 = [v193 assessmentFakePRD];
  [v142 (v89 + 1992)];
  v144 = v143;

  v145 = [v193 assessmentLivePRD];
  [v145 (v89 + 1992)];
  v147 = v146;

  v148 = [v193 assessmentID];
  [v148 (v89 + 1992)];
  v150 = v149;

  v151 = [v193 deviceInfo];
  v211 = v141;
  if (v151)
  {
    v152 = v151;
    v153 = sub_2456CB008();
    v194 = v154;
    v197 = v153;
  }

  else
  {
    v194 = 0;
    v197 = 0;
  }

  if (v186 == 2)
  {
    v155 = 2;
  }

  else
  {
    v155 = v186 == 1;
  }

  v156 = [v193 ageLabel];
  v192 = sub_2456CB008();
  v187 = v157;

  v158 = [v193 sexLabel];
  v159 = sub_2456CB008();
  v182 = v160;
  v183 = v159;

  v161 = [v193 skintoneLabel];
  v162 = sub_2456CB008();
  v180 = v163;
  v181 = v162;

  v164 = [v193 ethnicityLabel];
  v165 = sub_2456CB008();
  v167 = v166;

  v168 = [v193 faceHairLabel];
  v169 = sub_2456CB008();
  v171 = v170;

  v172 = [v193 headgearLabel];
  v173 = sub_2456CB008();
  v175 = v174;

  v176 = [v193 glassesLabel];
  v177 = sub_2456CB008();
  v179 = v178;

  *a1 = v155;
  *(a1 + 8) = v185;
  *(a1 + 16) = v184;
  *(a1 + 24) = v190;
  *(a1 + 32) = v189;
  *(a1 + 40) = v207;
  *(a1 + 48) = v204;
  *(a1 + 56) = v200;
  *(a1 + 64) = v214;
  *(a1 + 72) = v132;
  *(a1 + 80) = v215;
  *(a1 + 88) = v144;
  *(a1 + 92) = v147;
  *(a1 + 96) = v150;
  *(a1 + 100) = v136;
  *(a1 + 104) = v139;
  *(a1 + 112) = v211;
  *(a1 + 120) = v197;
  *(a1 + 128) = v194;
  *(a1 + 136) = v192;
  *(a1 + 144) = v187;
  *(a1 + 152) = v183;
  *(a1 + 160) = v182;
  *(a1 + 168) = v181;
  *(a1 + 176) = v180;
  *(a1 + 184) = v165;
  *(a1 + 192) = v167;
  *(a1 + 200) = v169;
  *(a1 + 208) = v171;
  *(a1 + 216) = v173;
  *(a1 + 224) = v175;
  *(a1 + 232) = v177;
  *(a1 + 240) = v179;
}

uint64_t sub_2456B2000()
{
  if (*(v0 + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    return sub_2456A0F78();
  }

  return result;
}

uint64_t sub_2456B212C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    return sub_2456A14AC(result, a2, a3);
  }

  return result;
}

void sub_2456B21EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_2456CAF58();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2456B2BD4(a4);
  if (v13)
  {
    if (*(v4 + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
    {
      v20 = v13;
      sub_2456A1A9C(a1, a2, a3, v13);
      v14 = v20;
    }

    else
    {

      MEMORY[0x2821F97C8]();
    }
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v9, qword_27EE20D08);
    (*(v10 + 16))(v12, v15, v9);
    v16 = sub_2456CAF38();
    v17 = sub_2456CB1D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245686000, v16, v17, "PADInternalAuditDataRepository: Unable to create Face Pose representation from input dictionary.", v18, 2u);
      MEMORY[0x245D6F740](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_2456B24BC(void *a1)
{
  v3 = sub_2456CAF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2456B2780(a1, &v20);
  v7 = v21;
  if (v21 == 2)
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, qword_27EE20D08);
    (*(v4 + 16))(v6, v8, v3);
    v9 = sub_2456CAF38();
    v10 = sub_2456CB1D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245686000, v9, v10, "PADInternalAuditDataRepository: Unable to create TA assessment from input dictionary.", v11, 2u);
      MEMORY[0x245D6F740](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder);
    if (v12)
    {
      v13 = v20;
      v14 = HIDWORD(v21);
      v15 = *(v12 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 24) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_2456A3184(0, *(v15 + 2) + 1, 1, v15);
        *(v12 + 24) = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_2456A3184((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      v19 = &v15[16 * v18];
      *(v19 + 4) = v13;
      v19[40] = v7 & 1;
      *(v19 + 11) = v14;
      *(v12 + 24) = v15;
    }
  }
}

void sub_2456B2780(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2456CAFD8();
  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_20;
  }

  sub_24569B080();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v11 = 0;
    v15 = 2;
    goto LABEL_22;
  }

  v6 = sub_2456CAFD8();
  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v8 = sub_2456CAFD8();
  v9 = [a1 objectForKey_];

  if (v9)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {

LABEL_19:
LABEL_20:
    sub_2456B2FEC(&v19);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  [v16 doubleValue];
  v11 = v10;
  v12 = [v16 BOOLValue];
  [v16 floatValue];
  v14 = v13;

  v15 = v12 | (v14 << 32);
LABEL_22:
  *a2 = v11;
  a2[1] = v15;
}

id PADInternalAuditDataRepository.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PADInternalAuditDataRepository.init()()
{
  v1 = OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder;
  if (qword_27EE20D28 != -1)
  {
    swift_once();
  }

  *&v0[v1] = qword_27EE210E0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PADInternalAuditDataRepository();

  return objc_msgSendSuper2(&v3, sel_init);
}

id PADInternalAuditDataRepository.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PADInternalAuditDataRepository();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2456B2BD4(void *a1)
{
  v2 = sub_2456CAFD8();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_20;
  }

  sub_24569B080();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v22;
  v5 = sub_2456CAFD8();
  v6 = [a1 objectForKey_];

  if (v6)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
LABEL_19:

LABEL_20:
    sub_2456B2FEC(&v25);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v7 = v22;
  v8 = sub_2456CAFD8();
  v9 = [a1 objectForKey_];

  if (v9)
  {
    sub_2456CB2A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {

    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v10 = v22;
    [v22 floatValue];
    v12 = v11;
    [v22 floatValue];
    v14 = v13;
    [v22 floatValue];
    v16 = v15;
    v17 = type metadata accessor for PADSWPose();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch] = v12;
    *&v18[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw] = v14;
    *&v18[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll] = v16;
    v21.receiver = v18;
    v21.super_class = v17;
    v19 = objc_msgSendSuper2(&v21, sel_init);

    return v19;
  }

  return 0;
}

uint64_t sub_2456B2FEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2456B30A8(uint64_t a1, int a2)
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

uint64_t sub_2456B30F0(uint64_t result, int a2, int a3)
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

uint64_t sub_2456B313C()
{
  sub_2456CB238();
  sub_2456CB248();
  return sub_2456CB518();
}

uint64_t sub_2456B31D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v5 = MEMORY[0x277D84F90];
  *(v2 + 48) = MEMORY[0x277D84F90];
  *(v2 + 72) = dispatch_semaphore_create(1);
  *(v2 + 80) = v5;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_2456B323C(uint64_t a1)
{
  v13 = a1;
  v12 = sub_2456CB1F8();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2456CB1E8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2456CAF88();
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 48) = MEMORY[0x277D84F90];
  v8 = dispatch_semaphore_create(1);
  *(v1 + 64) = 0;
  *(v1 + 72) = v8;
  *(v1 + 80) = v7;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  v9 = sub_2456AB00C(0, &qword_27EE21218);
  v11[1] = "ompletionHandler";
  v11[2] = v9;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  sub_2456CAF78();
  v14 = v7;
  sub_2456B5BD4(&qword_27EE215F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE212E0);
  sub_2456B5C1C(&qword_27EE21600, &qword_27EE212E0);
  sub_2456CB2B8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v1 + 56) = sub_2456CB228();
  *(v1 + 120) = v13;
  return v1;
}

void sub_2456B34D0(void *a1)
{
  v2 = v1;
  v4 = sub_2456CAF68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2456CAF88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  sub_2456CB238();
  sub_2456CB248();

  if (v12 <= 0)
  {
    v21 = *(v2 + 56);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    v20 = v14;
    aBlock[4] = sub_2456B5BCC;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2456A7CA8;
    aBlock[3] = &block_descriptor_49;
    v16 = _Block_copy(aBlock);

    v17 = a1;
    sub_2456CAF78();
    v22 = MEMORY[0x277D84F90];
    sub_2456B5BD4(&qword_27EE21220, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21228);
    v19 = v8;
    sub_2456B5C1C(&qword_27EE21230, &qword_27EE21228);
    sub_2456CB2B8();
    MEMORY[0x245D6E740](0, v11, v7, v16);
    _Block_release(v16);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v19);
  }
}

uint64_t sub_2456B3804(uint64_t a1, char *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    sub_2456CB238();
    sub_2456CB248();

    if (v5 <= 0 && ((*(*v4 + 384))(a2) & 1) != 0)
    {
      sub_2456B38DC(a2);
    }
  }

  return result;
}

void sub_2456B38DC(char *a1)
{
  v2 = v1;
  v74[8] = *MEMORY[0x277D85DE8];
  v65 = sub_2456CAF58();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[96] = 1;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(*v1 + 400);

  v7 = v6(a1, sub_2456B5A60, v5);

  *(v2 + 10) = v7;

  v8 = *(*(v2 + 10) + 16);
  swift_beginAccess();
  sub_2456CB238();
  *(v2 + 8) = v8;
  sub_2456CB248();
  swift_endAccess();
  v66 = a1;
  v67 = *&a1[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time];
  v9 = *&a1[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 16];
  v10 = MEMORY[0x277D84F90];
  v11 = sub_2456C9C78(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v2 + 1) = v67;
  *(v2 + 4) = v9;
  *(v2 + 5) = v11;

  v70 = v10;
  *&v67 = v2;
  v12 = *(v2 + 10);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    v62[1] = *(v2 + 10);

    v15 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    do
    {
      sub_24569B370(v14, v74);
      sub_24569B370(v74, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214E0);
      sub_2456AB00C(0, &unk_27EE21510);
      if (swift_dynamicCast())
      {
        v17 = v68;
        MEMORY[0x245D6E5E0]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2456CB0F8();
        }

        sub_2456CB118();

        __swift_destroy_boxed_opaque_existential_0(v74);
        v16 = v70;
      }

      else
      {
        sub_24569B370(v74, v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_2456A3AC8(0, v15[2] + 1, 1, v15);
          v69 = v15;
        }

        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          v15 = sub_2456A3AC8((v19 > 1), v20 + 1, 1, v15);
          v69 = v15;
        }

        __swift_destroy_boxed_opaque_existential_0(v74);
        v22 = v72;
        v21 = v73;
        v23 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
        MEMORY[0x28223BE20](v23);
        v25 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v25);
        sub_2456B58B4(v20, v25, &v69, v22, v21);
        __swift_destroy_boxed_opaque_existential_0(v71);
      }

      v14 += 40;
      --v13;
    }

    while (v13);

    v10 = v16;
  }

  else
  {
    v15 = v10;
  }

  v27 = v66;
  v28 = v67;
  sub_2456B45B8(v15, v66);

  v29 = *&v27[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation];
  v30 = *&v27[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer];
  sub_2456C9D7C(MEMORY[0x277D84F90]);
  v31 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  type metadata accessor for VNImageOption(0);
  sub_2456B5BD4(&qword_27EE20EB8, type metadata accessor for VNImageOption);
  v32 = sub_2456CAFA8();

  v33 = [v31 initWithCVPixelBuffer:v30 orientation:v29 options:v32];

  sub_2456AB00C(0, &unk_27EE21510);
  v34 = sub_2456CB0C8();
  v74[0] = 0;
  LODWORD(v29) = [v33 performRequests:v34 error:v74];

  v35 = v10;
  if (v29)
  {
    v36 = v74[0];
  }

  else
  {
    v37 = v74[0];
    v38 = sub_2456CAE08();

    swift_willThrow();
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v39 = v65;
    v40 = __swift_project_value_buffer(v65, qword_27EE20D08);
    v41 = v63;
    v42 = v64;
    (*(v63 + 16))(v64, v40, v39);
    v43 = v38;
    v44 = sub_2456CAF38();
    v45 = sub_2456CB1D8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v66 = v35;
      v48 = v47;
      v74[0] = v47;
      *v46 = 136315138;
      swift_getErrorValue();
      v49 = sub_2456CB578();
      v51 = sub_2456A3F34(v49, v50, v74);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_245686000, v44, v45, "Error dispatching Vision requests: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v52 = v48;
      v35 = v66;
      MEMORY[0x245D6F740](v52, -1, -1);
      MEMORY[0x245D6F740](v46, -1, -1);

      (*(v41 + 8))(v64, v65);
    }

    else
    {

      (*(v41 + 8))(v42, v39);
    }

    if (v35 >> 62)
    {
      v53 = sub_2456CB3F8();
    }

    else
    {
      v53 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    sub_2456CB238();
    v54 = *(v28 + 64);
    v55 = __OFSUB__(v54, v53);
    v56 = v54 - v53;
    if (v55)
    {
      __break(1u);
    }

    *(v28 + 64) = v56;
    sub_2456CB248();
    swift_endAccess();
    v57 = *(v28 + 88);
    *(v28 + 88) = v38;
    v58 = v38;

    v59 = *(v28 + 64);
    v60 = *(v28 + 72);
    sub_2456CB238();
    sub_2456CB248();

    if (v59 <= 0)
    {
      (*(*v28 + 440))(v38);

      v61 = *(v28 + 88);
      *(v28 + 88) = 0;
    }

    else
    {

      v61 = v38;
    }
  }
}

uint64_t sub_2456B41C0(uint64_t a1, void *a2)
{
  v4 = sub_2456CAF68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2456CAF88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 56);
    v20 = v5;
    v21 = v8;
    v19 = v13;

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_24569B370(a1, v24);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_2456B5B1C(v24, v15 + 24);
    *(v15 + 64) = a2;
    aBlock[4] = sub_2456B5B7C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2456A7CA8;
    aBlock[3] = &block_descriptor_42;
    v16 = _Block_copy(aBlock);

    v17 = a2;
    sub_2456CAF78();
    v22 = MEMORY[0x277D84F90];
    sub_2456B5BD4(&qword_27EE21220, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21228);
    sub_2456B5C1C(&qword_27EE21230, &qword_27EE21228);
    sub_2456CB2B8();
    v18 = v19;
    MEMORY[0x245D6E740](0, v11, v7, v16);
    _Block_release(v16);

    (*(v20 + 8))(v7, v4);
    (*(v9 + 8))(v11, v21);
  }

  return result;
}

uint64_t sub_2456B4544(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2456B4A1C(a2, a3);
  }

  return result;
}

uint64_t sub_2456B45B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2456CAF68();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2456CAF88();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 56);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  aBlock[4] = sub_2456B5A54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456A7CA8;
  aBlock[3] = &block_descriptor_34;
  v14 = _Block_copy(aBlock);

  v15 = a2;

  sub_2456CAF78();
  v20 = MEMORY[0x277D84F90];
  sub_2456B5BD4(&qword_27EE21220, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21228);
  sub_2456B5C1C(&qword_27EE21230, &qword_27EE21228);
  sub_2456CB2B8();
  MEMORY[0x245D6E740](0, v11, v8, v14);
  _Block_release(v14);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_2456B48C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 32;
    swift_beginAccess();
    swift_beginAccess();
    do
    {
      sub_24569B370(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 16))(a2, v5, v6);
      if (swift_weakLoadStrong())
      {
        sub_2456B4A1C(v7, 0);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_2456B4A1C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2456CAF58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  swift_beginAccess();
  sub_2456CB238();
  v13 = v2[8];
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_4;
  }

  v2[8] = v15;
  sub_2456CB248();
  swift_endAccess();
  if (!a2)
  {
    goto LABEL_8;
  }

  v79 = v10;
  v16 = a2;
  if (qword_27EE20D00 != -1)
  {
    goto LABEL_39;
  }

LABEL_4:
  v17 = __swift_project_value_buffer(v6, qword_27EE20D08);
  (*(v7 + 16))(v12, v17, v6);
  sub_24569B370(a1, v82);
  v18 = a2;
  v19 = sub_2456CAF38();
  v20 = sub_2456CB1D8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v78 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v83[0] = v23;
    *v22 = 136315394;
    sub_24569B370(v82, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214E0);
    v24 = sub_2456CB038();
    v77 = v7;
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_0(v82);
    v27 = sub_2456A3F34(v24, v26, v83);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    swift_getErrorValue();
    v28 = sub_2456CB578();
    v30 = sub_2456A3F34(v28, v29, v83);

    *(v22 + 14) = v30;
    v7 = v77;
    _os_log_impl(&dword_245686000, v19, v20, "Request %s failed with error: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D6F740](v23, -1, -1);
    v31 = v22;
    a1 = v78;
    MEMORY[0x245D6F740](v31, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  (*(v7 + 8))(v12, v6);
  v32 = v3[11];
  v3[11] = a2;

  v10 = v79;
LABEL_8:
  v33 = v3[11];
  if (v33)
  {
    v35 = v3[8];
    v34 = v3[9];
    v36 = v33;
    v37 = v34;
    sub_2456CB238();
    sub_2456CB248();

    if (v35 <= 0)
    {
      (*(*v3 + 440))(v33);

      v38 = v3[11];
      v3[11] = 0;
    }

    else
    {
      v38 = v33;
    }
  }

  else
  {
    swift_beginAccess();
    if (v3[5])
    {
      v39 = (*(*v3 + 416))(a1);
      v40 = v39;
      if (!v39 || !*(v39 + 16))
      {
        if (qword_27EE20D00 != -1)
        {
          swift_once();
        }

        v41 = __swift_project_value_buffer(v6, qword_27EE20D08);
        (*(v7 + 16))(v10, v41, v6);
        sub_24569B370(a1, v82);
        v42 = sub_2456CAF38();
        v43 = sub_2456CB1D8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v81 = v78;
          *v44 = 136315138;
          sub_24569B370(v82, v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214E0);
          v45 = sub_2456CB038();
          v79 = v10;
          v46 = v7;
          v47 = v45;
          v48 = a1;
          v50 = v49;
          __swift_destroy_boxed_opaque_existential_0(v82);
          v51 = sub_2456A3F34(v47, v50, &v81);
          a1 = v48;

          *(v44 + 4) = v51;
          _os_log_impl(&dword_245686000, v42, v43, "Request %s did not obtain any observations.", v44, 0xCu);
          v52 = v78;
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x245D6F740](v52, -1, -1);
          MEMORY[0x245D6F740](v44, -1, -1);

          (*(v46 + 8))(v79, v6);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v82);
          (*(v7 + 8))(v10, v6);
        }
      }

      v54 = sub_2456B3188();
      if (*(v53 + 24))
      {
        v55 = v53;
        if (v40)
        {
          v56 = v40;
        }

        else
        {
          v56 = MEMORY[0x277D84F90];
        }

        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        DynamicType = swift_getDynamicType();
        v58 = a1[4];
        v80[0] = DynamicType;
        v80[1] = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE212D8);
        v59 = sub_2456CB038();
        v61 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80[0] = *(v55 + 24);
        *(v55 + 24) = 0x8000000000000000;
        sub_2456C9084(v56, v59, v61, isUniquelyReferenced_nonNull_native);

        *(v55 + 24) = v80[0];
      }

      else
      {
      }

      (v54)(v82, 0);
      v63 = v3[5];
      if (v63 && *(v63 + 16) == *(v3[10] + 16))
      {
        v65 = v3[2];
        v64 = v3[3];
        v66 = v3[4];
        swift_beginAccess();
        v67 = v3[6];
        swift_bridgeObjectRetain_n();
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v3[6] = v67;
        if ((v68 & 1) == 0)
        {
          v67 = sub_2456A3E28(0, *(v67 + 2) + 1, 1, v67);
          v3[6] = v67;
        }

        v70 = *(v67 + 2);
        v69 = *(v67 + 3);
        if (v70 >= v69 >> 1)
        {
          v67 = sub_2456A3E28((v69 > 1), v70 + 1, 1, v67);
        }

        *(v67 + 2) = v70 + 1;
        v71 = &v67[32 * v70];
        *(v71 + 4) = v65;
        *(v71 + 5) = v64;
        *(v71 + 6) = v66;
        *(v71 + 7) = v63;
        v3[6] = v67;
        swift_endAccess();
        (*(*v3 + 424))(v65, v64, v66, v63);

        *(v3 + 1) = 0u;
        *(v3 + 2) = 0u;

        v73 = *(v3[6] + 16);
        if (v73 >= (*(*v3 + 392))(v72))
        {
          v74 = *(*v3 + 432);

          v74(v75);

          v76 = v3[6];
          if (*(v76 + 16))
          {
            swift_beginAccess();
            if (*(v76 + 16))
            {
              sub_2456B594C(0, 1);
              swift_endAccess();
            }

            else
            {
              __break(1u);
            }
          }
        }
      }
    }
  }
}