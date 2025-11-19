uint64_t sub_24B3522F8()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24B3523F4, 0, 0);
}

uint64_t sub_24B3523F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  (*(*(v0[7] - 8) + 56))(v1, 0, 1);
  v6 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v1, v3);
  swift_endAccess();
  dispatch_group_leave(v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B3524FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B3525F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t unsafeFromAsyncTask<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = sub_24B35B820();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v23 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v23 - v13;
  sub_24B35B590();
  type metadata accessor for UnsafeSendableBox();
  v15 = UnsafeSendableBox.__allocating_init()();
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = sub_24B35B780();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v15;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = v16;

  v19 = v16;
  sub_24B357B34(0, 0, v14, &unk_24B35BEC8, v18);

  sub_24B35B7C0();
  v20 = *(*v15 + 88);
  swift_beginAccess();
  (*(v8 + 16))(v11, v15 + v20, v7);
  v21 = *(a3 - 8);
  result = (*(v21 + 48))(v11, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v21 + 32))(v23, v11, a3);
  }

  return result;
}

uint64_t sub_24B3529AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t UnsafeSendableBox.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_24B35B820();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24B352ABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t UnsafeSendableBox.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  (*(*(*(*v3 + 80) - 8) + 56))(v3 + *(*v3 + 88), 1, 1);
  return v3;
}

uint64_t unsafeBlocking<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B3524FC;

  return unsafeBlocking<A>(context:_:)(a1, 0x746C7561666564, 0xE700000000000000, a2, a3, a4);
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B3524FC;

  return unsafeBlocking<A>(context:_:)(a1, 0x746C7561666564, 0xE700000000000000, a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24B352CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B352D08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24B352D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B352DC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3524F8;

  return sub_24B352E7C(a1, v5);
}

uint64_t sub_24B352E7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B3525F0;

  return v7(a1);
}

uint64_t sub_24B352F74()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24B3524F8;

  return sub_24B353020(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_24B353020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a7;
  v7[7] = *(*a4 + 80);
  v9 = sub_24B35B820();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v7[10] = v12;
  v16 = (a5 + *a5);
  v13 = a5[1];
  v14 = swift_task_alloc();
  v7[11] = v14;
  *v14 = v7;
  v14[1] = sub_24B3522F8;

  return v16(v12);
}

uint64_t sub_24B353198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24B3531F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B353228()
{
  v1 = *(v0 + 16);
  v18 = sub_24B35B8A0();
  v2 = *(v18 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_24B35B760();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + v7 + 8) & ~v10;
  v17 = *(v9 + 64);
  v12 = v3 | v10;
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v18);

  v14 = *(v0 + v6 + 8);

  v15 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v17, v12 | 7);
}

uint64_t sub_24B3533E0()
{
  v1 = *(v0 + 16);
  v18 = sub_24B35B8A0();
  v2 = *(v18 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v8 = sub_24B35B760();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + v7 + 8) & ~v10;
  v17 = *(v9 + 64);
  v12 = v3 | v10;
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v18);

  v14 = *(v0 + v6 + 8);

  v15 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v17, v12 | 7);
}

uint64_t sub_24B3535A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B353654(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *a4 = result;
  return result;
}

uint64_t sub_24B3536A0()
{
  type metadata accessor for UnsafeBlockingActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_281064768 = v0;
  return result;
}

