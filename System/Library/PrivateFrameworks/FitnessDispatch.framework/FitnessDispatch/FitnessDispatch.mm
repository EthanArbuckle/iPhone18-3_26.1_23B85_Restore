uint64_t dispatch thunk of XPCDispatchClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1BCF0A158;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1BCEF78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = *v4;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCEF79D8, v4, 0);
}

uint64_t sub_1BCEF79D8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  (*(v3 + 16))(v1, v0[3], v2);
  v7 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 2) = v2;
  *(v8 + 3) = v6;
  *(v8 + 4) = *(v4 + 88);
  *(v8 + 5) = *(v4 + 96);
  *(v8 + 6) = v5;
  (*(v3 + 32))(&v8[v7], v1, v2);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1BCF06274;
  v10 = v0[6];
  v11 = v0[4];
  v12 = v0[2];

  return sub_1BCEF7BB0(v12, 1, &unk_1BCF22BA0, v8, v11);
}

uint64_t sub_1BCEF7B30()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BCEF7BB0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 96) = a2;
  *(v6 + 16) = a1;
  *(v6 + 56) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_1BCEF814C, v5, 0);
}

id sub_1BCEF7C04()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[16];
  v4 = *(v1 + 136);
  aBlock = v1[15];
  v34 = v3;
  LOBYTE(v35) = v4;
  sub_1BCEF8360(aBlock, v3, v4);
  v5 = v2[10];
  v6 = v2[11];
  v7 = v2[12];
  type metadata accessor for XPCDispatchClient.ServiceType();
  v32 = sub_1BCF21A9C();
  v9 = v8;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BCF2170C();
  __swift_project_value_buffer(v10, qword_1EDDD2780);

  v11 = sub_1BCF216EC();
  v12 = sub_1BCF21CCC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1BCEF84F4(v32, v9, &aBlock);
    _os_log_impl(&dword_1BCEF6000, v11, v12, "Opening connection to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB32D20](v14, -1, -1);
    MEMORY[0x1BFB32D20](v13, -1, -1);
  }

  v15 = v1[15];
  v16 = v1[16];
  if (*(v1 + 136))
  {
    if (*(v1 + 136) != 1)
    {

      type metadata accessor for XPCDispatchClient.Failure();
      swift_getWitnessTable();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
      return v16;
    }

    v17 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v18 = sub_1BCF21A7C();
    v19 = [v17 initWithServiceName_];
  }

  else
  {
    v20 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v18 = sub_1BCF21A7C();
    v19 = [v20 initWithMachServiceName:v18 options:0];
  }

  v21 = v19;

  v22 = objc_opt_self();
  v16 = v21;
  v23 = [v22 interfaceWithProtocol_];
  [v16 setRemoteObjectInterface_];

  v24 = [v22 interfaceWithProtocol_];
  [v16 setExportedInterface_];

  type metadata accessor for XPCDispatchClientExport();
  v25 = sub_1BCEF87D8(v1[14]);

  [v16 setExportedObject_];

  v26 = swift_allocObject();
  *(v26 + 16) = v32;
  *(v26 + 24) = v9;
  v37 = sub_1BCF09D18;
  v38 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1BCEFED68;
  v36 = &block_descriptor_0;
  v27 = _Block_copy(&aBlock);

  [v16 setInterruptionHandler_];
  _Block_release(v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  *(v28 + 24) = v9;
  v37 = sub_1BCF09D44;
  v38 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1BCEFED68;
  v36 = &block_descriptor_45;
  v29 = _Block_copy(&aBlock);

  [v16 setInvalidationHandler_];
  _Block_release(v29);
  [v16 resume];

  return v16;
}

uint64_t sub_1BCEF8110()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1BCEF814C()
{
  v1 = *(v0 + 48);
  if (!*(v1 + 144))
  {
    v15 = sub_1BCEF7C04();
    v16 = *(v1 + 144);
    *(v1 + 144) = v15;

    v1 = *(v0 + 48);
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);
  v5 = v2[10];
  v6 = v2[11];
  v7 = v2[12];
  type metadata accessor for XPCDispatchClient.RetryIsolator();
  v8 = swift_allocObject();
  *(v0 + 64) = v8;

  v18 = *(v0 + 24);
  swift_defaultActor_initialize();
  *(v8 + 112) = v1;
  type metadata accessor for XPCDispatchClient();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v1;
  *(v10 + 32) = v4;
  *(v10 + 40) = v8;
  *(v10 + 48) = v18;
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_1BCF084CC;
  v13 = *(v0 + 40);
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v14, v1, WitnessTable, 0xD000000000000028, 0x80000001BCF26100, sub_1BCEF9054, v10, v13);
}

uint64_t sub_1BCEF8360(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FitnessDispatch17XPCDispatchClientC11ServiceTypeOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BCEF83E0()
{
  v0 = sub_1BCF2170C();
  __swift_allocate_value_buffer(v0, qword_1EDDD2780);
  __swift_project_value_buffer(v0, qword_1EDDD2780);
  return sub_1BCF216FC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1BCEF84F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BCEF85C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1BCEF8718(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BCEF85C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BCEFCFC4(a5, a6);
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
    result = sub_1BCF21E7C();
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1BCEF8718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BCEF87D8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BCEF890C(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a5;
  v60 = *a2;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v52 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v58 = a7;
  v16 = sub_1BCF21C1C();
  v57 = *(v16 - 8);
  v55 = *(v57 + 64);
  MEMORY[0x1EEE9AC00]();
  v18 = &v52 - v17;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a2[18];
  v59 = a1;
  if (v19)
  {
    v53 = a4;
    v20 = v57;
    (*(v57 + 16))(v18, a1, v16);
    v21 = v18;
    v22 = v15;
    v23 = v16;
    v24 = (*(v20 + 80) + 49) & ~*(v20 + 80);
    v25 = (v55 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = a6;
    v26 = swift_allocObject();
    v27 = v60;
    v28 = v58;
    *(v26 + 16) = v60[10];
    *(v26 + 24) = v28;
    *(v26 + 32) = v27[11];
    *(v26 + 40) = v27[12];
    *(v26 + 48) = a3 & 1;
    v29 = v26 + v24;
    v16 = v23;
    v15 = v22;
    v18 = v21;
    (*(v20 + 32))(v29, v21, v16);
    *(v26 + v25) = v53;
    v30 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    a6 = v54;
    *v30 = v56;
    v30[1] = a6;
    v65 = sub_1BCF09D88;
    v66 = v26;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v64 = sub_1BCF0ABB0;
    *(&v64 + 1) = &block_descriptor_74;
    v31 = _Block_copy(&aBlock);
    v32 = v19;

    v33 = [v32 remoteObjectProxyWithErrorHandler_];
    _Block_release(v31);

    sub_1BCF21D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v64 = 0u;
  }

  sub_1BCEF906C(&aBlock, v62);
  if (!v62[3])
  {
    sub_1BCEF90DC(v62, &unk_1EBD2A720, &unk_1BCF230D0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A600, &qword_1BCF22E30);
  v34 = swift_dynamicCast();
  v35 = v59;
  if ((v34 & 1) == 0)
  {
LABEL_10:
    v46 = v60[10];
    v47 = v60[11];
    v48 = v60[12];
    type metadata accessor for XPCDispatchClient.Failure();
    swift_getWitnessTable();
    v49 = swift_allocError();
    *v50 = 2;
    v62[0] = v49;
    sub_1BCF21BFC();
    return sub_1BCEF90DC(&aBlock, &unk_1EBD2A720, &unk_1BCF230D0);
  }

  v36 = v61;
  v37 = sub_1BCF21C5C();
  (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
  v38 = v18;
  v39 = v57;
  (*(v57 + 16))(v38, v35, v16);
  v40 = v16;
  v41 = (*(v39 + 80) + 88) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  v43 = v60;
  v44 = v58;
  *(v42 + 4) = v60[10];
  *(v42 + 5) = v44;
  *(v42 + 6) = v43[11];
  v45 = v56;
  *(v42 + 7) = v43[12];
  *(v42 + 8) = v45;
  *(v42 + 9) = a6;
  *(v42 + 10) = v36;
  (*(v39 + 32))(&v42[v41], v38, v40);

  swift_unknownObjectRetain();
  sub_1BCF0E794(0, 0, v15, &unk_1BCF22E40, v42);
  swift_unknownObjectRelease();

  return sub_1BCEF90DC(&aBlock, &unk_1EBD2A720, &unk_1BCF230D0);
}

uint64_t sub_1BCEF8E80()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v2 = sub_1BCF21C1C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v2);
  v6 = *(v0 + v5);

  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1BCEF8F58()
{
  v1 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v2 = sub_1BCF21C1C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 9);

  v8 = *(v0 + 10);
  swift_unknownObjectRelease();
  (*(v3 + 8))(&v0[v4], v2);

  return swift_deallocObject();
}

uint64_t sub_1BCEF906C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD2A720, &unk_1BCF230D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCEF90DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BCEF913C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BCF0A158;

  return sub_1BCEF91F4(a1, v5);
}

uint64_t sub_1BCEF91F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BCEFA9C0;

  return v7(a1);
}

uint64_t sub_1BCEF92EC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v18 = v1[4];
  v5 = v1[7];
  v15 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v6 = *(sub_1BCF21C1C() - 8);
  v7 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1BCF0A158;

  return sub_1BCEF944C(a1, v8, v9, v10, v11, v12, v1 + v7);
}

uint64_t sub_1BCEF944C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v18;
  v10 = *(v18 - 8);
  v7[5] = v10;
  v11 = *(v10 + 64) + 15;
  v7[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[7] = v12;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v7[8] = v14;
  *v14 = v7;
  v14[1] = sub_1BCF08EC0;

  return v16(v12, a6);
}

uint64_t sub_1BCEF95C0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = (*(*(v6 - 8) + 80) + 56) & ~*(*(v6 - 8) + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1BCF0A158;

  return sub_1BCEF96D4(a1, a2, v2 + v11, v6, v7, v8, v9, v10);
}

uint64_t sub_1BCEF96D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  v8[28] = v9;
  v10 = *(v9 - 8);
  v8[29] = v10;
  v11 = *(v10 + 64) + 15;
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCEF97AC, 0, 0);
}

uint64_t sub_1BCEF97AC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v10 = *(v0 + 168);
  sub_1BCF21B0C();
  v9 = *(v0 + 256);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF06428;
  swift_continuation_init();
  *(v0 + 136) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_65;
  [v10 receiveWithMessageCode:v9 messageData:0 completionHandler:v0 + 80];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BCEF9A10(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BCEF9A70(v7);

  return v9 & 1;
}

uint64_t sub_1BCEF9A70(void *a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v39 - v6;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1BCF2170C();
  __swift_project_value_buffer(v8, qword_1EDDD2780);
  v9 = sub_1BCF216EC();
  v10 = sub_1BCF21CCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BCEF6000, v9, v10, "New connection opened", v11, 2u);
    MEMORY[0x1BFB32D20](v11, -1, -1);
  }

  v12 = sub_1BCEFA078(a1);
  if (v12)
  {
    v13 = objc_opt_self();
    v40 = v7;
    v14 = [v13 interfaceWithProtocol_];
    [a1 setExportedInterface_];

    v15 = [v13 interfaceWithProtocol_];
    [a1 setRemoteObjectInterface_];

    v16 = v4[10];
    v17 = v4[11];
    v18 = v4[12];
    type metadata accessor for XPCDispatchListenerExport();
    v19 = *&v2[qword_1EBD2A690];

    v20 = sub_1BCEFA25C(a1);
    [a1 setExportedObject_];

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v16;
    v23[3] = v17;
    v23[4] = v18;
    v23[5] = v22;
    v23[6] = a1;
    v45 = sub_1BCF0E2FC;
    v46 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1BCEFED68;
    v44 = &block_descriptor_1;
    v24 = _Block_copy(&aBlock);
    v25 = a1;

    [v25 setInvalidationHandler_];
    _Block_release(v24);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v16;
    v27[3] = v17;
    v27[4] = v18;
    v27[5] = v26;
    v27[6] = v25;
    v45 = sub_1BCF0E36C;
    v46 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1BCEFED68;
    v44 = &block_descriptor_16;
    v28 = _Block_copy(&aBlock);
    v29 = v25;

    [v29 setInterruptionHandler_];
    _Block_release(v28);
    [v29 resume];
    v30 = sub_1BCF21C5C();
    v31 = v40;
    (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v2;
    v32[5] = v29;
    v33 = v29;
    v34 = v2;
    sub_1BCF0E794(0, 0, v31, &unk_1BCF230E8, v32);
  }

  else
  {
    v35 = sub_1BCF216EC();
    v36 = sub_1BCF21CBC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1BCEF6000, v35, v36, "Rejecting connection that lacks required entitlements", v37, 2u);
      MEMORY[0x1BFB32D20](v37, -1, -1);
    }
  }

  return v12 & 1;
}

