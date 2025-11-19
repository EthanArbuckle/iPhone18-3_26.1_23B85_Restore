uint64_t sub_24AD52508(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24AD525FC;

  return v6(v2 + 32);
}

uint64_t sub_24AD525FC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24AD52710@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62D0, &qword_24AD612F0);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62D8, &qword_24AD612F8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v18 = (&v44 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v44 = v6;
  v48 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = *(*(v19 + 48) + 8 * v29);
    sub_24AD38B48(*(v19 + 56) + *(v8 + 72) * v29, v11, &qword_27EFA5F30, &qword_24AD5FDF8);
    v31 = v47;
    v32 = *(v47 + 48);
    *v18 = v30;
    v33 = v11;
    v34 = v31;
    sub_24AD599EC(v33, v18 + v32, &qword_27EFA5F30, &qword_24AD5FDF8);
    v35 = v46;
    (*(v46 + 56))(v18, 0, 1, v34);
    v36 = v30;
    v27 = v24;
    a1 = v45;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v37 = v49;
    v1[2] = v48;
    v1[3] = v27;
    v1[4] = v28;
    v38 = v1[5];
    v39 = v1[6];
    sub_24AD599EC(v18, v37, &qword_27EFA62D8, &qword_24AD612F8);
    v40 = 1;
    if ((*(v35 + 48))(v37, 1, v34) != 1)
    {
      v41 = v37;
      v42 = v44;
      sub_24AD599EC(v41, v44, &qword_27EFA62D0, &qword_24AD612F0);
      v38(v42);
      sub_24AD06518(v42, &qword_27EFA62D0, &qword_24AD612F0);
      v40 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C8, &qword_24AD612E8);
    return (*(*(v43 - 8) + 56))(a1, v40, 1, v43);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v35 = v46;
        v34 = v47;
        (*(v46 + 56))(&v44 - v17, 1, 1, v47);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AD52AFC()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  __swift_project_value_buffer(v1, qword_2810654A0);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_24ACF2000, v2, v3, "APNS connected: %{BOOL}d", v5, 8u);
    MEMORY[0x24C22F400](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AD52C20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD0C594;

  return sub_24AD3C2C4(a1);
}

uint64_t sub_24AD52CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD0C594;

  return sub_24AD3DCC0(a1, v4, v5, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AD52E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62A8, &qword_24AD61290);
    v3 = sub_24AD5EF14();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AD38B48(v4, &v13, &qword_27EFA62B0, &qword_24AD61298);
      v5 = v13;
      v6 = v14;
      result = sub_24AD51C24(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24ACF4008(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_24AD52F48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 153) = a3;
  *(v4 + 56) = a1;
  v6 = sub_24AD5E624();
  *(v4 + 80) = v6;
  v7 = *(v6 - 8);
  *(v4 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD53014, a1, 0);
}

uint64_t sub_24AD53014()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 48) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError);
    sub_24AD5E314();
    v11 = *(v0 + 40);
    swift_willThrow();
    *(v0 + 104) = v11;
    *(v0 + 24) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 32);
      *(v0 + 112) = v13;
      v14 = swift_task_alloc();
      *(v0 + 120) = v14;
      *v14 = v0;
      v14[1] = sub_24AD53558;
      v15 = *(v0 + 56);

      return sub_24AD4A77C(v13);
    }

    else
    {
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 104);
      __swift_project_value_buffer(v7, qword_2810654A0);
      v22 = v21;
      v23 = sub_24AD5E784();
      v24 = sub_24AD5EB44();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 104);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        v28 = v25;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_24ACF2000, v23, v24, "CloudKit error: %{public}@", v26, 0xCu);
        sub_24AD06518(v27, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v27, -1, -1);
        MEMORY[0x24C22F400](v26, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
      *(v0 + 152) = 4;
      *(v0 + 128) = sub_24AD5E604();
      sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
      v31 = sub_24AD5E924();

      return MEMORY[0x2822009F8](sub_24AD5387C, v31, v30);
    }
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *v17 = v0;
    v17[1] = sub_24AD539A8;
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    v20 = *(v0 + 153);

    return sub_24AD45048(v0 + 16, v18, v20, v19);
  }
}

uint64_t sub_24AD53558()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD53668, v2, 0);
}

