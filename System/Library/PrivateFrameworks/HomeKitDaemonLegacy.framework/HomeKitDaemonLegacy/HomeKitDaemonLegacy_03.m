uint64_t sub_253247C68(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_253CD0778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0738();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v14 = sub_253CD0768();
  __swift_project_value_buffer(v14, qword_281532BF8);
  v15 = sub_253CD0758();
  sub_253CD0788();
  v20 = sub_253CD0D48();
  result = sub_253CD0DA8();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_253CD07B8();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_253CD0718();
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x259C040E0](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_253247F44(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3920, &qword_253D4A318);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253248010, 0, 0);
}

uint64_t sub_253248010()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v10 = objc_opt_self();
  sub_253200644(0, &qword_27F5A3928, 0x277CF9500);
  v7 = sub_253CD0A38();
  v1[23] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_253248220;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_253200644(0, &qword_27F5A3930, 0x277CF94B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
  sub_253CD0AC8();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_253249B94;
  v1[13] = &block_descriptor_7;
  [v10 fullSetDonationWithItemType:7690 descriptors:v7 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_253248220()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_253248404;
  }

  else
  {
    v3 = sub_253248330;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253248330()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  *v3 = v2;
  v4 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
  v5 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  type metadata accessor for CascadeIndexer();
  sub_25324876C();
  sub_253CD07D8();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_253248404()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_253248480()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_253248510, 0, 0);
}

uint64_t sub_253248510()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = **(v0 + 24);
  *(v0 + 16) = 0;
  v2 = [v1 finish_];
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v2)
  {
    v5 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
    v6 = v3;
    v7 = sub_253CD07C8();
    v8 = sub_253CD0C78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2531F8000, v7, v8, "Successfully finished donating items to Cascade", v9, 2u);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    goto LABEL_6;
  }

  v10 = v3;
  v11 = sub_253CCFE18();

  swift_willThrow();
  v12 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
  v13 = v11;
  v7 = sub_253CD07C8();
  v14 = sub_253CD0C98();

  if (os_log_type_enabled(v7, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_2531F8000, v7, v14, "Error occurred while trying to finish the cascade indexing session: %@", v15, 0xCu);
    sub_253206054(v16, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v16, -1, -1);
    MEMORY[0x259C040E0](v15, -1, -1);

LABEL_6:
    goto LABEL_8;
  }

LABEL_8:
  v19 = *(v0 + 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_25324876C()
{
  swift_getMetatypeMetadata();
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2532487D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8[-v3];
  if (v0[29])
  {

    sub_253CD0BA8();
  }

  sub_253248F34();
  v5 = v0[23];
  __swift_project_boxed_opaque_existential_0(v0 + 19, v0[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v9[3] = swift_getAssociatedTypeWitness();
  v9[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v9);

  sub_253CD0188();

  sub_253206054(v4, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_253233C14(v9, (v0 + 24));
  return swift_endAccess();
}

uint64_t sub_2532489D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25322842C;

  return sub_25324701C();
}

uint64_t sub_253248A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_253CD07E8();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253248B28, 0, 0);
}

uint64_t sub_253248B28()
{
  v1 = v0[9];
  sub_253211D58(v0[6], &off_2864FBD60);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Full donation of the home graph requested", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_253248CAC, Strong, 0);
  }

  else
  {
    v10 = v0[9];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_253248CAC()
{
  v1 = v0[10];
  sub_2532487D8();

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_253248F34()
{
  v1 = (v0 + 24);
  v2 = *v0;
  v3 = sub_253CD07E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_2532168A0(v1, &v13, &qword_27F5A3630, &unk_253D49680);
  if (!*(&v14 + 1))
  {
    return sub_253206054(&v13, &qword_27F5A3630, &unk_253D49680);
  }

  sub_2531FF170(&v13, v16);
  sub_253211D58(v2, &off_2864FBD60);
  v8 = sub_253CD07C8();
  v9 = sub_253CD0C78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2531F8000, v8, v9, "Cancelling the debounce timer", v10, 2u);
    MEMORY[0x259C040E0](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  sub_253CD0308();
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  swift_beginAccess();
  sub_253233C14(&v13, v1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_25324918C()
{
  v1 = *(v0 + 16);
  sub_253248F34();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_253249224;
  v3 = *(v0 + 16);

  return sub_253249318();
}

uint64_t sub_253249224()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_253249318()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532493B4, v0, 0);
}

uint64_t sub_2532493B4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_253CD0B58();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_25324690C(0, 0, v1, &unk_253D4A228, v5);
  v0[4] = v6;
  v7 = *(v2 + 232);
  *(v2 + 232) = v6;

  v8 = *(MEMORY[0x277D857D0] + 4);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_25324953C;
  v10 = MEMORY[0x277D84A98];
  v11 = MEMORY[0x277D84AC0];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 6, v6, v12, v10, v11);
}

uint64_t sub_25324953C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25324964C, v2, 0);
}

uint64_t sub_25324964C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v3 + 232);
  *(v3 + 232) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_2532496E4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_25324979C, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_25324979C()
{
  v1 = v0[6];
  v2 = *(v1 + 136);
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[7] = *(v6 + 8);
  v7 = *(v4 + 8);

  v7(v6, v2);

  v8 = *(MEMORY[0x277D0EF80] + 4);
  v13 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_253249938;
  v10 = v0[6];
  v11 = MEMORY[0x277D84F78] + 8;

  return v13(&unk_253D4A250, v10, v11);
}

uint64_t sub_253249938()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_253249A80, 0, 0);
}

uint64_t sub_253249A80()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_253249AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C438;

  return sub_2532496C4(a1, v4, v5, v6);
}

void sub_253249B94(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3920, &qword_253D4A318);
    sub_253CD0AD8();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3920, &qword_253D4A318);
    sub_253CD0AE8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_253249C44(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for RoomEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_253249D3C, 0, 0);
}

uint64_t sub_253249D3C()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for RoomEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBAA8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for RoomEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_253241E74();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for RoomEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_253CD07C8();
          v40 = sub_253CD0C98();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_2531F8000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_253206054(v42, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v42, -1, -1);
            MEMORY[0x259C040E0](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for RoomEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2532515B0(v17, v18, type metadata accessor for RoomEntity);
        v21 = sub_253CD07C8();
        v22 = sub_253CD0C98();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_253CD00F8();
          v31 = v30;
          sub_253251550(v25, type metadata accessor for RoomEntity);
          v32 = sub_253277BA8(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_2531F8000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x259C040E0](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x259C040E0](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_253251550(v25, type metadata accessor for RoomEntity);
          v6 = v24;
        }

        sub_253251550(v6, type metadata accessor for RoomEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_25324A1C4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ZoneEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25324A2BC, 0, 0);
}

uint64_t sub_25324A2BC()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for ZoneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBB08;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for ZoneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2532437EC();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for ZoneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_253CD07C8();
          v40 = sub_253CD0C98();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_2531F8000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_253206054(v42, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v42, -1, -1);
            MEMORY[0x259C040E0](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for ZoneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2532515B0(v17, v18, type metadata accessor for ZoneEntity);
        v21 = sub_253CD07C8();
        v22 = sub_253CD0C98();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_253CD00F8();
          v31 = v30;
          sub_253251550(v25, type metadata accessor for ZoneEntity);
          v32 = sub_253277BA8(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_2531F8000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x259C040E0](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x259C040E0](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_253251550(v25, type metadata accessor for ZoneEntity);
          v6 = v24;
        }

        sub_253251550(v6, type metadata accessor for ZoneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_25324A744(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for SceneEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25324A83C, 0, 0);
}

uint64_t sub_25324A83C()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for SceneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBAD8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for SceneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_253242DD0();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for SceneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_253CD07C8();
          v40 = sub_253CD0C98();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_2531F8000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_253206054(v42, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v42, -1, -1);
            MEMORY[0x259C040E0](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for SceneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2532515B0(v17, v18, type metadata accessor for SceneEntity);
        v21 = sub_253CD07C8();
        v22 = sub_253CD0C98();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_253CD00F8();
          v31 = v30;
          sub_253251550(v25, type metadata accessor for SceneEntity);
          v32 = sub_253277BA8(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_2531F8000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x259C040E0](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x259C040E0](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_253251550(v25, type metadata accessor for SceneEntity);
          v6 = v24;
        }

        sub_253251550(v6, type metadata accessor for SceneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_25324ACC4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeDeviceEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25324ADBC, 0, 0);
}

uint64_t sub_25324ADBC()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for HomeDeviceEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBA18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for HomeDeviceEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_25323D890();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for HomeDeviceEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_253CD07C8();
          v40 = sub_253CD0C98();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_2531F8000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_253206054(v42, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v42, -1, -1);
            MEMORY[0x259C040E0](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for HomeDeviceEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2532515B0(v17, v18, type metadata accessor for HomeDeviceEntity);
        v21 = sub_253CD07C8();
        v22 = sub_253CD0C98();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_253CD00F8();
          v31 = v30;
          sub_253251550(v25, type metadata accessor for HomeDeviceEntity);
          v32 = sub_253277BA8(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_2531F8000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x259C040E0](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x259C040E0](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_253251550(v25, type metadata accessor for HomeDeviceEntity);
          v6 = v24;
        }

        sub_253251550(v6, type metadata accessor for HomeDeviceEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_25324B244(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeGroupEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25324B33C, 0, 0);
}

uint64_t sub_25324B33C()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for HomeGroupEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBA78;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for HomeGroupEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2532410D8();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for HomeGroupEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_253CD07C8();
          v40 = sub_253CD0C98();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_2531F8000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_253206054(v42, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v42, -1, -1);
            MEMORY[0x259C040E0](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for HomeGroupEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2532515B0(v17, v18, type metadata accessor for HomeGroupEntity);
        v21 = sub_253CD07C8();
        v22 = sub_253CD0C98();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_253CD00F8();
          v31 = v30;
          sub_253251550(v25, type metadata accessor for HomeGroupEntity);
          v32 = sub_253277BA8(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_2531F8000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x259C040E0](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x259C040E0](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_253251550(v25, type metadata accessor for HomeGroupEntity);
          v6 = v24;
        }

        sub_253251550(v6, type metadata accessor for HomeGroupEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_25324B7C4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeEntity();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25324B8BC, 0, 0);
}

uint64_t sub_25324B8BC()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v50 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for HomeEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBA48;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for HomeEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_253240288();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v34 = *(v0 + 72);
          v35 = v14;
          v36 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for HomeEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          v37 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
          v38 = v36;
          v39 = sub_253CD07C8();
          v40 = sub_253CD0C98();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            v43 = v36;
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v42 = v44;
            _os_log_impl(&dword_2531F8000, v39, v40, "Could not donate entities to cascade: %@", v41, 0xCu);
            sub_253206054(v42, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v42, -1, -1);
            MEMORY[0x259C040E0](v41, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v19 = *(v0 + 72);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v20 = *(type metadata accessor for CascadeIndexer.CascadeIndexingSession() + 20);
        sub_2532515B0(v17, v18, type metadata accessor for HomeEntity);
        v21 = sub_253CD07C8();
        v22 = sub_253CD0C98();
        v23 = os_log_type_enabled(v21, v22);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        if (v23)
        {
          v51 = *(v0 + 104);
          v26 = *(v0 + 80);
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52[0] = v28;
          *v27 = 136315138;
          v29 = sub_253CD00F8();
          v31 = v30;
          sub_253251550(v25, type metadata accessor for HomeEntity);
          v32 = sub_253277BA8(v29, v31, v52);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_2531F8000, v21, v22, "Unable to create CascadeItem for %s)", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x259C040E0](v28, -1, -1);
          v33 = v27;
          v5 = v50;
          MEMORY[0x259C040E0](v33, -1, -1);

          v6 = v51;
        }

        else
        {

          sub_253251550(v25, type metadata accessor for HomeEntity);
          v6 = v24;
        }

        sub_253251550(v6, type metadata accessor for HomeEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_25324BD44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2532517B8;

  return v7(a1);
}

uint64_t sub_25324BE3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C7A8;

  return sub_25324BD44(a1, v5);
}

uint64_t sub_25324BEF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25320C438;

  return sub_2532489D8();
}

uint64_t sub_25324BF90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25320C7A8;

  return sub_25324916C(v0);
}

uint64_t objectdestroy_30Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_25324C06C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C7A8;

  return sub_253248A68(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for CascadeIndexer.CascadeIndexingSession()
{
  result = qword_27F5A3940;
  if (!qword_27F5A3940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25324C178(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25324C26C;

  return v6(v2 + 32);
}

uint64_t sub_25324C26C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25324C380(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v4 = sub_253CD07E8();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_25324C480, 0, 0);
}

uint64_t sub_25324C480()
{
  v1 = [*(v0 + 56) home];
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3908, &qword_253D4A2F0);
    v4 = *(type metadata accessor for HomeGroupEntity() - 8);
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    *(v0 + 112) = v6;
    v7 = (v6 + 32) & ~v6;
    v8 = swift_allocObject();
    *(v0 + 96) = v8;
    *(v8 + 16) = xmmword_253D48DA0;
    sub_253240970(v3, v2, (v8 + v7));
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_25324C7B8;

    return sub_25324B244(v8);
  }

  else
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    off_2864FC278();
    sub_253CD07D8();
    v14 = v12;
    v15 = sub_253CD07C8();
    v16 = sub_253CD0C98();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 56);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_2531F8000, v15, v16, "Could not index %@ as it does not have valid home pointer", v18, 0xCu);
      sub_253206054(v19, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v19, -1, -1);
      MEMORY[0x259C040E0](v18, -1, -1);
    }

    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = *(v0 + 64);

    (*(v22 + 8))(v21, v23);
    v24 = *(v0 + 80);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_25324C7B8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = (*(*v0 + 112) + 32) & ~*(*v0 + 112);
  v5 = *v0;

  swift_setDeallocating();
  sub_253251550(v2 + v3, type metadata accessor for HomeGroupEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_25324C908, 0, 0);
}

uint64_t sub_25324C908()
{
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25324C97C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v4 = sub_253CD07E8();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3910, &qword_253D4A300) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for SceneEntity();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_25324CB10, 0, 0);
}

uint64_t sub_25324CB10()
{
  v41 = v0;
  v1 = [*(v0 + 64) type];
  v2 = sub_253CD0968();
  v4 = v3;

  v5 = *MEMORY[0x277CCF1A0];
  if (v2 == sub_253CD0968() && v4 == v6)
  {

    goto LABEL_11;
  }

  v8 = sub_253CD1118();

  if (v8)
  {
LABEL_11:
    v28 = *(v0 + 120);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v31 = *(v0 + 8);

    return v31();
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  sub_253242890(*(v0 + 64), v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    sub_253206054(*(v0 + 96), &qword_27F5A3910, &qword_253D4A300);
    v14 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    off_2864FC278();
    sub_253CD07D8();
    v15 = v13;
    v16 = sub_253CD07C8();
    v17 = sub_253CD0C98();

    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 72);
    if (v18)
    {
      v22 = *(v0 + 64);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v0 + 56) = v22;
      sub_253200644(0, &qword_281530E90, off_279719FF0);
      v25 = sub_253CD00F8();
      v27 = sub_253277BA8(v25, v26, &v40);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2531F8000, v16, v17, "Unable to create SceneEntity from scene %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x259C040E0](v24, -1, -1);
      MEMORY[0x259C040E0](v23, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    goto LABEL_11;
  }

  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  sub_2532514E8(*(v0 + 96), v33, type metadata accessor for SceneEntity);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3918, &qword_253D4A308);
  v35 = *(v34 + 72);
  v36 = *(v34 + 80);
  *(v0 + 144) = v36;
  v37 = (v36 + 32) & ~v36;
  v38 = swift_allocObject();
  *(v0 + 128) = v38;
  *(v38 + 16) = xmmword_253D48DA0;
  sub_2532515B0(v33, v38 + v37, type metadata accessor for SceneEntity);
  v39 = swift_task_alloc();
  *(v0 + 136) = v39;
  *v39 = v0;
  v39[1] = sub_25324CF30;

  return sub_25324A744(v38);
}

uint64_t sub_25324CF30()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = (*(*v0 + 144) + 32) & ~*(*v0 + 144);
  v5 = *v0;

  swift_setDeallocating();
  sub_253251550(v2 + v3, type metadata accessor for SceneEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_25324D080, 0, 0);
}

uint64_t sub_25324D080()
{
  sub_253251550(v0[15], type metadata accessor for SceneEntity);
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25324D124(uint64_t a1, uint64_t a2)
{
  v2[52] = a1;
  v4 = sub_253CD07E8();
  v2[53] = v4;
  v5 = *(v4 - 8);
  v2[54] = v5;
  v6 = *(v5 + 64) + 15;
  v2[55] = swift_task_alloc();
  v7 = type metadata accessor for RoomEntity();
  v2[56] = v7;
  v8 = *(v7 - 8);
  v2[57] = v8;
  v9 = *(v8 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v10 = type metadata accessor for ZoneEntity();
  v2[60] = v10;
  v11 = *(v10 - 8);
  v2[61] = v11;
  v12 = *(v11 + 64) + 15;
  v2[62] = swift_task_alloc();
  v13 = type metadata accessor for HomeEntity();
  v2[63] = v13;
  v14 = *(v13 - 8);
  v2[64] = v14;
  v15 = *(v14 + 64) + 15;
  v2[65] = swift_task_alloc();
  v16 = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[66] = v16;
  v2[5] = v16;
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_25324D348, 0, 0);
}

uint64_t sub_25324D348()
{
  v1 = [*(v0 + 416) urlString];
  if (v1)
  {
    v2 = v1;
    v3 = sub_253CD0968();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 416);
  *v6 = v3;
  v6[1] = v5;
  v10 = [v9 spiClientIdentifier];
  v11 = v6 + *(v8 + 20);
  sub_253CCFF38();

  v12 = [v9 name];
  v13 = sub_253CD0968();
  v15 = v14;

  v16 = (v6 + *(v8 + 24));
  *v16 = v13;
  v16[1] = v15;
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F0, &qword_253D4A2A0);
  v17 = *(v7 + 72);
  v18 = *(v7 + 80);
  *(v0 + 784) = v18;
  v19 = (v18 + 32) & ~v18;
  v20 = swift_allocObject();
  *(v0 + 536) = v20;
  *(v20 + 16) = xmmword_253D48DA0;
  sub_2532515B0(v6, v20 + v19, type metadata accessor for HomeEntity);
  v21 = swift_task_alloc();
  *(v0 + 544) = v21;
  *v21 = v0;
  v21[1] = sub_25324D53C;

  return sub_25324B7C4(v20);
}

uint64_t sub_25324D53C()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = (*(*v0 + 784) + 32) & ~*(*v0 + 784);
  v5 = *v0;

  swift_setDeallocating();
  sub_253251550(v2 + v3, type metadata accessor for HomeEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_25324D68C, 0, 0);
}