uint64_t sub_1BCEF9FF0()
{
  MEMORY[0x1BFB32DC0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BCEFA02C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BCEFA078(void *a1)
{
  v3 = *(v1 + qword_1EBD2A698);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + qword_1EBD2A698);

  v10 = 0;
  while (v6)
  {
LABEL_9:
    v12 = (*(v3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1BCF21A7C();

    v16 = [a1 valueForEntitlement_];

    if (v16)
    {
      sub_1BCF21D6C();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (!*(&v19 + 1))
    {

      sub_1BCEF90DC(v20, &unk_1EBD2A720, &unk_1BCF230D0);
      return 0;
    }

    result = swift_dynamicCast();
    if (result)
    {
      v6 &= v6 - 1;
      if (v17)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return 1;
    }

    v6 = *(v3 + 56 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCEFA25C(void *a1)
{
  v2 = sub_1BCF21A7C();
  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_1BCF21D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
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
    sub_1BCEF90DC(v8, &unk_1EBD2A720, &unk_1BCF230D0);
    return 0;
  }
}

void *sub_1BCEFA354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_1BCEFA3AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF0A158;

  return sub_1BCEFA46C(a1, v4, v5, v7, v6);
}

uint64_t sub_1BCEFA46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BCEFA48C, 0, 0);
}

uint64_t sub_1BCEFA48C()
{
  sub_1BCF21C3C();
  *(v0 + 32) = sub_1BCF21C2C();
  v2 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCEFA520, v2, v1);
}

uint64_t sub_1BCEFA520()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1BCEFA58C(v2);
  v4 = v0[1];

  return v4();
}

void sub_1BCEFA58C(void *a1)
{
  swift_beginAccess();
  sub_1BCEFA5FC(&v3, a1);
  v2 = v3;
  swift_endAccess();
}

uint64_t sub_1BCEFA5FC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BCF21DCC();

    if (v9)
    {

      sub_1BCEFA814();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1BCF21DBC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1BCF0CD60(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1BCF0CF40(v22 + 1);
    }

    v20 = v8;
    sub_1BCF0D168(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1BCEFA814();
  v11 = *(v6 + 40);
  v12 = sub_1BCF21D2C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1BCEFA860(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1BCF21D3C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

unint64_t sub_1BCEFA814()
{
  result = qword_1EDDD20D0[0];
  if (!qword_1EDDD20D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDDD20D0);
  }

  return result;
}

void sub_1BCEFA860(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BCF0CF40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BCF0D1EC();
      goto LABEL_12;
    }

    sub_1BCF0D33C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1BCF21D2C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1BCEFA814();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1BCF21D3C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BCF21EFC();
  __break(1u);
}

uint64_t sub_1BCEFA9C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BCEFAAB8(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = a1;
  v14 = sub_1BCF21C5C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BCF233E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BCF233F0;
  v16[5] = v15;
  v17 = a4;

  sub_1BCF10714(0, 0, v11, &unk_1BCF233F8, v16);
}

uint64_t sub_1BCEFAC4C()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1BCEFAC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCEFAD04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BCF0A158;

  return sub_1BCEF91F4(a1, v5);
}

uint64_t sub_1BCEFADBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF0A158;

  return sub_1BCEFAE88(a1, v4, v5, v7);
}

uint64_t sub_1BCEFAE88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1BCF099D4;

  return v8();
}

uint64_t sub_1BCEFAF70()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BCF0A158;

  return sub_1BCEFB030(v2, v3, v5);
}

uint64_t sub_1BCEFB030(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1BCF0A158;

  return v7();
}

uint64_t sub_1BCEFB118()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BCF099D4;

  return sub_1BCEFB1DC(v2, v3, v4, v5);
}

uint64_t sub_1BCEFB1DC(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_1BCF215BC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1BCF104E4;

  return sub_1BCEFB2DC(a1, a2, v9);
}

uint64_t sub_1BCEFB2DC(int a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF0903C;

  return sub_1BCEFB390(a1, a2, a3, 0, 1);
}

uint64_t sub_1BCEFB390(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 57) = a5;
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 60) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCEFB3BC, 0, 0);
}

uint64_t sub_1BCEFB3BC()
{
  v23 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);

  v3 = sub_1BCF216EC();
  v4 = sub_1BCF21CCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 60);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 67109378;
    *(v7 + 4) = v6;
    *(v7 + 8) = 2080;
    if (*(v5 + 32))
    {
      v9 = *(*(v0 + 88) + 24);
      v10 = *(v5 + 32);
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x6E776F6E6B6E75;
    }

    v11 = sub_1BCEF84F4(v9, v10, &v22);

    *(v7 + 10) = v11;
    _os_log_impl(&dword_1BCEF6000, v3, v4, "Received request: %u from: %s", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB32D20](v8, -1, -1);
    MEMORY[0x1BFB32D20](v7, -1, -1);
  }

  v12 = *(v0 + 57);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  *(v0 + 16) = *(v13 + 24);
  *(v0 + 24) = v16;
  *(v0 + 40) = 0;
  *(v0 + 48) = v14;
  *(v0 + 56) = v12 & 1;

  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *v17 = v0;
  v17[1] = sub_1BCF10358;
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 60);

  return sub_1BCEFB608(v20, v0 + 16, v18, v19);
}

uint64_t sub_1BCEFB608(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = v4;
  *(v5 + 208) = a2;
  *(v5 + 216) = a3;
  *(v5 + 524) = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  *(v5 + 240) = v7;
  v8 = *(v7 - 8);
  *(v5 + 248) = v8;
  *(v5 + 256) = *(v8 + 64);
  *(v5 + 264) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  v10 = sub_1BCF21C5C();
  *(v5 + 280) = v10;
  v11 = *(v10 - 8);
  *(v5 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 296) = swift_task_alloc();
  v13 = v6[11];
  *(v5 + 304) = v13;
  v14 = v6[12];
  *(v5 + 312) = v14;
  v15 = v6[13];
  *(v5 + 320) = v15;
  v16 = v6[14];
  *&v17 = v7;
  *(&v17 + 1) = v13;
  *&v18 = v14;
  *(&v18 + 1) = v15;
  *(v5 + 328) = v16;
  *(v5 + 32) = v18;
  *(v5 + 16) = v17;
  *(v5 + 48) = v16;
  v19 = type metadata accessor for DispatchListenerTable.Priority();
  *(v5 + 336) = v19;
  v20 = *(v19 - 8);
  *(v5 + 344) = v20;
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  *(v5 + 56) = v7;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  *(v5 + 352) = v22;
  *&v24 = v15;
  *(&v24 + 1) = v16;
  *(v5 + 64) = v23;
  *(v5 + 80) = v24;
  v25 = type metadata accessor for DispatchListenerTable.Registration();
  *(v5 + 360) = v25;
  v26 = sub_1BCF21D4C();
  *(v5 + 368) = v26;
  v27 = *(v26 - 8);
  *(v5 + 376) = v27;
  v28 = *(v27 + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  v29 = *(v25 - 8);
  *(v5 + 392) = v29;
  *(v5 + 400) = *(v29 + 64);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = sub_1BCF21C3C();
  *(v5 + 432) = sub_1BCF21C2C();
  v31 = sub_1BCF21BDC();
  *(v5 + 440) = v31;
  *(v5 + 448) = v30;

  return MEMORY[0x1EEE6DFA0](sub_1BCEFB990, v31, v30);
}

uint64_t sub_1BCEFB990()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  *(v0 + 456) = __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 524);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Dispatching: %u", v5, 8u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = *(v0 + 360);
  v9 = *(v0 + 232);
  v10 = *(v0 + 524);

  swift_beginAccess();
  v11 = *(v9 + 16);
  *(v0 + 520) = v10;

  sub_1BCF21A3C();

  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    v12 = *(v0 + 432);
    v14 = *(v0 + 376);
    v13 = *(v0 + 384);
    v15 = *(v0 + 368);
    v16 = *(v0 + 240);
    v17 = *(v0 + 524);
    v82 = *(v0 + 320);
    v84 = *(v0 + 304);

    (*(v14 + 8))(v13, v15);
    *(v0 + 96) = v16;
    *(v0 + 104) = v84;
    *(v0 + 120) = v82;
    type metadata accessor for DispatchListenerTable.Failure();
    swift_getWitnessTable();
    v18 = swift_allocError();
    *v19 = v17;
    *(v19 + 4) = 1;
    swift_willThrow();
    v20 = *(v0 + 456);
    v21 = v18;
    v22 = sub_1BCF216EC();
    v23 = sub_1BCF21CCC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v18;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1BCEF6000, v22, v23, "Dispatch error: %@", v24, 0xCu);
      sub_1BCF05050(v25);
      MEMORY[0x1BFB32D20](v25, -1, -1);
      MEMORY[0x1BFB32D20](v24, -1, -1);
    }

    v29 = *(v0 + 408);
    v28 = *(v0 + 416);
    v30 = *(v0 + 384);
    v31 = *(v0 + 352);
    v32 = *(v0 + 296);
    v33 = *(v0 + 272);
    v85 = *(v0 + 264);

    swift_getErrorValue();
    v34 = *(v0 + 160);
    v35 = *(v0 + 176);
    sub_1BCF20E14(*(v0 + 168));
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v38 = *(v0 + 416);
    v39 = *(v0 + 352);
    v40 = *(v0 + 336);
    v41 = *(v0 + 344);
    v42 = *(v0 + 280);
    v43 = *(v0 + 288);
    v44 = *(*(v0 + 392) + 32);
    v44(v38, *(v0 + 384), *(v0 + 360));
    (*(v41 + 16))(v39, v38, v40);
    if ((*(v43 + 48))(v39, 1, v42) == 1)
    {
      v45 = (*(v0 + 416) + *(*(v0 + 360) + 60));
      v46 = v45[1];
      v86 = (*v45 + **v45);
      v47 = (*v45)[1];
      v48 = swift_task_alloc();
      *(v0 + 464) = v48;
      *v48 = v0;
      v48[1] = sub_1BCF031C4;
      v49 = *(v0 + 216);
      v50 = *(v0 + 224);
      v51 = *(v0 + 208);

      return v86(v51, v49, v50);
    }

    else
    {
      v74 = *(v0 + 416);
      v52 = *(v0 + 408);
      v75 = *(v0 + 424);
      v77 = *(v0 + 400);
      v53 = *(v0 + 392);
      v83 = *(v0 + 360);
      v54 = *(v0 + 288);
      v55 = *(v0 + 296);
      v57 = *(v0 + 272);
      v56 = *(v0 + 280);
      v80 = v44;
      v81 = *(v0 + 264);
      v76 = *(v0 + 256);
      v58 = *(v0 + 248);
      v73 = *(v0 + 240);
      v59 = *(v0 + 224);
      v87 = *(v0 + 216);
      v72 = *(v0 + 208);
      v78 = *(v0 + 320);
      v79 = *(v0 + 304);
      (*(v54 + 32))(v55, *(v0 + 352), v56);
      (*(v54 + 16))(v57, v55, v56);
      (*(v54 + 56))(v57, 0, 1, v56);
      (*(v53 + 16))(v52, v74, v83);
      (*(v58 + 16))(v81, v72, v73);
      sub_1BCEFC5E0(v87, v59);
      v60 = sub_1BCF21C2C();
      v61 = (*(v53 + 80) + 72) & ~*(v53 + 80);
      v62 = (v77 + *(v58 + 80) + v61) & ~*(v58 + 80);
      v63 = swift_allocObject();
      v64 = MEMORY[0x1E69E85E0];
      *(v63 + 16) = v60;
      *(v63 + 24) = v64;
      *(v63 + 32) = v73;
      *(v63 + 40) = v79;
      *(v63 + 56) = v78;
      v80(v63 + v61, v52, v83);
      (*(v58 + 32))(v63 + v62, v81, v73);
      v65 = (v63 + ((v76 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v65 = v87;
      v65[1] = v59;
      v66 = sub_1BCF13238(0, 0, v57, &unk_1BCF22AF8, v63);
      *(v0 + 496) = v66;
      v67 = *(MEMORY[0x1E69E86A8] + 4);
      v68 = swift_task_alloc();
      *(v0 + 504) = v68;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
      *v68 = v0;
      v68[1] = sub_1BCF033EC;
      v71 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA10](v0 + 184, v66, v69, v70, v71);
    }
  }
}

uint64_t sub_1BCEFC134()
{
  v12 = *(v0 + 32);
  v14 = *(v0 + 48);
  v15 = *(v0 + 64);
  v13 = type metadata accessor for DispatchListenerTable.Registration();
  v1 = (*(*(v13 - 8) + 80) + 72) & ~*(*(v13 - 8) + 80);
  v2 = *(v12 - 8);
  v3 = (v1 + *(*(v13 - 8) + 64) + *(v2 + 80)) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v1;
  v7 = sub_1BCF21C5C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v9 = *(v6 + *(v13 + 60) + 8);

  (*(v2 + 8))(v0 + v3, v12);
  v10 = *(v0 + v4 + 8);
  if (v10 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + v4), v10);
  }

  return swift_deallocObject();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BCEFC370()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1BCEFC37C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BCF0903C;

  return sub_1BCEFC444(a1, a2, a3, a4, a5 & 1);
}

uint64_t sub_1BCEFC444(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 92) = a5;
  *(v6 + 48) = a4;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCEFC470, v5, 0);
}

uint64_t sub_1BCEFC470()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1 & 1;
  *(v6 + 28) = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = v2;
  sub_1BCEFC5E0(v4, v2);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  *v7 = v0;
  v7[1] = sub_1BCF07D04;
  v9 = *(v0 + 56);

  return sub_1BCEF7BB0(v0 + 16, 1, &unk_1BCF22BE8, v6, v8);
}

uint64_t sub_1BCEFC598()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1BCEFC5E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BCF050B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1BCEFC5F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 28);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BCF0A158;

  return sub_1BCEFC6D0(a1, a2, v6, v7, v8, v10, v9);
}