uint64_t sub_24AD53668()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 152) = 4;
  *(v0 + 128) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD5387C, v12, v11);
}

uint64_t sub_24AD5387C()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD538FC, v4, 0);
}

uint64_t sub_24AD538FC()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_24AD5E634();
  (*(v5 + 8))(v2, v4);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[13];

  return v6();
}

uint64_t sub_24AD539A8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24AD53B40;
  }

  else
  {
    v6 = sub_24AD53AD4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD53AD4()
{
  v1 = v0[12];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_24AD53B40()
{
  v1 = *(v0 + 144);
  *(v0 + 24) = v1;
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 32);
    *(v0 + 112) = v3;
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_24AD53558;
    v5 = *(v0 + 56);

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 104);
    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_2810654A0);
    v9 = v7;
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 104);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v10, v11, "CloudKit error: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 152) = 4;
    *(v0 + 128) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v18 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD5387C, v18, v17);
  }
}

uint64_t sub_24AD53E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 169) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  v8 = sub_24AD5E624();
  *(v6 + 88) = v8;
  v9 = *(v8 - 8);
  *(v6 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD53EE8, a1, 0);
}

uint64_t sub_24AD53EE8()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 112) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 120) = v13;
      v14 = swift_task_alloc();
      *(v0 + 128) = v14;
      *v14 = v0;
      v14[1] = sub_24AD543C8;
      v15 = *(v0 + 48);

      return sub_24AD4A77C(v13);
    }

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 112);
    __swift_project_value_buffer(v7, qword_2810654A0);
    v21 = v20;
    v22 = sub_24AD5E784();
    v23 = sub_24AD5EB44();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 112);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_24ACF2000, v22, v23, "CloudKit error: %{public}@", v25, 0xCu);
      sub_24AD06518(v26, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v26, -1, -1);
      MEMORY[0x24C22F400](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 168) = 4;
    *(v0 + 136) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v29 = sub_24AD5E924();
    v31 = v30;
    v17 = sub_24AD546EC;
    v18 = v29;
    v19 = v31;
  }

  else
  {
    v17 = sub_24AD54818;
    v18 = 0;
    v19 = 0;
  }

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24AD543C8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD544D8, v2, 0);
}

uint64_t sub_24AD544D8()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 168) = 4;
  *(v0 + 136) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD546EC, v12, v11);
}

uint64_t sub_24AD546EC()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[6];
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD5476C, v4, 0);
}

uint64_t sub_24AD5476C()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  sub_24AD5E634();
  (*(v5 + 8))(v2, v4);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[14];

  return v6();
}

uint64_t sub_24AD54818()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v4 = (v1 + 48);
    do
    {
      v5 = *v4;
      v4 += 3;
      v6 = v5;
      sub_24AD5ED74();
      v7 = *(v15 + 16);
      sub_24AD5EDA4();
      sub_24AD5EDB4();
      sub_24AD5ED84();
      --v2;
    }

    while (v2);
    v3 = v15;
  }

  *(v0 + 144) = v3;
  v8 = *(MEMORY[0x277CBBE38] + 4);
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_24AD54944;
  v10 = *(v0 + 169);
  v11 = *(v0 + 80);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  return MEMORY[0x28210DE78](v12, v3, v11, v10);
}

uint64_t sub_24AD54944(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 152);
  v7 = *v3;
  v7[20] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_24AD54AAC, 0, 0);
  }

  else
  {
    v8 = v7[18];
    v9 = v7[13];

    v10 = v7[1];

    return v10(a1, a2);
  }
}

uint64_t sub_24AD54AAC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD54B18, v2, 0);
}

uint64_t sub_24AD54B18()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = v1;
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 120) = v3;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_24AD543C8;
    v5 = *(v0 + 48);

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 112);
    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_2810654A0);
    v9 = v7;
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 112);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v10, v11, "CloudKit error: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 168) = 4;
    *(v0 + 136) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v18 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD546EC, v18, v17);
  }
}

uint64_t sub_24AD54DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 153) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v6 = sub_24AD5E624();
  *(v4 + 72) = v6;
  v7 = *(v6 - 8);
  *(v4 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD54EBC, a1, 0);
}