uint64_t sub_25324D68C()
{
  v1 = [*(v0 + 416) rooms];
  sub_253200644(0, &qword_281530D18, off_27971A220);
  v2 = sub_253CD0A58();
  *(v0 + 552) = v2;

  if (v2 >> 62)
  {
    v4 = sub_253CD0ED8();
    *(v0 + 560) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 560) = v4;
    if (v4)
    {
LABEL_3:
      if (v4 >= 1)
      {
        v5 = 0;
        *(v0 + 568) = *MEMORY[0x277D0F1A8];
        *&v3 = 138412290;
        v143 = v3;
        while (1)
        {
          *(v0 + 752) = v5;
          v10 = *(v0 + 552);
          v11 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x259C00F30](v5) : *(v10 + 8 * v5 + 32);
          v12 = v11;
          *(v0 + 760) = v11;
          v13 = *(v0 + 528);
          v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 80) = v13;
          *(v0 + 88) = &off_2864FBEB8;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
          sub_2532515B0(v14, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v16 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
          *(v0 + 120) = v13;
          *(v0 + 128) = &off_2864FBEB8;
          v17 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
          sub_2532515B0(v16, v17, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v18 = [v12 home];
          if (v18)
          {
            break;
          }

          v19 = *(v0 + 568);
          v21 = *(v0 + 440);
          v20 = *(v0 + 448);
          sub_253CD0968();
          off_2864FBAC8();
          sub_253CD07D8();
          v22 = v12;
          v23 = sub_253CD07C8();
          v24 = sub_253CD0C98();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = v143;
            *(v25 + 4) = v22;
            *v26 = v22;
            v27 = v22;
            _os_log_impl(&dword_2531F8000, v23, v24, "room %@ has no home", v25, 0xCu);
            sub_253206054(v26, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v26, -1, -1);
            MEMORY[0x259C040E0](v25, -1, -1);
          }

          ++v5;
          v6 = *(v0 + 560);
          v8 = *(v0 + 432);
          v7 = *(v0 + 440);
          v9 = *(v0 + 424);

          (*(v8 + 8))(v7, v9);
          __swift_destroy_boxed_opaque_existential_0((v0 + 96));
          __swift_destroy_boxed_opaque_existential_0((v0 + 56));

          if (v5 == v6)
          {
            goto LABEL_17;
          }
        }

        v28 = v18;
        v29 = v12;
        v30 = [v29 urlString];
        if (v30)
        {
          v31 = v30;
          v32 = sub_253CD0968();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v36 = *(v0 + 464);
        v35 = *(v0 + 472);
        v38 = *(v0 + 448);
        v37 = *(v0 + 456);
        v39 = (v36 + *(v38 + 20));
        *v39 = v32;
        v39[1] = v34;
        v40 = [v29 spiClientIdentifier];
        sub_253CCFF38();

        v41 = [v29 name];
        v42 = sub_253CD0968();
        v44 = v43;

        v45 = (v36 + *(v38 + 24));
        *v45 = v42;
        v45[1] = v44;
        sub_2532514E8(v36, v35, type metadata accessor for RoomEntity);
        __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
        v46 = *(v37 + 72);
        v47 = *(v37 + 80);
        *(v0 + 792) = v47;
        v48 = (v47 + 32) & ~v47;
        v49 = swift_allocObject();
        *(v0 + 768) = v49;
        *(v49 + 16) = xmmword_253D48DA0;
        sub_2532515B0(v35, v49 + v48, type metadata accessor for RoomEntity);
        v144 = sub_253249C44;
        v50 = swift_task_alloc();
        *(v0 + 776) = v50;
        *v50 = v0;
        v50[1] = sub_253250048;
        v51 = v49;
        goto LABEL_27;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

LABEL_17:
  v52 = *(v0 + 552);
  v53 = *(v0 + 416);

  v54 = [v53 zones];
  sub_253200644(0, &qword_281530D10, off_27971A280);
  v55 = sub_253CD0A58();
  *(v0 + 576) = v55;

  if (v55 >> 62)
  {
    v56 = sub_253CD0ED8();
    *(v0 + 584) = v56;
    if (v56)
    {
LABEL_19:
      if (v56 >= 1)
      {
        *(v0 + 720) = 0;
        v57 = *(v0 + 576);
        if ((v57 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v58 = *(v57 + 32);
        }

        v59 = v58;
        *(v0 + 728) = v58;
        v60 = *(v0 + 528);
        v61 = *(v0 + 488);
        v62 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v60;
        *(v0 + 168) = &off_2864FBEB8;
        v63 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
        sub_2532515B0(v62, v63, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v64 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v60;
        *(v0 + 208) = &off_2864FBEB8;
        v65 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
        sub_2532515B0(v64, v65, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F8, &qword_253D4A2B8);
        v66 = *(v61 + 72);
        v67 = *(v61 + 80);
        *(v0 + 788) = v67;
        v68 = (v67 + 32) & ~v67;
        v69 = swift_allocObject();
        *(v0 + 736) = v69;
        *(v69 + 16) = xmmword_253D48DA0;
        v70 = v59;
        v71 = [v70 urlString];
        if (v71)
        {
          v72 = v71;
          v73 = sub_253CD0968();
          v75 = v74;
        }

        else
        {
          v73 = 0;
          v75 = 0;
        }

        v76 = *(v0 + 496);
        v77 = *(v0 + 480);
        *v76 = v73;
        v76[1] = v75;
        v78 = [v70 spiClientIdentifier];
        v79 = v76 + *(v77 + 20);
        sub_253CCFF38();

        v80 = [v70 name];
        v81 = sub_253CD0968();
        v83 = v82;

        v84 = (v76 + *(v77 + 24));
        *v84 = v81;
        v84[1] = v83;
        sub_2532514E8(v76, v69 + v68, type metadata accessor for ZoneEntity);
        v144 = sub_25324A1C4;
        v85 = swift_task_alloc();
        *(v0 + 744) = v85;
        *v85 = v0;
        v85[1] = sub_25324F588;
        v51 = v69;
        goto LABEL_27;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v56;
    if (v56)
    {
      goto LABEL_19;
    }
  }

  v87 = *(v0 + 576);
  v88 = *(v0 + 416);

  result = [v88 actionSets];
  if (!result)
  {
LABEL_76:
    __break(1u);
    return result;
  }

  v89 = result;
  sub_253200644(0, &qword_281530E90, off_279719FF0);
  v90 = sub_253CD0A58();
  *(v0 + 592) = v90;

  if (!(v90 >> 62))
  {
    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v91;
    if (!v91)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

LABEL_44:
  v91 = sub_253CD0ED8();
  *(v0 + 600) = v91;
  if (!v91)
  {
LABEL_45:
    v101 = *(v0 + 592);
    v102 = *(v0 + 416);

    v103 = [v102 accessories];
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    v104 = sub_253CD0A58();
    *(v0 + 608) = v104;

    if (!(v104 >> 62))
    {
      v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v105;
      if (v105)
      {
LABEL_47:
        if (v105 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v106 = *(v0 + 608);
          if ((v106 & 0xC000000000000001) != 0)
          {
            v107 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v107 = *(v106 + 32);
          }

          v108 = v107;
          *(v0 + 672) = v107;
          v109 = *(v0 + 528);
          v110 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v109;
          *(v0 + 288) = &off_2864FBEB8;
          v111 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
          sub_2532515B0(v110, v111, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v112 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v109;
          *(v0 + 328) = &off_2864FBEB8;
          v113 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
          sub_2532515B0(v112, v113, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v114 = [v108 home];
          v115 = sub_25323F600(v108, v114);

          v116 = v115[2];
          if (!v116)
          {
            goto LABEL_57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
          v117 = *(type metadata accessor for HomeDeviceEntity() - 8);
          v118 = *(v117 + 72);
          v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
          v120 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v120);
          if (v118)
          {
            if (result - v119 != 0x8000000000000000 || v118 != -1)
            {
              v120[2] = v116;
              v120[3] = 2 * ((result - v119) / v118);
              v121 = sub_2532220B8((v0 + 336), v120 + v119, v116, v115);
              v122 = *(v0 + 336);
              v123 = *(v0 + 344);
              v124 = *(v0 + 352);
              v125 = *(v0 + 360);
              v126 = *(v0 + 368);
              sub_25320C5EC();
              if (v121 == v116)
              {
LABEL_58:
                *(v0 + 680) = v120;
                v144 = sub_25324ACC4;
                v127 = swift_task_alloc();
                *(v0 + 688) = v127;
                *v127 = v0;
                v127[1] = sub_25324E7E8;
                v51 = v120;
LABEL_27:

                return v144(v51);
              }

              __break(1u);
LABEL_57:

              v120 = MEMORY[0x277D84F90];
              goto LABEL_58;
            }

            goto LABEL_75;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_61:
      v128 = *(v0 + 608);
      v129 = *(v0 + 416);

      v130 = [v129 serviceGroups];
      sub_253200644(0, &qword_281530E68, off_27971A230);
      v131 = sub_253CD0A58();
      *(v0 + 624) = v131;

      if (!(v131 >> 62))
      {
        result = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_71:
          v137 = *(v0 + 624);
          v138 = *(v0 + 496);
          v140 = *(v0 + 464);
          v139 = *(v0 + 472);
          v141 = *(v0 + 440);
          sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v142 = *(v0 + 8);

          return v142();
        }

        goto LABEL_63;
      }

LABEL_70:
      result = sub_253CD0ED8();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_71;
      }

LABEL_63:
      if (result < 1)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      *(v0 + 640) = 0;
      v132 = *(v0 + 624);
      if ((v132 & 0xC000000000000001) != 0)
      {
        v133 = MEMORY[0x259C00F30](0);
      }

      else
      {
        v133 = *(v132 + 32);
      }

      v94 = v133;
      *(v0 + 648) = v133;
      v134 = *(v0 + 528);
      v135 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v134;
      *(v0 + 408) = &off_2864FBEB8;
      v136 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
      sub_2532515B0(v135, v136, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v98 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v145 = sub_25324C380;
      v99 = swift_task_alloc();
      *(v0 + 656) = v99;
      *v99 = v0;
      v100 = sub_25324E4DC;
      goto LABEL_39;
    }

LABEL_60:
    v105 = sub_253CD0ED8();
    *(v0 + 616) = v105;
    if (v105)
    {
      goto LABEL_47;
    }

    goto LABEL_61;
  }

LABEL_34:
  if (v91 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 696) = 0;
  v92 = *(v0 + 592);
  if ((v92 & 0xC000000000000001) != 0)
  {
    v93 = MEMORY[0x259C00F30](0);
  }

  else
  {
    v93 = *(v92 + 32);
  }

  v94 = v93;
  *(v0 + 704) = v93;
  v95 = *(v0 + 528);
  v96 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v95;
  *(v0 + 248) = &off_2864FBEB8;
  v97 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
  sub_2532515B0(v96, v97, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v98 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v145 = sub_25324C97C;
  v99 = swift_task_alloc();
  *(v0 + 712) = v99;
  *v99 = v0;
  v100 = sub_25324EE14;
LABEL_39:
  v99[1] = v100;

  return (v145)(v94, v98);
}

uint64_t sub_25324E4DC()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 376));

  return MEMORY[0x2822009F8](sub_25324E5E0, 0, 0);
}

uint64_t sub_25324E5E0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 496);
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 440);
    sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 640) + 1;
    *(v0 + 640) = v10;
    v11 = *(v0 + 624);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x259C00F30]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    *(v0 + 648) = v12;
    v14 = *(v0 + 528);
    v15 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v14;
    *(v0 + 408) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
    sub_2532515B0(v15, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v18 = swift_task_alloc();
    *(v0 + 656) = v18;
    *v18 = v0;
    v18[1] = sub_25324E4DC;

    return (sub_25324C380)(v13, v17);
  }
}

uint64_t sub_25324E7E8()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  v3 = *(*v0 + 680);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 296));
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));

  return MEMORY[0x2822009F8](sub_25324E910, 0, 0);
}

uint64_t sub_25324E910()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 616);

  if (v1 + 1 != v2)
  {
    v10 = *(v0 + 664) + 1;
    *(v0 + 664) = v10;
    v11 = *(v0 + 608);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x259C00F30]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    *(v0 + 672) = v12;
    v14 = *(v0 + 528);
    v15 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 280) = v14;
    *(v0 + 288) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_2532515B0(v15, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
    *(v0 + 320) = v14;
    *(v0 + 328) = &off_2864FBEB8;
    v18 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
    sub_2532515B0(v17, v18, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
    v19 = [v13 home];
    v20 = sub_25323F600(v13, v19);

    v21 = v20[2];
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
      v22 = *(type metadata accessor for HomeDeviceEntity() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v25);
      if (!v23)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (result - v24 == 0x8000000000000000 && v23 == -1)
      {
        goto LABEL_32;
      }

      v25[2] = v21;
      v25[3] = 2 * ((result - v24) / v23);
      v27 = sub_2532220B8((v0 + 336), v25 + v24, v21, v20);
      v28 = *(v0 + 336);
      v29 = *(v0 + 344);
      v30 = *(v0 + 352);
      v31 = *(v0 + 360);
      v32 = *(v0 + 368);
      sub_25320C5EC();
      if (v27 == v21)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    v25 = MEMORY[0x277D84F90];
LABEL_19:
    *(v0 + 680) = v25;
    v33 = swift_task_alloc();
    *(v0 + 688) = v33;
    *v33 = v0;
    v33[1] = sub_25324E7E8;

    return (sub_25324ACC4)(v25);
  }

  v3 = *(v0 + 608);
  v4 = *(v0 + 416);

  v5 = [v4 serviceGroups];
  sub_253200644(0, &qword_281530E68, off_27971A230);
  v6 = sub_253CD0A58();
  *(v0 + 624) = v6;

  if (v6 >> 62)
  {
    result = sub_253CD0ED8();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 632) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 640) = 0;
        v8 = *(v0 + 624);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v34 = v9;
        *(v0 + 648) = v9;
        v35 = *(v0 + 528);
        v36 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 400) = v35;
        *(v0 + 408) = &off_2864FBEB8;
        v37 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
        sub_2532515B0(v36, v37, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v38 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
        v39 = swift_task_alloc();
        *(v0 + 656) = v39;
        *v39 = v0;
        v39[1] = sub_25324E4DC;

        return (sub_25324C380)(v34, v38);
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v40 = *(v0 + 624);
  v41 = *(v0 + 496);
  v43 = *(v0 + 464);
  v42 = *(v0 + 472);
  v44 = *(v0 + 440);
  sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_25324EE14()
{
  v1 = *v0;
  v2 = *(*v0 + 712);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 216));

  return MEMORY[0x2822009F8](sub_25324EF18, 0, 0);
}

uint64_t sub_25324EF18()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 600);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 592);
    v4 = *(v0 + 416);

    v5 = [v4 accessories];
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    v6 = sub_253CD0A58();
    *(v0 + 608) = v6;

    if (v6 >> 62)
    {
      v7 = sub_253CD0ED8();
      *(v0 + 616) = v7;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v7;
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v8 = *(v0 + 608);
          if ((v8 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v9 = *(v8 + 32);
          }

          v21 = v9;
          *(v0 + 672) = v9;
          v22 = *(v0 + 528);
          v23 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v22;
          *(v0 + 288) = &off_2864FBEB8;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
          sub_2532515B0(v23, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v25 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v22;
          *(v0 + 328) = &off_2864FBEB8;
          v26 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
          sub_2532515B0(v25, v26, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v27 = [v21 home];
          v28 = sub_25323F600(v21, v27);

          v29 = v28[2];
          if (!v29)
          {
            goto LABEL_21;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
          v30 = *(type metadata accessor for HomeDeviceEntity() - 8);
          v31 = *(v30 + 72);
          v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v33 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v33);
          if (v31)
          {
            if (result - v32 != 0x8000000000000000 || v31 != -1)
            {
              v33[2] = v29;
              v33[3] = 2 * ((result - v32) / v31);
              v34 = sub_2532220B8((v0 + 336), v33 + v32, v29, v28);
              v35 = *(v0 + 336);
              v36 = *(v0 + 344);
              v37 = *(v0 + 352);
              v38 = *(v0 + 360);
              v39 = *(v0 + 368);
              sub_25320C5EC();
              if (v34 == v29)
              {
LABEL_22:
                *(v0 + 680) = v33;
                v40 = swift_task_alloc();
                *(v0 + 688) = v40;
                *v40 = v0;
                v40[1] = sub_25324E7E8;

                return (sub_25324ACC4)(v33);
              }

              __break(1u);
LABEL_21:

              v33 = MEMORY[0x277D84F90];
              goto LABEL_22;
            }

LABEL_40:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }

    v41 = *(v0 + 608);
    v42 = *(v0 + 416);

    v43 = [v42 serviceGroups];
    sub_253200644(0, &qword_281530E68, off_27971A230);
    v44 = sub_253CD0A58();
    *(v0 + 624) = v44;

    if (!(v44 >> 62))
    {
      result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (!result)
      {
LABEL_36:
        v50 = *(v0 + 624);
        v51 = *(v0 + 496);
        v53 = *(v0 + 464);
        v52 = *(v0 + 472);
        v54 = *(v0 + 440);
        sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));

        v55 = *(v0 + 8);

        return v55();
      }

      goto LABEL_28;
    }

LABEL_35:
    result = sub_253CD0ED8();
    *(v0 + 632) = result;
    if (!result)
    {
      goto LABEL_36;
    }

LABEL_28:
    if (result < 1)
    {
      __break(1u);
      goto LABEL_40;
    }

    *(v0 + 640) = 0;
    v45 = *(v0 + 624);
    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x259C00F30](0);
    }

    else
    {
      v46 = *(v45 + 32);
    }

    v13 = v46;
    *(v0 + 648) = v46;
    v47 = *(v0 + 528);
    v48 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v47;
    *(v0 + 408) = &off_2864FBEB8;
    v49 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
    sub_2532515B0(v48, v49, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v56 = sub_25324C380;
    v18 = swift_task_alloc();
    *(v0 + 656) = v18;
    *v18 = v0;
    v19 = sub_25324E4DC;
    goto LABEL_11;
  }

  v10 = *(v0 + 696) + 1;
  *(v0 + 696) = v10;
  v11 = *(v0 + 592);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x259C00F30]();
  }

  else
  {
    v12 = *(v11 + 8 * v10 + 32);
  }

  v13 = v12;
  *(v0 + 704) = v12;
  v14 = *(v0 + 528);
  v15 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v14;
  *(v0 + 248) = &off_2864FBEB8;
  v16 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
  sub_2532515B0(v15, v16, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v17 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v56 = sub_25324C97C;
  v18 = swift_task_alloc();
  *(v0 + 712) = v18;
  *v18 = v0;
  v19 = sub_25324EE14;
LABEL_11:
  v18[1] = v19;

  return (v56)(v13, v17);
}

uint64_t sub_25324F588()
{
  v1 = *v0;
  v2 = *(*v0 + 744);
  v3 = *(*v0 + 736);
  v4 = (*(v1 + 788) + 32) & ~*(v1 + 788);
  v6 = *v0;

  swift_setDeallocating();
  sub_253251550(v3 + v4, type metadata accessor for ZoneEntity);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_0((v1 + 176));
  __swift_destroy_boxed_opaque_existential_0((v1 + 136));

  return MEMORY[0x2822009F8](sub_25324F6F0, 0, 0);
}

uint64_t sub_25324F6F0()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 584);

  if (v1 + 1 != v2)
  {
    v11 = *(v0 + 720) + 1;
    *(v0 + 720) = v11;
    v12 = *(v0 + 576);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x259C00F30]();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
    }

    v14 = v13;
    *(v0 + 728) = v13;
    v15 = *(v0 + 528);
    v16 = *(v0 + 488);
    v17 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 160) = v15;
    *(v0 + 168) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
    sub_2532515B0(v17, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v19 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
    *(v0 + 200) = v15;
    *(v0 + 208) = &off_2864FBEB8;
    v20 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
    sub_2532515B0(v19, v20, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F8, &qword_253D4A2B8);
    v21 = *(v16 + 72);
    v22 = *(v16 + 80);
    *(v0 + 788) = v22;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v0 + 736) = v24;
    *(v24 + 16) = xmmword_253D48DA0;
    v25 = v14;
    v26 = [v25 urlString];
    if (v26)
    {
      v27 = v26;
      v28 = sub_253CD0968();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = *(v0 + 496);
    v32 = *(v0 + 480);
    *v31 = v28;
    v31[1] = v30;
    v33 = [v25 spiClientIdentifier];
    v34 = v31 + *(v32 + 20);
    sub_253CCFF38();

    v35 = [v25 name];
    v36 = sub_253CD0968();
    v38 = v37;

    v39 = (v31 + *(v32 + 24));
    *v39 = v36;
    v39[1] = v38;
    sub_2532514E8(v31, v24 + v23, type metadata accessor for ZoneEntity);
    v91 = sub_25324A1C4;
    v40 = swift_task_alloc();
    *(v0 + 744) = v40;
    *v40 = v0;
    v40[1] = sub_25324F588;
    v41 = v24;
    goto LABEL_15;
  }

  v3 = *(v0 + 576);
  v4 = *(v0 + 416);

  result = [v4 actionSets];
  if (!result)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v6 = result;
  sub_253200644(0, &qword_281530E90, off_279719FF0);
  v7 = sub_253CD0A58();
  *(v0 + 592) = v7;

  if (v7 >> 62)
  {
    v8 = sub_253CD0ED8();
    *(v0 + 600) = v8;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v8;
    if (v8)
    {
LABEL_5:
      if (v8 >= 1)
      {
        *(v0 + 696) = 0;
        v9 = *(v0 + 592);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        v42 = v10;
        *(v0 + 704) = v10;
        v43 = *(v0 + 528);
        v44 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 240) = v43;
        *(v0 + 248) = &off_2864FBEB8;
        v45 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
        sub_2532515B0(v44, v45, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v46 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
        v92 = sub_25324C97C;
        v47 = swift_task_alloc();
        *(v0 + 712) = v47;
        *v47 = v0;
        v48 = sub_25324EE14;
LABEL_20:
        v47[1] = v48;

        return (v92)(v42, v46);
      }

      __break(1u);
      goto LABEL_39;
    }
  }

  v49 = *(v0 + 592);
  v50 = *(v0 + 416);

  v51 = [v50 accessories];
  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  v52 = sub_253CD0A58();
  *(v0 + 608) = v52;

  if (!(v52 >> 62))
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 616) = v53;
    if (!v53)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