uint64_t sub_1BCEFC6D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 328) = a6;
  *(v7 + 336) = a7;
  *(v7 + 400) = a5;
  *(v7 + 404) = a4;
  *(v7 + 312) = a2;
  *(v7 + 320) = a3;
  *(v7 + 304) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  *(v7 + 344) = v8;
  v9 = *(v8 - 8);
  *(v7 + 352) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCEFC7AC, 0, 0);
}

uint64_t sub_1BCEFC7AC()
{
  v1 = *(v0 + 336);
  if (*(v0 + 404))
  {
    if (v1 >> 60 == 15)
    {
      v2 = 0;
    }

    else
    {
      v4 = *(v0 + 328);
      v2 = sub_1BCF215AC();
    }

    v5 = v0 + 16;
    *(v0 + 384) = v2;
    v6 = *(v0 + 352);
    v7 = *(v0 + 360);
    v8 = *(v0 + 344);
    v21 = *(v0 + 400);
    v17 = v2;
    v19 = *(v0 + 312);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_1BCF08030;
    swift_continuation_init();
    *(v0 + 200) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF21BEC();
    (*(v6 + 32))(boxed_opaque_existential_0, v7, v8);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1BCF0A164;
    *(v0 + 168) = &block_descriptor_50;
    [v19 receiveWithMessageCode:v21 messageData:v17 completionHandler:v0 + 144];
    (*(v6 + 8))(boxed_opaque_existential_0, v8);
  }

  else
  {
    if (v1 >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v10 = *(v0 + 328);
      v3 = sub_1BCF215AC();
    }

    v5 = v0 + 80;
    *(v0 + 368) = v3;
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    v13 = *(v0 + 344);
    v20 = *(v0 + 400);
    v22 = *(v0 + 320);
    v16 = v3;
    v18 = *(v0 + 312);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 288;
    *(v0 + 88) = sub_1BCF07EA8;
    swift_continuation_init();
    *(v0 + 264) = v13;
    v14 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF21BEC();
    (*(v11 + 32))(v14, v12, v13);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1BCF0A164;
    *(v0 + 232) = &block_descriptor_54;
    [v18 receiveWithMessageCode:v20 messageData:v16 originatingProcessIdentifier:v22 completionHandler:v0 + 208];
    (*(v11 + 8))(v14, v13);
  }

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1BCEFCB44(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, const void *a6)
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = &v21 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = v14;
  *(v15 + 48) = a1;
  v16 = sub_1BCF21C5C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BCF23390;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1BCF22F90;
  v18[5] = v17;
  v19 = a4;

  sub_1BCF10714(0, 0, v13, &unk_1BCF233B0, v18);
}

uint64_t sub_1BCEFCCE4()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1BCEFCD34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BCF0A158;

  return sub_1BCEFCDFC(v2, v3, v4, v6, v5);
}

uint64_t sub_1BCEFCDFC(int a1, void *a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  if (a2)
  {
    v9 = a2;

    a2 = sub_1BCF215BC();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v5[4] = a2;
  v5[5] = v11;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1BCF10A8C;

  return sub_1BCEFCF04(a1, a2, v11, a3);
}

uint64_t sub_1BCEFCF04(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BCF10A88;

  return sub_1BCEFB390(a1, a2, a3, a4, 0);
}

uint64_t sub_1BCEFCFC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BCEFD010(a1, a2);
  sub_1BCEFD1B8(&unk_1F3B66F00);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BCEFD010(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BCEFD140(v5, 0);
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

  result = sub_1BCF21E7C();
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
        v10 = sub_1BCF21ADC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BCEFD140(v10, 0);
        result = sub_1BCF21E3C();
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

void *sub_1BCEFD140(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A870, &unk_1BCF237D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1BCEFD1B8(uint64_t result)
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

  result = sub_1BCF1C214(result, v12, 1, v3);
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

uint64_t sub_1BCEFD2A4()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD2DC()
{
  v1 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD314()
{
  v1 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BCEFD368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCF21C5C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCEFD3D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BCF21C5C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BCEFD45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v12 = *(a3 + 48);
  v6 = type metadata accessor for DispatchListenerTable.Priority();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 60));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1BCEFD51C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = *(a4 + 48);
  result = type metadata accessor for DispatchListenerTable.Priority();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 60)) = (a2 - 1);
  return result;
}

uint64_t sub_1BCEFD5E4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BCEFD664()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD75C()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD854()
{
  v1 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v2 = sub_1BCF21C1C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  v8 = *(v0 + 10);

  (*(v3 + 8))(&v0[v4], v2);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD950()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD9A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);
  if (v2 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + 48), v2);
  }

  return swift_deallocObject();
}

uint64_t sub_1BCEFD9FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDA38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1BCEFDA80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDAC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDB00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BCEFDB38()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDB70()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDC34()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDCC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDD00()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDD98()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_1BCEFDE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCF21C5C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCEFDE98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BCF21C5C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BCEFDF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v6 = type metadata accessor for DispatchClientTable.Priority();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 52));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1BCEFDFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *(a4 + 16);
  v11 = *(a4 + 32);
  result = type metadata accessor for DispatchClientTable.Priority();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

uint64_t sub_1BCEFE084()
{
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  v1 = type metadata accessor for DispatchClientTable.Registration();
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = sub_1BCF21C5C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = *(v5 + *(v1 + 52) + 8);

  v9 = *(v0 + v3 + 8);
  if (v9 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + v3), v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1BCEFE1EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BCF215FC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1BCEFE298(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BCF215FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BCEFE33C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BCEFE374()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1BCEFE408()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFE4E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BCEFE518()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFE5E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFE6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t XPCHeader.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCHeader.processIdentifier.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t XPCHeader.originatingProcessIdentifier.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1BCEFE7F0()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BCEFE810(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BCEFE86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void SigTermHandler.init()(uint64_t *a1@<X8>)
{
  sub_1BCEFE960(0, &unk_1EDDD1A10, 0x1E69E9630);
  sub_1BCEFE960(0, qword_1EDDD1CC8, 0x1E69E9610);
  v2 = sub_1BCF21CDC();
  v3 = sub_1BCF21CFC();

  *a1 = v3;
}

uint64_t sub_1BCEFE960(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Void __swiftcall SigTermHandler.activate()()
{
  v1 = sub_1BCF219AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BCF219DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1BCF2170C();
  __swift_project_value_buffer(v12, qword_1EDDD2780);
  v13 = sub_1BCF216EC();
  v14 = sub_1BCF21CCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BCEF6000, v13, v14, "SigTermHandler activating", v15, 2u);
    MEMORY[0x1BFB32D20](v15, -1, -1);
  }

  swift_getObjectType();
  aBlock[4] = sub_1BCEFEC80;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BCEFED68;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);
  sub_1BCF219CC();
  sub_1BCEFEDAC();
  sub_1BCF21D0C();
  _Block_release(v16);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  v17 = sub_1BCF2171C();
  signal(15, v17);
  sub_1BCF21D1C();
}

uint64_t sub_1BCEFEC80()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BCF2170C();
  __swift_project_value_buffer(v0, qword_1EDDD2780);
  v1 = sub_1BCF216EC();
  v2 = sub_1BCF21CCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BCEF6000, v1, v2, "SigTerm received, exiting clean", v3, 2u);
    MEMORY[0x1BFB32D20](v3, -1, -1);
  }

  return MEMORY[0x1EEE75030]();
}

uint64_t sub_1BCEFED68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1BCEFEDAC()
{
  sub_1BCF219AC();
  sub_1BCEFEEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A558, qword_1BCF22968);
  sub_1BCEFEF7C();
  return sub_1BCF21D7C();
}

uint64_t sub_1BCEFEE48(uint64_t *a1, int a2)
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

uint64_t sub_1BCEFEE90(uint64_t result, int a2, int a3)
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

unint64_t sub_1BCEFEEDC()
{
  result = qword_1EDDD1A30;
  if (!qword_1EDDD1A30)
  {
    sub_1BCF219AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1A30);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BCEFEF7C()
{
  result = qword_1EDDD1A20;
  if (!qword_1EDDD1A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBD2A558, qword_1BCF22968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1A20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BCEFF088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DispatchListenerTable.Priority();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for DispatchListenerTable.Registration();
  v10 = (a4 + *(result + 60));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t DispatchListenerTable.__allocating_init()()
{
  v0 = swift_allocObject();
  DispatchListenerTable.init()();
  return v0;
}

void *DispatchListenerTable.init()()
{
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 96);
  v8 = *(*v0 + 112);
  v1 = type metadata accessor for DispatchListenerTable.Registration();
  v2 = MEMORY[0x1E69E7668];
  swift_getTupleTypeMetadata2();
  v3 = sub_1BCF21B5C();
  v4 = sub_1BCF0408C(v3, v2, v1, MEMORY[0x1E69E7678]);

  v0[2] = v4;
  return v0;
}

uint64_t sub_1BCEFF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v40 = a2;
  v41 = a3;
  v5 = *(*v4 + 88);
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 104);
  v8 = *(*v4 + 112);
  v47 = *(*v4 + 80);
  v48 = v5;
  v49 = v6;
  v50 = v7;
  v51 = v8;
  v9 = type metadata accessor for DispatchListenerTable.Priority();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v38 = &v35 - v11;
  v46 = v47;
  v48 = v5;
  v49 = v6;
  v43 = v7;
  v44 = v6;
  v50 = v7;
  v51 = v8;
  v12 = type metadata accessor for DispatchListenerTable.Registration();
  v13 = sub_1BCF21D4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x1EEE9AC00])();
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v45 = v5;
  sub_1BCF21B0C();
  v20 = v47;
  swift_beginAccess();
  v21 = v4[2];
  v53 = v20;

  sub_1BCF21A3C();

  v22 = *(v12 - 8);
  LODWORD(v21) = (*(v22 + 48))(v19, 1, v12);
  (*(v14 + 8))(v19, v13);
  if (v21 == 1)
  {
    v23 = v45;
    sub_1BCF21B0C();
    v24 = v53;
    v25 = v38;
    (*(v36 + 16))(v38, v40, v37);
    v26 = swift_allocObject();
    v26[2] = v46;
    v26[3] = v23;
    v27 = v43;
    v26[4] = v44;
    v26[5] = v27;
    v28 = v41;
    v29 = v42;
    v26[6] = v8;
    v26[7] = v28;
    v26[8] = v29;
    v30 = v39;
    sub_1BCEFF088(v25, &unk_1BCF229A8, v26, v39);
    (*(v22 + 56))(v30, 0, 1, v12);
    v52 = v24;
    swift_beginAccess();
    sub_1BCF21A1C();

    sub_1BCF21A4C();
    return swift_endAccess();
  }

  else
  {
    v32 = v45;
    sub_1BCF21B0C();
    v33 = v53;
    v47 = v46;
    v48 = v32;
    v49 = v44;
    v50 = v43;
    v51 = v8;
    type metadata accessor for DispatchListenerTable.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v34 = v33;
    *(v34 + 4) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BCEFF6E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1BCF21C3C();
  v4[3] = sub_1BCF21C2C();
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1BCEFF808;

  return v10(a1);
}

uint64_t sub_1BCEFF808()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1BCF21BDC();
  if (v2)
  {
    v8 = sub_1BCEFF9D0;
  }

  else
  {
    v8 = sub_1BCEFF964;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BCEFF964()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(0, 0xF000000000000000);
}

uint64_t sub_1BCEFF9D0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1BCEFFA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v16;
  *(v8 + 144) = v17;
  *(v8 + 120) = v15;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = *(a8 - 8);
  *(v8 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  sub_1BCF21C3C();
  *(v8 + 168) = sub_1BCF21C2C();
  v12 = sub_1BCF21BDC();
  *(v8 + 176) = v12;
  *(v8 + 184) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BCEFFB70, v12, v11);
}

uint64_t sub_1BCEFFB70()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = *(v0 + 96);

    *(v0 + 16) = v19;
    *(v0 + 32) = v18;
    *(v0 + 48) = v3;
    type metadata accessor for DispatchListenerTable.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 0;
    *(v4 + 4) = 2;
    swift_willThrow();
    v10 = *(v0 + 160);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = *(v0 + 112);
    v8 = *(v0 + 64);
    v9 = *(v6 + 16);
    sub_1BCEFC5E0(v8, *(v0 + 72));
    sub_1BCF050B8(v8, v1);
    v9(v8, v1, v7, v6);
    v20 = (*(v0 + 80) + **(v0 + 80));
    v13 = *(*(v0 + 80) + 4);
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_1BCEFFDC8;
    v15 = *(v0 + 160);
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);

    return v20(v17, v15);
  }
}

uint64_t sub_1BCEFFDC8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1BCEFFFB8;
  }

  else
  {
    v7 = sub_1BCEFFF04;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BCEFFF04()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v6 = v0[8];
  v5 = v0[9];

  sub_1BCF05424(v6, v5);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7(0, 0xF000000000000000);
}