uint64_t sub_24AD54EBC()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 96) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 104) = v13;
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_24AD5539C;
      v15 = *(v0 + 48);

      return sub_24AD4A77C(v13);
    }

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 96);
    __swift_project_value_buffer(v7, qword_2810654A0);
    v21 = v20;
    v22 = sub_24AD5E784();
    v23 = sub_24AD5EB44();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 96);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_24ACF2000, v22, v23, "CloudKit error: %{public}@", v25, 0xCu);
      sub_24AD06518(v26, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v26, -1, -1);
      MEMORY[0x24C22F400](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 152) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v29 = sub_24AD5E924();
    v31 = v30;
    v17 = sub_24AD556C0;
    v18 = v29;
    v19 = v31;
  }

  else
  {
    v17 = sub_24AD557EC;
    v18 = 0;
    v19 = 0;
  }

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24AD5539C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD554AC, v2, 0);
}

uint64_t sub_24AD554AC()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 152) = 4;
  *(v0 + 120) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD556C0, v12, v11);
}

uint64_t sub_24AD556C0()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[6];
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD55740, v4, 0);
}

uint64_t sub_24AD55740()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  sub_24AD5E634();
  (*(v5 + 8))(v2, v4);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_24AD557EC()
{
  v1 = [*(*(v0 + 56) + 112) *off_278FFD950[*(v0 + 153)]];
  *(v0 + 128) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_24AD558B4;
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_24AD42DA0(v3, v1);
}

uint64_t sub_24AD558B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 136);
  v9 = *v4;
  *(v9 + 144) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_24AD55A30, 0, 0);
  }

  else
  {
    v10 = *(v9 + 88);

    v11 = *(v9 + 8);

    return v11(a1, a2, a3);
  }
}

uint64_t sub_24AD55A30()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD55A9C, v1, 0);
}

uint64_t sub_24AD55A9C()
{
  v1 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_24AD5539C;
    v5 = *(v0 + 48);

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_2810654A0);
    v9 = v7;
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 96);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v10, v11, "CloudKit error: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 152) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v18 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD556C0, v18, v17);
  }
}

uint64_t sub_24AD55D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 161) = a5;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v7 = sub_24AD5E624();
  *(v5 + 80) = v7;
  v8 = *(v7 - 8);
  *(v5 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD55E40, a1, 0);
}

uint64_t sub_24AD55E40()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 104) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 112) = v13;
      v14 = swift_task_alloc();
      *(v0 + 120) = v14;
      *v14 = v0;
      v14[1] = sub_24AD56320;
      v15 = *(v0 + 48);

      return sub_24AD4A77C(v13);
    }

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 104);
    __swift_project_value_buffer(v7, qword_2810654A0);
    v21 = v20;
    v22 = sub_24AD5E784();
    v23 = sub_24AD5EB44();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 104);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_24ACF2000, v22, v23, "CloudKit error: %{public}@", v25, 0xCu);
      sub_24AD06518(v26, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v26, -1, -1);
      MEMORY[0x24C22F400](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 160) = 4;
    *(v0 + 128) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v29 = sub_24AD5E924();
    v31 = v30;
    v17 = sub_24AD56644;
    v18 = v29;
    v19 = v31;
  }

  else
  {
    v17 = sub_24AD566C4;
    v18 = 0;
    v19 = 0;
  }

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24AD56320()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD56430, v2, 0);
}

uint64_t sub_24AD56430()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 160) = 4;
  *(v0 + 128) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD56644, v12, v11);
}

uint64_t sub_24AD56644()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[6];
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD538FC, v4, 0);
}

uint64_t sub_24AD566C4()
{
  v1 = [*(*(v0 + 56) + 112) *off_278FFD950[*(v0 + 161)]];
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_24AD56790;
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);

  return sub_24AD44554(v4, v3, v1);
}

uint64_t sub_24AD56790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 144);
  v9 = *v4;
  *(v9 + 152) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_24AD5690C, 0, 0);
  }

  else
  {
    v10 = *(v9 + 96);

    v11 = *(v9 + 8);

    return v11(a1, a2, a3);
  }
}

uint64_t sub_24AD5690C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD56978, v1, 0);
}

uint64_t sub_24AD56978()
{
  v1 = *(v0 + 152);
  *(v0 + 16) = v1;
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 112) = v3;
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_24AD56320;
    v5 = *(v0 + 48);

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 104);
    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_2810654A0);
    v9 = v7;
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 104);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v10, v11, "CloudKit error: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 160) = 4;
    *(v0 + 128) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v18 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD56644, v18, v17);
  }
}