LABEL_39:
  v53 = sub_253CD0ED8();
  *(v0 + 616) = v53;
  if (!v53)
  {
LABEL_40:
    v76 = *(v0 + 608);
    v77 = *(v0 + 416);

    v78 = [v77 serviceGroups];
    sub_253200644(0, &qword_281530E68, off_27971A230);
    v79 = sub_253CD0A58();
    *(v0 + 624) = v79;

    if (!(v79 >> 62))
    {
      result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (result)
      {
LABEL_42:
        if (result >= 1)
        {
          *(v0 + 640) = 0;
          v80 = *(v0 + 624);
          if ((v80 & 0xC000000000000001) != 0)
          {
            v81 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v81 = *(v80 + 32);
          }

          v42 = v81;
          *(v0 + 648) = v81;
          v82 = *(v0 + 528);
          v83 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 400) = v82;
          *(v0 + 408) = &off_2864FBEB8;
          v84 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
          sub_2532515B0(v83, v84, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v46 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
          v92 = sub_25324C380;
          v47 = swift_task_alloc();
          *(v0 + 656) = v47;
          *v47 = v0;
          v48 = sub_25324E4DC;
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    result = sub_253CD0ED8();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_42;
    }

LABEL_50:
    v85 = *(v0 + 624);
    v86 = *(v0 + 496);
    v88 = *(v0 + 464);
    v87 = *(v0 + 472);
    v89 = *(v0 + 440);
    sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v90 = *(v0 + 8);

    return v90();
  }

LABEL_26:
  if (v53 < 1)
  {
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 664) = 0;
  v54 = *(v0 + 608);
  if ((v54 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x259C00F30](0);
  }

  else
  {
    v55 = *(v54 + 32);
  }

  v56 = v55;
  *(v0 + 672) = v55;
  v57 = *(v0 + 528);
  v58 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 280) = v57;
  *(v0 + 288) = &off_2864FBEB8;
  v59 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  sub_2532515B0(v58, v59, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v60 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
  *(v0 + 320) = v57;
  *(v0 + 328) = &off_2864FBEB8;
  v61 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
  sub_2532515B0(v60, v61, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
  v62 = [v56 home];
  v63 = sub_25323F600(v56, v62);

  v64 = v63[2];
  if (!v64)
  {
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
  v65 = *(type metadata accessor for HomeDeviceEntity() - 8);
  v66 = *(v65 + 72);
  v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v68 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v68);
  if (!v66)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (result - v67 == 0x8000000000000000 && v66 == -1)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v68[2] = v64;
  v68[3] = 2 * ((result - v67) / v66);
  v69 = sub_2532220B8((v0 + 336), v68 + v67, v64, v63);
  v70 = *(v0 + 336);
  v71 = *(v0 + 344);
  v72 = *(v0 + 352);
  v73 = *(v0 + 360);
  v74 = *(v0 + 368);
  sub_25320C5EC();
  if (v69 == v64)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_36:

  v68 = MEMORY[0x277D84F90];
LABEL_37:
  *(v0 + 680) = v68;
  v91 = sub_25324ACC4;
  v75 = swift_task_alloc();
  *(v0 + 688) = v75;
  *v75 = v0;
  v75[1] = sub_25324E7E8;
  v41 = v68;
LABEL_15:

  return (v91)(v41);
}

uint64_t sub_253250048()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);
  v3 = (*(*v0 + 792) + 32) & ~*(*v0 + 792);
  v5 = *v0;

  swift_setDeallocating();
  sub_253251550(v2 + v3, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_253250198, 0, 0);
}

uint64_t sub_253250198()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 560);
  v3 = *(v0 + 752) + 1;
  sub_253251550(*(v0 + 472), type metadata accessor for RoomEntity);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  if (v3 != v2)
  {
    v12 = *(v0 + 752) + 5;
    *&v4 = 138412290;
    v144 = v4;
    while (1)
    {
      *(v0 + 752) = v12 - 4;
      v18 = *(v0 + 552);
      v19 = (v18 & 0xC000000000000001) != 0 ? MEMORY[0x259C00F30]() : *(v18 + 8 * v12);
      v20 = v19;
      *(v0 + 760) = v19;
      v21 = *(v0 + 528);
      v22 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 80) = v21;
      *(v0 + 88) = &off_2864FBEB8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
      sub_2532515B0(v22, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v24 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
      *(v0 + 120) = v21;
      *(v0 + 128) = &off_2864FBEB8;
      v25 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
      sub_2532515B0(v24, v25, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v26 = [v20 home];
      if (v26)
      {
        break;
      }

      v27 = *(v0 + 568);
      v29 = *(v0 + 440);
      v28 = *(v0 + 448);
      sub_253CD0968();
      off_2864FBAC8();
      sub_253CD07D8();
      v30 = v20;
      v31 = sub_253CD07C8();
      v32 = sub_253CD0C98();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = v144;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&dword_2531F8000, v31, v32, "room %@ has no home", v33, 0xCu);
        sub_253206054(v34, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v34, -1, -1);
        MEMORY[0x259C040E0](v33, -1, -1);
      }

      v13 = *(v0 + 560);
      v15 = *(v0 + 432);
      v14 = *(v0 + 440);
      v16 = *(v0 + 424);

      (*(v15 + 8))(v14, v16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));

      v17 = v12 - 3;
      ++v12;
      if (v17 == v13)
      {
        goto LABEL_2;
      }
    }

    v36 = v26;
    v37 = v20;
    v38 = [v37 urlString];
    if (v38)
    {
      v39 = v38;
      v40 = sub_253CD0968();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v72 = *(v0 + 464);
    v71 = *(v0 + 472);
    v74 = *(v0 + 448);
    v73 = *(v0 + 456);
    v75 = (v72 + *(v74 + 20));
    *v75 = v40;
    v75[1] = v42;
    v76 = [v37 spiClientIdentifier];
    sub_253CCFF38();

    v77 = [v37 name];
    v78 = sub_253CD0968();
    v80 = v79;

    v81 = (v72 + *(v74 + 24));
    *v81 = v78;
    v81[1] = v80;
    sub_2532514E8(v72, v71, type metadata accessor for RoomEntity);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
    v82 = *(v73 + 72);
    v83 = *(v73 + 80);
    *(v0 + 792) = v83;
    v84 = (v83 + 32) & ~v83;
    v85 = swift_allocObject();
    *(v0 + 768) = v85;
    *(v85 + 16) = xmmword_253D48DA0;
    sub_2532515B0(v71, v85 + v84, type metadata accessor for RoomEntity);
    v145 = sub_253249C44;
    v86 = swift_task_alloc();
    *(v0 + 776) = v86;
    *v86 = v0;
    v86[1] = sub_253250048;
    v70 = v85;
    goto LABEL_52;
  }

LABEL_2:
  v5 = *(v0 + 552);
  v6 = *(v0 + 416);

  v7 = [v6 zones];
  sub_253200644(0, &qword_281530D10, off_27971A280);
  v8 = sub_253CD0A58();
  *(v0 + 576) = v8;

  if (v8 >> 62)
  {
    v9 = sub_253CD0ED8();
    *(v0 + 584) = v9;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v9;
    if (v9)
    {
LABEL_4:
      if (v9 >= 1)
      {
        *(v0 + 720) = 0;
        v10 = *(v0 + 576);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v43 = v11;
        *(v0 + 728) = v11;
        v44 = *(v0 + 528);
        v45 = *(v0 + 488);
        v46 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v44;
        *(v0 + 168) = &off_2864FBEB8;
        v47 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
        sub_2532515B0(v46, v47, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v48 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v44;
        *(v0 + 208) = &off_2864FBEB8;
        v49 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
        sub_2532515B0(v48, v49, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F8, &qword_253D4A2B8);
        v50 = *(v45 + 72);
        v51 = *(v45 + 80);
        *(v0 + 788) = v51;
        v52 = (v51 + 32) & ~v51;
        v53 = swift_allocObject();
        *(v0 + 736) = v53;
        *(v53 + 16) = xmmword_253D48DA0;
        v54 = v43;
        v55 = [v54 urlString];
        if (v55)
        {
          v56 = v55;
          v57 = sub_253CD0968();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        v60 = *(v0 + 496);
        v61 = *(v0 + 480);
        *v60 = v57;
        v60[1] = v59;
        v62 = [v54 spiClientIdentifier];
        v63 = v60 + *(v61 + 20);
        sub_253CCFF38();

        v64 = [v54 name];
        v65 = sub_253CD0968();
        v67 = v66;

        v68 = (v60 + *(v61 + 24));
        *v68 = v65;
        v68[1] = v67;
        sub_2532514E8(v60, v53 + v52, type metadata accessor for ZoneEntity);
        v145 = sub_25324A1C4;
        v69 = swift_task_alloc();
        *(v0 + 744) = v69;
        *v69 = v0;
        v69[1] = sub_25324F588;
        v70 = v53;
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v87 = *(v0 + 576);
  v88 = *(v0 + 416);

  result = [v88 actionSets];
  if (!result)
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v90 = result;
  sub_253200644(0, &qword_281530E90, off_279719FF0);
  v91 = sub_253CD0A58();
  *(v0 + 592) = v91;

  if (!(v91 >> 62))
  {
    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v92;
    if (!v92)
    {
      goto LABEL_38;
    }

    goto LABEL_28;
  }

LABEL_37:
  v92 = sub_253CD0ED8();
  *(v0 + 600) = v92;
  if (!v92)
  {
LABEL_38:
    v102 = *(v0 + 592);
    v103 = *(v0 + 416);

    v104 = [v103 accessories];
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    v105 = sub_253CD0A58();
    *(v0 + 608) = v105;

    if (!(v105 >> 62))
    {
      v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v106;
      if (v106)
      {
LABEL_40:
        if (v106 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v107 = *(v0 + 608);
          if ((v107 & 0xC000000000000001) != 0)
          {
            v108 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v108 = *(v107 + 32);
          }

          v109 = v108;
          *(v0 + 672) = v108;
          v110 = *(v0 + 528);
          v111 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v110;
          *(v0 + 288) = &off_2864FBEB8;
          v112 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
          sub_2532515B0(v111, v112, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v113 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v110;
          *(v0 + 328) = &off_2864FBEB8;
          v114 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
          sub_2532515B0(v113, v114, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v115 = [v109 home];
          v116 = sub_25323F600(v109, v115);

          v117 = v116[2];
          if (!v117)
          {
            goto LABEL_50;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
          v118 = *(type metadata accessor for HomeDeviceEntity() - 8);
          v119 = *(v118 + 72);
          v120 = (*(v118 + 80) + 32) & ~*(v118 + 80);
          v121 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v121);
          if (v119)
          {
            if (result - v120 != 0x8000000000000000 || v119 != -1)
            {
              v121[2] = v117;
              v121[3] = 2 * ((result - v120) / v119);
              v122 = sub_2532220B8((v0 + 336), v121 + v120, v117, v116);
              v123 = *(v0 + 336);
              v124 = *(v0 + 344);
              v125 = *(v0 + 352);
              v126 = *(v0 + 360);
              v127 = *(v0 + 368);
              sub_25320C5EC();
              if (v122 == v117)
              {
LABEL_51:
                *(v0 + 680) = v121;
                v145 = sub_25324ACC4;
                v128 = swift_task_alloc();
                *(v0 + 688) = v128;
                *v128 = v0;
                v128[1] = sub_25324E7E8;
                v70 = v121;
LABEL_52:

                return v145(v70);
              }

              __break(1u);
LABEL_50:

              v121 = MEMORY[0x277D84F90];
              goto LABEL_51;
            }

            goto LABEL_71;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_57:
      v129 = *(v0 + 608);
      v130 = *(v0 + 416);

      v131 = [v130 serviceGroups];
      sub_253200644(0, &qword_281530E68, off_27971A230);
      v132 = sub_253CD0A58();
      *(v0 + 624) = v132;

      if (!(v132 >> 62))
      {
        result = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_67:
          v138 = *(v0 + 624);
          v139 = *(v0 + 496);
          v141 = *(v0 + 464);
          v140 = *(v0 + 472);
          v142 = *(v0 + 440);
          sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v143 = *(v0 + 8);

          return v143();
        }

        goto LABEL_59;
      }

LABEL_66:
      result = sub_253CD0ED8();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_67;
      }

LABEL_59:
      if (result < 1)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      *(v0 + 640) = 0;
      v133 = *(v0 + 624);
      if ((v133 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x259C00F30](0);
      }

      else
      {
        v134 = *(v133 + 32);
      }

      v95 = v134;
      *(v0 + 648) = v134;
      v135 = *(v0 + 528);
      v136 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v135;
      *(v0 + 408) = &off_2864FBEB8;
      v137 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
      sub_2532515B0(v136, v137, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v99 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v146 = sub_25324C380;
      v100 = swift_task_alloc();
      *(v0 + 656) = v100;
      *v100 = v0;
      v101 = sub_25324E4DC;
      goto LABEL_33;
    }

LABEL_56:
    v106 = sub_253CD0ED8();
    *(v0 + 616) = v106;
    if (v106)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_28:
  if (v92 < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 696) = 0;
  v93 = *(v0 + 592);
  if ((v93 & 0xC000000000000001) != 0)
  {
    v94 = MEMORY[0x259C00F30](0);
  }

  else
  {
    v94 = *(v93 + 32);
  }

  v95 = v94;
  *(v0 + 704) = v94;
  v96 = *(v0 + 528);
  v97 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v96;
  *(v0 + 248) = &off_2864FBEB8;
  v98 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
  sub_2532515B0(v97, v98, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v99 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v146 = sub_25324C97C;
  v100 = swift_task_alloc();
  *(v0 + 712) = v100;
  *v100 = v0;
  v101 = sub_25324EE14;
LABEL_33:
  v100[1] = v101;

  return (v146)(v95, v99);
}

uint64_t sub_253250F9C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v2[13] = v4;
  v2[5] = v4;
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_253251044, 0, 0);
}

uint64_t sub_253251044()
{
  result = [*(v0 + 96) homes];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_253200644(0, &unk_281530D20, off_27971A118);
  v3 = sub_253CD0A58();
  *(v0 + 112) = v3;

  if (v3 >> 62)
  {
    result = sub_253CD0ED8();
    *(v0 + 120) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 120) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 128) = 0;
        v4 = *(v0 + 112);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v6 = v5;
        *(v0 + 136) = v5;
        v7 = *(v0 + 104);
        v8 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 80) = v7;
        *(v0 + 88) = &off_2864FBEB8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
        sub_2532515B0(v8, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v10 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
        v11 = swift_task_alloc();
        *(v0 + 144) = v11;
        *v11 = v0;
        v11[1] = sub_25325124C;

        return sub_25324D124(v6, v10);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  v12 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_25325124C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  return MEMORY[0x2822009F8](sub_253251350, 0, 0);
}

uint64_t sub_253251350()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 128) + 1;
    *(v0 + 128) = v6;
    v7 = *(v0 + 112);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C00F30]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v9 = v8;
    *(v0 + 136) = v8;
    v10 = *(v0 + 104);
    v11 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v10;
    *(v0 + 88) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    sub_2532515B0(v11, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v13 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_25325124C;

    return sub_25324D124(v9, v13);
  }
}

uint64_t sub_2532514E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_253251550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2532515B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_253251644(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C7A8;

  return sub_25324C178(a1, v5);
}

uint64_t sub_253251724()
{
  result = sub_253200644(319, &qword_27F5A3930, 0x277CF94B8);
  if (v1 <= 0x3F)
  {
    result = sub_253CD07E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2532517BC(void *a1)
{
  v2 = v1;
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CD00B8();
  v9 = a1;
  v10 = sub_253CD00A8();
  v46[5] = &type metadata for HomeGraphTraverser;
  v46[6] = &off_2864FC228;
  v46[0] = v9;
  v46[1] = v10;
  v11 = [v9 featuresDataSource];

  if (v11)
  {
    v12 = [v11 isCascadeDonationsEnabled];
    swift_unknownObjectRelease();
    if (v12)
    {
      sub_253211D58(v2, &off_2864FBEC8);
      v13 = sub_253CD07C8();
      v14 = sub_253CD0C78();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2531F8000, v13, v14, "Cascade indexer is enabled", v15, 2u);
        MEMORY[0x259C040E0](v15, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      v42 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v43 = &off_2864FC178;
      v40 = swift_allocObject();
      sub_2532683A0(v46, v40 + 16);
      v16 = type metadata accessor for CascadeIndexer();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(&v40, &type metadata for HomeGraphIndexer.DefaultIndexerDataSource);
      MEMORY[0x28223BE20](v18);
      swift_cvw_initWithCopy();
      v38 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v39 = &off_2864FC178;
      v19 = swift_allocObject();
      *&v37 = v19;
      v20 = *(&v36 - 3);
      *(v19 + 16) = *(&v36 - 4);
      *(v19 + 32) = v20;
      *(v19 + 48) = *(&v36 - 2);
      *(v19 + 64) = *(&v36 - 2);
      swift_defaultActor_initialize();
      *(v17 + 176) = sub_253CD02F8();
      *(v17 + 184) = sub_253268470(&qword_281531978, MEMORY[0x277D0EFE0]);
      __swift_allocate_boxed_opaque_existential_0((v17 + 152));
      sub_253CD02E8();
      *(v17 + 208) = 0u;
      *(v17 + 224) = 0u;
      *(v17 + 192) = 0u;
      sub_2531FF170(&v37, v17 + 112);
      __swift_destroy_boxed_opaque_existential_0(&v40);
      v42 = v16;
      v43 = &off_2864FBCE8;
      v40 = v17;
      v21 = sub_253283334(0, 1, 1, MEMORY[0x277D84F90]);
      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_253283334((v22 > 1), v23 + 1, 1, v21);
      }

      v24 = __swift_mutable_project_boxed_opaque_existential_1(&v40, v16);
      v25 = *(*(v16 - 8) + 64);
      MEMORY[0x28223BE20](v24);
      v27 = (&v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27);
      v29 = *v27;
      v38 = v16;
      v39 = &off_2864FBCE8;
      *&v37 = v29;
      v21[2] = v23 + 1;
      sub_2531FF170(&v37, &v21[5 * v23 + 4]);
      __swift_destroy_boxed_opaque_existential_0(&v40);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v30 = [objc_opt_self() defaultCenter];
    v43 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
    v44 = &off_2864FC178;
    v41 = swift_allocObject();
    sub_2532683A0(v46, v41 + 16);
    v45 = v21;
    v38 = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
    v39 = &off_2864FC158;
    v40 = v30;
    *&v37 = swift_allocObject();
    sub_2532683D8(&v40, v37 + 16);
    v31 = type metadata accessor for HomeGraphIndexer(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    v35 = __swift_mutable_project_boxed_opaque_existential_1(&v37, &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource);
    MEMORY[0x28223BE20](v35);
    swift_cvw_initWithCopy();
    sub_253267AB8((&v36 - 8), v34);
    __swift_destroy_boxed_opaque_existential_0(&v37);
    sub_253268410(&v40);
    sub_253268440(v46);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_253251D28(uint64_t a1, uint64_t a2)
{
  sub_253206054(a2, &qword_27F5A39E8, &qword_253D4A658);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3978, &qword_253D4A4F0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_253251E04()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  return MEMORY[0x2822009F8](sub_253251E4C, v0, 0);
}

uint64_t sub_253251E4C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136));
  sub_2532074E4((v3 + 1), (v0 + 2));
  v0[9] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D0EF80] + 4);
  v9 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_253251F88;
  v7 = MEMORY[0x277D84F78] + 8;

  return v9(&unk_253D4A678, v4, v7);
}

uint64_t sub_253251F88()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2532520C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_253CD07E8();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325218C, a2, 0);
}

uint64_t sub_25325218C()
{
  v1 = v0[2];
  if (*(__swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6] + 16))
  {
    v2 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
    v0[7] = v2;
    v3 = *(v2 + 16);
    v0[8] = v3;
    if (v3)
    {
      v0[9] = objc_opt_self();
      v0[10] = sel_handleDonateNowNotification_;
      v0[11] = 0;
      v4 = v0[7];
      v5 = *(v4 + 56);

      v6 = __swift_project_boxed_opaque_existential_0((v4 + 32), v5);
      v7 = *v6;
      v0[12] = *v6;

      return MEMORY[0x2822009F8](sub_2532523D4, v7, 0);
    }

    else
    {
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v18[1] = sub_253252848;
      v19 = v0[2];

      return sub_253252B30();
    }
  }

  else
  {
    v8 = v0[6];
    sub_253211D58(v0[3], &off_2864FBEC8);
    v9 = sub_253CD07C8();
    v10 = sub_253CD0C98();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2531F8000, v9, v10, "There are no indexers enabled. Not starting indexing.", v15, 2u);
      MEMORY[0x259C040E0](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    v16 = v0[6];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2532523D4()
{
  v1 = [*(v0 + 72) defaultCenter];
  if (qword_2815314B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  [v1 addObserver:v2 selector:*(v0 + 80) name:qword_281532BE8 object:0];

  v3 = *(v2 + 136);
  v4 = __swift_project_boxed_opaque_existential_0((v2 + 112), v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  *(v0 + 104) = *(v7 + 8);
  v8 = *(v5 + 8);

  v8(v7, v3);

  v9 = *(MEMORY[0x277D0EF80] + 4);
  v14 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_2532525E8;
  v11 = *(v0 + 96);
  v12 = MEMORY[0x277D84F78] + 8;

  return v14(&unk_253D4A250, v11, v12);
}

uint64_t sub_2532525E8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 16);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_253252744, v4, 0);
}

uint64_t sub_253252744()
{
  v1 = v0[11] + 1;
  if (v1 == v0[8])
  {
    v2 = v0[7];

    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_253252848;
    v4 = v0[2];

    return sub_253252B30();
  }

  else
  {
    v0[11] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[7] + 40 * v1 + 32), *(v0[7] + 40 * v1 + 56));
    v7 = *v6;
    v0[12] = *v6;

    return MEMORY[0x2822009F8](sub_2532523D4, v7, 0);
  }
}