uint64_t sub_1BCEFFFB8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v6 = v0[8];
  v5 = v0[9];

  sub_1BCF05424(v6, v5);
  (*(v3 + 8))(v2, v4);
  v7 = v0[25];
  v8 = v0[20];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BCF00098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a6;
  v49 = a8;
  v45 = a7;
  v46 = a5;
  v50 = a4;
  v47 = a3;
  v44 = a2;
  v9 = *(*v8 + 88);
  v10 = *(*v8 + 96);
  v11 = *(*v8 + 104);
  v12 = *(*v8 + 112);
  v55 = *(*v8 + 80);
  v56 = v9;
  v57 = v10;
  v58 = v11;
  v59 = v12;
  v41 = type metadata accessor for DispatchListenerTable.Priority();
  v40 = *(v41 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v39 - v14;
  v54 = v55;
  v56 = v9;
  v57 = v10;
  v51 = v11;
  v52 = v10;
  v58 = v11;
  v59 = v12;
  v15 = type metadata accessor for DispatchListenerTable.Registration();
  v16 = sub_1BCF21D4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v43 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  v53 = v9;
  sub_1BCF21B0C();
  v23 = v55;
  swift_beginAccess();
  v24 = v8[2];
  v61 = v23;

  sub_1BCF21A3C();

  v25 = *(v15 - 8);
  LODWORD(v24) = (*(v25 + 48))(v22, 1, v15);
  (*(v17 + 8))(v22, v16);
  if (v24 == 1)
  {
    v26 = v53;
    sub_1BCF21B0C();
    v27 = v61;
    v28 = v42;
    (*(v40 + 16))(v42, v44, v41);
    v29 = swift_allocObject();
    v29[2] = v54;
    v29[3] = v26;
    v31 = v51;
    v30 = v52;
    v29[4] = v46;
    v29[5] = v30;
    v29[6] = v31;
    v29[7] = v12;
    v32 = v47;
    v29[8] = v48;
    v29[9] = v32;
    v33 = v49;
    v29[10] = v50;
    v34 = v43;
    sub_1BCEFF088(v28, v33, v29, v43);
    (*(v25 + 56))(v34, 0, 1, v15);
    v60 = v27;
    swift_beginAccess();
    sub_1BCF21A1C();

    sub_1BCF21A4C();
    return swift_endAccess();
  }

  else
  {
    v36 = v53;
    sub_1BCF21B0C();
    v37 = v61;
    v55 = v54;
    v56 = v36;
    v57 = v52;
    v58 = v51;
    v59 = v12;
    type metadata accessor for DispatchListenerTable.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v38 = v37;
    *(v38 + 4) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BCF00528(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v20;
  v11 = sub_1BCF21D4C();
  v8[4] = v11;
  v12 = *(v11 - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v8[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[7] = v14;
  v8[8] = sub_1BCF21C3C();
  v8[9] = sub_1BCF21C2C();
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v8[10] = v16;
  *v16 = v8;
  v16[1] = sub_1BCF006CC;

  return v18(v14, a1);
}

uint64_t sub_1BCF006CC()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_1BCF21BDC();
  if (v2)
  {
    v8 = sub_1BCF00A60;
  }

  else
  {
    v8 = sub_1BCF00828;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BCF00828()
{
  v1 = v0[2];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v7 = v0 + 4;
  v6 = v0[4];

  (*(v5 + 16))(v4, v3, v6);
  v8 = *(v1 - 8);
  if ((*(v8 + 48))(v4, 1, v1) == 1)
  {
    v9 = *(v0[5] + 8);
    v9(v0[7], v0[4]);
    v10 = 0;
    v11 = 0xF000000000000000;
LABEL_8:
    v23 = v0[7];
    v9(v0[6], *v7);

    v24 = v0[1];

    return v24(v10, v11);
  }

  v12 = v0[11];
  v13 = v0[6];
  v10 = (*(v0[3] + 8))(v0[2]);
  v15 = v0[7];
  v16 = (v8 + 8);
  if (!v12)
  {
    v11 = v14;
    (*(v0[5] + 8))(v15, v0[4]);
    v9 = *v16;
    v7 = v0 + 2;
    goto LABEL_8;
  }

  v17 = v0[6];
  v18 = v0[2];
  (*(v0[5] + 8))(v15, v0[4]);
  (*v16)(v17, v18);
  v20 = v0[6];
  v19 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BCF00A60()
{
  v1 = v0[9];

  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BCF00AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a4;
  v49 = a7;
  v50 = a8;
  v46 = a5;
  v47 = a6;
  v48 = a3;
  v45 = a2;
  v9 = *(*v8 + 88);
  v10 = *(*v8 + 96);
  v11 = *(*v8 + 104);
  v12 = *(*v8 + 112);
  v56 = *(*v8 + 80);
  v57 = v9;
  v58 = v10;
  v59 = v11;
  v60 = v12;
  v42 = type metadata accessor for DispatchListenerTable.Priority();
  v41 = *(v42 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - v14;
  v55 = v56;
  v57 = v9;
  v58 = v10;
  v52 = v11;
  v53 = v10;
  v59 = v11;
  v60 = v12;
  v15 = type metadata accessor for DispatchListenerTable.Registration();
  v16 = sub_1BCF21D4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v44 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v54 = v9;
  sub_1BCF21B0C();
  v23 = v56;
  swift_beginAccess();
  v24 = v8[2];
  v62 = v23;

  sub_1BCF21A3C();

  v25 = *(v15 - 8);
  LODWORD(v24) = (*(v25 + 48))(v22, 1, v15);
  (*(v17 + 8))(v22, v16);
  if (v24 == 1)
  {
    v26 = v54;
    sub_1BCF21B0C();
    v27 = v62;
    v28 = v43;
    (*(v41 + 16))(v43, v45, v42);
    v29 = swift_allocObject();
    v29[2] = v55;
    v29[3] = v26;
    v30 = v47;
    v29[4] = v46;
    v29[5] = v30;
    v31 = v52;
    v29[6] = v53;
    v29[7] = v31;
    v32 = v49;
    v33 = v50;
    v29[8] = v12;
    v29[9] = v32;
    v34 = v48;
    v29[10] = v33;
    v29[11] = v34;
    v29[12] = v51;
    v35 = v44;
    sub_1BCEFF088(v28, &unk_1BCF229D8, v29, v44);
    (*(v25 + 56))(v35, 0, 1, v15);
    v61 = v27;
    swift_beginAccess();
    sub_1BCF21A1C();

    sub_1BCF21A4C();
    return swift_endAccess();
  }

  else
  {
    v37 = v54;
    sub_1BCF21B0C();
    v38 = v62;
    v56 = v55;
    v57 = v37;
    v58 = v53;
    v59 = v52;
    v60 = v12;
    type metadata accessor for DispatchListenerTable.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v39 = v38;
    *(v39 + 4) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BCF00F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v22;
  *(v8 + 128) = v20;
  *(v8 + 144) = v21;
  *(v8 + 112) = a8;
  *(v8 + 120) = v19;
  *(v8 + 96) = a6;
  *(v8 + 104) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  v10 = sub_1BCF21D4C();
  *(v8 + 168) = v10;
  v11 = *(v10 - 8);
  *(v8 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v13 = *(a8 - 8);
  *(v8 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  sub_1BCF21C3C();
  *(v8 + 216) = sub_1BCF21C2C();
  v16 = sub_1BCF21BDC();
  *(v8 + 224) = v16;
  *(v8 + 232) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BCF01108, v16, v15);
}

uint64_t sub_1BCF01108()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 144);
    v21 = *(v0 + 128);
    v22 = *(v0 + 96);

    *(v0 + 16) = v22;
    *(v0 + 32) = v21;
    *(v0 + 48) = v3;
    type metadata accessor for DispatchListenerTable.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 0;
    *(v4 + 4) = 2;
    swift_willThrow();
    v10 = *(v0 + 208);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 152);
    v7 = *(v0 + 112);
    v8 = *(v0 + 64);
    v9 = *(v6 + 16);
    sub_1BCEFC5E0(v8, *(v0 + 72));
    sub_1BCF050B8(v8, v1);
    v9(v8, v1, v7, v6);
    v23 = (*(v0 + 80) + **(v0 + 80));
    v15 = *(*(v0 + 80) + 4);
    v16 = swift_task_alloc();
    *(v0 + 240) = v16;
    *v16 = v0;
    v16[1] = sub_1BCF01378;
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    v19 = *(v0 + 88);
    v20 = *(v0 + 56);

    return v23(v18, v20, v17);
  }
}

uint64_t sub_1BCF01378()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_1BCF01794;
  }

  else
  {
    v7 = sub_1BCF014B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BCF014B4()
{
  v2 = v0 + 21;
  v1 = v0[21];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = v0[15];

  (*(v6 + 16))(v5, v4, v1);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[24];
    v12 = v0[21];
    v13 = v0[22];
    v14 = v0[14];
    sub_1BCF05424(v0[8], v0[9]);
    v15 = *(v13 + 8);
    v15(v11, v12);
    (*(v10 + 8))(v9, v14);
    v16 = 0;
    v17 = 0xF000000000000000;
LABEL_8:
    v36 = v0[26];
    v37 = v0[24];
    v15(v0[23], *v2);

    v38 = v0[1];

    return v38(v16, v17);
  }

  v18 = v0[31];
  v19 = v0[23];
  v20 = (*(v0[20] + 8))(v0[15]);
  v23 = v0[25];
  v22 = v0[26];
  v24 = v0[24];
  if (!v18)
  {
    v16 = v20;
    v17 = v21;
    v34 = v0[21];
    v35 = v0[22];
    v40 = v0[14];
    sub_1BCF05424(v0[8], v0[9]);
    (*(v35 + 8))(v24, v34);
    (*(v23 + 8))(v22, v40);
    v15 = *(v8 + 8);
    v2 = v0 + 15;
    goto LABEL_8;
  }

  v25 = v0[22];
  v39 = v0[23];
  v26 = v0[21];
  v28 = v0[14];
  v27 = v0[15];
  sub_1BCF05424(v0[8], v0[9]);
  (*(v25 + 8))(v24, v26);
  (*(v23 + 8))(v22, v28);
  (*(v8 + 8))(v39, v27);
  v29 = v0[26];
  v30 = v0[23];
  v31 = v0[24];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1BCF01794()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  v6 = v0[8];
  v5 = v0[9];

  sub_1BCF05424(v6, v5);
  (*(v3 + 8))(v2, v4);
  v7 = v0[31];
  v8 = v0[26];
  v10 = v0[23];
  v9 = v0[24];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BCF01854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v60 = a1;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  v8 = *(*v3 + 104);
  v9 = *(*v3 + 112);
  *&v80 = v5;
  *(&v80 + 1) = v6;
  v81 = v7;
  v82 = v8;
  v83 = v9;
  v59 = type metadata accessor for DispatchListenerTable.Priority();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v75 = &v50[-v12];
  v65 = v5;
  *&v80 = v5;
  *(&v80 + 1) = v6;
  v64 = v7;
  v81 = v7;
  v82 = v8;
  v63 = v8;
  v77 = v9;
  v83 = v9;
  v13 = type metadata accessor for DispatchListenerTable.Registration();
  v67 = sub_1BCF21D4C();
  v14 = *(v67 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v67);
  v58 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v66 = &v50[-v19];
  v79 = *(v6 - 8);
  v20 = *(v79 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v57 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v50[-v24];
  v62 = v26;
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v50[-v27];
  v78 = a3;
  result = sub_1BCF21B8C();
  if (result)
  {
    v29 = 0;
    v73 = (v79 + 32);
    v74 = (v79 + 16);
    v56 = v13 - 8;
    v55 = (v14 + 8);
    v52 = (v10 + 16);
    v54 = (v79 + 8);
    v53 = v13;
    v51 = v25;
    while (1)
    {
      v30 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v30)
      {
        v31 = *(v79 + 16);
        v32 = v68;
        result = v31(v68, v78 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v29, v6);
      }

      else
      {
        result = sub_1BCF21E5C();
        v32 = v68;
        if (v62 != 8)
        {
          goto LABEL_14;
        }

        *&v80 = result;
        v31 = *v74;
        (*v74)(v68, &v80, v6);
        result = swift_unknownObjectRelease();
      }

      if (__OFADD__(v29, 1))
      {
        break;
      }

      v72 = v29 + 1;
      v71 = *v73;
      v71(v25, v32, v6);
      sub_1BCF21B0C();
      v33 = v80;
      v34 = v76;
      swift_beginAccess();
      v35 = *(v34 + 16);
      v85 = v33;

      v36 = v66;
      sub_1BCF21A3C();

      v37 = *(v13 - 8);
      LODWORD(v35) = (*(v37 + 48))(v36, 1, v13);
      (*v55)(v36, v67);
      if (v35 != 1)
      {
        v47 = v77;
        sub_1BCF21B0C();
        v48 = v85;
        *&v80 = v65;
        *(&v80 + 1) = v6;
        v81 = v64;
        v82 = v63;
        v83 = v47;
        type metadata accessor for DispatchListenerTable.Failure();
        swift_getWitnessTable();
        swift_allocError();
        *v49 = v48;
        *(v49 + 4) = 0;
        swift_willThrow();
        return (*v54)(v25, v6);
      }

      v38 = v25;
      v39 = v77;
      sub_1BCF21B0C();
      v69 = v85;
      (*v52)(v75, v61, v59);
      sub_1BCF049CC(v60, &v80);
      v70 = v29;
      v40 = v57;
      v31(v57, v38, v6);
      v41 = (*(v79 + 80) + 96) & ~*(v79 + 80);
      v42 = swift_allocObject();
      v43 = v39;
      v42[2] = v65;
      v42[3] = v6;
      v44 = v63;
      v42[4] = v64;
      v42[5] = v44;
      v42[6] = v43;
      sub_1BCEFD350(&v80, (v42 + 7));
      v71(v42 + v41, v40, v6);
      v45 = v58;
      v13 = v53;
      sub_1BCEFF088(v75, &unk_1BCF229E8, v42, v58);
      (*(v37 + 56))(v45, 0, 1, v13);
      v84 = v69;
      swift_beginAccess();
      sub_1BCF21A1C();
      sub_1BCF21A4C();
      swift_endAccess();
      v25 = v51;
      (*(v79 + 8))(v51, v6);
      v46 = v70;
      result = sub_1BCF21B8C();
      v29 = v46 + 1;
      if (v72 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCF02078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1BCF21C3C();
  v8[11] = sub_1BCF21C2C();
  v10 = sub_1BCF21BDC();
  v8[12] = v10;
  v8[13] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BCF02128, v10, v9);
}

uint64_t sub_1BCF02128()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Forwarding request", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 16);

  v13 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v13);
  sub_1BCF21B0C();
  v14 = *(v0 + 144);
  v15 = (*(v6 + 16))(v8, v6);
  if (v16)
  {
    v17 = *(v0 + 16);
    v18 = (*(*(v0 + 72) + 8))(*(v0 + 56));
    v20 = v19;
  }

  else
  {
    v18 = v15;
    v20 = 0;
  }

  v21 = *(v12 + 8);
  v27 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1BCF023A8;
  v24 = *(v0 + 24);
  v25 = *(v0 + 32);

  return (v27)(v14, v24, v25, v18, v20 & 1, v13, v12);
}

uint64_t sub_1BCF023A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = v6[12];
    v10 = v6[13];
    v11 = sub_1BCF02544;
  }

  else
  {
    v6[16] = a2;
    v6[17] = a1;
    v9 = v6[12];
    v10 = v6[13];
    v11 = sub_1BCF024DC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BCF024DC()
{
  v1 = v0[11];

  v2 = v0[1];
  v4 = v0[16];
  v3 = v0[17];

  return v2(v3, v4);
}

uint64_t sub_1BCF02544()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1BCF025A8(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 112);
  *&v72 = *(*v2 + 80);
  *(&v72 + 1) = v4;
  v73 = v5;
  v74 = v6;
  v75 = v7;
  v8 = type metadata accessor for DispatchListenerTable.Priority();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v46[-v10];
  v58 = v72;
  *(&v72 + 1) = v4;
  v57 = v5;
  v73 = v5;
  v74 = v6;
  v56 = v6;
  v75 = v7;
  v11 = type metadata accessor for DispatchListenerTable.Registration();
  v60 = sub_1BCF21D4C();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v60);
  v53 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v46[-v17];
  v71 = *(v4 - 8);
  v18 = *(v71 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v52 = &v46[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v46[-v22];
  v55 = v24;
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v46[-v25];
  v26 = a2;
  result = sub_1BCF21B8C();
  if (result)
  {
    v28 = 0;
    v67 = (v71 + 32);
    v68 = (v71 + 16);
    v51 = v11 - 8;
    v50 = (v12 + 8);
    v49 = (v71 + 8);
    v48 = v26;
    v47 = v11;
    while (1)
    {
      v29 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v29)
      {
        v30 = *(v71 + 16);
        v31 = v61;
        result = v30(v61, v26 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v28, v4);
      }

      else
      {
        result = sub_1BCF21E5C();
        v31 = v61;
        if (v55 != 8)
        {
          goto LABEL_14;
        }

        *&v72 = result;
        v30 = *v68;
        (*v68)(v61, &v72, v4);
        result = swift_unknownObjectRelease();
      }

      if (__OFADD__(v28, 1))
      {
        break;
      }

      v66 = v28 + 1;
      v65 = *v67;
      v65(v23, v31, v4);
      sub_1BCF21B0C();
      v32 = v72;
      v33 = v70;
      swift_beginAccess();
      v34 = *(v33 + 16);
      v77 = v32;

      v35 = v59;
      sub_1BCF21A3C();

      v64 = *(v11 - 8);
      LODWORD(v34) = (*(v64 + 48))(v35, 1, v11);
      (*v50)(v35, v60);
      if (v34 != 1)
      {
        sub_1BCF21B0C();
        v44 = v77;
        *&v72 = v58;
        *(&v72 + 1) = v4;
        v73 = v57;
        v74 = v56;
        v75 = v7;
        type metadata accessor for DispatchListenerTable.Failure();
        swift_getWitnessTable();
        swift_allocError();
        *v45 = v44;
        *(v45 + 4) = 0;
        swift_willThrow();
        return (*v49)(v23, v4);
      }

      sub_1BCF21B0C();
      v62 = v77;
      v36 = sub_1BCF21C5C();
      (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
      sub_1BCF049CC(v54, &v72);
      v63 = v28;
      v37 = v52;
      v30(v52, v23, v4);
      v38 = (*(v71 + 80) + 96) & ~*(v71 + 80);
      v39 = swift_allocObject();
      v39[2] = v58;
      v39[3] = v4;
      v40 = v56;
      v39[4] = v57;
      v39[5] = v40;
      v39[6] = v7;
      sub_1BCEFD350(&v72, (v39 + 7));
      v65(v39 + v38, v37, v4);
      v41 = v53;
      v11 = v47;
      v42 = v48;
      sub_1BCEFF088(v69, &unk_1BCF229F8, v39, v53);
      (*(v64 + 56))(v41, 0, 1, v11);
      v76 = v62;
      swift_beginAccess();
      sub_1BCF21A1C();
      sub_1BCF21A4C();
      swift_endAccess();
      (*(v71 + 8))(v23, v4);
      v26 = v42;
      v43 = v63;
      result = sub_1BCF21B8C();
      v28 = v43 + 1;
      if (v66 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCF02D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v12;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  sub_1BCF21C3C();
  v7[8] = sub_1BCF21C2C();
  v9 = sub_1BCF21BDC();
  v7[9] = v9;
  v7[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BCF02E28, v9, v8);
}

uint64_t sub_1BCF02E28()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Forwarding request", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1BCF21B0C();
  v11 = *(v0 + 96);
  v12 = *(v10 + 8);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 88) = v14;
  *v14 = v0;
  v14[1] = sub_1BCF03038;
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);

  return v18(v11, v15, v16, v9, v10);
}

uint64_t sub_1BCF03038()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BCF03158, v4, v3);
}

uint64_t sub_1BCF03158()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(0, 0xF000000000000000);
}

uint64_t sub_1BCF031C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 464);
  v8 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v9 = v6[55];
    v10 = v6[56];
    v11 = sub_1BCF03648;
  }

  else
  {
    v6[60] = a2;
    v6[61] = a1;
    v9 = v6[55];
    v10 = v6[56];
    v11 = sub_1BCF032F8;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BCF032F8()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[45];

  (*(v3 + 8))(v2, v4);
  v5 = v0[60];
  v6 = v0[61];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[48];
  v10 = v0[44];
  v11 = v0[37];
  v13 = v0[33];
  v12 = v0[34];

  v14 = v0[1];

  return v14(v6, v5);
}