unint64_t sub_24AD56C50()
{
  result = qword_27EFA6258;
  if (!qword_27EFA6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6258);
  }

  return result;
}

void sub_24AD56CA4(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_24AD56CB4()
{
  result = qword_27EFA6280;
  if (!qword_27EFA6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6280);
  }

  return result;
}

unint64_t sub_24AD56D0C()
{
  result = qword_27EFA6288;
  if (!qword_27EFA6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6288);
  }

  return result;
}

unint64_t sub_24AD56D64()
{
  result = qword_27EFA6290;
  if (!qword_27EFA6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6290);
  }

  return result;
}

unint64_t sub_24AD56DBC()
{
  result = qword_27EFA6298;
  if (!qword_27EFA6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6298);
  }

  return result;
}

unint64_t sub_24AD56E14()
{
  result = qword_281065390;
  if (!qword_281065390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281065390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityLossResolutionMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityLossResolutionMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of CloudKitCoordinator.__allocating_init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = (*(v6 + 288) + **(v6 + 288));
  v14 = *(*(v6 + 288) + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24AD5AC9C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CloudKitCoordinator.connectionStateStream()(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD0C594;

  return v8(a1);
}

uint64_t dispatch thunk of CloudKitCoordinator.fetch(databaseChangeToken:database:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 336);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD5AC78;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.fetchZoneChanges(database:zone:zoneChangeToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 344);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD575EC;

  return v12(a1, a2, a3);
}

uint64_t sub_24AD575EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.create(zoneName:database:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 352);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD35664;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.delete(zoneIdentifier:database:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 360);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.modifyRecordZones(database:saving:deleting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 368);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD5ACA8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.modify(record:database:savePolicy:atomically:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 376);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24AD38C10;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudKitCoordinator.delete(recordIdentifier:database:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 384);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.modifyRecords(saving:deleting:savePolicy:atomically:database:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 392);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_24AD57E80;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_24AD57E80(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.modifySubscriptions(saving:deleting:database:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 400);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD5ACA8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.apply(changeSet:database:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 408);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD5ACA8;

  return v10(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AD58224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24AD58274(uint64_t result, int a2, int a3)
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
      *result = 4 * -a2;
      *(result + 8) = 0;
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AD582FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24AD58344(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24AD583A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24AD58434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AD584F4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD5AC9C;

  return sub_24AD4E34C(v2);
}

uint64_t sub_24AD58588(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AD0C360;

  return sub_24AD4FC78(a1, a2, v6, v7, v8, v9, v11);
}

uint64_t sub_24AD58664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = sub_24AD5E624();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5872C, a1, 0);
}

uint64_t sub_24AD5872C()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 96) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 104) = v13;
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_24AD58C74;
      v15 = *(v0 + 48);

      return sub_24AD4A77C(v13);
    }

    else
    {
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 96);
      __swift_project_value_buffer(v7, qword_2810654A0);
      v22 = v21;
      v23 = sub_24AD5E784();
      v24 = sub_24AD5EB44();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 96);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        v28 = v25;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_24ACF2000, v23, v24, "CloudKit error: %{public}@", v26, 0xCu);
        sub_24AD06518(v27, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v27, -1, -1);
        MEMORY[0x24C22F400](v26, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
      *(v0 + 144) = 4;
      *(v0 + 120) = sub_24AD5E604();
      sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
      v31 = sub_24AD5E924();

      return MEMORY[0x2822009F8](sub_24AD58F98, v31, v30);
    }
  }

  else
  {
    v17 = *(MEMORY[0x277CBBE70] + 4);
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    v18[1] = sub_24AD590C8;
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);

    return MEMORY[0x28210DEC8](v19, 0, 1);
  }
}

uint64_t sub_24AD58C74()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD58D84, v2, 0);
}

uint64_t sub_24AD58D84()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 144) = 4;
  *(v0 + 120) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD58F98, v12, v11);
}

uint64_t sub_24AD58F98()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[6];
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD59018, v4, 0);
}