uint64_t sub_253252848()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25325295C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  sub_253206054(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation, &qword_27F5A39E8, &qword_253D4A658);
  sub_253206054(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream, &qword_27F5A39C8, &qword_253D4A618);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_253252A0C()
{
  sub_253267910(319, &qword_27F5A3970, &qword_27F5A3978, &qword_253D4A4F0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_253267910(319, &qword_27F5A3980, &qword_27F5A3988, &qword_253D4A4F8);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_253252B50()
{
  v0[6] = @"HMDNotificationCurrentHomeDidChange";
  v0[8] = 0;
  v1 = v0 + 8;
  v0[7] = sub_253253350;
  v0[9] = @"HMDHomeAddedNotification";
  v0[10] = sub_253253358;
  v0[11] = 0;
  v0[12] = @"HMDHomeNameChangedNotification";
  v0[13] = sub_2532533FC;
  v0[14] = 0;
  v0[15] = @"HMDHomeRemovedNotification";
  v0[16] = sub_253253404;
  v0[17] = 0;
  v0[18] = @"HMDRoomAddedNotification";
  v0[19] = sub_25325340C;
  v0[20] = 0;
  v0[21] = @"HMDRoomNameUpdatedNotification";
  v0[22] = sub_253253414;
  v0[23] = 0;
  v0[24] = @"HMDRoomRemovedNotification";
  v0[25] = sub_25325341C;
  v0[26] = 0;
  v0[27] = @"HMDZoneAddedNotification";
  v0[28] = sub_253253424;
  v0[29] = 0;
  v0[30] = @"HMDZoneNameChangedNotification";
  v0[31] = sub_25325342C;
  v0[32] = 0;
  v0[33] = @"HMDZoneRoomsUpdatedNotification";
  v0[34] = sub_253253434;
  v0[35] = 0;
  v0[36] = @"HMDZoneRemovedNotification";
  v0[37] = sub_25325343C;
  v0[38] = 0;
  v0[39] = @"HMDActionSetAddedNotification";
  v0[40] = sub_253253444;
  v0[41] = 0;
  v0[42] = @"HMDActionSetRenamedNotification";
  v0[43] = sub_25325344C;
  v0[44] = 0;
  v0[45] = @"HMDActionSetRemovedNotification";
  v0[46] = sub_253253454;
  v0[47] = 0;
  v0[48] = @"HMDServiceGroupAddedNotification";
  v0[49] = sub_25325345C;
  v0[50] = 0;
  v0[51] = @"HMDServiceGroupNameChangedNotification";
  v0[52] = sub_253253464;
  v0[53] = 0;
  v0[54] = @"HMDServiceGroupRemovedNotification";
  v0[55] = sub_25325346C;
  v0[56] = 0;
  v0[57] = @"HMDNotificationHomeAddedAccessory";
  v0[58] = sub_253253474;
  v0[59] = 0;
  v0[60] = @"kHMDNotificationServicesUpdated";
  v0[61] = sub_25325347C;
  v0[62] = 0;
  v0[63] = @"kHMDNotificationCharacteristicsUpdated";
  v0[64] = sub_253253484;
  v0[65] = 0;
  v0[66] = @"HMDNotificationAccessoryChangedRoom";
  v0[67] = sub_25325348C;
  v0[68] = 0;
  v0[69] = @"HMDAccessoryNameUpdatedNotification";
  v0[70] = sub_253253494;
  v0[71] = 0;
  v0[72] = @"HMDHomeAccessoryRemovedNotification";
  v0[73] = sub_25325349C;
  v0[74] = 0;
  v0[81] = MEMORY[0x277D84F90];
  v44 = objc_opt_self();
  v2 = @"HMDNotificationCurrentHomeDidChange";
  v3 = @"HMDHomeAddedNotification";
  v4 = @"HMDHomeNameChangedNotification";
  v5 = @"HMDHomeRemovedNotification";
  v6 = @"HMDRoomAddedNotification";
  v7 = @"HMDRoomNameUpdatedNotification";
  v8 = @"HMDRoomRemovedNotification";
  v9 = @"HMDZoneAddedNotification";
  v10 = @"HMDZoneNameChangedNotification";
  v11 = @"HMDZoneRoomsUpdatedNotification";
  v12 = @"HMDZoneRemovedNotification";
  v13 = @"HMDActionSetAddedNotification";
  v14 = @"HMDActionSetRenamedNotification";
  v15 = @"HMDActionSetRemovedNotification";
  v16 = @"HMDServiceGroupAddedNotification";
  v17 = @"HMDServiceGroupNameChangedNotification";
  v18 = @"HMDServiceGroupRemovedNotification";
  v19 = @"HMDNotificationHomeAddedAccessory";
  v20 = @"kHMDNotificationServicesUpdated";
  v21 = @"kHMDNotificationCharacteristicsUpdated";
  v22 = @"HMDNotificationAccessoryChangedRoom";
  v23 = @"HMDAccessoryNameUpdatedNotification";
  v24 = @"HMDHomeAccessoryRemovedNotification";
  v25 = 23;
  do
  {
    v26 = v0[82];
    v27 = *(v1 - 1);
    v28 = *v1;
    v29 = *(v1 - 2);

    v30 = [v44 defaultCenter];
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v27;
    v32[4] = v28;
    v0[79] = sub_2532681B8;
    v0[80] = v32;
    v0[75] = MEMORY[0x277D85DD0];
    v0[76] = 1107296256;
    v0[77] = sub_253253C10;
    v0[78] = &block_descriptor_8;
    v33 = _Block_copy(v0 + 75);
    v34 = v0[80];
    v35 = v29;

    v36 = [v30 addObserverForName:v35 object:0 queue:0 usingBlock:v33];
    _Block_release(v33);

    v37 = swift_unknownObjectRetain();
    MEMORY[0x259C00990](v37);
    if (*((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_253CD0A78();
    }

    sub_253CD0A88();

    swift_unknownObjectRelease();
    v1 += 3;
    --v25;
  }

  while (v25);
  v38 = v0[82];
  v39 = v0[81];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E0, &qword_253D4A640);
  swift_arrayDestroy();
  v40 = *(v38 + 160);
  *(v38 + 160) = v39;

  v41 = swift_task_alloc();
  v0[83] = v41;
  *v41 = v0;
  v41[1] = sub_253253240;
  v42 = v0[82];

  return sub_253253D04();
}

uint64_t sub_253253240()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2532335C4, v2, 0);
}

uint64_t sub_253253360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for HomeGraphIndexer.NotificationType(0);

  return MEMORY[0x2821FEBC8](a3, v7, a2);
}

uint64_t sub_2532534A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_253CCFD58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    (*(v9 + 16))(v12, v27, v8);
    MEMORY[0x259C00030](v12, v8);
    v22 = sub_253CD0B58();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    (*(v14 + 16))(v17, v19, v13);
    v23 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v25 = v28;
    v26 = v29;
    *(v24 + 4) = v21;
    *(v24 + 5) = v25;
    *(v24 + 6) = v26;
    (*(v14 + 32))(&v24[v23], v17, v13);

    sub_25324690C(0, 0, v7, &unk_253D4A650, v24);

    return (*(v14 + 8))(v19, v13);
  }

  return result;
}

uint64_t sub_2532537C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3978, &qword_253D4A4F0);
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E8, &qword_253D4A658) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39F0, &qword_253D4A660) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v13 = *(*(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325393C, 0, 0);
}

uint64_t sub_25325393C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 64));

  return MEMORY[0x2822009F8](sub_2532539B0, v3, 0);
}

uint64_t sub_2532539B0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_2532168A0(v4 + v5, v1, &qword_27F5A39E8, &qword_253D4A658);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[12];
    sub_253267E60(v0[15], type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_253206054(v8, &qword_27F5A39E8, &qword_253D4A658);
    v9 = 1;
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[9];
    v15 = v0[10];
    (*(v15 + 16))(v13, v12, v14);
    sub_253206054(v12, &qword_27F5A39E8, &qword_253D4A658);
    sub_253267EC0(v7, v10, type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_253CD0B68();
    (*(v15 + 8))(v13, v14);
    sub_253267E60(v7, type metadata accessor for HomeGraphIndexer.NotificationType);
    v9 = 0;
  }

  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[11];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39F8, &qword_253D4A668);
  (*(*(v21 - 8) + 56))(v18, v9, 1, v21);
  sub_253206054(v18, &qword_27F5A39F0, &qword_253D4A660);

  v22 = v0[1];

  return v22();
}

uint64_t sub_253253C10(uint64_t a1)
{
  v2 = sub_253CCFD58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_253CCFD18();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_253253D04()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_253CD07E8();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39C8, &qword_253D4A618) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v1[14] = *(v8 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253253ED8, v0, 0);
}

uint64_t sub_253253ED8()
{
  v1 = v0[5];
  v2 = v1;
  if (*(v1 + 152))
  {
    v3 = *(v1 + 152);

    sub_253CD0BA8();

    v2 = v0[5];
  }

  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v7 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_2532168A0(v2 + v7, v6, &qword_27F5A39C8, &qword_253D4A618);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[9];
    v9 = v0[6];
    sub_253206054(v0[11], &qword_27F5A39C8, &qword_253D4A618);
    sub_253211D58(v9, &off_2864FBEC8);
    v10 = sub_253CD07C8();
    v11 = sub_253CD0C98();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2531F8000, v10, v11, "Notification stream is nil", v16, 2u);
      MEMORY[0x259C040E0](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[13];
    v20 = v0[12];
    v21 = v0[10];
    v36 = v21;
    v37 = v0[14];
    v22 = v0[5];
    v38 = *(v19 + 32);
    v38(v17, v0[11], v20);
    v23 = sub_253CD0B58();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v19 + 16))(v18, v17, v20);
    v25 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v24;
    v38(&v26[v25], v18, v20);
    v27 = sub_25324690C(0, 0, v36, &unk_253D4A628, v26);
    (*(v19 + 8))(v17, v20);
    v28 = *(v1 + 152);
    *(v1 + 152) = v27;
  }

  v30 = v0[15];
  v29 = v0[16];
  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];

  v34 = v0[1];

  return v34();
}

uint64_t sub_253254248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39D0, &qword_253D4A630) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39D8, &qword_253D4A638);
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532543A8, 0, 0);
}

uint64_t sub_2532543A8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  v3 = v0[13];
  if (Strong)
  {
    v4 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
    sub_253CD0B78();
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_2532544F0;
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];

    return MEMORY[0x2822003E8](v8, 0, 0, v9);
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[13];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2532544F0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2532545EC, 0, 0);
}

uint64_t sub_2532545EC()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v2 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);

LABEL_5:
    v8 = v0[13];
    v9 = v0[9];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }

  sub_253267F28(v1, v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  if (sub_253CD0BD8())
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[9];

    sub_253267E60(v7, type metadata accessor for HomeGraphIndexer.NotificationType);
    (*(v6 + 8))(v4, v5);
    goto LABEL_5;
  }

  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_253254794;
  v14 = v0[14];
  v15 = v0[9];

  return sub_253254950(v15);
}

uint64_t sub_253254794()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_253254890, 0, 0);
}

uint64_t sub_253254890()
{
  sub_253267E60(v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_2532544F0;
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_253254950(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253254A3C, v1, 0);
}

uint64_t sub_253254A3C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = __swift_project_boxed_opaque_existential_0((v5 + 112), *(v5 + 136));
  sub_2532074E4((v7 + 1), (v0 + 2));
  v0[13] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_253267EC0(v6, v1, type metadata accessor for HomeGraphIndexer.NotificationType);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[14] = v10;
  sub_253267F28(v1, v10 + v8, type metadata accessor for HomeGraphIndexer.NotificationType);
  *(v10 + v9) = v5;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v11 = *(MEMORY[0x277D0EF80] + 4);
  v15 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_253254BEC;
  v13 = MEMORY[0x277D84F78] + 8;

  return v15(&unk_253D4A610, v10, v13);
}

uint64_t sub_253254BEC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_253254D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = sub_253CCFD58();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_253CD07E8();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v12 = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v4[33] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  v4[35] = v14;
  v15 = *(v14 - 8);
  v4[36] = v15;
  v16 = *(v15 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253255228, a3, 0);
}