uint64_t sub_1BCF033EC()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 448);
  v6 = *(v2 + 440);
  if (v0)
  {
    v7 = sub_1BCF03838;
  }

  else
  {
    v7 = sub_1BCF03528;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BCF03528()
{
  v1 = v0[62];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[49];
  v5 = v0[45];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[48];
  v14 = v0[44];
  v15 = v0[37];
  v17 = v0[33];
  v16 = v0[34];

  v18 = v0[1];

  return v18(v10, v9);
}

uint64_t sub_1BCF03648()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[45];

  (*(v3 + 8))(v2, v4);
  v5 = v0[59];
  v6 = v0[57];
  v7 = v5;
  v8 = sub_1BCF216EC();
  v9 = sub_1BCF21CCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1BCEF6000, v8, v9, "Dispatch error: %@", v10, 0xCu);
    sub_1BCF05050(v11);
    MEMORY[0x1BFB32D20](v11, -1, -1);
    MEMORY[0x1BFB32D20](v10, -1, -1);
  }

  v15 = v0[51];
  v14 = v0[52];
  v16 = v0[48];
  v17 = v0[44];
  v18 = v0[37];
  v19 = v0[34];
  v24 = v0[33];

  swift_getErrorValue();
  v20 = v0[20];
  v21 = v0[22];
  sub_1BCF20E14(v0[21]);
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1BCF03838()
{
  v1 = v0[62];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[49];
  v5 = v0[45];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = v0[64];
  v10 = v0[57];
  v11 = v9;
  v12 = sub_1BCF216EC();
  v13 = sub_1BCF21CCC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BCEF6000, v12, v13, "Dispatch error: %@", v14, 0xCu);
    sub_1BCF05050(v15);
    MEMORY[0x1BFB32D20](v15, -1, -1);
    MEMORY[0x1BFB32D20](v14, -1, -1);
  }

  v19 = v0[51];
  v18 = v0[52];
  v20 = v0[48];
  v21 = v0[44];
  v22 = v0[37];
  v23 = v0[34];
  v28 = v0[33];

  swift_getErrorValue();
  v24 = v0[20];
  v25 = v0[22];
  sub_1BCF20E14(v0[21]);
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_1BCF03A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v14;
  *(v8 + 128) = v15;
  *(v8 + 104) = v13;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a1;
  *(v8 + 64) = a4;
  sub_1BCF21C3C();
  *(v8 + 136) = sub_1BCF21C2C();
  v10 = sub_1BCF21BDC();
  *(v8 + 144) = v10;
  *(v8 + 152) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BCF03B08, v10, v9);
}

uint64_t sub_1BCF03B08()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  *(v0 + 48) = v1;
  v4 = (v2 + *(type metadata accessor for DispatchListenerTable.Registration() + 60));
  v5 = v4[1];
  v12 = (*v4 + **v4);
  v6 = (*v4)[1];
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1BCF03C28;
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);

  return v12(v10, v8, v9);
}

uint64_t sub_1BCF03C28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v9 = v6[18];
    v10 = v6[19];
    v11 = sub_1BCF03DD4;
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;
    v9 = v6[18];
    v10 = v6[19];
    v11 = sub_1BCF03D5C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BCF03D5C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[17];
  v4 = v0[7];

  *v4 = v2;
  v4[1] = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1BCF03DD4()
{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t DispatchListenerTable.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DispatchListenerTable.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1BCF03EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1BCF21A5C();

  return sub_1BCF03F04(a1, v9, a2, a3);
}

unint64_t sub_1BCF03F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1BCF21A6C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1BCF0408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1BCF21B8C())
  {
    sub_1BCF21EAC();
    v13 = sub_1BCF21E9C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1BCF21B8C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1BCF21B6C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1BCF21E5C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1BCF03EA8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1BCF043A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = v3[8];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_1BCF05438;

  return sub_1BCEFF6E8(a1, a2, a3, v12);
}

uint64_t sub_1BCF04498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v16 = *(v3 + 40);
  v11 = *(v3 + 56);
  v10 = *(v3 + 64);
  v13 = *(v3 + 72);
  v12 = *(v3 + 80);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_1BCF05438;

  return sub_1BCEFFA68(a1, a2, a3, v13, v12, v7, v8, v9);
}

uint64_t sub_1BCF04598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v16 = *(v3 + 40);
  v11 = *(v3 + 56);
  v10 = *(v3 + 64);
  v13 = *(v3 + 72);
  v12 = *(v3 + 80);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_1BCF05438;

  return sub_1BCF00528(a1, a2, a3, v13, v12, v7, v8, v9);
}

uint64_t sub_1BCF04698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v16 = *(v3 + 56);
  v17 = *(v3 + 40);
  v11 = *(v3 + 72);
  v10 = *(v3 + 80);
  v13 = *(v3 + 88);
  v12 = *(v3 + 96);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_1BCF05438;

  return sub_1BCF00F84(a1, a2, a3, v13, v12, v7, v8, v9);
}

uint64_t sub_1BCF047A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = (*(*(v8 - 8) + 80) + 96) & ~*(*(v8 - 8) + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1BCF048C0;

  return sub_1BCF02078(a1, a2, a3, (v3 + 7), v3 + v12, v7, v8, v9);
}

uint64_t sub_1BCF048C0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1BCF049CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCF04AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = (*(*(v8 - 8) + 80) + 96) & ~*(*(v8 - 8) + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1BCF05438;

  return sub_1BCF02D80(a1, a2, a3, (v3 + 7), v3 + v12, v7, v8);
}

uint64_t dispatch thunk of DispatchListenerTable.register<A>(messageCode:priority:handler:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 176))();
}