uint64_t sub_24AD59018()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  sub_24AD5E634();
  (*(v5 + 8))(v2, v4);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_24AD590C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  v11 = *(*v5 + 128);
  v12 = *v5;
  *(*v5 + 136) = v4;

  if (v4)
  {
    v13 = *(v10 + 48);

    return MEMORY[0x2822009F8](sub_24AD59250, v13, 0);
  }

  else
  {
    v14 = *(v10 + 88);

    v15 = *(v12 + 8);

    return v15(a1, a2, a3, a4 & 1);
  }
}

uint64_t sub_24AD59250()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_24AD58C74;
    v5 = *(v0 + 48);

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_2810654A0);
    v9 = v7;
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 96);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v10, v11, "CloudKit error: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 144) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v18 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD58F98, v18, v17);
  }
}

uint64_t sub_24AD59528(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C0, &qword_24AD612E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (v41 - v17);
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v41[1] = a1;
  v41[2] = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v41[3] = v20;
  v41[4] = 0;
  v41[5] = v23 & v21;
  v41[6] = a2;
  v41[7] = a3;

  v41[0] = a3;

  while (1)
  {
    sub_24AD52710(v18);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C8, &qword_24AD612E8);
    if ((*(*(v24 - 8) + 48))(v18, 1, v24) == 1)
    {
      sub_24ACF40D8();
    }

    v25 = *v18;
    sub_24AD599EC(v18 + *(v24 + 48), v14, &qword_27EFA5F30, &qword_24AD5FDF8);
    v26 = *a5;
    v28 = sub_24AD09620(v25);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24AD05784();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_24AD5997C(v14, v36[7] + *(v11 + 72) * v28);
      a4 = 1;
    }

    else
    {
      sub_24AD04804(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_24AD09620(v25);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + 8 * v28) = v25;
      sub_24AD599EC(v14, v36[7] + *(v11 + 72) * v28, &qword_27EFA5F30, &qword_24AD5FDF8);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  result = sub_24AD5EFC4();
  __break(1u);
  return result;
}

uint64_t sub_24AD5986C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AD5AC9C;

  return sub_24AD51020(v2, v3, v4, v5, v6);
}

unint64_t sub_24AD59928()
{
  result = qword_281064A40;
  if (!qword_281064A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A40);
  }

  return result;
}

uint64_t sub_24AD5997C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD599EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AD59A54(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AD0C594;

  return sub_24AD4E61C(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_24AD59B2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AD5AC9C;

  return sub_24AD4F85C(v2, v3, v5, v4);
}

uint64_t sub_24AD59BD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD0C594;

  return sub_24AD3FFD0(a1, v4, v5, v7);
}

uint64_t sub_24AD59CA0(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350) - 8) + 80);

  return sub_24AD4E1EC(a1, a2);
}

uint64_t sub_24AD59D2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD0C594;

  return sub_24AD3EB0C(a1, v4, v5, v7);
}

uint64_t sub_24AD59DEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD0C594;

  return sub_24AD51B2C(a1, v5);
}

uint64_t objectdestroy_4Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24AD59EF0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AD0C594;

  return sub_24AD4BF40(a1, v7, v4, v5, v6);
}

uint64_t sub_24AD59FB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD0C594;

  return sub_24AD52508(a1, v5);
}

uint64_t sub_24AD5A06C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AD0C594;

  return sub_24AD4C72C(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_24AD5A140()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD0BDA0;

  return sub_24AD4DCA0(v2);
}

uint64_t sub_24AD5A1D4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD5AC9C;

  return sub_24AD4D7B4(v2);
}

uint64_t objectdestroy_151Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24AD5A2F4(int a1, void *a2, char a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440) - 8) + 80);

  return sub_24AD4B2E0(a1, a2, a3 & 1);
}

uint64_t sub_24AD5A3D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24AD5E404() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AD0C594;

  return sub_24AD420D0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24AD5A540(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24AD5A588(uint64_t a1)
{
  v4 = *(sub_24AD5E404() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AD0C360;

  return sub_24AD41CB8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_232Tm()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_235Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  v14 = *(v2 + 16);
  swift_unknownObjectRelease();
  v15 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);
  (*(v9 + 8))(v2 + v11, v8);

  return MEMORY[0x2821FE8E8](v2, v11 + v12, v13 | 7);
}

uint64_t sub_24AD5A938(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24AD5E404() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AD0C594;

  return sub_24AD40F98(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_239Tm()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AD5AB70(uint64_t a1)
{
  v4 = *(sub_24AD5E404() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AD0C594;

  return sub_24AD40B80(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24AD5ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD0C360;

  return CloudBacked.creationDate(store:)(a1, a2, a3, a4);
}

uint64_t CloudBacked.creationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_24AD5E404();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5AE80, 0, 0);
}

uint64_t sub_24AD5AE80()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v5 + 40))(v6, v5);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v5 + 48))(v6, v5);
  v7 = sub_24AD5EB14();
  v0[11] = v7;
  v8 = (*(v5 + 24))(v6, v5);
  v10 = v9;
  v0[12] = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_24AD5B024;
  v12 = v0[7];
  v13 = v0[3];

  return sub_24AD17754(v12, v8, v10, v7);
}