uint64_t sub_253255228()
{
  v771 = v0;
  v1 = v0[36];
  v2 = v0 + 34;
  v3 = v0[33];
  sub_253267EC0(v0[2], v0[34], type metadata accessor for HomeGraphIndexer.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v1 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v171 = v0[72];
      v172 = v0[71];
      v173 = v0[35];
      v174 = v0[36];
      v175 = v0[31];
      v176 = v0[4];
      v5(v171, v0[34], v173);
      sub_253211D58(v176, &off_2864FBEC8);
      (*(v174 + 16))(v172, v171, v173);
      v177 = sub_253CD07C8();
      v178 = sub_253CD0C78();
      v179 = os_log_type_enabled(v177, v178);
      v180 = v0[71];
      v182 = v0[35];
      v181 = v0[36];
      v183 = v0[31];
      v184 = v0[8];
      v185 = v0[9];
      if (v179)
      {
        logj = v177;
        v186 = v0[6];
        v187 = v0[7];
        v708 = v178;
        v188 = v0[5];
        v754 = v0[8];
        v189 = swift_slowAlloc();
        v662 = swift_slowAlloc();
        v770 = v662;
        *v189 = 136315138;
        sub_253CD00D8();
        v639 = sub_253CD00F8();
        v685 = v183;
        v191 = v190;
        (*(v186 + 8))(v187, v188);
        v194 = *(v181 + 8);
        v193 = v181 + 8;
        v192 = v194;
        v194(v180, v182);
        v195 = sub_253277BA8(v639, v191, &v770);

        *(v189 + 4) = v195;
        _os_log_impl(&dword_2531F8000, logj, v708, "New home added notification received: %s", v189, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v662);
        MEMORY[0x259C040E0](v662, -1, -1);
        MEMORY[0x259C040E0](v189, -1, -1);

        (*(v185 + 8))(v685, v754);
      }

      else
      {

        v435 = *(v181 + 8);
        v193 = v181 + 8;
        v192 = v435;
        v435(v180, v182);
        (*(v185 + 8))(v183, v184);
      }

      v0[87] = v192;
      v0[86] = v193;
      v436 = swift_task_alloc();
      v0[88] = v436;
      *v436 = v0;
      v436[1] = sub_253258C48;
      v437 = v0[72];
      v438 = v0[3];

      return sub_25325CE28(v437);
    case 2:
      v101 = v0[70];
      v102 = v0[69];
      v103 = v0[35];
      v104 = v0[36];
      v105 = v0[30];
      v106 = v0[4];
      v5(v101, v0[34], v103);
      sub_253211D58(v106, &off_2864FBEC8);
      (*(v104 + 16))(v102, v101, v103);
      v107 = sub_253CD07C8();
      v108 = sub_253CD0C78();
      v109 = os_log_type_enabled(v107, v108);
      v110 = v0[69];
      v112 = v0[35];
      v111 = v0[36];
      v113 = v0[30];
      v114 = v0[8];
      v115 = v0[9];
      if (v109)
      {
        logh = v107;
        v116 = v0[6];
        v117 = v0[7];
        v705 = v108;
        v118 = v0[5];
        v751 = v0[8];
        v119 = swift_slowAlloc();
        v659 = swift_slowAlloc();
        v770 = v659;
        *v119 = 136315138;
        sub_253CD00D8();
        v636 = sub_253CD00F8();
        v682 = v113;
        v121 = v120;
        (*(v116 + 8))(v117, v118);
        v124 = *(v111 + 8);
        v123 = v111 + 8;
        v122 = v124;
        v124(v110, v112);
        v125 = sub_253277BA8(v636, v121, &v770);

        *(v119 + 4) = v125;
        _os_log_impl(&dword_2531F8000, logh, v705, "Home name changed notification received: %s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v659);
        MEMORY[0x259C040E0](v659, -1, -1);
        MEMORY[0x259C040E0](v119, -1, -1);

        (*(v115 + 8))(v682, v751);
      }

      else
      {

        v395 = *(v111 + 8);
        v123 = v111 + 8;
        v122 = v395;
        v395(v110, v112);
        (*(v115 + 8))(v113, v114);
      }

      v0[90] = v122;
      v0[89] = v123;
      v396 = swift_task_alloc();
      v0[91] = v396;
      *v396 = v0;
      v396[1] = sub_253259160;
      v397 = v0[70];
      v398 = v0[3];

      return sub_25325DDCC(v397);
    case 3:
      v146 = v0[68];
      v147 = v0[67];
      v148 = v0[35];
      v149 = v0[36];
      v150 = v0[29];
      v151 = v0[4];
      v5(v146, v0[34], v148);
      sub_253211D58(v151, &off_2864FBEC8);
      (*(v149 + 16))(v147, v146, v148);
      v152 = sub_253CD07C8();
      v153 = sub_253CD0C78();
      v154 = os_log_type_enabled(v152, v153);
      v155 = v0[67];
      v157 = v0[35];
      v156 = v0[36];
      v158 = v0[29];
      v159 = v0[8];
      v160 = v0[9];
      if (v154)
      {
        logi = v152;
        v161 = v0[6];
        v162 = v0[7];
        v707 = v153;
        v163 = v0[5];
        v753 = v0[8];
        v164 = swift_slowAlloc();
        v661 = swift_slowAlloc();
        v770 = v661;
        *v164 = 136315138;
        sub_253CD00D8();
        v638 = sub_253CD00F8();
        v684 = v158;
        v166 = v165;
        (*(v161 + 8))(v162, v163);
        v169 = *(v156 + 8);
        v168 = v156 + 8;
        v167 = v169;
        v169(v155, v157);
        v170 = sub_253277BA8(v638, v166, &v770);

        *(v164 + 4) = v170;
        _os_log_impl(&dword_2531F8000, logi, v707, "Home removed notification received: %s", v164, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v661);
        MEMORY[0x259C040E0](v661, -1, -1);
        MEMORY[0x259C040E0](v164, -1, -1);

        (*(v160 + 8))(v684, v753);
      }

      else
      {

        v429 = *(v156 + 8);
        v168 = v156 + 8;
        v167 = v429;
        v429(v155, v157);
        (*(v160 + 8))(v158, v159);
      }

      v0[93] = v167;
      v0[92] = v168;
      v430 = swift_task_alloc();
      v0[94] = v430;
      *v430 = v0;
      v430[1] = sub_253259678;
      v431 = v0[3];

      return sub_25325E72C();
    case 4:
      v2 = v0 + 66;
      v196 = v0[66];
      v197 = v0[65];
      v198 = v0[35];
      v199 = v0[36];
      v200 = v0[28];
      v201 = v0[4];
      v5(v196, v0[34], v198);
      sub_253211D58(v201, &off_2864FBEC8);
      (*(v199 + 16))(v197, v196, v198);
      v202 = sub_253CD07C8();
      v686 = sub_253CD0C78();
      v203 = os_log_type_enabled(v202, v686);
      v204 = v0[65];
      v206 = v0[35];
      v205 = v0[36];
      v207 = v0[28];
      v208 = v0[9];
      v709 = v207;
      logb = v0[8];
      if (v203)
      {
        v755 = v5;
        v663 = v202;
        v209 = v0[6];
        v210 = v0[7];
        v621 = v0[9];
        v211 = v0[5];
        bufb = swift_slowAlloc();
        v640 = swift_slowAlloc();
        v770 = v640;
        *bufb = 136315138;
        sub_253CD00D8();
        v616 = sub_253CD00F8();
        v213 = v212;
        v214 = v210;
        v5 = v755;
        (*(v209 + 8))(v214, v211);
        (*(v205 + 8))(v204, v206);
        v215 = sub_253277BA8(v616, v213, &v770);

        *(bufb + 4) = v215;
        _os_log_impl(&dword_2531F8000, v663, v686, "Room added notification received: %s", bufb, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v640);
        MEMORY[0x259C040E0](v640, -1, -1);
        MEMORY[0x259C040E0](bufb, -1, -1);

        (*(v621 + 8))(v709, logb);
      }

      else
      {

        (*(v205 + 8))(v204, v206);
        (*(v208 + 8))(v709, logb);
      }

      goto LABEL_74;
    case 5:
LABEL_74:
      v439 = *v2;
      v440 = v0[82];
      v441 = v0[64];
      v442 = v0[35];
      v443 = v0[36];
      v444 = v0[27];
      v445 = v0[4];
      v5(v440, v439, v442);
      sub_253211D58(v445, &off_2864FBEC8);
      (*(v443 + 16))(v441, v440, v442);
      v446 = sub_253CD07C8();
      v447 = sub_253CD0C78();
      v448 = os_log_type_enabled(v446, v447);
      v449 = v0[64];
      v451 = v0[35];
      v450 = v0[36];
      v452 = v0[27];
      v453 = v0[8];
      v454 = v0[9];
      if (v448)
      {
        logq = v446;
        v455 = v0[6];
        v456 = v0[7];
        v718 = v447;
        v457 = v0[5];
        v764 = v0[8];
        v458 = swift_slowAlloc();
        v672 = swift_slowAlloc();
        v770 = v672;
        *v458 = 136315138;
        sub_253CD00D8();
        v649 = sub_253CD00F8();
        v695 = v452;
        v460 = v459;
        (*(v455 + 8))(v456, v457);
        v463 = *(v450 + 8);
        v462 = v450 + 8;
        v461 = v463;
        v463(v449, v451);
        v464 = sub_253277BA8(v649, v460, &v770);

        *(v458 + 4) = v464;
        _os_log_impl(&dword_2531F8000, logq, v718, "Room name updated notification received: %s", v458, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v672);
        MEMORY[0x259C040E0](v672, -1, -1);
        MEMORY[0x259C040E0](v458, -1, -1);

        (*(v454 + 8))(v695, v764);
      }

      else
      {

        v465 = *(v450 + 8);
        v462 = v450 + 8;
        v461 = v465;
        v465(v449, v451);
        (*(v454 + 8))(v452, v453);
      }

      v0[96] = v461;
      v0[95] = v462;
      v466 = swift_task_alloc();
      v0[97] = v466;
      *v466 = v0;
      v466[1] = sub_253259B90;
      v467 = v0[82];
      v468 = v0[3];

      return sub_25325EB80(v467);
    case 6:
      v242 = v0[62];
      v241 = v0[63];
      v243 = v0[35];
      v244 = v0[36];
      v245 = v0[26];
      v246 = v0[4];
      v5(v241, v0[34], v243);
      sub_253211D58(v246, &off_2864FBEC8);
      (*(v244 + 16))(v242, v241, v243);
      v247 = sub_253CD07C8();
      v248 = sub_253CD0C78();
      v249 = os_log_type_enabled(v247, v248);
      v250 = v0[62];
      v252 = v0[35];
      v251 = v0[36];
      v253 = v0[26];
      v254 = v0[8];
      v255 = v0[9];
      if (v249)
      {
        logl = v247;
        v256 = v0[6];
        v257 = v0[7];
        v711 = v248;
        v258 = v0[5];
        v757 = v0[8];
        v259 = swift_slowAlloc();
        v665 = swift_slowAlloc();
        v770 = v665;
        *v259 = 136315138;
        sub_253CD00D8();
        v642 = sub_253CD00F8();
        v688 = v253;
        v261 = v260;
        (*(v256 + 8))(v257, v258);
        v264 = *(v251 + 8);
        v263 = v251 + 8;
        v262 = v264;
        v264(v250, v252);
        v265 = sub_253277BA8(v642, v261, &v770);

        *(v259 + 4) = v265;
        _os_log_impl(&dword_2531F8000, logl, v711, "Room removed notification received: %s", v259, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v665);
        MEMORY[0x259C040E0](v665, -1, -1);
        MEMORY[0x259C040E0](v259, -1, -1);

        (*(v255 + 8))(v688, v757);
      }

      else
      {

        v473 = *(v251 + 8);
        v263 = v251 + 8;
        v262 = v473;
        v473(v250, v252);
        (*(v255 + 8))(v253, v254);
      }

      v0[99] = v262;
      v0[98] = v263;
      v474 = swift_task_alloc();
      v0[100] = v474;
      *v474 = v0;
      v474[1] = sub_25325A100;
      v475 = v0[63];
      v476 = v0[3];

      return sub_25325F6C4(v475);
    case 7:
      v2 = v0 + 61;
      v312 = v0[60];
      v311 = v0[61];
      v313 = v0[35];
      v314 = v0[36];
      v315 = v0[25];
      v316 = v0[4];
      v5(v311, v0[34], v313);
      sub_253211D58(v316, &off_2864FBEC8);
      (*(v314 + 16))(v312, v311, v313);
      v317 = sub_253CD07C8();
      v691 = sub_253CD0C78();
      v318 = os_log_type_enabled(v317, v691);
      v319 = v0[60];
      v321 = v0[35];
      v320 = v0[36];
      v322 = v0[25];
      v323 = v0[9];
      v714 = v322;
      logd = v0[8];
      if (v318)
      {
        v760 = v5;
        v668 = v317;
        v324 = v0[6];
        v325 = v0[7];
        v623 = v0[9];
        v326 = v0[5];
        bufd = swift_slowAlloc();
        v645 = swift_slowAlloc();
        v770 = v645;
        *bufd = 136315138;
        sub_253CD00D8();
        v618 = sub_253CD00F8();
        v328 = v327;
        v329 = v325;
        v5 = v760;
        (*(v324 + 8))(v329, v326);
        (*(v320 + 8))(v319, v321);
        v330 = sub_253277BA8(v618, v328, &v770);

        *(bufd + 4) = v330;
        _os_log_impl(&dword_2531F8000, v668, v691, "Zone added notification received: %s", bufd, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v645);
        MEMORY[0x259C040E0](v645, -1, -1);
        MEMORY[0x259C040E0](bufd, -1, -1);

        (*(v623 + 8))(v714, logd);
      }

      else
      {

        (*(v320 + 8))(v319, v321);
        (*(v323 + 8))(v714, logd);
      }

      goto LABEL_112;
    case 8:
LABEL_112:
      v580 = *v2;
      v581 = v0[81];
      v582 = v0[59];
      v583 = v0[35];
      v584 = v0[36];
      v585 = v0[24];
      v586 = v0[4];
      v5(v581, v580, v583);
      sub_253211D58(v586, &off_2864FBEC8);
      (*(v584 + 16))(v582, v581, v583);
      v587 = sub_253CD07C8();
      v588 = sub_253CD0C78();
      v589 = os_log_type_enabled(v587, v588);
      v590 = v0[59];
      v592 = v0[35];
      v591 = v0[36];
      v593 = v0[24];
      v594 = v0[8];
      v595 = v0[9];
      if (v589)
      {
        logv = v587;
        v596 = v0[6];
        v597 = v0[7];
        v723 = v588;
        v598 = v0[5];
        v769 = v0[8];
        v599 = swift_slowAlloc();
        v677 = swift_slowAlloc();
        v770 = v677;
        *v599 = 136315138;
        sub_253CD00D8();
        v654 = sub_253CD00F8();
        v700 = v593;
        v601 = v600;
        (*(v596 + 8))(v597, v598);
        v604 = *(v591 + 8);
        v603 = v591 + 8;
        v602 = v604;
        v604(v590, v592);
        v605 = sub_253277BA8(v654, v601, &v770);

        *(v599 + 4) = v605;
        _os_log_impl(&dword_2531F8000, logv, v723, "Zone name changed notification received: %s", v599, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v677);
        MEMORY[0x259C040E0](v677, -1, -1);
        MEMORY[0x259C040E0](v599, -1, -1);

        (*(v595 + 8))(v700, v769);
      }

      else
      {

        v606 = *(v591 + 8);
        v603 = v591 + 8;
        v602 = v606;
        v606(v590, v592);
        (*(v595 + 8))(v593, v594);
      }

      v0[102] = v602;
      v0[101] = v603;
      v607 = swift_task_alloc();
      v0[103] = v607;
      *v607 = v0;
      v607[1] = sub_25325A618;
      v608 = v0[81];
      v609 = v0[3];

      return sub_25325FFB0(v608);
    case 9:
      v77 = v0[57];
      v76 = v0[58];
      v78 = v0[35];
      v79 = v0[36];
      v80 = v0[23];
      v81 = v0[4];
      v5(v76, v0[34], v78);
      sub_253211D58(v81, &off_2864FBEC8);
      (*(v79 + 16))(v77, v76, v78);
      v82 = sub_253CD07C8();
      v83 = sub_253CD0C78();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v0[57];
      v87 = v0[35];
      v86 = v0[36];
      v88 = v0[23];
      v89 = v0[8];
      v90 = v0[9];
      if (v84)
      {
        logg = v82;
        v91 = v0[6];
        v92 = v0[7];
        v704 = v83;
        v93 = v0[5];
        v750 = v0[8];
        v94 = swift_slowAlloc();
        v658 = swift_slowAlloc();
        v770 = v658;
        *v94 = 136315138;
        sub_253CD00D8();
        v635 = sub_253CD00F8();
        v681 = v88;
        v96 = v95;
        (*(v91 + 8))(v92, v93);
        v99 = *(v86 + 8);
        v98 = v86 + 8;
        v97 = v99;
        v99(v85, v87);
        v100 = sub_253277BA8(v635, v96, &v770);

        *(v94 + 4) = v100;
        _os_log_impl(&dword_2531F8000, logg, v704, "Zone updated notification received: %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v658);
        MEMORY[0x259C040E0](v658, -1, -1);
        MEMORY[0x259C040E0](v94, -1, -1);

        (*(v90 + 8))(v681, v750);
      }

      else
      {

        v391 = *(v86 + 8);
        v98 = v86 + 8;
        v97 = v391;
        v391(v85, v87);
        (*(v90 + 8))(v88, v89);
      }

      v0[105] = v97;
      v0[104] = v98;
      v392 = swift_task_alloc();
      v0[106] = v392;
      *v392 = v0;
      v392[1] = sub_25325A79C;
      v393 = v0[58];
      v394 = v0[3];

      return sub_253260910(v393);
    case 10:
      v287 = v0[55];
      v286 = v0[56];
      v288 = v0[35];
      v289 = v0[36];
      v290 = v0[22];
      v291 = v0[4];
      v5(v286, v0[34], v288);
      sub_253211D58(v291, &off_2864FBEC8);
      (*(v289 + 16))(v287, v286, v288);
      v292 = sub_253CD07C8();
      v293 = sub_253CD0C78();
      v294 = os_log_type_enabled(v292, v293);
      v295 = v0[55];
      v297 = v0[35];
      v296 = v0[36];
      v298 = v0[22];
      v299 = v0[8];
      v300 = v0[9];
      if (v294)
      {
        logm = v292;
        v301 = v0[6];
        v302 = v0[7];
        v713 = v293;
        v303 = v0[5];
        v759 = v0[8];
        v304 = swift_slowAlloc();
        v667 = swift_slowAlloc();
        v770 = v667;
        *v304 = 136315138;
        sub_253CD00D8();
        v644 = sub_253CD00F8();
        v690 = v298;
        v306 = v305;
        (*(v301 + 8))(v302, v303);
        v309 = *(v296 + 8);
        v308 = v296 + 8;
        v307 = v309;
        v309(v295, v297);
        v310 = sub_253277BA8(v644, v306, &v770);

        *(v304 + 4) = v310;
        _os_log_impl(&dword_2531F8000, logm, v713, "Zone removed notification received: %s", v304, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v667);
        MEMORY[0x259C040E0](v667, -1, -1);
        MEMORY[0x259C040E0](v304, -1, -1);

        (*(v300 + 8))(v690, v759);
      }

      else
      {

        v576 = *(v296 + 8);
        v308 = v296 + 8;
        v307 = v576;
        v576(v295, v297);
        (*(v300 + 8))(v298, v299);
      }

      v0[108] = v307;
      v0[107] = v308;
      v577 = swift_task_alloc();
      v0[109] = v577;
      *v577 = v0;
      v577[1] = sub_25325ACB4;
      v578 = v0[56];
      v579 = v0[3];

      return sub_253262A50(v578);
    case 11:
      v2 = v0 + 54;
      v57 = v0[53];
      v56 = v0[54];
      v58 = v0[35];
      v59 = v0[36];
      v60 = v0[21];
      v61 = v0[4];
      v5(v56, v0[34], v58);
      sub_253211D58(v61, &off_2864FBEC8);
      (*(v59 + 16))(v57, v56, v58);
      v62 = sub_253CD07C8();
      v680 = sub_253CD0C78();
      v63 = os_log_type_enabled(v62, v680);
      v64 = v0[53];
      v66 = v0[35];
      v65 = v0[36];
      v67 = v0[21];
      v68 = v0[9];
      v703 = v67;
      log = v0[8];
      if (v63)
      {
        v749 = v5;
        v657 = v62;
        v69 = v0[6];
        v70 = v0[7];
        v619 = v0[9];
        v71 = v0[5];
        buf = swift_slowAlloc();
        v634 = swift_slowAlloc();
        v770 = v634;
        *buf = 136315138;
        sub_253CD00D8();
        v614 = sub_253CD00F8();
        v73 = v72;
        v74 = v70;
        v5 = v749;
        (*(v69 + 8))(v74, v71);
        (*(v65 + 8))(v64, v66);
        v75 = sub_253277BA8(v614, v73, &v770);

        *(buf + 4) = v75;
        _os_log_impl(&dword_2531F8000, v657, v680, "Scene added notification received: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v634);
        MEMORY[0x259C040E0](v634, -1, -1);
        MEMORY[0x259C040E0](buf, -1, -1);

        (*(v619 + 8))(v703, log);
      }

      else
      {

        (*(v65 + 8))(v64, v66);
        (*(v68 + 8))(v703, log);
      }

      goto LABEL_40;
    case 12:
LABEL_40:
      v361 = *v2;
      v362 = v0[80];
      v363 = v0[52];
      v364 = v0[35];
      v365 = v0[36];
      v366 = v0[20];
      v367 = v0[4];
      v5(v362, v361, v364);
      sub_253211D58(v367, &off_2864FBEC8);
      (*(v365 + 16))(v363, v362, v364);
      v368 = sub_253CD07C8();
      v369 = sub_253CD0C78();
      v370 = os_log_type_enabled(v368, v369);
      v371 = v0[52];
      v373 = v0[35];
      v372 = v0[36];
      v374 = v0[20];
      v375 = v0[8];
      v376 = v0[9];
      if (v370)
      {
        logo = v368;
        v377 = v0[6];
        v378 = v0[7];
        v716 = v369;
        v379 = v0[5];
        v762 = v0[8];
        v380 = swift_slowAlloc();
        v670 = swift_slowAlloc();
        v770 = v670;
        *v380 = 136315138;
        sub_253CD00D8();
        v647 = sub_253CD00F8();
        v693 = v374;
        v382 = v381;
        (*(v377 + 8))(v378, v379);
        v385 = *(v372 + 8);
        v384 = v372 + 8;
        v383 = v385;
        v385(v371, v373);
        v386 = sub_253277BA8(v647, v382, &v770);

        *(v380 + 4) = v386;
        _os_log_impl(&dword_2531F8000, logo, v716, "Scene renamed notification received: %s", v380, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v670);
        MEMORY[0x259C040E0](v670, -1, -1);
        MEMORY[0x259C040E0](v380, -1, -1);

        (*(v376 + 8))(v693, v762);
      }

      else
      {

        v387 = *(v372 + 8);
        v384 = v372 + 8;
        v383 = v387;
        v387(v371, v373);
        (*(v376 + 8))(v374, v375);
      }

      v0[111] = v383;
      v0[110] = v384;
      v388 = swift_task_alloc();
      v0[112] = v388;
      *v388 = v0;
      v388[1] = sub_25325B1CC;
      v389 = v0[80];
      v390 = v0[3];

      return sub_2532633C8(v389);
    case 13:
      v217 = v0[50];
      v216 = v0[51];
      v218 = v0[35];
      v219 = v0[36];
      v220 = v0[19];
      v221 = v0[4];
      v5(v216, v0[34], v218);
      sub_253211D58(v221, &off_2864FBEC8);
      (*(v219 + 16))(v217, v216, v218);
      v222 = sub_253CD07C8();
      v223 = sub_253CD0C78();
      v224 = os_log_type_enabled(v222, v223);
      v225 = v0[50];
      v227 = v0[35];
      v226 = v0[36];
      v228 = v0[19];
      v229 = v0[8];
      v230 = v0[9];
      if (v224)
      {
        logk = v222;
        v231 = v0[6];
        v232 = v0[7];
        v710 = v223;
        v233 = v0[5];
        v756 = v0[8];
        v234 = swift_slowAlloc();
        v664 = swift_slowAlloc();
        v770 = v664;
        *v234 = 136315138;
        sub_253CD00D8();
        v641 = sub_253CD00F8();
        v687 = v228;
        v236 = v235;
        (*(v231 + 8))(v232, v233);
        v239 = *(v226 + 8);
        v238 = v226 + 8;
        v237 = v239;
        v239(v225, v227);
        v240 = sub_253277BA8(v641, v236, &v770);

        *(v234 + 4) = v240;
        _os_log_impl(&dword_2531F8000, logk, v710, "Scene removed notification received: %s", v234, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v664);
        MEMORY[0x259C040E0](v664, -1, -1);
        MEMORY[0x259C040E0](v234, -1, -1);

        (*(v230 + 8))(v687, v756);
      }

      else
      {

        v469 = *(v226 + 8);
        v238 = v226 + 8;
        v237 = v469;
        v469(v225, v227);
        (*(v230 + 8))(v228, v229);
      }

      v0[114] = v237;
      v0[113] = v238;
      v470 = swift_task_alloc();
      v0[115] = v470;
      *v470 = v0;
      v470[1] = sub_25325B350;
      v471 = v0[51];
      v472 = v0[3];

      return sub_2532649E8(v471);
    case 14:
      v2 = v0 + 49;
      v127 = v0[48];
      v126 = v0[49];
      v128 = v0[35];
      v129 = v0[36];
      v130 = v0[18];
      v131 = v0[4];
      v5(v126, v0[34], v128);
      sub_253211D58(v131, &off_2864FBEC8);
      (*(v129 + 16))(v127, v126, v128);
      v132 = sub_253CD07C8();
      v683 = sub_253CD0C78();
      v133 = os_log_type_enabled(v132, v683);
      v134 = v0[48];
      v136 = v0[35];
      v135 = v0[36];
      v137 = v0[18];
      v138 = v0[9];
      v706 = v137;
      loga = v0[8];
      if (v133)
      {
        v752 = v5;
        v660 = v132;
        v139 = v0[6];
        v140 = v0[7];
        v620 = v0[9];
        v141 = v0[5];
        bufa = swift_slowAlloc();
        v637 = swift_slowAlloc();
        v770 = v637;
        *bufa = 136315138;
        sub_253CD00D8();
        v615 = sub_253CD00F8();
        v143 = v142;
        v144 = v140;
        v5 = v752;
        (*(v139 + 8))(v144, v141);
        (*(v135 + 8))(v134, v136);
        v145 = sub_253277BA8(v615, v143, &v770);

        *(bufa + 4) = v145;
        _os_log_impl(&dword_2531F8000, v660, v683, "Service group added notification received: %s", bufa, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v637);
        MEMORY[0x259C040E0](v637, -1, -1);
        MEMORY[0x259C040E0](bufa, -1, -1);

        (*(v620 + 8))(v706, loga);
      }

      else
      {

        (*(v135 + 8))(v134, v136);
        (*(v138 + 8))(v706, loga);
      }

      goto LABEL_55;
    case 15:
LABEL_55:
      v399 = *v2;
      v400 = v0[79];
      v401 = v0[47];
      v402 = v0[35];
      v403 = v0[36];
      v404 = v0[17];
      v405 = v0[4];
      v5(v400, v399, v402);
      sub_253211D58(v405, &off_2864FBEC8);
      (*(v403 + 16))(v401, v400, v402);
      v406 = sub_253CD07C8();
      v407 = sub_253CD0C78();
      v408 = os_log_type_enabled(v406, v407);
      v409 = v0[47];
      v411 = v0[35];
      v410 = v0[36];
      v412 = v0[17];
      v413 = v0[8];
      v414 = v0[9];
      if (v408)
      {
        logp = v406;
        v415 = v0[6];
        v416 = v0[7];
        v717 = v407;
        v417 = v0[5];
        v763 = v0[8];
        v418 = swift_slowAlloc();
        v671 = swift_slowAlloc();
        v770 = v671;
        *v418 = 136315138;
        sub_253CD00D8();
        v648 = sub_253CD00F8();
        v694 = v412;
        v420 = v419;
        (*(v415 + 8))(v416, v417);
        v423 = *(v410 + 8);
        v422 = v410 + 8;
        v421 = v423;
        v423(v409, v411);
        v424 = sub_253277BA8(v648, v420, &v770);

        *(v418 + 4) = v424;
        _os_log_impl(&dword_2531F8000, logp, v717, "Service group renamed notification received: %s", v418, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v671);
        MEMORY[0x259C040E0](v671, -1, -1);
        MEMORY[0x259C040E0](v418, -1, -1);

        (*(v414 + 8))(v694, v763);
      }

      else
      {

        v425 = *(v410 + 8);
        v422 = v410 + 8;
        v421 = v425;
        v425(v409, v411);
        (*(v414 + 8))(v412, v413);
      }

      v0[117] = v421;
      v0[116] = v422;
      v426 = swift_task_alloc();
      v0[118] = v426;
      *v426 = v0;
      v426[1] = sub_25325B868;
      v427 = v0[79];
      v428 = v0[3];

      return sub_253266614(v427);
    case 16:
      v32 = v0[45];
      v31 = v0[46];
      v33 = v0[35];
      v34 = v0[36];
      v35 = v0[16];
      v36 = v0[4];
      v5(v31, v0[34], v33);
      sub_253211D58(v36, &off_2864FBEC8);
      (*(v34 + 16))(v32, v31, v33);
      v37 = sub_253CD07C8();
      v38 = sub_253CD0C78();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[45];
      v42 = v0[35];
      v41 = v0[36];
      v43 = v0[16];
      v44 = v0[8];
      v45 = v0[9];
      if (v39)
      {
        logf = v37;
        v46 = v0[6];
        v47 = v0[7];
        v702 = v38;
        v48 = v0[5];
        v748 = v0[8];
        v49 = swift_slowAlloc();
        v656 = swift_slowAlloc();
        v770 = v656;
        *v49 = 136315138;
        sub_253CD00D8();
        v633 = sub_253CD00F8();
        v679 = v43;
        v51 = v50;
        (*(v46 + 8))(v47, v48);
        v54 = *(v41 + 8);
        v53 = v41 + 8;
        v52 = v54;
        v54(v40, v42);
        v55 = sub_253277BA8(v633, v51, &v770);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_2531F8000, logf, v702, "Service group removed notification received: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v656);
        MEMORY[0x259C040E0](v656, -1, -1);
        MEMORY[0x259C040E0](v49, -1, -1);

        (*(v45 + 8))(v679, v748);
      }

      else
      {

        v356 = *(v41 + 8);
        v53 = v41 + 8;
        v52 = v356;
        v356(v40, v42);
        (*(v45 + 8))(v43, v44);
      }

      v0[120] = v52;
      v0[119] = v53;
      v357 = swift_task_alloc();
      v0[121] = v357;
      *v357 = v0;
      v357[1] = sub_25325B9EC;
      v358 = v0[46];
      v359 = v0[3];

      return sub_253266F54(v358);
    case 17:
      v2 = v0 + 44;
      v267 = v0[43];
      v266 = v0[44];
      v268 = v0[35];
      v269 = v0[36];
      v270 = v0[15];
      v271 = v0[4];
      v5(v266, v0[34], v268);
      sub_253211D58(v271, &off_2864FBEC8);
      (*(v269 + 16))(v267, v266, v268);
      v272 = sub_253CD07C8();
      v689 = sub_253CD0C78();
      v273 = os_log_type_enabled(v272, v689);
      v274 = v0[43];
      v276 = v0[35];
      v275 = v0[36];
      v277 = v0[15];
      v278 = v0[9];
      v712 = v277;
      logc = v0[8];
      if (v273)
      {
        v758 = v5;
        v666 = v272;
        v279 = v0[6];
        v280 = v0[7];
        v622 = v0[9];
        v281 = v0[5];
        bufc = swift_slowAlloc();
        v643 = swift_slowAlloc();
        v770 = v643;
        *bufc = 136315138;
        sub_253CD00D8();
        v617 = sub_253CD00F8();
        v283 = v282;
        v284 = v280;
        v5 = v758;
        (*(v279 + 8))(v284, v281);
        (*(v275 + 8))(v274, v276);
        v285 = sub_253277BA8(v617, v283, &v770);

        *(bufc + 4) = v285;
        _os_log_impl(&dword_2531F8000, v666, v689, "Accessory added notification received: %s", bufc, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v643);
        MEMORY[0x259C040E0](v643, -1, -1);
        MEMORY[0x259C040E0](bufc, -1, -1);

        (*(v622 + 8))(v712, logc);
      }

      else
      {

        (*(v275 + 8))(v274, v276);
        (*(v278 + 8))(v712, logc);
      }

      goto LABEL_89;
    case 18:
LABEL_89:
      v477 = *v2;
      v478 = v0[78];
      v479 = v0[42];
      v480 = v0[35];
      v481 = v0[36];
      v482 = v0[14];
      v483 = v0[4];
      v5(v478, v477, v480);
      sub_253211D58(v483, &off_2864FBEC8);
      (*(v481 + 16))(v479, v478, v480);
      v484 = sub_253CD07C8();
      v485 = sub_253CD0C88();
      v486 = os_log_type_enabled(v484, v485);
      v487 = v0[42];
      v488 = v0[35];
      v489 = v0[36];
      v490 = v0[14];
      v492 = v0[8];
      v491 = v0[9];
      if (v486)
      {
        logr = v0[14];
        v765 = v5;
        v719 = v484;
        v493 = v0[6];
        v494 = v0[7];
        v495 = v0[5];
        v673 = v485;
        v496 = swift_slowAlloc();
        v650 = swift_slowAlloc();
        v770 = v650;
        *v496 = 136315138;
        sub_253CD00D8();
        bufe = sub_253CD00F8();
        v696 = v492;
        v498 = v497;
        v499 = v494;
        v5 = v765;
        (*(v493 + 8))(v499, v495);
        (*(v489 + 8))(v487, v488);
        v500 = sub_253277BA8(bufe, v498, &v770);

        *(v496 + 4) = v500;
        _os_log_impl(&dword_2531F8000, v719, v673, "services inside accessory updated notification received: %s", v496, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v650);
        MEMORY[0x259C040E0](v650, -1, -1);
        MEMORY[0x259C040E0](v496, -1, -1);

        (*(v491 + 8))(logr, v696);
      }

      else
      {

        (*(v489 + 8))(v487, v488);
        (*(v491 + 8))(v490, v492);
      }

      v501 = v0[36] + 32;
      v5(v0[77], v0[78], v0[35]);
      goto LABEL_93;
    case 19:
      v5(v0[77], v0[34], v0[35]);
LABEL_93:
      v502 = v0[77];
      v503 = v0[41];
      v504 = v0[35];
      v505 = v0[36];
      v506 = v0[13];
      sub_253211D58(v0[4], &off_2864FBEC8);
      (*(v505 + 16))(v503, v502, v504);
      v507 = sub_253CD07C8();
      v508 = sub_253CD0C78();
      v509 = os_log_type_enabled(v507, v508);
      v510 = v0[41];
      v511 = v0[35];
      v512 = v0[36];
      v513 = v0[13];
      v515 = v0[8];
      v514 = v0[9];
      if (v509)
      {
        logs = v0[13];
        v766 = v5;
        v720 = v507;
        v516 = v0[6];
        v517 = v0[7];
        v518 = v0[5];
        v674 = v508;
        v519 = swift_slowAlloc();
        v651 = swift_slowAlloc();
        v770 = v651;
        *v519 = 136315138;
        sub_253CD00D8();
        buff = sub_253CD00F8();
        v697 = v515;
        v521 = v520;
        v522 = v517;
        v5 = v766;
        (*(v516 + 8))(v522, v518);
        (*(v512 + 8))(v510, v511);
        v523 = sub_253277BA8(buff, v521, &v770);

        *(v519 + 4) = v523;
        _os_log_impl(&dword_2531F8000, v720, v674, "Characteristics inside accessory updated notification received: %s", v519, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v651);
        MEMORY[0x259C040E0](v651, -1, -1);
        MEMORY[0x259C040E0](v519, -1, -1);

        (*(v514 + 8))(logs, v697);
      }

      else
      {

        (*(v512 + 8))(v510, v511);
        (*(v514 + 8))(v513, v515);
      }

      v524 = v0[36] + 32;
      v5(v0[76], v0[77], v0[35]);
      goto LABEL_97;
    case 20:
      v5(v0[76], v0[34], v0[35]);
LABEL_97:
      v525 = v0[76];
      v526 = v0[40];
      v527 = v0[35];
      v528 = v0[36];
      v529 = v0[12];
      sub_253211D58(v0[4], &off_2864FBEC8);
      (*(v528 + 16))(v526, v525, v527);
      v530 = sub_253CD07C8();
      v531 = sub_253CD0C78();
      v532 = os_log_type_enabled(v530, v531);
      v533 = v0[40];
      v534 = v0[35];
      v535 = v0[36];
      v536 = v0[12];
      v538 = v0[8];
      v537 = v0[9];
      if (v532)
      {
        logt = v0[12];
        v767 = v5;
        v721 = v530;
        v539 = v0[6];
        v540 = v0[7];
        v541 = v0[5];
        v675 = v531;
        v542 = swift_slowAlloc();
        v652 = swift_slowAlloc();
        v770 = v652;
        *v542 = 136315138;
        sub_253CD00D8();
        bufg = sub_253CD00F8();
        v698 = v538;
        v544 = v543;
        v545 = v540;
        v5 = v767;
        (*(v539 + 8))(v545, v541);
        (*(v535 + 8))(v533, v534);
        v546 = sub_253277BA8(bufg, v544, &v770);

        *(v542 + 4) = v546;
        _os_log_impl(&dword_2531F8000, v721, v675, "Accessory moved to room notification received: %s", v542, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v652);
        MEMORY[0x259C040E0](v652, -1, -1);
        MEMORY[0x259C040E0](v542, -1, -1);

        (*(v537 + 8))(logt, v698);
      }

      else
      {

        (*(v535 + 8))(v533, v534);
        (*(v537 + 8))(v536, v538);
      }

      v547 = v0[36] + 32;
      v5(v0[75], v0[76], v0[35]);
      goto LABEL_101;
    case 21:
      v5(v0[75], v0[34], v0[35]);
LABEL_101:
      v548 = v0[75];
      v549 = v0[39];
      v550 = v0[35];
      v551 = v0[36];
      v552 = v0[11];
      sub_253211D58(v0[4], &off_2864FBEC8);
      (*(v551 + 16))(v549, v548, v550);
      v553 = sub_253CD07C8();
      v554 = sub_253CD0C78();
      v555 = os_log_type_enabled(v553, v554);
      v556 = v0[39];
      v558 = v0[35];
      v557 = v0[36];
      v559 = v0[11];
      v560 = v0[8];
      v561 = v0[9];
      if (v555)
      {
        logu = v553;
        v562 = v0[6];
        v563 = v0[7];
        v722 = v554;
        v564 = v0[5];
        v768 = v0[8];
        v565 = swift_slowAlloc();
        v676 = swift_slowAlloc();
        v770 = v676;
        *v565 = 136315138;
        sub_253CD00D8();
        v653 = sub_253CD00F8();
        v699 = v559;
        v567 = v566;
        (*(v562 + 8))(v563, v564);
        v570 = *(v557 + 8);
        v569 = v557 + 8;
        v568 = v570;
        v570(v556, v558);
        v571 = sub_253277BA8(v653, v567, &v770);

        *(v565 + 4) = v571;
        _os_log_impl(&dword_2531F8000, logu, v722, "Accessory name updated notification received: %s", v565, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v676);
        MEMORY[0x259C040E0](v676, -1, -1);
        MEMORY[0x259C040E0](v565, -1, -1);

        (*(v561 + 8))(v699, v768);
      }

      else
      {

        v572 = *(v557 + 8);
        v569 = v557 + 8;
        v568 = v572;
        v572(v556, v558);
        (*(v561 + 8))(v559, v560);
      }

      v0[123] = v568;
      v0[122] = v569;
      v573 = swift_task_alloc();
      v0[124] = v573;
      *v573 = v0;
      v573[1] = sub_25325BF04;
      v574 = v0[75];
      v575 = v0[3];

      result = sub_2532652A4(v574);
      break;
    case 22:
      v332 = v0[37];
      v331 = v0[38];
      v333 = v0[35];
      v334 = v0[36];
      v335 = v0[10];
      v336 = v0[4];
      v5(v331, v0[34], v333);
      sub_253211D58(v336, &off_2864FBEC8);
      (*(v334 + 16))(v332, v331, v333);
      v337 = sub_253CD07C8();
      v338 = sub_253CD0C78();
      v339 = os_log_type_enabled(v337, v338);
      v341 = v0[36];
      v340 = v0[37];
      v342 = v0[35];
      v344 = v0[9];
      v343 = v0[10];
      v345 = v0[8];
      if (v339)
      {
        logn = v337;
        v346 = v0[6];
        v347 = v0[7];
        v715 = v338;
        v348 = v0[5];
        v761 = v0[8];
        v349 = swift_slowAlloc();
        v669 = swift_slowAlloc();
        v770 = v669;
        *v349 = 136315138;
        sub_253CD00D8();
        v646 = sub_253CD00F8();
        v692 = v343;
        v351 = v350;
        (*(v346 + 8))(v347, v348);
        v354 = *(v341 + 8);
        v353 = v341 + 8;
        v352 = v354;
        v354(v340, v342);
        v355 = sub_253277BA8(v646, v351, &v770);

        *(v349 + 4) = v355;
        _os_log_impl(&dword_2531F8000, logn, v715, "Accessory removed notification received: %s", v349, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v669);
        MEMORY[0x259C040E0](v669, -1, -1);
        MEMORY[0x259C040E0](v349, -1, -1);

        (*(v344 + 8))(v692, v761);
      }

      else
      {

        v610 = *(v341 + 8);
        v353 = v341 + 8;
        v352 = v610;
        v610(v340, v342);
        (*(v344 + 8))(v343, v345);
      }

      v0[126] = v352;
      v0[125] = v353;
      v611 = swift_task_alloc();
      v0[127] = v611;
      *v611 = v0;
      v611[1] = sub_25325C088;
      v612 = v0[38];
      v613 = v0[3];

      result = sub_253265848(v612);
      break;
    default:
      v6 = v0[74];
      v7 = v0[73];
      v8 = v0[35];
      v9 = v0[36];
      v10 = v0[32];
      v11 = v0[4];
      v5(v6, v0[34], v8);
      sub_253211D58(v11, &off_2864FBEC8);
      (*(v9 + 16))(v7, v6, v8);
      v12 = sub_253CD07C8();
      v13 = sub_253CD0C78();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[73];
      v17 = v0[35];
      v16 = v0[36];
      v18 = v0[32];
      v19 = v0[8];
      v20 = v0[9];
      if (v14)
      {
        loge = v12;
        v21 = v0[6];
        v22 = v0[7];
        v701 = v13;
        v23 = v0[5];
        v747 = v0[8];
        v24 = swift_slowAlloc();
        v655 = swift_slowAlloc();
        v770 = v655;
        *v24 = 136315138;
        sub_253CD00D8();
        v632 = sub_253CD00F8();
        v678 = v18;
        v26 = v25;
        (*(v21 + 8))(v22, v23);
        v29 = *(v16 + 8);
        v28 = v16 + 8;
        v27 = v29;
        v29(v15, v17);
        v30 = sub_253277BA8(v632, v26, &v770);

        *(v24 + 4) = v30;
        _os_log_impl(&dword_2531F8000, loge, v701, "Current home changed notification received: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v655);
        MEMORY[0x259C040E0](v655, -1, -1);
        MEMORY[0x259C040E0](v24, -1, -1);

        (*(v20 + 8))(v678, v747);
      }

      else
      {

        v432 = *(v16 + 8);
        v28 = v16 + 8;
        v27 = v432;
        v432(v15, v17);
        (*(v20 + 8))(v18, v19);
      }

      v0[84] = v27;
      v0[83] = v28;
      v433 = swift_task_alloc();
      v0[85] = v433;
      *v433 = v0;
      v433[1] = sub_253258730;
      v434 = v0[3];

      result = sub_25325C5A0();
      break;
  }

  return result;
}

uint64_t sub_253258730()
{
  v1 = *(*v0 + 680);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253258840, v2, 0);
}

uint64_t sub_253258840()
{
  v1 = *(v0 + 664);
  (*(v0 + 672))(*(v0 + 592), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_253258C48()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253258D58, v2, 0);
}

uint64_t sub_253258D58()
{
  v1 = *(v0 + 688);
  (*(v0 + 696))(*(v0 + 576), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_253259160()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253259270, v2, 0);
}

uint64_t sub_253259270()
{
  v1 = *(v0 + 712);
  (*(v0 + 720))(*(v0 + 560), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_253259678()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253259788, v2, 0);
}

uint64_t sub_253259788()
{
  v1 = *(v0 + 736);
  (*(v0 + 744))(*(v0 + 544), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_253259B90()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);
  v3 = *(*v0 + 760);
  v4 = *(*v0 + 656);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_253259D14, v6, 0);
}

uint64_t sub_253259D14()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[66];
  v20 = v0[65];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[55];
  v31 = v0[54];
  v32 = v0[53];
  v33 = v0[52];
  v34 = v0[51];
  v35 = v0[50];
  v36 = v0[49];
  v37 = v0[48];
  v38 = v0[47];
  v39 = v0[46];
  v40 = v0[45];
  v41 = v0[44];
  v42 = v0[43];
  v43 = v0[42];
  v44 = v0[41];
  v45 = v0[40];
  v46 = v0[39];
  v47 = v0[38];
  v48 = v0[37];
  v49 = v0[34];
  v50 = v0[32];
  v51 = v0[31];
  v52 = v0[30];
  v53 = v0[29];
  v54 = v0[28];
  v55 = v0[27];
  v56 = v0[26];
  v57 = v0[25];
  v58 = v0[24];
  v59 = v0[23];
  v60 = v0[22];
  v61 = v0[21];
  v62 = v0[20];
  v63 = v0[19];
  v64 = v0[18];
  v65 = v0[17];
  v66 = v0[16];
  v67 = v0[15];
  v68 = v0[14];
  v69 = v0[13];
  v70 = v0[12];
  v71 = v0[11];
  v72 = v0[10];
  v73 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25325A100()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25325A210, v2, 0);
}