uint64_t sub_1BCF04DE4()
{
  v0 = sub_1BCF21C5C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1BCF04E7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BCF04EC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BCF04F08(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1BCF04F20(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

unint64_t sub_1BCF04F40(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  result = type metadata accessor for DispatchListenerTable.Priority();
  if (v2 <= 0x3F)
  {
    result = sub_1BCF05000();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BCF05000()
{
  result = qword_1EDDD21D8[0];
  if (!qword_1EDDD21D8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1EDDD21D8);
  }

  return result;
}

uint64_t sub_1BCF05050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A750, &unk_1BCF232D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCF050B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BCF0510C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BCF05160(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v7 = v1[7];
  v6 = v1[6];
  v8 = v1[8];
  v3[2] = v5;
  v3[3] = v4;
  v3[4] = v6;
  v3[5] = v7;
  v3[6] = v8;
  v9 = *(type metadata accessor for DispatchListenerTable.Registration() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v12 = v1[3];
  v18 = v1[2];
  v13 = (v1 + ((*(*(v5 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  v3[7] = v16;
  *v16 = v3;
  v16[1] = sub_1BCF05330;

  return sub_1BCF03A54(a1, v18, v12, v1 + v10, v1 + v11, v14, v15, v5);
}

uint64_t sub_1BCF05330()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BCF05424(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BCF0510C(a1, a2);
  }

  return a1;
}

uint64_t NetworkHeader.processIdentifier.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t NetworkHeader.originatingProcessIdentifier.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_1BCF05464()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_1BCF05470()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BCF05490(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCF054B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1BCF054F0(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_1BCF05530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF05558, v4, 0);
}

uint64_t sub_1BCF05558()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Retrying connection via retry isolator", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = *(v5 + 112);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1BCF05330;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  return sub_1BCEF7BB0(v10, 0, v11, v8, v9);
}

uint64_t sub_1BCF056B8()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF05734(unsigned __int8 a1)
{
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](a1);
  return sub_1BCF21F6C();
}

BOOL sub_1BCF05780(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1BCF056FC(*a1, *a2);
}

uint64_t sub_1BCF05798(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1BCF05734(*v1);
}

uint64_t sub_1BCF057A8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1BCF0570C(a1, *v2);
}

uint64_t sub_1BCF057B8(uint64_t a1, void *a2)
{
  sub_1BCF21F4C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1BCF0570C(v8, *v2);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF0580C(uint64_t a1)
{
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t XPCDispatchClient.__allocating_init(serviceType:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  XPCDispatchClient.init(serviceType:)(a1);
  return v2;
}

uint64_t *XPCDispatchClient.init(serviceType:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  swift_defaultActor_initialize();
  v1[18] = 0;
  v1[15] = v2;
  v1[16] = v3;
  *(v1 + 136) = v4;
  v7 = *(v5 + 80);
  v8 = *(v5 + 96);
  type metadata accessor for DispatchClientTable();
  v1[14] = DispatchClientTable.__allocating_init()();
  return v1;
}

void sub_1BCF0591C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    [v1 setInterruptionHandler_];
    v1 = *(v0 + 144);
    if (v1)
    {
      [v1 setInvalidationHandler_];
      v1 = *(v0 + 144);
    }
  }

  [v1 invalidate];
  v2 = *(v0 + 144);
  *(v0 + 144) = 0;
}

uint64_t sub_1BCF05988(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF05A84, v1, 0);
}

uint64_t sub_1BCF05A84()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 2) = v2;
  *(v6 + 3) = *(v4 + 88);
  *(v6 + 4) = *(v4 + 96);
  (*(v3 + 32))(&v6[v5], v1, v2);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1BCF05BD0;
  v8 = v0[3];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return sub_1BCEF7BB0(v7, 1, &unk_1BCF22B80, v6, v9);
}

uint64_t sub_1BCF05BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1BCF05D5C;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 24);

    v5 = sub_1BCF05CF8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1BCF05CF8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BCF05D5C()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1BCF05DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a4;
  v6[23] = a6;
  v6[20] = a2;
  v6[21] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v9 = *(v8 + 64) + 15;
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF05E98, 0, 0);
}

uint64_t sub_1BCF05E98()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v10 = *(v0 + 160);
  sub_1BCF21B0C();
  v9 = *(v0 + 224);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF06080;
  swift_continuation_init();
  *(v0 + 136) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v4);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_87;
  [v10 receiveWithMessageCode:v9 messageData:0 completionHandler:v0 + 80];
  (*(v1 + 8))(boxed_opaque_existential_0, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BCF06080()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1BCF06200;
  }

  else
  {
    v3 = sub_1BCF06190;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF06190()
{
  v1 = v0[26];
  sub_1BCF05424(v0[18], v0[19]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1BCF06200()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[27];

  return v3();
}

uint64_t sub_1BCF06274()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1BCF063BC, v4, 0);
  }

  else
  {
    v6 = v3[11];
    v5 = v3[12];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1BCF063BC()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1BCF06428()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_1BCF0663C;
  }

  else
  {
    v3 = sub_1BCF06538;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF06538()
{
  if (v0[19] >> 60 == 15)
  {
    v1 = v0[25];
    v2 = v0[26];
    v3 = v0[23];
    type metadata accessor for XPCDispatchClient.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v5 = v0[24];
    v6 = v0[20];
    (*(v0[27] + 16))(v0[18]);
  }

  v7 = v0[30];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BCF0663C()
{
  v1 = v0[31];
  swift_willThrow();
  v2 = v0[30];
  v3 = v0[31];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BCF066AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *v4;
  v5[7] = *v4;
  v8 = *(v7 + 80);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v5[10] = *(v9 + 64);
  v5[11] = swift_task_alloc();
  v10 = *(a3 - 8);
  v5[12] = v10;
  v5[13] = *(v10 + 64);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0680C, v4, 0);
}

uint64_t sub_1BCF0680C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v17 = v3;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];
  v18 = v0[5];
  v9 = v0[2];
  (*(v4 + 16))(v1, v0[3], v8);
  (*(v5 + 16))(v3, v9, v6);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 2) = v6;
  *(v12 + 3) = v8;
  *(v12 + 4) = *(v7 + 88);
  *(v12 + 5) = *(v7 + 96);
  *(v12 + 6) = v18;
  (*(v4 + 32))(&v12[v10], v1, v8);
  (*(v5 + 32))(&v12[v11], v17, v6);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_1BCF069D0;
  v14 = v0[6];
  v15 = MEMORY[0x1E69E7CA8] + 8;

  return sub_1BCEF7BB0(v13, 1, &unk_1BCF22BB8, v12, v15);
}

uint64_t sub_1BCF069D0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1BCF06B68;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 48);

    v5 = sub_1BCF06AF8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1BCF06AF8()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BCF06B68()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1BCF06BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a8;
  v8[26] = v14;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[20] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  v8[27] = v9;
  v10 = *(v9 - 8);
  v8[28] = v10;
  v11 = *(v10 + 64) + 15;
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF06CC0, 0, 0);
}

uint64_t sub_1BCF06CC0()
{
  v1 = *(v0 + 168);
  *(v0 + 240) = (*(*(v0 + 208) + 8))(*(v0 + 192));
  *(v0 + 248) = v2;
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v13 = *(v0 + 160);
  sub_1BCF21B0C();
  v12 = *(v0 + 272);
  v9 = sub_1BCF215AC();
  *(v0 + 256) = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF06F48;
  swift_continuation_init();
  *(v0 + 136) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_61;
  [v13 receiveWithMessageCode:v12 messageData:v9 completionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BCF06F48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1BCF070D4;
  }

  else
  {
    v3 = sub_1BCF07058;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF07058()
{
  v1 = v0[32];
  v2 = v0[29];
  sub_1BCF0510C(v0[30], v0[31]);
  sub_1BCF05424(v0[18], v0[19]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BCF070D4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  swift_willThrow();
  sub_1BCF0510C(v3, v4);

  v5 = v0[33];
  v6 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BCF07164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = *v7;
  v8[10] = *v7;
  v11 = *(v10 + 80);
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v8[13] = *(v12 + 64);
  v8[14] = swift_task_alloc();
  v13 = *(a4 - 8);
  v8[15] = v13;
  v8[16] = *(v13 + 64);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF072C8, v7, 0);
}

uint64_t sub_1BCF072C8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v21 = v3;
  v5 = *(v0 + 96);
  v19 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 24);
  v18 = *(v0 + 40);
  v9 = *(v0 + 40);
  v20 = *(v0 + 56);
  (*(v4 + 16))(v1, *(v0 + 32), v9);
  (*(v5 + 16))(v3, v8, v6);
  v10 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 144) = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v18;
  *(v12 + 40) = *(v7 + 88);
  *(v12 + 48) = *(v7 + 96);
  *(v12 + 56) = v20;
  (*(v4 + 32))(v12 + v10, v1, v9);
  (*(v5 + 32))(v12 + v11, v21, v6);
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = sub_1BCF074A8;
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 16);

  return sub_1BCEF7BB0(v16, 1, &unk_1BCF22BD0, v12, v15);
}

uint64_t sub_1BCF074A8()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1BCF075FC, v4, 0);
  }

  else
  {
    v6 = v3[17];
    v5 = v3[18];
    v7 = v3[14];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1BCF075FC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_1BCF07674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v15;
  *(v8 + 224) = v14;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a3;
  *(v8 + 184) = a4;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF07760, 0, 0);
}

uint64_t sub_1BCF07760()
{
  v1 = *(v0 + 176);
  v2 = (*(*(v0 + 232) + 8))(*(v0 + 200));
  *(v0 + 272) = 0;
  *(v0 + 280) = v2;
  *(v0 + 288) = v3;
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v14 = *(v0 + 168);
  sub_1BCF21B0C();
  v13 = *(v0 + 312);
  v10 = sub_1BCF215AC();
  *(v0 + 296) = v10;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF079EC;
  swift_continuation_init();
  *(v0 + 136) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_57;
  [v14 receiveWithMessageCode:v13 messageData:v10 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BCF079EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_1BCF07C74;
  }

  else
  {
    v3 = sub_1BCF07AFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF07AFC()
{
  v1 = v0[19];
  v2 = v0[37];
  if (v1 >> 60 == 15)
  {
    v4 = v0[35];
    v3 = v0[36];
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[24];

    type metadata accessor for XPCDispatchClient.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v4;
    v10 = v3;
LABEL_4:
    sub_1BCF0510C(v9, v10);
    v16 = v0[33];

    v17 = v0[1];
    goto LABEL_5;
  }

  v11 = v0[34];
  v12 = v0[30];
  v13 = v0[26];
  v14 = v0[20];
  v15 = v0[18];

  (*(v12 + 16))(v15, v1, v13, v12);
  v9 = v0[35];
  v10 = v0[36];
  if (v11)
  {
    goto LABEL_4;
  }

  v19 = v0[33];
  sub_1BCF0510C(v9, v10);

  v17 = v0[1];
LABEL_5:

  return v17();
}

uint64_t sub_1BCF07C74()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  swift_willThrow();
  sub_1BCF0510C(v3, v4);

  v5 = v0[38];
  v6 = v0[33];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BCF07D04()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1BCF07E44;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_1BCF07E28;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1BCF07E44()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1BCF07EA8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_1BCF08230;
  }

  else
  {
    v3 = sub_1BCF07FB8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF07FB8()
{
  v1 = *(v0 + 368);
  **(v0 + 304) = *(v0 + 288);

  v2 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BCF08030()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_1BCF081B8;
  }

  else
  {
    v3 = sub_1BCF08140;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF08140()
{
  v1 = *(v0 + 384);
  **(v0 + 304) = *(v0 + 272);

  v2 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BCF081B8()
{
  v1 = v0[48];
  v2 = v0[49];
  swift_willThrow();

  v3 = v0[49];
  v4 = v0[45];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BCF08230()
{
  v1 = v0[46];
  v2 = v0[47];
  swift_willThrow();

  v3 = v0[47];
  v4 = v0[45];

  v5 = v0[1];

  return v5();
}

void sub_1BCF082A8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
    sub_1BCF21BFC();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      sub_1BCF215BC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
    sub_1BCF21C0C();
  }
}

void sub_1BCF08374(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BCF2170C();
  __swift_project_value_buffer(v6, qword_1EDDD2780);

  oslog = sub_1BCF216EC();
  v7 = sub_1BCF21CCC();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1BCEF84F4(a1, a2, &v11);
    _os_log_impl(&dword_1BCEF6000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB32D20](v9, -1, -1);
    MEMORY[0x1BFB32D20](v8, -1, -1);
  }
}

uint64_t sub_1BCF084CC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1BCF08658;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 48);

    v5 = sub_1BCF085F4;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1BCF085F4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BCF08658()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BCF086C4(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a5;
  v9 = a4;
  v46 = a3;
  v12 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v13 = sub_1BCF21C1C();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00]();
  v42 = &v40 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v45 = &v40 - v17;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1BCF2170C();
  __swift_project_value_buffer(v18, qword_1EDDD2780);
  v19 = a1;
  v20 = sub_1BCF216EC();
  v21 = sub_1BCF21CCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = v9;
    v41 = v13;
    v23 = a7;
    v24 = a6;
    v25 = v22;
    v26 = v12;
    v27 = a2;
    v28 = swift_slowAlloc();
    *v25 = 138412290;
    v29 = a1;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_1BCEF6000, v20, v21, "XPC connection error: %@", v25, 0xCu);
    sub_1BCEF90DC(v28, qword_1EBD2A750, &unk_1BCF232D0);
    v31 = v28;
    a2 = v27;
    v12 = v26;
    MEMORY[0x1BFB32D20](v31, -1, -1);
    v32 = v25;
    a6 = v24;
    a7 = v23;
    v9 = v40;
    v13 = v41;
    MEMORY[0x1BFB32D20](v32, -1, -1);
  }

  if ((a2 & 1) != 0 && (swift_getErrorValue(), sub_1BCF20F94(v47) == 4097))
  {
    v33 = sub_1BCF21C5C();
    (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
    v34 = v44;
    v35 = v42;
    (*(v44 + 16))(v42, v46, v13);
    v36 = (*(v34 + 80) + 88) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = 0;
    *(v37 + 3) = 0;
    *(v37 + 4) = v12[10];
    *(v37 + 5) = a7;
    *(v37 + 6) = v12[11];
    *(v37 + 7) = v12[12];
    *(v37 + 8) = v9;
    *(v37 + 9) = v43;
    *(v37 + 10) = a6;
    (*(v34 + 32))(&v37[v36], v35, v13);

    sub_1BCF0E794(0, 0, v45, &unk_1BCF22E50, v37);
  }

  else
  {
    v48 = a1;
    v39 = a1;
    return sub_1BCF21BFC();
  }
}