uint64_t sub_24B3536DC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B353718()
{
  if (qword_281064760 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24B353774(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsafeBlockingActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t unsafeBlocking<A>(context:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_24B35B8A0();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B353940, 0, 0);
}

{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_24B35B8A0();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B353ED8, 0, 0);
}

uint64_t sub_24B353940()
{
  v26 = v0;
  v1 = *(v0 + 120);
  sub_24B35B880();
  if (qword_2810646B0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = qword_2810646B8;
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  os_unfair_lock_lock((v4 + 24));
  sub_24B3574BC((v4 + 16), v24);
  os_unfair_lock_unlock((v4 + 24));
  v6 = *&v24[0];
  *(v0 + 128) = *&v24[0];

  if (qword_281064680 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = qword_281064688;
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  os_unfair_lock_lock((v9 + 24));
  sub_24B357EDC((v9 + 16), v24);
  os_unfair_lock_unlock((v9 + 24));
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v23 = *(v0 + 80);

  v15 = v24[1];
  *(v0 + 16) = v24[0];
  *(v0 + 32) = v15;
  *(v0 + 48) = v25;
  v16 = sub_24B35B5A0();
  *(v0 + 136) = v16;
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v13;
  *(v17 + 40) = v0 + 16;
  *(v17 + 48) = v6;
  *(v17 + 56) = v11;
  *(v17 + 64) = v23;
  *(v17 + 80) = v16;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *v19 = v0;
  v19[1] = sub_24B353BB4;
  v20 = *(v0 + 96);
  v21 = *(v0 + 56);

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD00000000000001ALL, 0x800000024B35C0E0, sub_24B357F08, v17, v20);
}

uint64_t sub_24B353BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_24B353D68;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);

    v4 = sub_24B353CD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24B353CD8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24B353D68()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[14];

  (*(v6 + 8))(v3, v5);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t sub_24B353ED8()
{
  v26 = v0;
  v1 = *(v0 + 120);
  sub_24B35B880();
  if (qword_2810646B0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = qword_2810646B8;
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  os_unfair_lock_lock((v4 + 24));
  sub_24B35B530((v4 + 16), v24);
  os_unfair_lock_unlock((v4 + 24));
  v6 = *&v24[0];
  *(v0 + 128) = *&v24[0];

  if (qword_281064680 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = qword_281064688;
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  os_unfair_lock_lock((v9 + 24));
  sub_24B35B548((v9 + 16), v24);
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v23 = *(v0 + 80);
  os_unfair_lock_unlock((v9 + 24));

  v15 = v24[1];
  *(v0 + 16) = v24[0];
  *(v0 + 32) = v15;
  *(v0 + 48) = v25;
  v16 = sub_24B35B5A0();
  *(v0 + 136) = v16;
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v13;
  *(v17 + 40) = v0 + 16;
  *(v17 + 48) = v6;
  *(v17 + 56) = v11;
  *(v17 + 64) = v23;
  *(v17 + 80) = v16;
  v18 = *(MEMORY[0x277D859E0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *v19 = v0;
  v19[1] = sub_24B354180;
  v20 = *(v0 + 96);
  v21 = *(v0 + 56);

  return MEMORY[0x2822007B8](v21, 0, 0, 0xD00000000000001ALL, 0x800000024B35C0E0, sub_24B357F20, v17, v20);
}

uint64_t sub_24B354180()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24B3542B4, 0, 0);
}

uint64_t sub_24B3542B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24B354340(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70 = a7;
  v71 = a8;
  v66 = a6;
  v78 = a5;
  v14 = sub_24B35B670();
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v74 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24B35B6A0();
  v73 = *(v75 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v67 = a10;
  v81 = sub_24B35B760();
  v63 = *(v81 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v59 - v19;
  v62 = sub_24B35B8A0();
  v20 = *(v62 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v62);
  if (qword_2810646A0 != -1)
  {
    v22 = swift_once();
  }

  v65 = a9;
  v23 = qword_2810646A8;
  MEMORY[0x28223BE20](v22);
  v68 = a2;
  *(&v59 - 2) = a2;
  *(&v59 - 1) = a3;
  v80 = a3;
  os_unfair_lock_lock((v23 + 24));
  sub_24B35B560((v23 + 16), aBlock);
  os_unfair_lock_unlock((v23 + 24));
  v69 = a4;
  if (*a4)
  {
    v24 = aBlock[0];
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v25 = sub_24B35B660();
    __swift_project_value_buffer(v25, qword_2810647F0);
    v26 = v78;
    v27 = sub_24B35B640();
    v28 = sub_24B35B790();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60 = a1;
      v31 = v30;
      aBlock[0] = v30;
      *v29 = 136315394;
      v32 = sub_24B35B810();
      v34 = sub_24B358FD4(v32, v33, aBlock);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v24;
      _os_log_impl(&dword_24B351000, v27, v28, "unsafeBlocking [%s] queue push: %ld", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v35 = v31;
      a1 = v60;
      MEMORY[0x24C23DEC0](v35, -1, -1);
      MEMORY[0x24C23DEC0](v29, -1, -1);
    }
  }

  v36 = *(v20 + 16);
  v61 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v62;
  v36(v61, v66, v62);
  v38 = v63;
  (*(v63 + 16))(v79, a1, v81);
  v39 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v40 = (v21 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 47) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v38 + 80) + v43 + 8) & ~*(v38 + 80);
  v45 = swift_allocObject();
  v46 = v68;
  *(v45 + 2) = v67;
  *(v45 + 3) = v46;
  *(v45 + 4) = v80;
  (*(v20 + 32))(&v45[v39], v61, v37);
  v47 = &v45[v40];
  v48 = v69;
  v49 = v69[1];
  *v47 = *v69;
  *(v47 + 1) = v49;
  *(v47 + 4) = *(v48 + 4);
  v51 = v78;
  v50 = v79;
  *&v45[v41] = v78;
  v52 = &v45[v42];
  v53 = v71;
  *v52 = v70;
  *(v52 + 1) = v53;
  *&v45[v43] = v65;
  (*(v38 + 32))(&v45[v44], v50, v81);
  aBlock[4] = sub_24B35B1AC;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B352ABC;
  aBlock[3] = &block_descriptor_40;
  v54 = _Block_copy(aBlock);
  v51;

  v55 = v72;
  sub_24B35B680();
  v82 = MEMORY[0x277D84F90];
  sub_24B352CC0(qword_2810645C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4860, &qword_24B35C028);
  sub_24B352D08(&qword_2810645B0, &qword_27EFE4860, &qword_24B35C028);
  v56 = v74;
  v57 = v77;
  sub_24B35B830();
  MEMORY[0x24C23D900](0, v55, v56, v54);
  _Block_release(v54);
  (*(v76 + 8))(v56, v57);
  (*(v73 + 8))(v55, v75);
}

uint64_t sub_24B354A8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v122 = a8;
  v123 = a6;
  v124 = a7;
  v133 = a5;
  v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v138 = a10;
  v13 = sub_24B35B930();
  v130 = *(v13 - 8);
  v131 = v13;
  v14 = *(v130 + 64);
  MEMORY[0x28223BE20](v13);
  v136 = v120 - v15;
  v16 = sub_24B35B8A0();
  v128 = *(v16 - 8);
  v129 = v16;
  v17 = *(v128 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v134 = v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v135 = v120 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v120 - v23;
  if (qword_2810646A0 != -1)
  {
    v22 = swift_once();
  }

  v25 = qword_2810646A8;
  MEMORY[0x28223BE20](v22);
  v126 = a1;
  v127 = a2;
  v120[-2] = a1;
  v120[-1] = a2;
  os_unfair_lock_lock((v25 + 24));
  sub_24B35B578((v25 + 16), v140);
  v125 = 0;
  os_unfair_lock_unlock((v25 + 24));
  v26 = v140[0];
  sub_24B35B880();
  v27 = sub_24B35B890();
  v29 = v28;
  LODWORD(a1) = *a4;
  v30 = 0x281064000uLL;
  v132 = v24;
  if (a1)
  {
    v121 = a1;
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v31 = sub_24B35B660();
    __swift_project_value_buffer(v31, qword_2810647F0);
    v32 = v133;
    v33 = sub_24B35B640();
    v34 = sub_24B35B790();

    v35 = os_log_type_enabled(v33, v34);
    v120[1] = v29;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v120[0] = v27;
      v38 = v37;
      v140[0] = v37;
      *v36 = 136315394;
      v39 = sub_24B35B810();
      v41 = sub_24B358FD4(v39, v40, v140);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v26;
      _os_log_impl(&dword_24B351000, v33, v34, "unsafeBlocking [%s] queue pop: %ld", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C23DEC0](v38, -1, -1);
      MEMORY[0x24C23DEC0](v36, -1, -1);
    }

    v42 = v32;
    v43 = sub_24B35B640();
    v44 = sub_24B35B790();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v140[0] = v46;
      *v45 = 136315394;
      v47 = sub_24B35B810();
      v49 = sub_24B358FD4(v47, v48, v140);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = sub_24B35B940();
      v52 = sub_24B358FD4(v50, v51, v140);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_24B351000, v43, v44, "unsafeBlocking [%s] queue duration: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v46, -1, -1);
      MEMORY[0x24C23DEC0](v45, -1, -1);

      v24 = v132;
      v30 = 0x281064000;
    }

    else
    {

      v24 = v132;
      v30 = 0x281064000uLL;
    }

    LODWORD(a1) = v121;
  }

  v53 = a4[1];
  v54 = a4[2];
  if (sub_24B35B950())
  {
    if (*(v30 + 1656) != -1)
    {
      swift_once();
    }

    v55 = sub_24B35B660();
    __swift_project_value_buffer(v55, qword_2810647F0);
    v56 = v133;
    v57 = sub_24B35B640();
    v58 = sub_24B35B7A0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v121 = a1;
      a1 = v59;
      v60 = swift_slowAlloc();
      v140[0] = v60;
      *a1 = 136315394;
      v61 = sub_24B35B810();
      v63 = v30;
      v64 = sub_24B358FD4(v61, v62, v140);

      *(a1 + 4) = v64;
      *(a1 + 12) = 2080;
      v65 = sub_24B35B940();
      v67 = sub_24B358FD4(v65, v66, v140);

      *(a1 + 14) = v67;
      v30 = v63;
      _os_log_impl(&dword_24B351000, v57, v58, "Excessive unsafeBlocking [%s] queue duration: %s", a1, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v60, -1, -1);
      v68 = a1;
      LOBYTE(a1) = v121;
      MEMORY[0x24C23DEC0](v68, -1, -1);
    }

    v24 = v132;
  }

  v69 = sub_24B35B880();
  MEMORY[0x28223BE20](v69);
  v70 = v137;
  v72 = v123;
  v71 = v124;
  v120[-4] = v138;
  v120[-3] = v72;
  v120[-2] = v71;
  sub_24B3556A8(sub_24B35B2EC, v70, v136);
  sub_24B35B880();
  v73 = sub_24B35B890();
  v75 = v74;
  if (a1)
  {
    if (*(v30 + 1656) != -1)
    {
      swift_once();
    }

    v76 = sub_24B35B660();
    __swift_project_value_buffer(v76, qword_2810647F0);
    v77 = v133;
    v78 = sub_24B35B640();
    v79 = sub_24B35B7A0();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v140[0] = v81;
      *v80 = 136315394;
      v82 = sub_24B35B810();
      v84 = v30;
      v85 = sub_24B358FD4(v82, v83, v140);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v86 = sub_24B35B940();
      v88 = sub_24B358FD4(v86, v87, v140);

      *(v80 + 14) = v88;
      v30 = v84;
      _os_log_impl(&dword_24B351000, v78, v79, "unsafeBlocking [%s] run duration: %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v81, -1, -1);
      MEMORY[0x24C23DEC0](v80, -1, -1);
    }

    v24 = v132;
  }

  v89 = a4[3];
  v90 = a4[4];
  v91 = sub_24B35B950();
  if (v91)
  {
    v124 = a9;
    if (*(v30 + 1656) != -1)
    {
      swift_once();
    }

    v92 = sub_24B35B660();
    __swift_project_value_buffer(v92, qword_2810647F0);
    v93 = v133;
    v94 = sub_24B35B640();
    v95 = sub_24B35B7A0();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v140[0] = v97;
      *v96 = 136315394;
      v98 = sub_24B35B810();
      v100 = sub_24B358FD4(v98, v99, v140);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2080;
      v101 = sub_24B35B940();
      v103 = sub_24B358FD4(v101, v102, v140);

      *(v96 + 14) = v103;
      _os_log_impl(&dword_24B351000, v94, v95, "Excessive unsafeBlocking [%s] run duration: %s", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v97, -1, -1);
      v104 = v96;
      v24 = v132;
      MEMORY[0x24C23DEC0](v104, -1, -1);
    }

    v105 = v122;

    v106 = sub_24B35B640();
    v107 = sub_24B35B7B0();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v140[0] = v109;
      *v108 = 136446210;
      v139 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4868, &qword_24B35C030);
      sub_24B352D08(&qword_2810645B8, &qword_27EFE4868, &qword_24B35C030);
      v110 = sub_24B35B710();
      v112 = sub_24B358FD4(v110, v111, v140);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_24B351000, v106, v107, "callstack: %{public}s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x24C23DEC0](v109, -1, -1);
      MEMORY[0x24C23DEC0](v108, -1, -1);
    }
  }

  if (qword_281064690 != -1)
  {
    v91 = swift_once();
  }

  v113 = qword_281064698;
  MEMORY[0x28223BE20](v91);
  v114 = v127;
  v120[-4] = v126;
  v120[-3] = v114;
  v120[-2] = v73;
  v120[-1] = v75;
  os_unfair_lock_lock((v113 + 24));
  sub_24B35B514((v113 + 16));
  os_unfair_lock_unlock((v113 + 24));
  v115 = sub_24B35B760();
  v116 = v136;
  sub_24B35585C(v136, v115);
  v117 = v129;
  v118 = *(v128 + 8);
  v118(v134, v129);
  (*(v130 + 8))(v116, v131);
  v118(v135, v117);
  return (v118)(v24, v117);
}