uint64_t sub_25325A210()
{
  v1 = *(v0 + 784);
  (*(v0 + 792))(*(v0 + 504), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25325A618()
{
  v1 = *(*v0 + 824);
  v2 = *(*v0 + 816);
  v3 = *(*v0 + 808);
  v4 = *(*v0 + 648);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_25326866C, v6, 0);
}

uint64_t sub_25325A79C()
{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25325A8AC, v2, 0);
}

uint64_t sub_25325A8AC()
{
  v1 = *(v0 + 832);
  (*(v0 + 840))(*(v0 + 464), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25325ACB4()
{
  v1 = *(*v0 + 872);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25325ADC4, v2, 0);
}

uint64_t sub_25325ADC4()
{
  v1 = *(v0 + 856);
  (*(v0 + 864))(*(v0 + 448), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25325B1CC()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 888);
  v3 = *(*v0 + 880);
  v4 = *(*v0 + 640);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_25326866C, v6, 0);
}

uint64_t sub_25325B350()
{
  v1 = *(*v0 + 920);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25325B460, v2, 0);
}

uint64_t sub_25325B460()
{
  v1 = *(v0 + 904);
  (*(v0 + 912))(*(v0 + 408), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25325B868()
{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 928);
  v4 = *(*v0 + 632);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_25326866C, v6, 0);
}

uint64_t sub_25325B9EC()
{
  v1 = *(*v0 + 968);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25325BAFC, v2, 0);
}

uint64_t sub_25325BAFC()
{
  v1 = *(v0 + 952);
  (*(v0 + 960))(*(v0 + 368), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25325BF04()
{
  v1 = *(*v0 + 992);
  v2 = *(*v0 + 984);
  v3 = *(*v0 + 976);
  v4 = *(*v0 + 600);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 24);
  v8 = *v0;

  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_25326866C, v6, 0);
}

uint64_t sub_25325C088()
{
  v1 = *(*v0 + 1016);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25325C198, v2, 0);
}

uint64_t sub_25325C198()
{
  v1 = *(v0 + 1000);
  (*(v0 + 1008))(*(v0 + 304), *(v0 + 280));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 472);
  v28 = *(v0 + 464);
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v32 = *(v0 + 432);
  v33 = *(v0 + 424);
  v34 = *(v0 + 416);
  v35 = *(v0 + 408);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 320);
  v47 = *(v0 + 312);
  v48 = *(v0 + 304);
  v49 = *(v0 + 296);
  v50 = *(v0 + 272);
  v51 = *(v0 + 256);
  v52 = *(v0 + 248);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v56 = *(v0 + 216);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 192);
  v60 = *(v0 + 184);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v63 = *(v0 + 160);
  v64 = *(v0 + 152);
  v65 = *(v0 + 144);
  v66 = *(v0 + 136);
  v67 = *(v0 + 128);
  v68 = *(v0 + 120);
  v69 = *(v0 + 112);
  v70 = *(v0 + 104);
  v71 = *(v0 + 96);
  v72 = *(v0 + 88);
  v73 = *(v0 + 80);
  v74 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25325C5A0()
{
  v1[20] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for HomeEntity();
  v1[22] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325C66C, v0, 0);
}

uint64_t sub_25325C66C()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136));
  sub_2532074E4((v1 + 1), (v0 + 2));
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = [v2 homes];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  sub_253200644(0, &unk_281530D20, off_27971A118);
  v7 = sub_253CD0A58();
  v0[24] = v7;

  if (v7 >> 62)
  {
LABEL_23:
    v38 = sub_253CD0ED8();
    v0[25] = v38;
    if (v38)
    {
LABEL_4:
      v9 = 0;
      while (1)
      {
        v10 = v0[24];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x259C00F30](v9);
        }

        else
        {
          if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v10 + 8 * v9 + 32);
        }

        v12 = v11;
        v0[26] = v11;
        v0[27] = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v13 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
        v0[28] = v13;
        v14 = *(v13 + 16);
        v0[29] = v14;
        if (v14)
        {
          break;
        }

        v9 = v0[27];
        if (v9 == v0[25])
        {
          goto LABEL_12;
        }
      }

      v0[30] = 0;
      v20 = v0[26];

      sub_2532074E4(v21 + 32, (v0 + 7));
      v22 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
      v23 = [v20 urlString];
      if (v23)
      {
        v24 = v23;
        v25 = sub_253CD0968();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = v0[26];
      v30 = v0[22];
      v29 = v0[23];
      *v29 = v25;
      v29[1] = v27;
      v31 = [v28 spiClientIdentifier];
      v32 = v29 + *(v30 + 20);
      sub_253CCFF38();

      v33 = [v28 name];
      v34 = sub_253CD0968();
      v36 = v35;

      v37 = (v29 + *(v30 + 24));
      *v37 = v34;
      v37[1] = v36;
      sub_253267E60(v29, type metadata accessor for HomeEntity);
      v5 = *v22;
      v0[31] = *v22;
      v4 = sub_25325C984;
      v6 = 0;

      return MEMORY[0x2822009F8](v4, v5, v6);
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[25] = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

LABEL_12:
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_25325C984()
{
  v1 = v0[31];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[31];
  }

  v3 = v0[20];
  v4 = v0[21];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[15] = swift_getAssociatedTypeWitness();
  v0[16] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 12);

  sub_253CD0188();

  sub_253206054(v4, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 12), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325CB94, v3, 0);
}