uint64_t sub_24AD5B024()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_24AD5B2CC;
  }

  else
  {
    v4 = sub_24AD5B154;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD5B154()
{
  v1 = *(v0 + 56);
  v2 = sub_24AD5E3C4();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 88);
    sub_24AD5DA80(v1);
    sub_24AD3514C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
  }

  else
  {
    v9 = *(v0 + 80);
    v10 = *(v0 + 16);

    (*(v3 + 32))(v10, v1, v2);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24AD5B2CC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD5B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AD0C594;

  return CloudBacked.modificationDate(store:)(a1, a2, a3, a4);
}

uint64_t CloudBacked.modificationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_24AD5E404();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5B504, 0, 0);
}

uint64_t sub_24AD5B504()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v5 + 40))(v6, v5);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v5 + 48))(v6, v5);
  v7 = sub_24AD5EB14();
  v0[11] = v7;
  v8 = (*(v5 + 24))(v6, v5);
  v10 = v9;
  v0[12] = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_24AD5B6A8;
  v12 = v0[7];
  v13 = v0[3];

  return sub_24AD17AFC(v12, v8, v10, v7);
}

uint64_t sub_24AD5B6A8()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_24AD5E0BC;
  }

  else
  {
    v4 = sub_24AD5E0C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD5B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD5B884;

  return CloudBacked.recordChangeTag(store:)(a1, a2, a3);
}

uint64_t sub_24AD5B884(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t CloudBacked.recordChangeTag(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_24AD5E404();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5BA58, 0, 0);
}

uint64_t sub_24AD5BA58()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v5 + 40))(v6, v5);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v5 + 48))(v6, v5);
  v7 = sub_24AD5EB14();
  v0[13] = v7;
  v8 = (*(v5 + 24))(v6, v5);
  v10 = v9;
  v0[14] = v9;
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_24AD5BBF0;
  v12 = v0[6];

  return sub_24AD17DDC(v8, v10, v7);
}

uint64_t sub_24AD5BBF0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[15];
  v7 = v4[14];
  v10 = *v3;
  v5[16] = a2;
  v5[17] = v2;

  if (v2)
  {
    v8 = sub_24AD5BE20;
  }

  else
  {
    v8 = sub_24AD5BD28;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24AD5BD28()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 96);

    v4 = *(v0 + 8);

    return v4(v2, v1);
  }

  else
  {
    v6 = *(v0 + 104);
    sub_24AD3514C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = *(v0 + 96);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24AD5BE20()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD5BE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AD5BF38;

  return CloudBacked.ckRecord(store:)(a1, a2, a3);
}

uint64_t sub_24AD5BF38(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t CloudBacked.ckRecord(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_24AD5E404();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5C0FC, 0, 0);
}

uint64_t sub_24AD5C0FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v10 = v0[3];
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  (*(v5 + 40))(v6, v5);
  sub_24AD5E3E4();
  (*(v2 + 8))(v1, v3);
  (*(v5 + 48))(v6, v5);
  v0[10] = sub_24AD5EB14();
  v7 = *(v5 + 24);
  v0[11] = v7;
  v0[12] = (v5 + 24) & 0xFFFFFFFFFFFFLL | 0xDC87000000000000;
  v0[13] = v7(v6, v5);
  v0[14] = v8;

  return MEMORY[0x2822009F8](sub_24AD5C260, v10, 0);
}

uint64_t sub_24AD5C260()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_24AD5C308;
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];

  return sub_24ACF6588(v4, v3, v5);
}