uint64_t sub_24B3556A8@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24B35B930();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t sub_24B35585C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24B35B930();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_24B35B740();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_24B35B750();
  }
}

uint64_t sub_24B355A98(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v71 = a7;
  v72 = a8;
  v66 = a6;
  v79 = a5;
  v67 = a1;
  v13 = sub_24B35B670();
  v77 = *(v13 - 8);
  v78 = v13;
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24B35B6A0();
  v74 = *(v76 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a10;
  v18 = sub_24B35B760();
  v19 = *(v18 - 8);
  v64 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v81 = &v59 - v20;
  v63 = sub_24B35B8A0();
  v62 = *(v63 - 8);
  v21 = *(v62 + 64);
  v22 = MEMORY[0x28223BE20](v63);
  if (qword_2810646A0 != -1)
  {
    v22 = swift_once();
  }

  v65 = a9;
  v23 = qword_2810646A8;
  MEMORY[0x28223BE20](v22);
  v69 = a2;
  *(&v59 - 2) = a2;
  *(&v59 - 1) = a3;
  v80 = a3;
  os_unfair_lock_lock((v23 + 24));
  sub_24B35AB58((v23 + 16), aBlock);
  os_unfair_lock_unlock((v23 + 24));
  v70 = a4;
  if (*a4)
  {
    v24 = aBlock[0];
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v25 = sub_24B35B660();
    __swift_project_value_buffer(v25, qword_2810647F0);
    v26 = v79;
    v27 = sub_24B35B640();
    v28 = sub_24B35B790();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v59 = v19;
      v31 = v18;
      v32 = v30;
      aBlock[0] = v30;
      *v29 = 136315394;
      v33 = sub_24B35B810();
      v35 = sub_24B358FD4(v33, v34, aBlock);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v24;
      _os_log_impl(&dword_24B351000, v27, v28, "unsafeBlocking [%s] queue push: %ld", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v36 = v32;
      v18 = v31;
      v19 = v59;
      MEMORY[0x24C23DEC0](v36, -1, -1);
      MEMORY[0x24C23DEC0](v29, -1, -1);
    }
  }

  v60 = v18;
  v37 = v62;
  v38 = *(v62 + 16);
  v61 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v63;
  v38(v61, v66, v63);
  (*(v19 + 16))(v81, v67, v18);
  v40 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v41 = (v21 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 47) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v19 + 80) + v44 + 8) & ~*(v19 + 80);
  v46 = swift_allocObject();
  v47 = v69;
  *(v46 + 2) = v68;
  *(v46 + 3) = v47;
  *(v46 + 4) = v80;
  (*(v37 + 32))(&v46[v40], v61, v39);
  v48 = &v46[v41];
  v49 = v70;
  v50 = v70[1];
  *v48 = *v70;
  *(v48 + 1) = v50;
  *(v48 + 4) = *(v49 + 4);
  v51 = v79;
  *&v46[v42] = v79;
  v52 = &v46[v43];
  v53 = v72;
  *v52 = v71;
  *(v52 + 1) = v53;
  *&v46[v44] = v65;
  (*(v19 + 32))(&v46[v45], v81, v60);
  aBlock[4] = sub_24B35AB84;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B352ABC;
  aBlock[3] = &block_descriptor;
  v54 = _Block_copy(aBlock);
  v51;

  v55 = v73;
  sub_24B35B680();
  v82 = MEMORY[0x277D84F90];
  sub_24B352CC0(qword_2810645C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4860, &qword_24B35C028);
  sub_24B352D08(&qword_2810645B0, &qword_27EFE4860, &qword_24B35C028);
  v56 = v75;
  v57 = v78;
  sub_24B35B830();
  MEMORY[0x24C23D900](0, v55, v56, v54);
  _Block_release(v54);
  (*(v77 + 8))(v56, v57);
  (*(v74 + 8))(v55, v76);
}