uint64_t sub_25325CB94()
{
  v1 = v0[29];
  v2 = v0[30] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v2 == v1)
  {
    v3 = v0[28];
    v4 = v0[26];

    while (1)
    {
      v7 = v0[27];
      if (v7 == v0[25])
      {
        break;
      }

      v8 = v0[24];
      if ((v8 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x259C00F30](v0[27]);
      }

      else
      {
        if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v8 + 8 * v7 + 32);
      }

      v9 = v5;
      v0[26] = v5;
      v0[27] = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return MEMORY[0x2822009F8](v5, v8, v6);
      }

      v10 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
      v0[28] = v10;
      v11 = *(v10 + 16);
      v0[29] = v11;
      if (v11)
      {

        v12 = 0;
        goto LABEL_16;
      }
    }

    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[21];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v12 = v0[30] + 1;
    v13 = v0[28];
LABEL_16:
    v0[30] = v12;
    v19 = v0[26];
    sub_2532074E4(v13 + 40 * v12 + 32, (v0 + 7));
    v20 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    v21 = [v19 urlString];
    if (v21)
    {
      v22 = v21;
      v23 = sub_253CD0968();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = v0[26];
    v28 = v0[22];
    v27 = v0[23];
    *v27 = v23;
    v27[1] = v25;
    v29 = [v26 spiClientIdentifier];
    v30 = v27 + *(v28 + 20);
    sub_253CCFF38();

    v31 = [v26 name];
    v32 = sub_253CD0968();
    v34 = v33;

    v35 = (v27 + *(v28 + 24));
    *v35 = v32;
    v35[1] = v34;
    sub_253267E60(v27, type metadata accessor for HomeEntity);
    v8 = *v20;
    v0[31] = *v20;
    v5 = sub_25325C984;
    v6 = 0;

    return MEMORY[0x2822009F8](v5, v8, v6);
  }
}

uint64_t sub_25325CE28(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v3 = sub_253CD07E8();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v7 = type metadata accessor for HomeEntity();
  v2[40] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v10 = sub_253CCFF58();
  v2[43] = v10;
  v11 = *(v10 - 8);
  v2[44] = v11;
  v12 = *(v11 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v13 = sub_253CCFD58();
  v2[47] = v13;
  v14 = *(v13 - 8);
  v2[48] = v14;
  v15 = *(v14 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325D08C, v1, 0);
}

uint64_t sub_25325D08C()
{
  v116 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v3 = sub_253CCFD48();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CD0640];
  *(v0 + 232) = sub_253CD0968();
  *(v0 + 240) = v6;
  sub_253CD0F58();
  if (!*(v4 + 16) || (v7 = sub_253217D40(v0 + 16), (v8 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v4 + 56) + 32 * v7, v0 + 176);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 200))
  {
LABEL_12:
    v28 = *(v0 + 344);
    v29 = *(v0 + 352);
    v30 = *(v0 + 336);
    sub_253206054(v0 + 176, &qword_27F5A2AB0, &unk_253D4A560);
    (*(v29 + 56))(v30, 1, 1, v28);
LABEL_13:
    v32 = *(v0 + 392);
    v31 = *(v0 + 400);
    v33 = *(v0 + 376);
    v34 = *(v0 + 384);
    v35 = *(v0 + 296);
    v36 = *(v0 + 272);
    sub_253206054(*(v0 + 336), &unk_27F5A2AD0, &unk_253D486A0);
    sub_253211D58(v36, &off_2864FBEC8);
    (*(v34 + 16))(v32, v31, v33);
    v37 = sub_253CD07C8();
    v38 = sub_253CD0C98();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 392);
    v41 = *(v0 + 400);
    v43 = *(v0 + 376);
    v42 = *(v0 + 384);
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = *(v0 + 280);
    if (v39)
    {
      v113 = *(v0 + 296);
      v47 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v115 = v109;
      *v47 = 136315138;
      v107 = v38;
      *(v0 + 248) = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v48 = sub_253CD0DB8();
      v49 = v43;
      v51 = v50;
      v52 = *(v42 + 8);
      v53 = v40;
      v54 = v49;
      v52(v53, v49);

      v55 = sub_253277BA8(v48, v51, &v115);

      *(v47 + 4) = v55;
      _os_log_impl(&dword_2531F8000, v37, v107, "Could not handle new home added notification %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x259C040E0](v109, -1, -1);
      MEMORY[0x259C040E0](v47, -1, -1);

      (*(v44 + 8))(v113, v46);
      v52(v41, v54);
    }

    else
    {

      v56 = *(v42 + 8);
      v56(v40, v43);
      (*(v44 + 8))(v45, v46);
      v56(v41, v43);
    }

    goto LABEL_16;
  }

  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  v12 = swift_dynamicCast();
  (*(v10 + 56))(v11, v12 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  v13 = *(v0 + 264);
  (*(*(v0 + 352) + 32))(*(v0 + 368), *(v0 + 336), *(v0 + 344));
  v14 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136));
  sub_2532074E4((v14 + 1), v0 + 56);
  v15 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v16 = sub_253CCFF18();
  v17 = [v15 _homeWithUUID_];
  *(v0 + 408) = v17;

  if (v17)
  {
    v18 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136))[6];
    *(v0 + 416) = v18;
    v19 = *(v18 + 16);
    *(v0 + 424) = v19;
    if (v19)
    {
      *(v0 + 432) = 0;
      v20 = *(v0 + 408);

      sub_2532074E4(v21 + 32, v0 + 96);
      v22 = __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
      v23 = [v20 urlString];
      if (v23)
      {
        v24 = v23;
        v25 = sub_253CD0968();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v94 = *(v0 + 408);
      v96 = *(v0 + 320);
      v95 = *(v0 + 328);
      *v95 = v25;
      v95[1] = v27;
      v97 = [v94 spiClientIdentifier];
      v98 = v95 + *(v96 + 20);
      sub_253CCFF38();

      v99 = [v94 name];
      v100 = sub_253CD0968();
      v102 = v101;

      v103 = (v95 + *(v96 + 24));
      *v103 = v100;
      v103[1] = v102;
      sub_253267E60(v95, type metadata accessor for HomeEntity);
      v104 = *v22;
      *(v0 + 440) = *v22;

      return MEMORY[0x2822009F8](sub_25325D94C, v104, 0);
    }

    v90 = *(v0 + 400);
    v91 = *(v0 + 376);
    v92 = *(v0 + 384);
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
    (*(v92 + 8))(v90, v91);
  }

  else
  {
    v69 = *(v0 + 360);
    v68 = *(v0 + 368);
    v70 = *(v0 + 344);
    v71 = *(v0 + 352);
    v72 = *(v0 + 304);
    sub_253211D58(*(v0 + 272), &off_2864FBEC8);
    (*(v71 + 16))(v69, v68, v70);
    v73 = sub_253CD07C8();
    v74 = sub_253CD0C78();
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 400);
    v78 = *(v0 + 376);
    v77 = *(v0 + 384);
    v79 = *(v0 + 360);
    v80 = *(v0 + 344);
    v81 = *(v0 + 352);
    v112 = *(v0 + 304);
    v114 = *(v0 + 368);
    v82 = *(v0 + 288);
    v111 = *(v0 + 280);
    if (v75)
    {
      v105 = v74;
      v83 = swift_slowAlloc();
      v110 = v77;
      v84 = swift_slowAlloc();
      v115 = v84;
      *v83 = 136315138;
      sub_253268470(&qword_281531980, MEMORY[0x277CC95F0]);
      v106 = v78;
      v108 = v76;
      v85 = sub_253CD10E8();
      v87 = v86;
      v88 = *(v81 + 8);
      v88(v79, v80);
      v89 = sub_253277BA8(v85, v87, &v115);

      *(v83 + 4) = v89;
      _os_log_impl(&dword_2531F8000, v73, v105, "Could not find the home with UUID %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x259C040E0](v84, -1, -1);
      MEMORY[0x259C040E0](v83, -1, -1);

      (*(v82 + 8))(v112, v111);
      v88(v114, v80);
      (*(v110 + 8))(v108, v106);
    }

    else
    {

      v93 = *(v81 + 8);
      v93(v79, v80);
      (*(v82 + 8))(v112, v111);
      v93(v114, v80);
      (*(v77 + 8))(v76, v78);
    }
  }

LABEL_16:
  v58 = *(v0 + 392);
  v57 = *(v0 + 400);
  v60 = *(v0 + 360);
  v59 = *(v0 + 368);
  v62 = *(v0 + 328);
  v61 = *(v0 + 336);
  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_25325D94C()
{
  v1 = v0[55];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[55];
  }

  v3 = v0[39];
  v4 = v0[33];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 17);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 17), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325DB60, v4, 0);
}

uint64_t sub_25325DB60()
{
  v1 = v0[53];
  v2 = v0[54] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (v2 == v1)
  {
    v4 = v0[51];
    v3 = v0[52];

    v5 = v0[50];
    v6 = v0[47];
    v7 = v0[48];
    (*(v0[44] + 8))(v0[46], v0[43]);
    (*(v7 + 8))(v5, v6);
    v9 = v0[49];
    v8 = v0[50];
    v11 = v0[45];
    v10 = v0[46];
    v13 = v0[41];
    v12 = v0[42];
    v15 = v0[38];
    v14 = v0[39];
    v16 = v0[37];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[54];
    v0[54] = v19 + 1;
    v20 = v0[51];
    sub_2532074E4(v0[52] + 40 * v19 + 72, (v0 + 12));
    v21 = __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
    v22 = [v20 urlString];
    if (v22)
    {
      v23 = v22;
      v24 = sub_253CD0968();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = v0[51];
    v29 = v0[40];
    v28 = v0[41];
    *v28 = v24;
    v28[1] = v26;
    v30 = [v27 spiClientIdentifier];
    v31 = v28 + *(v29 + 20);
    sub_253CCFF38();

    v32 = [v27 name];
    v33 = sub_253CD0968();
    v35 = v34;

    v36 = (v28 + *(v29 + 24));
    *v36 = v33;
    v36[1] = v35;
    sub_253267E60(v28, type metadata accessor for HomeEntity);
    v37 = *v21;
    v0[55] = *v21;

    return MEMORY[0x2822009F8](sub_25325D94C, v37, 0);
  }
}

uint64_t sub_25325DDCC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_253CD07E8();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for HomeEntity();
  v2[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = sub_253CCFD58();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325DF78, v1, 0);
}

uint64_t sub_25325DF78()
{
  v1 = v0[31];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[15])
  {
    sub_253206054((v0 + 12), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_7;
  }

  sub_253200644(0, &unk_281530D20, off_27971A118);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = v0[25];
    sub_253211D58(v0[22], &off_2864FBEC8);
    v16 = sub_253CD07C8();
    v17 = sub_253CD0C98();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[29];
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[23];
    if (v18)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2531F8000, v16, v17, "Could not handle home name changed notification as passed object is not HMDHome type", v25, 2u);
      MEMORY[0x259C040E0](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    goto LABEL_10;
  }

  v3 = v0[21];
  v4 = v0[19];
  v0[32] = v4;
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), *(v3 + 136))[6];
  v0[33] = v5;
  v6 = *(v5 + 16);
  v0[34] = v6;
  if (v6)
  {
    v0[35] = 0;
    v7 = v0[32];

    sub_2532074E4(v8 + 32, (v0 + 2));
    v9 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v10 = [v7 urlString];
    if (v10)
    {
      v11 = v10;
      v12 = sub_253CD0968();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v32 = v0[32];
    v34 = v0[27];
    v33 = v0[28];
    *v33 = v12;
    v33[1] = v14;
    v35 = [v32 spiClientIdentifier];
    v36 = v33 + *(v34 + 20);
    sub_253CCFF38();

    v37 = [v32 name];
    v38 = sub_253CD0968();
    v40 = v39;

    v41 = (v33 + *(v34 + 24));
    *v41 = v38;
    v41[1] = v40;
    sub_253267E60(v33, type metadata accessor for HomeEntity);
    v42 = *v9;
    v0[36] = *v9;

    return MEMORY[0x2822009F8](sub_25325E2FC, v42, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:
  v26 = v0[31];
  v27 = v0[28];
  v29 = v0[25];
  v28 = v0[26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_25325E2FC()
{
  v1 = v0[36];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[36];
  }

  v3 = v0[26];
  v4 = v0[21];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325E510, v4, 0);
}

uint64_t sub_25325E510()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v4 = v0[32];
    v3 = v0[33];

    (*(v0[30] + 8))(v0[31], v0[29]);
    v5 = v0[31];
    v6 = v0[28];
    v8 = v0[25];
    v7 = v0[26];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[35];
    v0[35] = v11 + 1;
    v12 = v0[32];
    sub_2532074E4(v0[33] + 40 * v11 + 72, (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v14 = [v12 urlString];
    if (v14)
    {
      v15 = v14;
      v16 = sub_253CD0968();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = v0[32];
    v21 = v0[27];
    v20 = v0[28];
    *v20 = v16;
    v20[1] = v18;
    v22 = [v19 spiClientIdentifier];
    v23 = v20 + *(v21 + 20);
    sub_253CCFF38();

    v24 = [v19 name];
    v25 = sub_253CD0968();
    v27 = v26;

    v28 = (v20 + *(v21 + 24));
    *v28 = v25;
    v28[1] = v27;
    sub_253267E60(v20, type metadata accessor for HomeEntity);
    v29 = *v13;
    v0[36] = *v13;

    return MEMORY[0x2822009F8](sub_25325E2FC, v29, 0);
  }
}

uint64_t sub_25325E72C()
{
  *(v1 + 80) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325E7C8, v0, 0);
}

uint64_t sub_25325E7C8()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[12] = v1;
  v2 = *(v1 + 16);
  v0[13] = v2;
  if (v2)
  {
    v0[14] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[15] = *v5;

    return MEMORY[0x2822009F8](sub_25325E8A0, v6, 0);
  }

  else
  {
    v7 = v0[11];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25325E8A0()
{
  v1 = v0[15];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[15];
  }

  v3 = v0[10];
  v4 = v0[11];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v4, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325EAB0, v3, 0);
}

uint64_t sub_25325EAB0()
{
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {
    v2 = v0[12];

    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[14] = v1;
    v6 = __swift_project_boxed_opaque_existential_0((v0[12] + 40 * v1 + 32), *(v0[12] + 40 * v1 + 56));
    v7 = *v6;
    v0[15] = *v6;

    return MEMORY[0x2822009F8](sub_25325E8A0, v7, 0);
  }
}

uint64_t sub_25325EB80(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_253CD07E8();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39C0, &unk_253D4A5D0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for RoomEntity();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = sub_253CCFD58();
  v2[32] = v11;
  v12 = *(v11 - 8);
  v2[33] = v12;
  v13 = *(v12 + 64) + 15;
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325ED9C, v1, 0);
}

uint64_t sub_25325ED9C()
{
  v1 = v0[34];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[15])
  {
    sub_253206054((v0 + 12), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_8;
  }

  sub_253200644(0, &qword_281530D18, off_27971A220);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v21 = v0[25];
    sub_253211D58(v0[22], &off_2864FBEC8);
    v22 = sub_253CD07C8();
    v23 = sub_253CD0C98();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[33];
    v25 = v0[34];
    v27 = v0[32];
    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];
    if (v24)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2531F8000, v22, v23, "Could not index room as the notification did not contain a HMDRoom", v31, 2u);
      MEMORY[0x259C040E0](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    goto LABEL_11;
  }

  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[19];
  v0[35] = v6;
  sub_253241798(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[26];
    v8 = v0[22];
    sub_253206054(v0[28], &qword_27F5A39C0, &unk_253D4A5D0);
    sub_253211D58(v8, &off_2864FBEC8);
    v9 = v6;
    v10 = sub_253CD07C8();
    v11 = sub_253CD0C98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v10, v11, "Unable to create RoomEntity for %@", v12, 0xCu);
      sub_253206054(v13, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v13, -1, -1);
      MEMORY[0x259C040E0](v12, -1, -1);
    }

    v16 = v0[33];
    v15 = v0[34];
    v17 = v0[32];
    v18 = v0[26];
    v19 = v0[23];
    v20 = v0[24];

    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    goto LABEL_11;
  }

  v40 = v0[21];
  sub_253267F28(v0[28], v0[31], type metadata accessor for RoomEntity);
  v41 = __swift_project_boxed_opaque_existential_0((v40 + 112), *(v40 + 136))[6];
  v0[36] = v41;
  v42 = *(v41 + 16);
  v0[37] = v42;
  if (!v42)
  {

    v52 = v0[33];
    v51 = v0[34];
    v53 = v0[32];
    sub_253267E60(v0[31], type metadata accessor for RoomEntity);
    (*(v52 + 8))(v51, v53);
LABEL_11:
    v32 = v0[34];
    v33 = v0[31];
    v35 = v0[27];
    v34 = v0[28];
    v37 = v0[25];
    v36 = v0[26];

    v38 = v0[1];

    return v38();
  }

  v0[38] = 0;
  v44 = v0[30];
  v43 = v0[31];

  sub_2532074E4(v45 + 32, (v0 + 2));
  v46 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
  v47 = *(v44 + 72);
  v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v49 = swift_allocObject();
  sub_253267EC0(v43, v49 + v48, type metadata accessor for RoomEntity);
  swift_setDeallocating();
  sub_253267E60(v49 + v48, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();
  v50 = *v46;
  v0[39] = *v46;

  return MEMORY[0x2822009F8](sub_25325F2AC, v50, 0);
}

uint64_t sub_25325F2AC()
{
  v1 = v0[39];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[39];
  }

  v3 = v0[27];
  v4 = v0[21];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325F4C0, v4, 0);
}

uint64_t sub_25325F4C0()
{
  v1 = v0[37];
  v2 = v0[38] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v4 = v0[35];
    v3 = v0[36];

    v6 = v0[33];
    v5 = v0[34];
    v7 = v0[32];
    sub_253267E60(v0[31], type metadata accessor for RoomEntity);
    (*(v6 + 8))(v5, v7);
    v8 = v0[34];
    v9 = v0[31];
    v11 = v0[27];
    v10 = v0[28];
    v13 = v0[25];
    v12 = v0[26];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[38];
    v0[38] = v16 + 1;
    v18 = v0[30];
    v17 = v0[31];
    sub_2532074E4(v0[36] + 40 * v16 + 72, (v0 + 2));
    v19 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
    v20 = *(v18 + 72);
    v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v22 = swift_allocObject();
    sub_253267EC0(v17, v22 + v21, type metadata accessor for RoomEntity);
    swift_setDeallocating();
    sub_253267E60(v22 + v21, type metadata accessor for RoomEntity);
    swift_deallocClassInstance();
    v23 = *v19;
    v0[39] = *v19;

    return MEMORY[0x2822009F8](sub_25325F2AC, v23, 0);
  }
}

uint64_t sub_25325F6C4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = sub_253CD07E8();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v7 = sub_253CCFD58();
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325F84C, v1, 0);
}

uint64_t sub_25325F84C()
{
  v52 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v3 = sub_253CCFD48();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CD0D38];
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v6;
  sub_253CD0F58();
  if (!*(v4 + 16) || (v7 = sub_253217D40(v0 + 16), (v8 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v4 + 56) + 32 * v7, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_13:
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = *(v0 + 232);
    sub_253211D58(*(v0 + 208), &off_2864FBEC8);
    (*(v20 + 16))(v18, v17, v19);
    v22 = sub_253CD07C8();
    v23 = sub_253CD0C98();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 264);
    v26 = *(v0 + 272);
    v28 = *(v0 + 248);
    v27 = *(v0 + 256);
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = *(v0 + 216);
    if (v24)
    {
      v50 = *(v0 + 232);
      v32 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v32 = 136315138;
      v48 = v23;
      *(v0 + 184) = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v33 = sub_253CD0DB8();
      v34 = v28;
      v36 = v35;
      v37 = *(v27 + 8);
      v38 = v25;
      v39 = v34;
      v37(v38, v34);

      v40 = sub_253277BA8(v33, v36, &v51);

      *(v32 + 4) = v40;
      _os_log_impl(&dword_2531F8000, v22, v48, "Did not find room uuid. Could not handle room removed notification %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x259C040E0](v49, -1, -1);
      MEMORY[0x259C040E0](v32, -1, -1);

      (*(v29 + 8))(v50, v31);
      v37(v26, v39);
    }

    else
    {

      v41 = *(v27 + 8);
      v41(v25, v28);
      (*(v29 + 8))(v30, v31);
      v41(v26, v28);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 176);

  v11 = __swift_project_boxed_opaque_existential_0((v9 + 112), *(v9 + 136))[6];
  *(v0 + 280) = v11;
  v12 = *(v11 + 16);
  *(v0 + 288) = v12;
  if (v12)
  {
    *(v0 + 296) = 0;
    v13 = *(v11 + 56);

    v15 = __swift_project_boxed_opaque_existential_0((v14 + 32), v13);
    v16 = *v15;
    *(v0 + 304) = *v15;

    return MEMORY[0x2822009F8](sub_25325FC8C, v16, 0);
  }

  (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
LABEL_16:
  v43 = *(v0 + 264);
  v42 = *(v0 + 272);
  v45 = *(v0 + 232);
  v44 = *(v0 + 240);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_25325FC8C()
{
  v1 = v0[38];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[38];
  }

  v3 = v0[30];
  v4 = v0[25];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325FEA0, v4, 0);
}

uint64_t sub_25325FEA0()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {
    v2 = v0[35];

    (*(v0[32] + 8))(v0[34], v0[31]);
    v4 = v0[33];
    v3 = v0[34];
    v6 = v0[29];
    v5 = v0[30];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v0[37] = v1;
    v9 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v10 = *v9;
    v0[38] = *v9;

    return MEMORY[0x2822009F8](sub_25325FC8C, v10, 0);
  }
}