uint64_t sub_24AD5C308(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v9 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_24AD5C680;
  }

  else
  {
    v7 = v3[14];

    v6 = sub_24AD5C42C;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD5C42C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[4];
    v0[2] = v1;
    (*(v3 + 96))(v0 + 2, v5);
    v6 = v0[2];
    v7 = [v6 valueStore];
    [v7 resetChangedKeys];

    v8 = [v6 encryptedValueStore];
    [v8 resetChangedKeys];
  }

  else
  {
    if (qword_281064A68 != -1)
    {
      swift_once();
    }

    v9 = sub_24AD5E7A4();
    __swift_project_value_buffer(v9, qword_281065430);
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24ACF2000, v10, v11, "Failed to fetch CKRecord -- creating a new one", v12, 2u);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];

    sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
    v14(v18, v17);
    v19 = v15;
    v0[2] = sub_24AD5EBD4();
    (*(v17 + 96))(v0 + 2, v18, v17);

    v6 = v0[2];
  }

  v20 = v0[9];

  v21 = v0[1];

  return v21(v6);
}

uint64_t sub_24AD5C680()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_24AD5C6E8, 0, 0);
}

uint64_t sub_24AD5C6E8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 136);

  return v2();
}

id sub_24AD5C754(void *a1)
{
  v1 = a1;
  CKRecord.description.getter();

  v2 = sub_24AD5E834();

  return v2;
}