uint64_t sub_24B3561EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v120 = a8;
  v121 = a7;
  v122 = a6;
  v132 = a5;
  v130 = a10;
  v129 = *(a10 - 8);
  v13 = *(v129 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v126 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = v118 - v16;
  v17 = sub_24B35B8A0();
  v127 = *(v17 - 8);
  v128 = v17;
  v18 = *(v127 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v133 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v134 = v118 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v118 - v24;
  if (qword_2810646A0 != -1)
  {
    v23 = swift_once();
  }

  v30 = qword_2810646A8;
  MEMORY[0x28223BE20](v23);
  v124 = a1;
  v125 = a2;
  v118[-2] = a1;
  v118[-1] = a2;
  os_unfair_lock_lock((v30 + 24));
  sub_24B35ACFC((v30 + 16), v137);
  v123 = 0;
  os_unfair_lock_unlock((v30 + 24));
  v26 = v137[0];
  sub_24B35B880();
  v27 = sub_24B35B890();
  v29 = v28;
  LODWORD(v30) = *a4;
  v131 = v25;
  if (v30)
  {
    v118[2] = v27;
    v119 = v30;
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v31 = sub_24B35B660();
    __swift_project_value_buffer(v31, qword_2810647F0);
    v32 = v132;
    v33 = sub_24B35B640();
    v34 = sub_24B35B790();

    v35 = os_log_type_enabled(v33, v34);
    v118[1] = v29;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v137[0] = v37;
      *v36 = 136315394;
      v38 = sub_24B35B810();
      v40 = sub_24B358FD4(v38, v39, v137);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v26;
      _os_log_impl(&dword_24B351000, v33, v34, "unsafeBlocking [%s] queue pop: %ld", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x24C23DEC0](v37, -1, -1);
      MEMORY[0x24C23DEC0](v36, -1, -1);
    }

    v41 = v32;
    v42 = sub_24B35B640();
    v43 = sub_24B35B790();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v137[0] = v45;
      *v44 = 136315394;
      v46 = sub_24B35B810();
      v48 = sub_24B358FD4(v46, v47, v137);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = sub_24B35B940();
      v51 = sub_24B358FD4(v49, v50, v137);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_24B351000, v42, v43, "unsafeBlocking [%s] queue duration: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v45, -1, -1);
      MEMORY[0x24C23DEC0](v44, -1, -1);
    }

    v25 = v131;
    LODWORD(v30) = v119;
  }

  v52 = a4[1];
  v53 = a4[2];
  if (sub_24B35B950())
  {
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v54 = sub_24B35B660();
    __swift_project_value_buffer(v54, qword_2810647F0);
    v55 = v132;
    v56 = sub_24B35B640();
    v57 = sub_24B35B7A0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v119 = v30;
      v30 = v58;
      v59 = swift_slowAlloc();
      v137[0] = v59;
      *v30 = 136315394;
      v60 = sub_24B35B810();
      v62 = sub_24B358FD4(v60, v61, v137);

      *(v30 + 4) = v62;
      *(v30 + 12) = 2080;
      v63 = sub_24B35B940();
      v65 = sub_24B358FD4(v63, v64, v137);

      *(v30 + 14) = v65;
      _os_log_impl(&dword_24B351000, v56, v57, "Excessive unsafeBlocking [%s] queue duration: %s", v30, 0x16u);
      swift_arrayDestroy();
      v66 = v59;
      v25 = v131;
      MEMORY[0x24C23DEC0](v66, -1, -1);
      v67 = v30;
      LOBYTE(v30) = v119;
      MEMORY[0x24C23DEC0](v67, -1, -1);
    }
  }

  v68 = sub_24B35B880();
  v122(v68);
  sub_24B35B880();
  v69 = sub_24B35B890();
  v71 = v70;
  if (v30)
  {
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v72 = sub_24B35B660();
    __swift_project_value_buffer(v72, qword_2810647F0);
    v73 = v132;
    v74 = sub_24B35B640();
    v75 = sub_24B35B7A0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v137[0] = v77;
      *v76 = 136315394;
      v78 = sub_24B35B810();
      v80 = sub_24B358FD4(v78, v79, v137);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2080;
      v81 = sub_24B35B940();
      v83 = sub_24B358FD4(v81, v82, v137);

      *(v76 + 14) = v83;
      _os_log_impl(&dword_24B351000, v74, v75, "unsafeBlocking [%s] run duration: %s", v76, 0x16u);
      swift_arrayDestroy();
      v84 = v77;
      v25 = v131;
      MEMORY[0x24C23DEC0](v84, -1, -1);
      MEMORY[0x24C23DEC0](v76, -1, -1);
    }
  }

  v85 = a4[3];
  v86 = a4[4];
  v87 = sub_24B35B950();
  if (v87)
  {
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v88 = sub_24B35B660();
    __swift_project_value_buffer(v88, qword_2810647F0);
    v89 = v132;
    v90 = sub_24B35B640();
    v91 = sub_24B35B7A0();

    v92 = os_log_type_enabled(v90, v91);
    v122 = a9;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v137[0] = v94;
      *v93 = 136315394;
      v95 = sub_24B35B810();
      v97 = sub_24B358FD4(v95, v96, v137);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2080;
      v98 = sub_24B35B940();
      v100 = sub_24B358FD4(v98, v99, v137);

      *(v93 + 14) = v100;
      _os_log_impl(&dword_24B351000, v90, v91, "Excessive unsafeBlocking [%s] run duration: %s", v93, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v94, -1, -1);
      MEMORY[0x24C23DEC0](v93, -1, -1);
    }

    v101 = v120;

    v102 = sub_24B35B640();
    v103 = sub_24B35B7B0();

    v104 = os_log_type_enabled(v102, v103);
    v25 = v131;
    if (v104)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v137[0] = v106;
      *v105 = 136446210;
      v136 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4868, &qword_24B35C030);
      sub_24B352D08(&qword_2810645B8, &qword_27EFE4868, &qword_24B35C030);
      v107 = sub_24B35B710();
      v109 = sub_24B358FD4(v107, v108, v137);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_24B351000, v102, v103, "callstack: %{public}s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x24C23DEC0](v106, -1, -1);
      MEMORY[0x24C23DEC0](v105, -1, -1);
    }
  }

  if (qword_281064690 != -1)
  {
    v87 = swift_once();
  }

  v110 = qword_281064698;
  MEMORY[0x28223BE20](v87);
  v111 = v125;
  v118[-4] = v124;
  v118[-3] = v111;
  v118[-2] = v69;
  v118[-1] = v71;
  os_unfair_lock_lock((v110 + 24));
  sub_24B35AD28((v110 + 16));
  os_unfair_lock_unlock((v110 + 24));
  v113 = v129;
  v112 = v130;
  v114 = v135;
  (*(v129 + 16))(v126, v135, v130);
  sub_24B35B760();
  sub_24B35B750();
  v115 = v128;
  v116 = *(v127 + 8);
  v116(v133, v128);
  (*(v113 + 8))(v114, v112);
  v116(v134, v115);
  return (v116)(v25, v115);
}