uint64_t sub_1BCF08AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v12 = *(a8 - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v8[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[7] = v14;
  v15 = swift_task_alloc();
  v8[8] = v15;
  *v15 = v8;
  v15[1] = sub_1BCF08C00;

  return sub_1BCF05530(v14, a5, a6, a8);
}

uint64_t sub_1BCF08C00()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1BCF08E08;
  }

  else
  {
    v3 = sub_1BCF08D14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF08D14()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  (*(v3 + 16))(v0[6], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21C1C();
  sub_1BCF21C0C();
  (*(v3 + 8))(v1, v2);
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BCF08E08()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21C1C();
  sub_1BCF21BFC();
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BCF08EC0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1BCF0A150;
  }

  else
  {
    v3 = sub_1BCF0A154;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t XPCDispatchClient.deinit()
{
  v1 = *(v0 + 112);

  sub_1BCF0953C(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCDispatchClient.__deallocating_deinit()
{
  XPCDispatchClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF0903C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BCF0914C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BCF0A158;

  return sub_1BCF05DC8(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t sub_1BCF0924C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = (*(*(v7 - 8) + 80) + 56) & ~*(*(v7 - 8) + 80);
  v12 = (v11 + *(*(v7 - 8) + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1BCF0A158;

  return sub_1BCF06BE0(a1, a2, v2 + v11, v2 + v12, v6, v7, v8, v9);
}

uint64_t sub_1BCF093BC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v15 = *(v2 + 48);
  v10 = *(v2 + 64);
  v11 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v12 = (v11 + *(*(v7 - 8) + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1BCF0A158;

  return sub_1BCF07674(a1, a2, v2 + v11, v2 + v12, v6, v7, v8, v9);
}

uint64_t sub_1BCF0953C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t dispatch thunk of XPCDispatchClient.send(_:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BCF0A158;

  return v8(a1);
}

uint64_t dispatch thunk of XPCDispatchClient.send<A>(_:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 192);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1BCF0A158;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCDispatchClient.send<A, B>(_:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 200);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_1BCF099D4;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1BCF099D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of XPCDispatchClient.forward(messageCode:messageData:originatingProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *(*v5 + 208);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1BCF048C0;

  return (v16)(a1, a2, a3, a4, a5 & 1);
}

uint64_t sub_1BCF09C18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BCF09C74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BCF09CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BCF09D00(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BCF09D88(void *a1)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v4 = *(sub_1BCF21C1C() - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 48);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1BCF086C4(a1, v7, v1 + v5, v8, v10, v11, v3);
}

uint64_t sub_1BCF09E6C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v6 = *(sub_1BCF21C1C() - 8);
  v7 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1BCF099D4;

  return sub_1BCF08AD4(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t sub_1BCF09FC4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1BCF0A054(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BCF0A168(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 60) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF0A190, 0, 0);
}

uint64_t sub_1BCF0A190()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 56) = *(v0 + 60);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1BCF0A238;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_1BCF14BE8(v0 + 56, v3, v4);
}

uint64_t sub_1BCF0A238()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BCF0A36C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1BCF0A384(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
  v15 = sub_1BCF21C5C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BCF22F88;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BCF22F90;
  v17[5] = v16;
  v18 = a4;

  sub_1BCF10714(0, 0, v12, &unk_1BCF233B0, v17);
}

uint64_t sub_1BCF0A518(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_1BCF215BC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1BCF0A618;

  return sub_1BCF0A168(a1, a2, v9);
}

uint64_t sub_1BCF0A618()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  sub_1BCF05424(v7, v6);
  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = sub_1BCF2159C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1BCF0A7DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BCF0A814()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BCF099D4;

  return sub_1BCF0A518(v2, v3, v4, v5);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t dispatch thunk of DispatchForwardingConnection.forward(messageCode:messageData:originatingProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1BCF048C0;

  return (v19)(a1, a2, a3, a4, a5 & 1, a6, a7);
}

uint64_t dispatch thunk of DispatchReverseForwardingConnection.reverseForward(messageCode:messageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1BCF099D4;

  return v15(a1, a2, a3, a4, a5);
}

void sub_1BCF0ABB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *XPCDispatchListener.init(endpoint:requiredEntitlements:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v17 = &type metadata for XPCHeader;
  v18 = v7;
  v19 = &protocol witness table for XPCHeader;
  v20 = v8;
  v21 = v9;
  type metadata accessor for DispatchListenerTable();
  *&v2[qword_1EBD2A690] = DispatchListenerTable.__allocating_init()();
  *&v2[qword_1EBD2A698] = a2;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BCF21DBC())
  {
    sub_1BCF0D9D0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  *&v2[qword_1EBD2A6A0] = v10;
  if (v5)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
    v12 = sub_1BCF21A7C();
    v13 = [v11 initWithMachServiceName_];
  }

  else
  {
    v13 = [objc_opt_self() serviceListener];
  }

  *&v3[qword_1EBD2A6A8] = v13;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for XPCDispatchListener();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [*&v14[qword_1EBD2A6A8] setDelegate_];
  return v14;
}

id sub_1BCF0AE64()
{
  v1 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = sub_1BCF216EC();
  v4 = sub_1BCF21CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BCEF6000, v3, v4, "Listener starting", v5, 2u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v1 + qword_1EBD2A6A8);

  return [v6 resume];
}

uint64_t sub_1BCF0AF7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *MEMORY[0x1E69E7D40] & *v1;
  sub_1BCF21C3C();
  v2[5] = sub_1BCF21C2C();
  v4 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B04C, v4, v3);
}

uint64_t sub_1BCF0B04C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = *(v2 + 80);
  v6 = *(v2 + 96);
  sub_1BCF21B0C();
  sub_1BCF0B988(*(v0 + 48), 0, 0xF000000000000000);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BCF0B0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *MEMORY[0x1E69E7D40] & *v4;
  sub_1BCF21C3C();
  v5[8] = sub_1BCF21C2C();
  v7 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B1B4, v7, v6);
}

uint64_t sub_1BCF0B1B4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  v7 = *(v2 + 80);
  v8 = *(v2 + 96);
  sub_1BCF21B0C();
  LODWORD(v2) = *(v0 + 72);
  v9 = (*(v3 + 8))(v4, v3);
  v10 = *(v0 + 48);
  v11 = v9;
  LODWORD(v9) = v2;
  v13 = v12;
  sub_1BCF0B988(v9, v11, v12);
  sub_1BCF0510C(v11, v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1BCF0B2A4(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  sub_1BCF21C3C();
  *(v4 + 40) = sub_1BCF21C2C();
  v6 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B344, v6, v5);
}

uint64_t sub_1BCF0B344()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 48);

  sub_1BCF0B988(v5, v4, v3);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1BCF0B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF0B3F0, 0, 0);
}

uint64_t sub_1BCF0B3F0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_1BCF21C3C();
    *(v0 + 72) = sub_1BCF21C2C();
    v4 = sub_1BCF21BDC();

    return MEMORY[0x1EEE6DFA0](sub_1BCF0B4E8, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1BCF0B4E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1BCF0CA04(v3);

  return MEMORY[0x1EEE6DFA0](sub_1BCF0E790, 0, 0);
}

uint64_t sub_1BCF0B560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v32 - v14;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1BCF2170C();
  __swift_project_value_buffer(v16, qword_1EDDD2780);
  v17 = sub_1BCF216EC();
  v18 = sub_1BCF21CCC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v15;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a8;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1BCEF6000, v17, v18, v34, v19, 2u);
    v25 = v24;
    a8 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    v15 = v33;
    MEMORY[0x1BFB32D20](v25, -1, -1);
  }

  v26 = sub_1BCF21C5C();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v27 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a3;
  v29[5] = a4;
  v29[6] = a5;
  v29[7] = v27;
  v29[8] = a2;
  v30 = a2;
  sub_1BCF0EA84(0, 0, v15, a8, v29);
}

uint64_t sub_1BCF0B7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF0B7F0, 0, 0);
}

uint64_t sub_1BCF0B7F0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_1BCF21C3C();
    *(v0 + 72) = sub_1BCF21C2C();
    v4 = sub_1BCF21BDC();

    return MEMORY[0x1EEE6DFA0](sub_1BCF0B8E8, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1BCF0B8E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1BCF0CA04(v3);

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B960, 0, 0);
}

uint64_t sub_1BCF0B988(int a1, uint64_t a2, unint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v44 - v9;
  v11 = qword_1EBD2A6A0;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if ((v12 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *(v3 + v11);
    }

    sub_1BCF21DAC();
    sub_1BCEFA814();
    sub_1BCF0E5C4();
    result = sub_1BCF21C9C();
    v12 = v60;
    v15 = v61;
    v17 = v62;
    v16 = v63;
    v18 = v64;
  }

  else
  {
    v19 = -1 << *(v12 + 32);
    v15 = v12 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v12 + 56);

    v16 = 0;
  }

  v44[1] = v17;
  v22 = (v17 + 64) >> 6;
  v46 = v12;
  v45 = v15;
  v47 = v22;
  while (v12 < 0)
  {
    v28 = sub_1BCF21DDC();
    if (!v28)
    {
      return sub_1BCF0E61C();
    }

    v54 = v28;
    sub_1BCEFA814();
    swift_dynamicCast();
    v27 = v55;
    v25 = v16;
    v26 = v18;
    if (!v55)
    {
      return sub_1BCF0E61C();
    }

LABEL_21:
    v53 = v26;
    v29 = sub_1BCF21C5C();
    v51 = *(v29 - 8);
    (*(v51 + 56))(v10, 1, 1, v29);
    sub_1BCF21C3C();
    v30 = v27;
    v31 = v49;
    v32 = v10;
    v33 = v8;
    v34 = v50;
    sub_1BCEFC5E0(v49, v50);
    v35 = sub_1BCF21C2C();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = MEMORY[0x1E69E85E0];
    *(v36 + 32) = v48;
    v52 = v30;
    *(v36 + 40) = v30;
    *(v36 + 48) = v31;
    v37 = v51;
    *(v36 + 56) = v34;
    v8 = v33;
    v10 = v32;
    sub_1BCF0E6FC(v32, v8);
    LODWORD(v35) = (*(v37 + 48))(v8, 1, v29);

    if (v35 == 1)
    {
      sub_1BCEF90DC(v8, &qword_1EBD2A5E0, &unk_1BCF22AE0);
    }

    else
    {
      sub_1BCF21C4C();
      (*(v37 + 8))(v8, v29);
    }

    v39 = *(v36 + 16);
    v38 = *(v36 + 24);
    swift_unknownObjectRetain();

    v18 = v53;
    if (v39)
    {
      swift_getObjectType();
      v40 = sub_1BCF21BDC();
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    sub_1BCEF90DC(v10, &qword_1EBD2A5E0, &unk_1BCF22AE0);
    v43 = swift_allocObject();
    *(v43 + 16) = &unk_1BCF23118;
    *(v43 + 24) = v36;
    if (v42 | v40)
    {
      v56 = 0;
      v57 = 0;
      v58 = v40;
      v59 = v42;
    }

    v12 = v46;
    v15 = v45;
    swift_task_create();

    v16 = v25;
    v22 = v47;
  }

  v23 = v16;
  v24 = v18;
  v25 = v16;
  if (v18)
  {
LABEL_17:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v12 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v27)
    {
      return sub_1BCF0E61C();
    }

    goto LABEL_21;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      return sub_1BCF0E61C();
    }

    v24 = *(v15 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCF0BE6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;
  *(v7 + 264) = a5;
  *(v7 + 368) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A738, &unk_1BCF23128);
  *(v7 + 288) = v8;
  v9 = *(v8 - 8);
  *(v7 + 296) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 304) = swift_task_alloc();
  sub_1BCF21C3C();
  *(v7 + 312) = sub_1BCF21C2C();
  v12 = sub_1BCF21BDC();
  *(v7 + 320) = v12;
  *(v7 + 328) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BCF0BF74, v12, v11);
}