uint64_t sub_25325FFB0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_253CD07E8();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for ZoneEntity();
  v2[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = sub_253CCFD58();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25326015C, v1, 0);
}

uint64_t sub_25326015C()
{
  v1 = v0[31];
  v2 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[15])
  {
    sub_253206054((v0 + 12), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_7;
  }

  sub_253200644(0, &qword_281530D10, off_27971A280);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = v0[25];
    sub_253211D58(v0[22], &off_2864FBEC8);
    v16 = sub_253CD07C8();
    v17 = sub_253CD0C98();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[29];
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[23];
    if (v18)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2531F8000, v16, v17, "Did not find HMDZone as part of the zone added notification", v25, 2u);
      MEMORY[0x259C040E0](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    goto LABEL_10;
  }

  v3 = v0[21];
  v4 = v0[19];
  v0[32] = v4;
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), *(v3 + 136))[6];
  v0[33] = v5;
  v6 = *(v5 + 16);
  v0[34] = v6;
  if (v6)
  {
    v0[35] = 0;
    v7 = v0[32];

    sub_2532074E4(v8 + 32, (v0 + 2));
    v9 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v10 = [v7 urlString];
    if (v10)
    {
      v11 = v10;
      v12 = sub_253CD0968();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v32 = v0[32];
    v34 = v0[27];
    v33 = v0[28];
    *v33 = v12;
    v33[1] = v14;
    v35 = [v32 spiClientIdentifier];
    v36 = v33 + *(v34 + 20);
    sub_253CCFF38();

    v37 = [v32 name];
    v38 = sub_253CD0968();
    v40 = v39;

    v41 = (v33 + *(v34 + 24));
    *v41 = v38;
    v41[1] = v40;
    sub_253267E60(v33, type metadata accessor for ZoneEntity);
    v42 = *v9;
    v0[36] = *v9;

    return MEMORY[0x2822009F8](sub_2532604E0, v42, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:
  v26 = v0[31];
  v27 = v0[28];
  v29 = v0[25];
  v28 = v0[26];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2532604E0()
{
  v1 = v0[36];
  if (v1[29])
  {
    v2 = v1[29];

    sub_253CD0BA8();

    v1 = v0[36];
  }

  v3 = v0[26];
  v4 = v0[21];
  sub_253248F34();
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v6 = sub_253CD0B58();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532606F4, v4, 0);
}

uint64_t sub_2532606F4()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v4 = v0[32];
    v3 = v0[33];

    (*(v0[30] + 8))(v0[31], v0[29]);
    v5 = v0[31];
    v6 = v0[28];
    v8 = v0[25];
    v7 = v0[26];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[35];
    v0[35] = v11 + 1;
    v12 = v0[32];
    sub_2532074E4(v0[33] + 40 * v11 + 72, (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v14 = [v12 urlString];
    if (v14)
    {
      v15 = v14;
      v16 = sub_253CD0968();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = v0[32];
    v21 = v0[27];
    v20 = v0[28];
    *v20 = v16;
    v20[1] = v18;
    v22 = [v19 spiClientIdentifier];
    v23 = v20 + *(v21 + 20);
    sub_253CCFF38();

    v24 = [v19 name];
    v25 = sub_253CD0968();
    v27 = v26;

    v28 = (v20 + *(v21 + 24));
    *v28 = v25;
    v28[1] = v27;
    sub_253267E60(v20, type metadata accessor for ZoneEntity);
    v29 = *v13;
    v0[36] = *v13;

    return MEMORY[0x2822009F8](sub_2532604E0, v29, 0);
  }
}

uint64_t sub_253260910(uint64_t a1)
{
  v2[71] = v1;
  v2[70] = a1;
  v2[72] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880) - 8) + 64) + 15;
  v2[73] = swift_task_alloc();
  v4 = type metadata accessor for ZoneEntity();
  v2[74] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[75] = swift_task_alloc();
  v6 = type metadata accessor for RoomEntity();
  v2[76] = v6;
  v7 = *(v6 - 8);
  v2[77] = v7;
  v8 = *(v7 + 64) + 15;
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v9 = sub_253CCFE58();
  v2[81] = v9;
  v10 = *(v9 - 8);
  v2[82] = v10;
  v11 = *(v10 + 64) + 15;
  v2[83] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0) - 8) + 64) + 15;
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v13 = sub_253CCFD58();
  v2[86] = v13;
  v14 = *(v13 - 8);
  v2[87] = v14;
  v15 = *(v14 + 64) + 15;
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v16 = sub_253CD07E8();
  v2[91] = v16;
  v17 = *(v16 - 8);
  v2[92] = v17;
  v18 = *(v17 + 64) + 15;
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253260C4C, v1, 0);
}

uint64_t sub_253260C4C()
{
  v260 = v0;
  v1 = v0;
  v2 = v0[101];
  sub_253211D58(v0[72], &off_2864FBEC8);
  v3 = sub_253CD07C8();
  v4 = sub_253CD0C78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2531F8000, v3, v4, "Handling zone room relationship updated notification", v5, 2u);
    MEMORY[0x259C040E0](v5, -1, -1);
  }

  v6 = v0[101];
  v7 = v0[92];
  v8 = v1[91];
  v9 = v1[90];
  v10 = v1[70];

  v11 = *(v7 + 8);
  v11(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v1[35])
  {
    sub_253206054((v1 + 32), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_51;
  }

  sub_253200644(0, &qword_281530D10, off_27971A280);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v109 = v1[93];
    sub_253211D58(v1[72], &off_2864FBEC8);
    v110 = sub_253CD07C8();
    v111 = sub_253CD0C98();
    v112 = os_log_type_enabled(v110, v111);
    v113 = v1[93];
    v114 = v1[92];
    v115 = v1[91];
    v116 = v1[90];
    v117 = v1[87];
    v118 = v1[86];
    if (v112)
    {
      v257 = v11;
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_2531F8000, v110, v111, "Did not find HMDZone as part of the zone updated notification", v119, 2u);
      MEMORY[0x259C040E0](v119, -1, -1);

      v257(v113, v115);
    }

    else
    {

      v11(v113, v115);
    }

    (*(v117 + 8))(v116, v118);
    goto LABEL_55;
  }

  v12 = v1[90];
  v13 = v1[66];
  v1[102] = v13;
  v14 = sub_253CCFD48();
  v256 = v11;
  if (!v14)
  {
LABEL_59:
    *(v1 + 18) = 0u;
    *(v1 + 19) = 0u;
    goto LABEL_60;
  }

  v15 = v14;
  v1[58] = sub_253CD0968();
  v1[59] = v16;
  sub_253CD0F58();
  if (!*(v15 + 16) || (v17 = sub_253217D40((v1 + 2)), (v18 & 1) == 0))
  {

    sub_253205FA4((v1 + 2));
    goto LABEL_59;
  }

  sub_253205FF8(*(v15 + 56) + 32 * v17, (v1 + 36));
  sub_253205FA4((v1 + 2));

  if (!v1[39])
  {
LABEL_60:
    sub_253206054((v1 + 36), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_61:
    v133 = v1[94];
    v134 = v1[90];
    v135 = v1[88];
    v136 = v1[87];
    v137 = v1[86];
    sub_253211D58(v1[72], &off_2864FBEC8);
    (*(v136 + 16))(v135, v134, v137);
    v138 = sub_253CD07C8();
    v139 = sub_253CD0C98();
    v140 = os_log_type_enabled(v138, v139);
    v141 = v1[94];
    v248 = v1[92];
    v253 = v1[91];
    v142 = v1[90];
    v143 = v1[88];
    v144 = v1[87];
    v145 = v1[86];
    if (v140)
    {
      v237 = v1[90];
      v146 = v1 + 67;
      v246 = v13;
      v147 = swift_slowAlloc();
      v240 = v1;
      v148 = swift_slowAlloc();
      v259 = v148;
      *v147 = 136315138;
      *v146 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v149 = sub_253CD0DB8();
      v151 = v150;
      v152 = *(v144 + 8);
      v152(v143);

      v153 = sub_253277BA8(v149, v151, &v259);

      *(v147 + 4) = v153;
      _os_log_impl(&dword_2531F8000, v138, v139, "Did not find list of rooms as part of the zone updated notification %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);
      v154 = v148;
      v1 = v240;
      MEMORY[0x259C040E0](v154, -1, -1);
      MEMORY[0x259C040E0](v147, -1, -1);

      v256(v141, v253);
      (v152)(v237, v145);
    }

    else
    {

      v155 = *(v144 + 8);
      v155(v143, v145);
      v256(v141, v253);
      v155(v142, v145);
    }

    goto LABEL_55;
  }

  sub_253200644(0, &qword_27F5A39B8, 0x277CBEB98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  v19 = v1[90];
  v20 = v1[68];
  v1[103] = v20;
  v21 = sub_253CCFD48();
  v243 = v13;
  if (!v21)
  {
LABEL_65:
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
    goto LABEL_66;
  }

  v22 = v21;
  v23 = *MEMORY[0x277CD0640];
  v1[60] = sub_253CD0968();
  v1[61] = v24;
  sub_253CD0F58();
  if (!*(v22 + 16) || (v25 = sub_253217D40((v1 + 7)), (v26 & 1) == 0))
  {

    sub_253205FA4((v1 + 7));
    goto LABEL_65;
  }

  sub_253205FF8(*(v22 + 56) + 32 * v25, (v1 + 40));
  sub_253205FA4((v1 + 7));

  if (!v1[43])
  {
LABEL_66:
    sub_253206054((v1 + 40), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_67:
    v156 = v1[95];
    v157 = v1[90];
    v158 = v1[89];
    v159 = v1[87];
    v160 = v1[86];
    sub_253211D58(v1[72], &off_2864FBEC8);
    (*(v159 + 16))(v158, v157, v160);
    v161 = sub_253CD07C8();
    v162 = sub_253CD0C98();
    v163 = os_log_type_enabled(v161, v162);
    v164 = v1[95];
    v249 = v1[92];
    v254 = v1[91];
    v165 = v1[90];
    v166 = v1[89];
    v167 = v1[87];
    v168 = v1[86];
    if (v163)
    {
      v234 = v1[95];
      v169 = v1 + 69;
      v241 = v1;
      v170 = swift_slowAlloc();
      v229 = v168;
      v171 = swift_slowAlloc();
      v259 = v171;
      *v170 = 136315138;
      *v169 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v172 = sub_253CD0DB8();
      v174 = v173;
      v175 = *(v167 + 8);
      v175(v166, v229);

      v176 = sub_253277BA8(v172, v174, &v259);

      *(v170 + 4) = v176;
      _os_log_impl(&dword_2531F8000, v161, v162, "Did not find homeUUID as part of the zone updated notification %s", v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v171);
      MEMORY[0x259C040E0](v171, -1, -1);
      v177 = v170;
      v1 = v241;
      MEMORY[0x259C040E0](v177, -1, -1);

      v256(v234, v254);
      v175(v165, v229);
    }

    else
    {

      v178 = *(v167 + 8);
      v178(v166, v168);
      v256(v164, v254);
      v178(v165, v168);
    }

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  v235 = v20;
  v27 = v1[85];
  v29 = v1[62];
  v28 = v1[63];
  v224 = v1[71];
  v30 = __swift_project_boxed_opaque_existential_0((v224 + 112), *(v224 + 136));
  sub_2532074E4((v30 + 1), (v1 + 12));
  v31 = *__swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  sub_253CCFEF8();
  v32 = sub_253CCFF58();
  v33 = *(v32 - 8);
  v227 = v32;
  v232 = *(v33 + 48);
  v34 = v232(v27, 1);
  v35 = 0;
  if (v34 != 1)
  {
    v36 = v1[85];
    v35 = sub_253CCFF18();
    (*(v33 + 8))(v36, v227);
  }

  v37 = [v31 _homeWithUUID_];
  v1[104] = v37;

  v230 = v37;
  if (!v37)
  {
    v179 = v1[96];
    sub_253211D58(v1[72], &off_2864FBEC8);

    v180 = sub_253CD07C8();
    v181 = sub_253CD0C78();

    v182 = os_log_type_enabled(v180, v181);
    v183 = v1[96];
    v184 = v1[92];
    v185 = v1[91];
    v186 = v1[90];
    v187 = v1[87];
    v255 = v1[86];
    if (v182)
    {
      v242 = v1;
      v188 = swift_slowAlloc();
      v250 = v186;
      v189 = swift_slowAlloc();
      v259 = v189;
      *v188 = 136315138;
      v190 = sub_253277BA8(v29, v28, &v259);

      *(v188 + 4) = v190;
      _os_log_impl(&dword_2531F8000, v180, v181, "Could not find the home with UUID %s", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v189);
      MEMORY[0x259C040E0](v189, -1, -1);
      v191 = v188;
      v1 = v242;
      MEMORY[0x259C040E0](v191, -1, -1);

      v256(v183, v185);
      (*(v187 + 8))(v250, v255);
    }

    else
    {

      v256(v183, v185);
      (*(v187 + 8))(v186, v255);
    }

    goto LABEL_55;
  }

  v38 = v1[83];

  sub_253CD0D68();
  sub_253CCFE48();
  if (!v1[47])
  {
    v39 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v251 = v1[92] + 8;
  v39 = MEMORY[0x277D84F90];
  v225 = (v33 + 8);
  v40 = v1[76];
  v221 = v40;
  v222 = v1[77];
  v244 = *MEMORY[0x277D0F1A8];
  v41 = v227;
  do
  {
    v223 = v39;
    while (1)
    {
      sub_2531FF150(v1 + 22, v1 + 24);
      if (!swift_dynamicCast())
      {
        v51 = v1[97];
        sub_253211D58(v1[72], &off_2864FBEC8);
        v52 = sub_253CD07C8();
        v53 = sub_253CD0C98();
        v54 = os_log_type_enabled(v52, v53);
        v55 = v1[97];
        v56 = v1[91];
        if (v54)
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_2531F8000, v52, v53, "Could not convert affected room UUID string", v57, 2u);
          MEMORY[0x259C040E0](v57, -1, -1);
        }

        v42 = v55;
        v43 = v56;
        goto LABEL_22;
      }

      v45 = v1[84];
      v46 = v1[64];
      v47 = v1;
      v48 = v1[65];
      sub_253CCFEF8();
      v49 = v47;
      if ((v232)(v45, 1, v41) == 1)
      {
        v50 = 0;
      }

      else
      {
        v58 = v47[84];
        v50 = sub_253CCFF18();
        (*v225)(v58, v41);
      }

      v59 = [v230 roomWithUUID_];

      if (!v59)
      {
        v79 = v47[98];
        sub_253211D58(v47[72], &off_2864FBEC8);

        v80 = sub_253CD07C8();
        v81 = sub_253CD0C98();

        v82 = os_log_type_enabled(v80, v81);
        v83 = v47[98];
        v84 = v47[91];
        if (v82)
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v259 = v86;
          *v85 = 136315138;
          v87 = sub_253277BA8(v46, v48, &v259);

          *(v85 + 4) = v87;
          _os_log_impl(&dword_2531F8000, v80, v81, "Could not find room with UUID %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x259C040E0](v86, -1, -1);
          v88 = v85;
          v41 = v227;
          MEMORY[0x259C040E0](v88, -1, -1);
        }

        else
        {
        }

        v256(v83, v84);
        v1 = v49;
        goto LABEL_23;
      }

      v60 = [v59 home];
      if (v60)
      {
        break;
      }

      v61 = v47[100];
      v62 = v47[76];
      sub_253CD0968();
      off_2864FBAC8();
      sub_253CD07D8();
      v63 = v59;
      v64 = sub_253CD07C8();
      v65 = sub_253CD0C98();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138412290;
        *(v66 + 4) = v63;
        *v67 = v59;
        v68 = v63;
        _os_log_impl(&dword_2531F8000, v64, v65, "room %@ has no home", v66, 0xCu);
        sub_253206054(v67, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v67, -1, -1);
        MEMORY[0x259C040E0](v66, -1, -1);
      }

      v69 = v47[100];
      v70 = v47[99];
      v71 = v47[91];
      v72 = v47[72];

      v256(v69, v71);
      sub_253211D58(v72, &off_2864FBEC8);
      v73 = v63;
      v74 = sub_253CD07C8();
      v75 = sub_253CD0C98();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        *(v76 + 4) = v73;
        *v77 = v59;
        v78 = v73;
        _os_log_impl(&dword_2531F8000, v74, v75, "Unable to create RoomEntity for %@", v76, 0xCu);
        sub_253206054(v77, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v77, -1, -1);
        MEMORY[0x259C040E0](v76, -1, -1);
        v73 = v74;
        v74 = v78;
      }

      v41 = v227;

      v1 = v47;
      v42 = v47[99];
      v43 = v47[91];
LABEL_22:
      v256(v42, v43);
LABEL_23:
      v44 = v1[83];
      sub_253CCFE48();
      if (!v1[47])
      {
        v39 = v223;
        goto LABEL_74;
      }
    }

    v89 = v60;
    v220 = v59;
    v90 = [v220 urlString];
    if (v90)
    {
      v91 = v90;
      v92 = sub_253CD0968();
      v94 = v93;
    }

    else
    {
      v92 = 0;
      v94 = 0;
    }

    v95 = v47[80];
    v96 = v47[79];
    v238 = v47;
    v219 = v47[78];
    v97 = (v96 + *(v221 + 20));
    *v97 = v92;
    v97[1] = v94;
    v98 = [v220 spiClientIdentifier];
    sub_253CCFF38();

    v99 = [v220 name];
    v100 = sub_253CD0968();
    v102 = v101;

    v103 = (v96 + *(v221 + 24));
    *v103 = v100;
    v103[1] = v102;
    sub_253267F28(v96, v95, type metadata accessor for RoomEntity);
    sub_253267EC0(v95, v219, type metadata accessor for RoomEntity);
    v39 = v223;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_253283938(0, v223[2] + 1, 1, v223);
    }

    v105 = v39[2];
    v104 = v39[3];
    v1 = v238;
    if (v105 >= v104 >> 1)
    {
      v39 = sub_253283938(v104 > 1, v105 + 1, 1, v39);
    }

    v106 = v238[83];
    v107 = v238[80];
    v108 = v238[78];

    sub_253267E60(v107, type metadata accessor for RoomEntity);
    v39[2] = v105 + 1;
    sub_253267F28(v108, v39 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v105, type metadata accessor for RoomEntity);
    sub_253CCFE48();
  }

  while (v238[47]);
LABEL_74:
  v1[105] = v39;
  (*(v1[82] + 8))(v1[83], v1[81]);
  v192 = __swift_project_boxed_opaque_existential_0((v224 + 112), *(v224 + 136))[6];
  v1[106] = v192;
  v193 = *(v192 + 16);
  v1[107] = v193;
  if (v193)
  {
    v1[108] = 0;
    v194 = v1[102];

    sub_2532074E4(v195 + 32, (v1 + 17));
    v196 = __swift_project_boxed_opaque_existential_0(v1 + 17, v1[20]);
    v197 = [v194 urlString];
    if (v197)
    {
      v198 = v197;
      v199 = sub_253CD0968();
      v201 = v200;
    }

    else
    {
      v199 = 0;
      v201 = 0;
    }

    v208 = v1[102];
    v209 = v1[75];
    v210 = v1[74];
    *v209 = v199;
    v209[1] = v201;
    v211 = [v208 spiClientIdentifier];
    v212 = v209 + *(v210 + 20);
    sub_253CCFF38();

    v213 = [v208 name];
    v214 = sub_253CD0968();
    v216 = v215;

    v217 = (v209 + *(v210 + 24));
    *v217 = v214;
    v217[1] = v216;
    sub_253267E60(v209, type metadata accessor for ZoneEntity);
    v218 = *v196;
    v1[109] = *v196;

    return MEMORY[0x2822009F8](sub_253262284, v218, 0);
  }

  v202 = v1[105];
  v203 = v1[104];
  v204 = v1[103];
  v205 = v1[90];
  v206 = v1[87];
  v207 = v1[86];

  (*(v206 + 8))(v205, v207);

LABEL_55:
  v120 = v1[101];
  v121 = v1[100];
  v122 = v1;
  v123 = v1[99];
  v124 = v122[98];
  v125 = v122[97];
  v126 = v122[96];
  v127 = v122[95];
  v128 = v122[94];
  v129 = v122[93];
  v130 = v122[90];
  v226 = v122[89];
  v228 = v122[88];
  v231 = v122[85];
  v233 = v122[84];
  v236 = v122[83];
  v239 = v122[80];
  v245 = v122[79];
  v247 = v122[78];
  v252 = v122[75];
  v258 = v122[73];

  v131 = v122[1];

  return v131();
}