uint64_t UnsafeBlockingQueueConfiguration.queueDurationThreshold.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t UnsafeBlockingQueueConfiguration.runDurationThreshold.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t UnsafeBlockingQueueConfiguration.init(verbose:queueDurationThreshold:runDurationThreshold:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void setUnsafeQueueConfiguration(context:config:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = a3[1];
  v17 = *a3;
  v18 = v5;
  v19 = *(a3 + 4);
  if (qword_281064678 != -1)
  {
    swift_once();
  }

  v6 = sub_24B35B660();
  __swift_project_value_buffer(v6, qword_2810647F0);

  v7 = sub_24B35B640();
  v8 = sub_24B35B7B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_24B358FD4(a1, a2, v16);
    *(v9 + 12) = 2082;
    v11 = sub_24B35B6C0();
    v13 = sub_24B358FD4(v11, v12, v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_24B351000, v7, v8, "Setting configuration for unsafeBlocking queue %{public}s to %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23DEC0](v10, -1, -1);
    MEMORY[0x24C23DEC0](v9, -1, -1);
  }

  if (qword_281064680 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_281064688;
  MEMORY[0x28223BE20](v14);
  os_unfair_lock_lock((v15 + 24));
  sub_24B358F5C((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
}

id sub_24B357040@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39 = sub_24B35B7D0();
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B35B7E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24B35B6A0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v36 - v19;
  v40 = a1;
  v41 = a2;
  v21 = *a1;
  if (!*(v21 + 16))
  {
    v37 = a4;
    v22 = sub_24B35B780();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    if (qword_281064760 != -1)
    {
      swift_once();
    }

    v23 = qword_281064768;
    v24 = sub_24B359834();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;

    sub_24B357B34(0, 0, v20, &unk_24B35C078, v25);

    a4 = v37;
    a2 = v41;
    if (!*(v21 + 16))
    {
      goto LABEL_9;
    }
  }

  v26 = sub_24B359A6C(a2, a3);
  if (v27)
  {
    v28 = *(*(v21 + 56) + 8 * v26);
    *a4 = v28;

    return v28;
  }

  else
  {
LABEL_9:
    v37 = sub_24B35B324();
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_24B35B860();

    v42 = 0xD000000000000020;
    v43 = 0x800000024B35C1E0;
    MEMORY[0x24C23D800](a2, a3);
    sub_24B35B690();
    (*(v11 + 104))(v14, *MEMORY[0x277D85268], v10);
    v42 = MEMORY[0x277D84F90];
    sub_24B352CC0(&qword_281064598, MEMORY[0x277D85230]);
    v30 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE48A0, &qword_24B35C068);
    sub_24B352D08(&qword_2810645A8, &qword_27EFE48A0, &qword_24B35C068);
    sub_24B35B830();
    v31 = sub_24B35B800();

    v32 = v31;
    v33 = v40;
    v34 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v33;
    sub_24B35A73C(v32, v41, a3, isUniquelyReferenced_nonNull_native);

    *v33 = v42;
    *v30 = v32;
  }

  return result;
}

uint64_t sub_24B3574E8()
{
  if (qword_281064760 != -1)
  {
    swift_once();
  }

  v0 = qword_281064768;

  return MEMORY[0x2822009F8](sub_24B35757C, v0, 0);
}

uint64_t sub_24B35757C()
{
  v1 = sub_24B35B5F0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  qword_2810646C0 = sub_24B35B600();

  v4 = *(v0 + 8);

  return v4();
}

void sub_24B35761C(uint64_t a1@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = sub_24B35B630();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B35B620();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  sub_24B35B610();
  (*(v7 + 104))(v11, *MEMORY[0x277D08A98], v6);
  sub_24B352CC0(&qword_281064668, MEMORY[0x277D08AA0]);
  sub_24B35B720();
  sub_24B35B720();
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
  if (v48 == v47)
  {
    v41 = v3;
    v42 = a1;
    v43 = v1;
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    if (qword_281064690 != -1)
    {
LABEL_20:
      swift_once();
    }

    v16 = qword_281064698;
    os_unfair_lock_lock((qword_281064698 + 24));
    v17 = *(v16 + 16);

    os_unfair_lock_unlock((v16 + 24));
    v18 = 0;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;
    v46 = v15;
    if (v21)
    {
      while (1)
      {
        v23 = v18;
LABEL_11:
        v24 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v25 = v24 | (v23 << 6);
        v26 = (*(v17 + 48) + 16 * v25);
        v27 = *v26;
        v28 = v26[1];
        v29 = *(v17 + 56) + 24 * v25;
        v30 = *(v29 + 16);
        v48 = *v29;
        v49 = v30;

        sub_24B35B6C0();
        v31 = sub_24B35B6B0();

        v32 = sub_24B35B6B0();

        v15 = v46;
        [v46 setValue:v31 forKey:v32];

        if (!v21)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v23 >= v22)
      {
        break;
      }

      v21 = *(v17 + 64 + 8 * v23);
      ++v18;
      if (v21)
      {
        v18 = v23;
        goto LABEL_11;
      }
    }

    v34 = objc_opt_self();
    *&v48 = 0;
    v35 = [v34 dataWithPropertyList:v15 format:200 options:0 error:&v48];
    v36 = v48;
    if (!v35)
    {
      v39 = v36;
      sub_24B35B5B0();

      swift_willThrow();
      goto LABEL_17;
    }

    sub_24B35B5C0();

    (*(v45 + 104))(v44, *MEMORY[0x277D08AB0], v41);
    a1 = v42;
    sub_24B35B5D0();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v37 = sub_24B35B5E0();
  (*(*(v37 - 8) + 56))(a1, v33, 1, v37);
LABEL_17:
  v38 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24B357B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_24B359888(a3, v26 - v10);
  v12 = sub_24B35B780();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24B352D5C(v11);
  }

  else
  {
    sub_24B35B770();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24B35B730();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24B35B6D0() + 32;
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

      sub_24B352D5C(a3);

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

  sub_24B352D5C(a3);
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

double sub_24B357DF4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_24B359A6C(a2, a3);
  if ((v10 & 1) == 0)
  {
    v13 = *a1;
LABEL_5:
    v18[0] = 0;
    *&v18[8] = xmmword_24B35BE60;
    *&v18[24] = xmmword_24B35BE70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    sub_24B35A5B0(v18, a2, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v17;
    *&v12 = *v18;
    v15 = *&v18[16];
    *a4 = *v18;
    *(a4 + 16) = v15;
    *(a4 + 32) = *&v18[32];
    return *&v12;
  }

  v11 = *(v8 + 56) + 40 * v9;
  *a4 = *v11;
  *(a4 + 8) = *(v11 + 8);
  v12 = *(v11 + 24);
  *(a4 + 24) = v12;
  return *&v12;
}

unint64_t sub_24B357F78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  v28 = *v7;
  result = sub_24B359A6C(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_24B35A050(v17, isUniquelyReferenced_nonNull_native);
    v11 = v28;
    result = sub_24B359A6C(a2, a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_24B35B900();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  *v7 = v11;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v11[(result >> 6) + 8] |= 1 << result;
  v19 = (v11[6] + 16 * result);
  *v19 = a2;
  v19[1] = a3;
  *(v11[7] + 8 * result) = 0;
  v20 = v11[2];
  v16 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v11[2] = v21;
    v7 = result;

    result = v7;
LABEL_9:
    while (1)
    {
      v22 = v11[7];
      v23 = *(v22 + 8 * result);
      v16 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (!v16)
      {
        break;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v27 = result;
      sub_24B35AEC4();
      result = v27;
      v11 = v28;
      *v7 = v28;
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(v22 + 8 * result) = v24;
    v25 = v11[2];
    if (v25)
    {
      result = sub_24B359A6C(a2, a3);
      if (v26)
      {
        v25 = *(v11[7] + 8 * result);
      }

      else
      {
        v25 = 0;
      }
    }

    *a4 = v25;
  }

  return result;
}

unint64_t sub_24B358110@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  v28 = *v7;
  result = sub_24B359A6C(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_24B35A050(v17, isUniquelyReferenced_nonNull_native);
    v11 = v28;
    result = sub_24B359A6C(a2, a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_24B35B900();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  *v7 = v11;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v11[(result >> 6) + 8] |= 1 << result;
  v19 = (v11[6] + 16 * result);
  *v19 = a2;
  v19[1] = a3;
  *(v11[7] + 8 * result) = 0;
  v20 = v11[2];
  v16 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v11[2] = v21;
    v7 = result;

    result = v7;
LABEL_9:
    while (1)
    {
      v22 = v11[7];
      v23 = *(v22 + 8 * result);
      v16 = __OFSUB__(v23, 1);
      v24 = v23 - 1;
      if (!v16)
      {
        break;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v27 = result;
      sub_24B35AEC4();
      result = v27;
      v11 = v28;
      *v7 = v28;
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(v22 + 8 * result) = v24;
    v25 = v11[2];
    if (v25)
    {
      result = sub_24B359A6C(a2, a3);
      if (v26)
      {
        v25 = *(v11[7] + 8 * result);
      }

      else
      {
        v25 = 0;
      }
    }

    *a4 = v25;
  }

  return result;
}

uint64_t sub_24B3582A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  v33 = *a1;
  v15 = sub_24B359A6C(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v14;
  if (v13[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_16;
    }

    *a1 = v13;
    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    while (1)
    {
      v28 = (v13[7] + 24 * v15);
      if (!__OFADD__(*v28, 1))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      sub_24B35B02C();
      v13 = v33;
      *a1 = v33;
      if ((v5 & 1) == 0)
      {
LABEL_8:
        v21 = sub_24B35B970();
        v13[(v15 >> 6) + 8] |= 1 << v15;
        v22 = (v13[6] + 16 * v15);
        *v22 = a2;
        v22[1] = a3;
        v23 = (v13[7] + 24 * v15);
        *v23 = 0;
        v23[1] = v21;
        v23[2] = v24;
        v25 = v13[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          __break(1u);
          goto LABEL_19;
        }

        v13[2] = v27;
      }
    }

    ++*v28;
    v29 = (v28 + 1);
    v30 = a4;
    v31 = a5;
  }

  else
  {
    sub_24B35A2F0(v18, isUniquelyReferenced_nonNull_native);
    v13 = v33;
    v19 = sub_24B359A6C(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      v15 = v19;
      *a1 = v33;
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_19:
    v29 = sub_24B35B900();
    __break(1u);
  }

  return MEMORY[0x2821FE670](v29, v30, v31);
}

uint64_t UnsafeSendableBox.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_24B35B820();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t UnsafeSendableBox.contents.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_24B35B820();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t (*UnsafeSendableBox.contents.modify())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t UnsafeSendableBox.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_24B35B820();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

void unsafeFromAsyncTask<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = a1;
  v6 = sub_24B35B820();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  sub_24B35B590();
  type metadata accessor for UnsafeSendableBox();
  v14 = UnsafeSendableBox.__allocating_init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4848, &qword_24B35BEA8);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = sub_24B35B780();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v14;
  v18[6] = v28;
  v18[7] = a2;
  v18[8] = v15;
  v19 = v16;

  sub_24B357B34(0, 0, v13, &unk_24B35BEB8, v18);

  sub_24B35B7C0();
  swift_beginAccess();
  v20 = *(v15 + 16);
  if (v20 >= 2)
  {
    v23 = *(v15 + 16);
    swift_willThrow();
    v24 = v20;
  }

  else
  {
    v21 = *(*v14 + 88);
    swift_beginAccess();
    (*(v26 + 16))(v9, v14 + v21, v27);
    v22 = *(a3 - 8);
    if ((*(v22 + 48))(v9, 1, a3) == 1)
    {
      __break(1u);
    }

    else
    {

      (*(v22 + 32))(v25, v9, a3);
    }
  }
}

uint64_t sub_24B358A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a5;
  v8[10] = a8;
  v8[8] = a4;
  v8[11] = *(*a5 + 80);
  v10 = sub_24B35B820();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v8[14] = v13;
  v17 = (a6 + *a6);
  v14 = a6[1];
  v15 = swift_task_alloc();
  v8[15] = v15;
  *v15 = v8;
  v15[1] = sub_24B358BF0;

  return v17(v13);
}

uint64_t sub_24B358BF0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_24B358E0C;
  }

  else
  {
    v3 = sub_24B358D04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B358D04()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  (*(*(*(v0 + 88) - 8) + 56))(v1, 0, 1);
  v5 = *(*v4 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();
  v6 = *(v0 + 112);
  dispatch_group_leave(*(v0 + 64));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24B358E0C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_24B3599B0(v3);
  v4 = *(v0 + 112);
  dispatch_group_leave(*(v0 + 64));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B358EA0()
{
  v0 = sub_24B35B660();
  __swift_allocate_value_buffer(v0, qword_2810647F0);
  __swift_project_value_buffer(v0, qword_2810647F0);
  return sub_24B35B650();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24B358F5C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_24B35A5B0(v5, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_24B358FD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B3590A0(v11, 0, 0, 1, a1, a2);
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
    sub_24B359A0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24B3590A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B3591AC(a5, a6);
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
    result = sub_24B35B870();
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

uint64_t sub_24B3591AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24B3591F8(a1, a2);
  sub_24B359328(&unk_285E5CB78);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24B3591F8(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B359414(v5, 0);
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

  result = sub_24B35B870();
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
        v10 = sub_24B35B700();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B359414(v10, 0);
        result = sub_24B35B850();
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

uint64_t sub_24B359328(uint64_t result)
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

  result = sub_24B359488(result, v12, 1, v3);
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

void *sub_24B359414(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4850, &qword_24B35C018);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B359488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4850, &qword_24B35C018);
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

uint64_t sub_24B3595C4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24B3524FC;

  return sub_24B358A74(v7, v8, v9, v2, v3, v4, v5, v6);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B3596BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B359710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24B359770(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_24B35B820();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B359834()
{
  result = qword_281064750;
  if (!qword_281064750)
  {
    type metadata accessor for UnsafeBlockingActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064750);
  }

  return result;
}

uint64_t sub_24B359888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3598F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3524FC;

  return sub_24B352E7C(a1, v5);
}

uint64_t sub_24B3599B0(uint64_t result)
{
  if (result != 1)
  {
    JUMPOUT(0x24C23DDB0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24B359A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24B359A6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24B35B910();
  sub_24B35B6E0();
  v6 = sub_24B35B920();

  return sub_24B35A8B4(a1, a2, v6);
}

uint64_t sub_24B359AE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4858, &qword_24B35C020);
  v40 = a2;
  result = sub_24B35B8C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 40 * v22;
      v27 = *v26;
      v28 = *(v26 + 24);
      v41 = v28;
      v42 = *(v26 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v27;
      *(v18 + 8) = v42;
      *(v18 + 24) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24B359DAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE48A8, &qword_24B35C080);
  v39 = a2;
  result = sub_24B35B8C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24B35A050(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4880, &qword_24B35C048);
  v38 = a2;
  result = sub_24B35B8C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24B35A2F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4870, &qword_24B35C038);
  v39 = a2;
  result = sub_24B35B8C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v40 = *v26;
      v27 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v40;
      *(v18 + 16) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_24B35A5B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24B359A6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24B359AE4(v16, a4 & 1);
      v20 = *v5;
      result = sub_24B359A6C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_24B35B900();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24B35A96C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * result;
    v24 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v24;
    *(v23 + 32) = *(a1 + 32);
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v25 = (v22[6] + 16 * result);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * result;
  v27 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a1 + 32);
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v29;
}

uint64_t sub_24B35A73C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24B359A6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24B359DAC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24B359A6C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_24B35B900();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24B35AD58();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_24B35A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24B35B8E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24B35A96C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4858, &qword_24B35C020);
  v2 = *v0;
  v3 = sub_24B35B8B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 8);
        v26 = *(v22 + 24);
        *v24 = v21;
        v24[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v25;
        *(v27 + 24) = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_24B35AB84()
{
  v1 = v0[2];
  v2 = *(sub_24B35B8A0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_24B35B760() - 8);
  return sub_24B3561EC(v0[3], v0[4], v0 + v3, (v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((*(v7 + 80) + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80))), v1);
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

id sub_24B35AD58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE48A8, &qword_24B35C080);
  v2 = *v0;
  v3 = sub_24B35B8B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24B35AEC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4880, &qword_24B35C048);
  v2 = *v0;
  v3 = sub_24B35B8B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24B35B02C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4870, &qword_24B35C038);
  v2 = *v0;
  v3 = sub_24B35B8B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_24B35B1AC()
{
  v1 = v0[2];
  v2 = *(sub_24B35B8A0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v7 = *(sub_24B35B760() - 8);
  return sub_24B354A8C(v0[3], v0[4], v0 + v3, (v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v7 + 80) + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80)), v1);
}

uint64_t sub_24B35B2EC(void *a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = v4();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

unint64_t sub_24B35B324()
{
  result = qword_281064590;
  if (!qword_281064590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281064590);
  }

  return result;
}

uint64_t sub_24B35B370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B3524F8;

  return sub_24B3574E8();
}

uint64_t sub_24B35B408(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B35B428(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2810645A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2810645A0);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeBlockingQueueMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnsafeBlockingQueueMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}