uint64_t sub_1BCF0BF74()
{
  v36 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_1BCF2170C();
  *(v0 + 336) = __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = v1;
  v4 = sub_1BCF216EC();
  v5 = sub_1BCF21CCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 368);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2080;
    v10 = [v6 endpoint];
    v11 = [v10 description];

    v12 = sub_1BCF21A8C();
    v14 = v13;

    v15 = sub_1BCEF84F4(v12, v14, &v35);

    *(v8 + 10) = v15;
    _os_log_impl(&dword_1BCEF6000, v4, v5, "Broadcasting message code %u to connection: %s", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB32D20](v9, -1, -1);
    MEMORY[0x1BFB32D20](v8, -1, -1);
  }

  v16 = *(v0 + 264);
  *(v0 + 176) = sub_1BCF0C88C;
  *(v0 + 184) = 0;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1BCF0ABB0;
  *(v0 + 168) = &block_descriptor_41;
  v17 = _Block_copy((v0 + 144));
  v18 = [v16 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_1BCF21D6C();
  swift_unknownObjectRelease();
  sub_1BCEF8718(v0 + 192, v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD2A740, &unk_1BCF23138);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 280);
    v34 = *(v0 + 256);
    *(v0 + 344) = v34;
    if (v19 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v28 = *(v0 + 272);
      v20 = sub_1BCF215AC();
    }

    *(v0 + 352) = v20;
    v29 = *(v0 + 296);
    v30 = *(v0 + 304);
    v31 = *(v0 + 288);
    v33 = *(v0 + 368);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1BCF0C48C;
    swift_continuation_init();
    *(v0 + 136) = v31;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF21BEC();
    (*(v29 + 32))(boxed_opaque_existential_0, v30, v31);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BCF0C974;
    *(v0 + 104) = &block_descriptor_44;
    [v34 receiveWithMessageCode:v33 messageData:v20 completionHandler:v0 + 80];
    (*(v29 + 8))(boxed_opaque_existential_0, v31);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v21 = *(v0 + 312);

    v22 = sub_1BCF216EC();
    v23 = sub_1BCF21CBC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BCEF6000, v22, v23, "Unexpected interface mismatch", v24, 2u);
      MEMORY[0x1BFB32D20](v24, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 192));
    v25 = *(v0 + 304);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1BCF0C48C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  v4 = *(v1 + 328);
  v5 = *(v1 + 320);
  if (v3)
  {
    v6 = sub_1BCF0C63C;
  }

  else
  {
    v6 = sub_1BCF0C5BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1BCF0C5BC()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[39];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v4 = v0[38];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BCF0C63C()
{
  v29 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[39];
  v6 = v0[33];

  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v7 = v6;
  v8 = v1;
  v9 = sub_1BCF216EC();
  v10 = sub_1BCF21CBC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[45];
  if (v11)
  {
    v13 = v0[33];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v14 = 136315394;
    v17 = [v13 endpoint];
    v18 = [v17 description];

    v19 = sub_1BCF21A8C();
    v21 = v20;

    v22 = sub_1BCEF84F4(v19, v21, &v28);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v24;
    *v15 = v24;
    _os_log_impl(&dword_1BCEF6000, v9, v10, "Failed to publish to connection (%s): %@", v14, 0x16u);
    sub_1BCEF90DC(v15, qword_1EBD2A750, &unk_1BCF232D0);
    MEMORY[0x1BFB32D20](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB32D20](v16, -1, -1);
    MEMORY[0x1BFB32D20](v14, -1, -1);
  }

  else
  {
  }

  v25 = v0[38];

  v26 = v0[1];

  return v26();
}

void sub_1BCF0C88C()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BCF2170C();
  __swift_project_value_buffer(v0, qword_1EDDD2780);
  oslog = sub_1BCF216EC();
  v1 = sub_1BCF21CBC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BCEF6000, oslog, v1, "Error getting proxy object", v2, 2u);
    MEMORY[0x1BFB32D20](v2, -1, -1);
  }
}

void sub_1BCF0C974(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A738, &unk_1BCF23128);
    sub_1BCF21BFC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A738, &unk_1BCF23128);
    sub_1BCF21C0C();
  }
}

void sub_1BCF0CA04(void *a1)
{
  swift_beginAccess();
  v2 = sub_1BCF0D550(a1);
  swift_endAccess();
}

id XPCDispatchListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void XPCDispatchListener.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  sub_1BCF0DC9C();
}

void sub_1BCF0CAF0(void *a1)
{
  v1 = (*MEMORY[0x1E69E7D40] & *a1);
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  sub_1BCF0DC9C();
}

id XPCDispatchListener.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for XPCDispatchListener();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1BCF0CC44(uint64_t a1)
{
  v2 = *(a1 + qword_1EBD2A690);

  v3 = *(a1 + qword_1EBD2A698);

  v4 = *(a1 + qword_1EBD2A6A0);
}

uint64_t sub_1BCF0CCB0(int a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BCF099D4;

  return sub_1BCF0B2A4(a1, a2, a3);
}

uint64_t sub_1BCF0CD60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
    v2 = sub_1BCF21E1C();
    v16 = v2;
    sub_1BCF21DAC();
    if (sub_1BCF21DDC())
    {
      sub_1BCEFA814();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1BCF0CF40(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1BCF21D2C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1BCF21DDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1BCF0CF40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
  result = sub_1BCF21E0C();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1BCF21D2C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
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

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1BCF0D168(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1BCF21D2C();
  v5 = -1 << *(a2 + 32);
  result = sub_1BCF21D9C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

id sub_1BCF0D1EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
  v2 = *v0;
  v3 = sub_1BCF21DFC();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_1BCF0D33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
  result = sub_1BCF21E0C();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1BCF21D2C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BCF0D550(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1BCF21DEC();

    if (v7)
    {
      v8 = sub_1BCF0D6D8();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1BCEFA814();
  v11 = *(v3 + 40);
  v12 = sub_1BCF21D2C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1BCF21D3C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BCF0D1EC();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1BCF0D830(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1BCF0D6D8()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1BCF21DBC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1BCF0CD60(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1BCF21D2C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1BCEFA814();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1BCF21D3C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1BCF0D830(v9);
  result = sub_1BCF21D3C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BCF0D830(unint64_t result)
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

    v9 = sub_1BCF21D8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1BCF21D2C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1BCF0D9D0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1BCF21DBC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
      v3 = sub_1BCF21E2C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1BCF21DBC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1BFB32630](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1BCF21D2C();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1BCEFA814();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1BCF21D3C();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1BCF21D2C();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1BCEFA814();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1BCF21D3C();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t dispatch thunk of XPCDispatchListener.broadcast(messageCode:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BCF0A158;

  return v8(a1);
}

uint64_t dispatch thunk of XPCDispatchListener.broadcast<A>(messageCode:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xC0);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1BCF099D4;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCDispatchListener.reverseForward(messageCode:messageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1BCF099D4;

  return v12(a1, a2, a3);
}

uint64_t sub_1BCF0E1C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BCF0E208(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BCF0E258(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BCF0E2AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1BCF0E2C4(void *result, int a2)
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

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1BCF0E3C4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BCF0A158;

  return sub_1BCF0B7CC(a1, v6, v7, v9, v10);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1BCF0E4E8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BCF0A158;

  return sub_1BCF0B3CC(a1, v6, v7, v9, v10);
}

unint64_t sub_1BCF0E5C4()
{
  result = qword_1EBD2A730;
  if (!qword_1EBD2A730)
  {
    sub_1BCEFA814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A730);
  }

  return result;
}

uint64_t sub_1BCF0E624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BCF0A158;

  return sub_1BCF0BE6C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BCF0E6FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCF0E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_1BCF0E6FC(a3, v26 - v10);
  v12 = sub_1BCF21C5C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BCEF90DC(v11, &qword_1EBD2A5E0, &unk_1BCF22AE0);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BCF21BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BCF21AAC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BCF0EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_1BCF0E6FC(a3, v26 - v10);
  v12 = sub_1BCF21C5C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BCEF90DC(v11, &qword_1EBD2A5E0, &unk_1BCF22AE0);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BCF21BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BCF21AAC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A7E0, &qword_1BCF232A8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A7E0, &qword_1BCF232A8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BCF0ED90()
{
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](0);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF0EDFC()
{
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](0);
  return sub_1BCF21F6C();
}

uint64_t NetworkDispatchListener.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NetworkDispatchListener.init(serviceName:)(a1, a2);
  return v4;
}

uint64_t *NetworkDispatchListener.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v2[5] = 0;
  v8 = *(v5 + 80);
  v9 = *(v6 + 88);
  type metadata accessor for DispatchListenerTable();
  v2[2] = DispatchListenerTable.__allocating_init()();
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void *NetworkDispatchListener.deinit()
{
  if (v0[5])
  {
    v1 = v0[5];

    sub_1BCF21C7C();
  }

  v2 = v0[2];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t NetworkDispatchListener.__deallocating_deinit()
{
  NetworkDispatchListener.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NetworkDispatchListener.startListening()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v7 = sub_1BCF2175C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v41 - v12;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BCF2170C();
  __swift_project_value_buffer(v13, qword_1EDDD2780);
  v14 = sub_1BCF216EC();
  v15 = sub_1BCF21CCC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v6;
    v17 = v7;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BCEF6000, v14, v15, "NetworkDispatchListener starting", v18, 2u);
    v19 = v18;
    v7 = v17;
    v6 = v16;
    MEMORY[0x1BFB32D20](v19, -1, -1);
  }

  if (v1[5])
  {
    v20 = v2[10];
    v21 = v2[11];
    v22 = v2[12];
    type metadata accessor for NetworkDispatchListener.Failure();
    swift_getWitnessTable();
    v43 = swift_allocError();
    swift_willThrow();
  }

  else
  {
    v24 = v1[3];
    v23 = v1[4];

    v25 = v42;
    sub_1BCF2174C();
    sub_1BCF0FEB4(1, 60.0);
    (*(v8 + 16))(v41, v25, v7);
    v26 = sub_1BCF2186C();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = sub_1BCF2185C();
    v30 = v2[10];
    v31 = v2[11];
    v32 = v2[12];
    type metadata accessor for NetworkDispatchInterface();
    v33 = v1[2];

    v34 = sub_1BCF1C6E8(v29, v33);
    sub_1BCF2181C();
    v35 = sub_1BCF21C5C();
    (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
    sub_1BCF21C3C();

    v36 = sub_1BCF21C2C();
    v37 = swift_allocObject();
    v38 = MEMORY[0x1E69E85E0];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v29;
    v37[5] = v34;
    v39 = sub_1BCF0E794(0, 0, v6, &unk_1BCF23150, v37);

    (*(v8 + 8))(v42, v7);
    v40 = v1[5];
    v1[5] = v39;
  }
}

uint64_t sub_1BCF0F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a5;
  v5[2] = sub_1BCF21C3C();
  v5[3] = sub_1BCF21C2C();
  v8 = *(MEMORY[0x1E6977C60] + 4);
  v9 = swift_task_alloc();
  v5[4] = v9;
  v10 = v7[10];
  v11 = v7[11];
  v12 = v7[12];
  v13 = type metadata accessor for NetworkDispatchInterface();
  WitnessTable = swift_getWitnessTable();
  *v9 = v5;
  v9[1] = sub_1BCF0F568;

  return MEMORY[0x1EEDD27C0](a5, v13, WitnessTable);
}

uint64_t sub_1BCF0F568()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1BCF21BDC();
  if (v2)
  {
    v8 = sub_1BCF0F724;
  }

  else
  {
    v8 = sub_1BCF0F6C4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BCF0F6C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BCF0F724()
{
  v1 = v0[3];

  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_1BCF2170C();
  __swift_project_value_buffer(v3, qword_1EDDD2780);
  v4 = v2;
  v5 = sub_1BCF216EC();
  v6 = sub_1BCF21CBC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BCEF6000, v5, v6, "Error publishing network interface actor: %@", v9, 0xCu);
    sub_1BCEF90DC(v10, qword_1EBD2A750, &unk_1BCF232D0);
    MEMORY[0x1BFB32D20](v10, -1, -1);
    MEMORY[0x1BFB32D20](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BCF0F8D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1BCF0F9C4;

  return v6(v2 + 32);
}

uint64_t sub_1BCF0F9C4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1BCF0FAD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF099D4;

  return sub_1BCF0F434(a1, v4, v5, v7, v6);
}

uint64_t sub_1BCF0FC54(unsigned int *a1, int a2)
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

_WORD *sub_1BCF0FCA4(_WORD *result, int a2, int a3)
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

uint64_t sub_1BCF0FD44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BCF0A158;

  return sub_1BCF0F8D0(a1, v5);
}

uint64_t sub_1BCF0FDFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BCF099D4;

  return sub_1BCF0F8D0(a1, v5);
}

uint64_t sub_1BCF0FEB4(char a1, double a2)
{
  v4 = sub_1BCF217AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCF217FC();
  v9 = sub_1BCF217DC();
  (*(v5 + 104))(v8, *MEMORY[0x1E6977C48], v4);
  sub_1BCF217CC();
  sub_1BCF2179C();
  sub_1BCF2176C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A7E8, qword_1BCF232F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BCF232E0;
  *(v10 + 32) = 0xD000000000000016;
  *(v10 + 40) = 0x80000001BCF26280;
  v11 = 0x766C6F7365525341;
  if (a1)
  {
    v11 = 0x6E657473694C5341;
  }

  *(v10 + 48) = v11;
  *(v10 + 56) = 0xEA00000000007265;
  sub_1BCF2177C();
  sub_1BCF217BC();
  v12 = sub_1BCF2178C();

  v26 = MEMORY[0x1E69E7CC0];
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_23:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v13 = sub_1BCF21DBC();
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_5:
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = v14;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB32630](v16, v12);
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v17 = *(v12 + 8 * v16 + 32);

        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      sub_1BCF2188C();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v16;
      if (v14 == v13)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x1BFB322F0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BCF21B4C();
    }

    sub_1BCF21B7C();
    v15 = v26;
  }

  while (v14 != v13);
LABEL_24:
  v25 = v9;

  if (v15 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BCF21DBC())
  {
    v20 = 0;
    a2 = a2 * 1000.0;
    while ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB32630](v20, v15);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_37;
      }

LABEL_30:
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      if (a2 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      if (a2 >= 9.22337204e18)
      {
        goto LABEL_41;
      }

      sub_1BCF2187C();

      ++v20;
      if (v22 == i)
      {
        goto LABEL_43;
      }
    }

    if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    v21 = *(v15 + 8 * v20 + 32);

    v22 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_30;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_43:

  v23 = v25;
  sub_1BCF217EC();
  nw_parameters_set_account_id();
  swift_unknownObjectRelease();
  sub_1BCF217EC();
  nw_parameters_set_attach_protocol_listener();
  swift_unknownObjectRelease();
  sub_1BCF217EC();
  nw_parameters_set_traffic_class();
  swift_unknownObjectRelease();
  return v23;
}