uint64_t CKRecord.description.getter()
{
  v1 = v0;
  v74 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_diagnostics())
  {
    *&v68 = v0;
    v70 = 0;
    v71 = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6358, &qword_24AD614D8);
    sub_24AD5EE64();
    v3 = v70;
    v2 = v71;
    v4 = [v0 recordID];
    v5 = [v4 zoneID];

    v6 = [v0 recordID];
    v7 = [v6 recordName];

    v8 = sub_24AD5E844();
    v10 = v9;

    v70 = v8;
    v71 = v10;
    MEMORY[0x24C22E570](10298, 0xE200000000000000);
    v11 = [v5 zoneName];
    v12 = sub_24AD5E844();
    v14 = v13;

    MEMORY[0x24C22E570](v12, v14);

    MEMORY[0x24C22E570](58, 0xE100000000000000);
    v15 = [v5 ownerName];
    v16 = sub_24AD5E844();
    v18 = v17;

    MEMORY[0x24C22E570](v16, v18);

    MEMORY[0x24C22E570](41, 0xE100000000000000);
    v19 = v71;
    v65 = v70;
    v20 = [v1 encryptedValues];
    swift_getObjectType();
    v21 = [v20 changedKeys];
    v22 = sub_24AD5E8C4();

    v23 = sub_24AD3774C(v22);

    v24 = [v20 allKeys];
    v25 = sub_24AD5E8C4();

    v70 = v25;

    sub_24AD5CF00(&v70);

    v26 = v70;
    v27 = [v1 recordChangeTag];
    if (v27)
    {
      v28 = v27;
      v29 = v26;
      v30 = sub_24AD5E844();
      v32 = v31;

      v70 = 0x3D676174202CLL;
      v71 = 0xE600000000000000;
      v33 = v30;
      v26 = v29;
      MEMORY[0x24C22E570](v33, v32);

      v34 = v71;
      v64 = v70;
      v35 = *(v29 + 2);
      if (v35)
      {
LABEL_4:
        v59 = v34;
        v60 = v19;
        v61 = v3;
        v62 = v2;
        v63 = v5;
        v67 = MEMORY[0x277D84F90];
        sub_24AD33600(0, v35, 0);
        v36 = 0;
        v37 = v67;
        v66 = v26 + 32;
        v38 = v23 + 56;
        while (1)
        {
          v39 = &v66[16 * v36];
          v40 = *v39;
          v41 = *(v39 + 1);
          if (*(v23 + 16))
          {
            v42 = *(v23 + 40);
            sub_24AD5F074();

            sub_24AD5E874();
            v43 = sub_24AD5F094();
            v44 = -1 << *(v23 + 32);
            v45 = v43 & ~v44;
            if ((*(v38 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
            {
              v46 = ~v44;
              while (1)
              {
                v47 = (*(v23 + 48) + 16 * v45);
                v48 = *v47 == v40 && v47[1] == v41;
                if (v48 || (sub_24AD5EF84() & 1) != 0)
                {
                  break;
                }

                v45 = (v45 + 1) & v46;
                if (((*(v38 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              v70 = v40;
              v71 = v41;

              MEMORY[0x24C22E570](42, 0xE100000000000000);
              v49 = v70;
              v50 = v71;
              goto LABEL_18;
            }
          }

          else
          {
          }

LABEL_16:

          v49 = v40;
          v50 = v41;
LABEL_18:
          MEMORY[0x24C22E570](v49, v50);

          MEMORY[0x24C22E570](2112800, 0xE300000000000000);
          sub_24AD5EBA4();
          if (v69)
          {
            sub_24AD5DB4C(&v68, &v70);
          }

          else
          {
            v72 = MEMORY[0x277D837D0];
            v73 = MEMORY[0x277CBBE08];
            v70 = 0;
            v71 = 0xE000000000000000;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6360, &qword_24AD614E0);
          sub_24AD5EE64();
          __swift_destroy_boxed_opaque_existential_1Tm(&v70);

          v52 = *(v67 + 16);
          v51 = *(v67 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_24AD33600((v51 > 1), v52 + 1, 1);
          }

          ++v36;
          *(v67 + 16) = v52 + 1;
          v53 = v67 + 16 * v52;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0xE000000000000000;
          if (v36 == v35)
          {

            v2 = v62;
            v5 = v63;
            v19 = v60;
            v3 = v61;
            v34 = v59;
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v64 = 0;
      v34 = 0xE000000000000000;
      v35 = *(v26 + 2);
      if (v35)
      {
        goto LABEL_4;
      }
    }

    v37 = MEMORY[0x277D84F90];
LABEL_28:
    v70 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6250, &qword_24AD609C8);
    sub_24AD5DAE8();
    v55 = sub_24AD5E814();
    v57 = v56;

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_24AD5ED34();

    v70 = 0x726F6365524B433CLL;
    v71 = 0xEB00000000203A64;
    MEMORY[0x24C22E570](v3, v2);

    MEMORY[0x24C22E570](0x64726F636572203BLL, 0xEB000000003D6449);
    MEMORY[0x24C22E570](v65, v19);

    MEMORY[0x24C22E570](v64, v34);

    MEMORY[0x24C22E570](31520, 0xE200000000000000);
    MEMORY[0x24C22E570](v55, v57);

    MEMORY[0x24C22E570](15997, 0xE200000000000000);
    swift_unknownObjectRelease();

    result = v70;
  }

  else
  {
    result = 0x657463616465723CLL;
  }

  v58 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AD5CF00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AD5D9D8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24AD5CF6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24AD5CF6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24AD5EF44();
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
        v5 = sub_24AD5E8F4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24AD5D134(v7, v8, a1, v4);
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
    return sub_24AD5D064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24AD5D064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_24AD5EF84(), (result & 1) == 0))
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

uint64_t sub_24AD5D134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_24AD5D9C4(v8);
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
        sub_24AD5D710((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_24AD5EF84();
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
            result = sub_24AD5EF84();
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
      result = sub_24AD2EB24(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24AD2EB24((v39 > 1), v40 + 1, 1, v8);
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
        sub_24AD5D710((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24AD5D9C4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_24AD5D938(v44);
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
    if (v37 || (result = sub_24AD5EF84(), (result & 1) == 0))
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

uint64_t sub_24AD5D710(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_24AD5EF84() & 1) != 0)
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
      if (!v21 && (sub_24AD5EF84() & 1) != 0)
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

uint64_t sub_24AD5D938(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24AD5D9C4(v3);
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

uint64_t _s14FindMyCloudKit0C6BackedPAAE4zoneSo14CKRecordZoneIDCvg_0(uint64_t a1, uint64_t a2)
{
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  (*(a2 + 32))(a1, a2);
  v4 = *MEMORY[0x277CBBF28];
  sub_24AD5E844();
  return sub_24AD5EB74();
}

uint64_t sub_24AD5DA80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AD5DAE8()
{
  result = qword_27EFA6368;
  if (!qword_27EFA6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA6250, &qword_24AD609C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6368);
  }

  return result;
}

uint64_t sub_24AD5DB4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t dispatch thunk of CloudBacked.creationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AD0C360;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudBacked.modificationDate(store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AD0C594;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudBacked.recordChangeTag(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AD57E80;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CloudBacked.ckRecord(store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AD35664;

  return v11(a1, a2, a3);
}