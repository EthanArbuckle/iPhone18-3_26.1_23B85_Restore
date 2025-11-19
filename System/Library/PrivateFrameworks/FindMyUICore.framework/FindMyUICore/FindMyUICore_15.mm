uint64_t sub_24B17EFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_24B2D3184();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_24B2D24A4();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B17F0FC, a4, 0);
}

uint64_t sub_24B17F0FC()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_24B2D2494();
  v3 = *(v1 + 128);
  v0[8] = v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_24B17F204;

  return v6(v0 + 8);
}

uint64_t sub_24B17F204(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  v5 = *(v4 + 80);
  if (v1)
  {
    v6 = sub_24B17F3F0;
  }

  else
  {
    *(v4 + 160) = a1;
    v6 = sub_24B17F330;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B17F330()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24B17FD48(v0[20], MEMORY[0x277D84FA0], v1);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B17F3F0()
{
  v27 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v6 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v6, v3);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 104);
    v25 = *(v0 + 112);
    v23 = *(v0 + 152);
    v24 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2DC570, &v26);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleProvider: %s - fetchError - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B17F6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v55 = a1;
  v5 = type metadata accessor for ContactsProvider.ContactState(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = sub_24B2D3184();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s12ContactStateV7RequestVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  v59 = sub_24B2D24A4();
  v19 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v54 = &v49 - v23;
  v50 = v3;
  v24 = v3 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = *(v25 + 16);
  v57 = a2;
  if (v26)
  {

    v27 = sub_24B181540(a2);
    if (v28)
    {
      sub_24B183364(*(v25 + 56) + *(v6 + 72) * v27, v18, type metadata accessor for ContactsProvider.ContactState);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 1;
  }

  (*(v6 + 56))(v18, v29, 1, v5);
  if ((*(v6 + 48))(v18, 1, v5))
  {
    sub_24AFF8258(v18, &qword_27EFCDB50);
    v30 = v58;
    v31 = v59;
LABEL_13:
    (*(v19 + 16))(v10, v30, v31);
    sub_24B008890(v55, &v10[*(v5 + 20)], &qword_27EFCB688);
    swift_beginAccess();
    v46 = *(v24 + 24);
    v47 = v56;
    sub_24B1832FC(v10, v56, type metadata accessor for ContactsProvider.ContactState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v46;
    sub_24B1CA064(v47, v57, isUniquelyReferenced_nonNull_native);
    *(v24 + 24) = v60;
    sub_24B1D4698(v46);
    swift_endAccess();
  }

  sub_24B183364(v18, v15, _s12ContactStateV7RequestVMa);
  sub_24AFF8258(v18, &qword_27EFCDB50);
  v32 = *(v19 + 32);
  v31 = v59;
  v32(v21, v15, v59);
  v33 = v54;
  v32(v54, v21, v31);
  v34 = v58;
  if ((sub_24B2D23C4() & 1) == 0)
  {
    (*(v19 + 8))(v33, v31);
    v30 = v34;
    goto LABEL_13;
  }

  v35 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  v36 = v50;
  swift_beginAccess();
  v38 = v51;
  v37 = v52;
  v39 = v53;
  (*(v52 + 16))(v51, v36 + v35, v53);
  v40 = sub_24B2D3164();
  v41 = sub_24B2D5934();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = v31;
    v44 = swift_slowAlloc();
    v60 = v44;
    *v42 = 136315138;
    *(v42 + 4) = sub_24AFF321C(0xD00000000000001FLL, 0x800000024B2DC590, &v60);
    _os_log_impl(&dword_24AFD2000, v40, v41, "PeopleProvider: %s - Skipping due to older timestamp", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x24C23D530](v44, -1, -1);
    MEMORY[0x24C23D530](v42, -1, -1);

    (*(v37 + 8))(v38, v39);
    return (*(v19 + 8))(v54, v43);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
    return (*(v19 + 8))(v54, v31);
  }
}

void sub_24B17FD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v64 - v6;
  v81 = sub_24B2D1494();
  v7 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactsProvider.Subscription(0);
  v75 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBB8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  if (*(a1 + 16) || *(a2 + 16))
  {
    v65 = v11;
    v66 = a2;
    v20 = a1;
    v21 = *(a1 + 64);
    v67 = a1 + 64;
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v25 = (v22 + 63) >> 6;
    v69 = v7 + 16;
    v72 = v7;
    v26 = (v7 + 56);
    v27 = (v7 + 32);
    v76 = v26;
    v74 = v20;

    v28 = 0;
    v70 = v19;
    v71 = v16;
    v68 = v27;
    if (v24)
    {
      while (1)
      {
        v29 = v28;
LABEL_14:
        v32 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v33 = v32 | (v29 << 6);
        v34 = v74;
        v35 = v80;
        sub_24B183364(*(v74 + 48) + *(v75 + 72) * v33, v80, type metadata accessor for ContactsProvider.Subscription);
        v37 = v72;
        v36 = v73;
        v38 = *(v34 + 56) + *(v72 + 72) * v33;
        v39 = v81;
        (*(v72 + 16))(v73, v38, v81);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0);
        v41 = *(v40 + 48);
        v42 = v35;
        v16 = v71;
        sub_24B1832FC(v42, v71, type metadata accessor for ContactsProvider.Subscription);
        v43 = v39;
        v27 = v68;
        (*(v37 + 32))(&v16[v41], v36, v43);
        (*(*(v40 - 8) + 56))(v16, 0, 1, v40);
        v31 = v29;
        v19 = v70;
LABEL_15:
        sub_24B182F1C(v16, v19);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0);
        if ((*(*(v44 - 8) + 48))(v19, 1, v44) == 1)
        {
          break;
        }

        v45 = *(v44 + 48);
        v46 = v80;
        sub_24B1832FC(v19, v80, type metadata accessor for ContactsProvider.Subscription);
        v47 = &v19[v45];
        v48 = v77;
        v49 = v81;
        (*v27)(v77, v47, v81);
        (*v76)(v48, 0, 1, v49);
        sub_24B17F6E0(v48, v46, v78);
        sub_24AFF8258(v48, &qword_27EFCB688);
        sub_24B1830FC(v46, type metadata accessor for ContactsProvider.Subscription);
        v28 = v31;
        if (!v24)
        {
          goto LABEL_7;
        }
      }

      v51 = v66;
      v52 = v66 + 56;
      v53 = 1 << *(v66 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v66 + 56);
      v56 = (v53 + 63) >> 6;

      v57 = 0;
      v58 = v65;
      v59 = v77;
      while (v55)
      {
        v60 = v57;
LABEL_27:
        v61 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        sub_24B183364(*(v51 + 48) + *(v75 + 72) * (v61 | (v60 << 6)), v58, type metadata accessor for ContactsProvider.Subscription);
        (*v76)(v59, 1, 1, v81);
        sub_24B17F6E0(v59, v58, v78);
        sub_24B1830FC(v58, type metadata accessor for ContactsProvider.Subscription);
        sub_24AFF8258(v59, &qword_27EFCB688);
      }

      while (1)
      {
        v60 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        if (v60 >= v56)
        {

          v62 = v79 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage;
          swift_beginAccess();
          v63 = *(v62 + 16);
          *(v62 + 16) = 1;
          sub_24B1F422C(v63);
          swift_endAccess();
          return;
        }

        v55 = *(v52 + 8 * v60);
        ++v57;
        if (v55)
        {
          v57 = v60;
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_7:
      if (v25 <= v28 + 1)
      {
        v30 = v28 + 1;
      }

      else
      {
        v30 = v25;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v25)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC0);
          (*(*(v50 - 8) + 56))(v16, 1, 1, v50);
          v24 = 0;
          goto LABEL_15;
        }

        v24 = *(v67 + 8 * v29);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_24B180434(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1804D4, v2, 0);
}

uint64_t sub_24B1804D4()
{
  if (*(v0 + 48) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_24B1806A4;

    return sub_24B17D404();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_24B2D56D4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v3;
    v8[5] = v5;
    swift_retain_n();

    sub_24B00A9A4(0, 0, v4, &unk_24B2EEEC0, v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B1806A4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_24B1807F0, v6, 0);
  }
}

uint64_t sub_24B1807F0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  v6[5] = v3;
  swift_retain_n();

  sub_24B00A9A4(0, 0, v2, &unk_24B2EEEC0, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B180944(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B180968, v2, 0);
}

uint64_t sub_24B180968()
{
  if (*(v0 + 24) == 1)
  {
    sub_24B17EF28();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContactsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage, &qword_27EFCDB48);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ContactsProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage, &qword_27EFCDB48);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B180B74(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B180C14, v2, 0);
}

uint64_t sub_24B180C14()
{
  if (*(v0 + 48) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_24B180DE4;

    return sub_24B17D404();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_24B2D56D4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v3;
    v8[5] = v5;
    swift_retain_n();

    sub_24B00A9A4(0, 0, v4, &unk_24B2EF010, v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24B180DE4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_24B180F30, v6, 0);
  }
}

uint64_t sub_24B180F30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_24B18315C(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  v6[5] = v3;
  swift_retain_n();

  sub_24B00A9A4(0, 0, v2, &unk_24B2EF010, v6);

  v7 = v0[1];

  return v7();
}

unint64_t sub_24B1810E4(unsigned __int8 a1)
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](a1);
  v2 = sub_24B2D6124();

  return sub_24B181B9C(a1, v2);
}

unint64_t sub_24B181150(uint64_t a1)
{
  sub_24B2D1704();
  v2 = MEMORY[0x277D08BF8];
  sub_24B18315C(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  v3 = sub_24B2D5244();
  return sub_24B181C0C(a1, v3, MEMORY[0x277D08BF8], &qword_27EFC7E90, v2, MEMORY[0x277D08C10]);
}

unint64_t sub_24B181224(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D2504();
  sub_24B18315C(&qword_27EFC8298, MEMORY[0x277CC95F0]);
  sub_24B2D5254();
  v2 = sub_24B2D6124();
  return sub_24B181DAC(a1, v2, type metadata accessor for RepositorySubscriber, type metadata accessor for RepositorySubscriber, MEMORY[0x277CC95E0], type metadata accessor for RepositorySubscriber);
}

unint64_t sub_24B181324(uint64_t a1, uint64_t a2)
{
  sub_24B2D60E4();
  sub_24B2D5404();
  v4 = sub_24B2D6124();
  return sub_24B0542B0(a1, a2, v4);
}

unint64_t sub_24B181398(uint64_t a1)
{
  sub_24B2D2504();
  v2 = MEMORY[0x277CC95F0];
  sub_24B18315C(&qword_27EFC8298, MEMORY[0x277CC95F0]);
  v3 = sub_24B2D5244();
  return sub_24B181C0C(a1, v3, MEMORY[0x277CC95F0], &qword_27EFCDBD8, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_24B18146C(uint64_t a1)
{
  sub_24B2D1574();
  v2 = MEMORY[0x277D08B50];
  sub_24B18315C(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  v3 = sub_24B2D5244();
  return sub_24B181C0C(a1, v3, MEMORY[0x277D08B50], &qword_27EFCC6C8, v2, MEMORY[0x277D08B60]);
}

unint64_t sub_24B181540(uint64_t a1)
{
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)();
  v2 = sub_24B2D6124();
  return sub_24B181DAC(a1, v2, type metadata accessor for ContactsProvider.Subscription, type metadata accessor for ContactsProvider.Subscription, _s12FindMyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0, type metadata accessor for ContactsProvider.Subscription);
}

unint64_t sub_24B1815F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24B2D60E4();
  sub_24B2D5404();
  sub_24B2D5404();
  v8 = sub_24B2D6124();

  return sub_24B181F08(a1, a2, a3, a4, v8);
}

unint64_t sub_24B181698(uint64_t a1)
{
  sub_24B2D1DA4();
  v2 = MEMORY[0x277D08E20];
  sub_24B18315C(&qword_27EFCC630, MEMORY[0x277D08E20]);
  v3 = sub_24B2D5244();
  return sub_24B181C0C(a1, v3, MEMORY[0x277D08E20], &qword_27EFCDBD0, v2, MEMORY[0x277D08E38]);
}

unint64_t sub_24B18176C(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B18315C(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  v2 = sub_24B2D6124();
  return sub_24B181DAC(a1, v2, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier, MEMORY[0x277D08BD8], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
}

unint64_t sub_24B18186C(uint64_t a1)
{
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsContactsProvider.Subscription();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B183364(a1, v8, type metadata accessor for SettingsContactsProvider.Subscription);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C23C8D0](0);
    sub_24B18315C(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_24B2D6124();
  return sub_24B182008(a1, v9);
}

unint64_t sub_24B181A88(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B18315C(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  sub_24B2D5404();
  v2 = sub_24B2D6124();

  return sub_24B182520(a1, v2);
}

unint64_t sub_24B181B58(uint64_t a1)
{
  v2 = sub_24B2D5BA4();

  return sub_24B1826D0(a1, v2);
}

unint64_t sub_24B181B9C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24B181C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_24B18315C(v23, v24);
      v19 = sub_24B2D52A4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_24B181DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t), uint64_t (*a6)(void))
{
  v22 = a6;
  v11 = a3(0) - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = -1 << *(v6 + 32);
  v16 = a2 & ~v15;
  if ((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v12 + 72);
    do
    {
      sub_24B183364(*(v6 + 48) + v18 * v16, v14, a4);
      v19 = a5(v14, a1);
      sub_24B1830FC(v14, v22);
      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

unint64_t sub_24B181F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_24B2D6004() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_24B2D6004() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_24B182008(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v40 = sub_24B2D1704();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for SettingsContactsProvider.Subscription();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v46 = v2;
  v18 = -1 << *(v2 + 32);
  v19 = a2 & ~v18;
  v44 = v2 + 64;
  if (((*(v2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return v19;
  }

  v20 = *(v15 + 72);
  v42 = ~v18;
  v43 = v20;
  v36 = (v4 + 32);
  v39 = (v4 + 8);
  v21 = v41;
  while (1)
  {
    sub_24B183364(*(v46 + 48) + v43 * v19, v17, type metadata accessor for SettingsContactsProvider.Subscription);
    v22 = &v8[*(v6 + 48)];
    sub_24B183364(v17, v8, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B183364(v45, v22, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_24B183364(v8, v21, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v6;
      v30 = v37;
      v31 = v40;
      (*v36)(v37, v22, v40);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v32 = *v39;
      v33 = v30;
      v6 = v29;
      v21 = v41;
      (*v39)(v33, v31);
      sub_24B1830FC(v17, type metadata accessor for SettingsContactsProvider.Subscription);
      v32(v21, v31);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    sub_24B1830FC(v17, type metadata accessor for SettingsContactsProvider.Subscription);
    (*v39)(v21, v40);
LABEL_4:
    sub_24AFF8258(v8, &qword_27EFCDBC8);
LABEL_5:
    v19 = (v19 + 1) & v42;
    if (((*(v44 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return v19;
    }
  }

  sub_24B183364(v8, v12, type metadata accessor for SettingsContactsProvider.Subscription);
  v24 = *v12;
  v23 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B1830FC(v17, type metadata accessor for SettingsContactsProvider.Subscription);

    goto LABEL_4;
  }

  v25 = *v22;
  v26 = *(v22 + 1);
  if (v24 != v25 || v23 != v26)
  {
    v28 = sub_24B2D6004();

    sub_24B1830FC(v17, type metadata accessor for SettingsContactsProvider.Subscription);
    if (v28)
    {
      goto LABEL_20;
    }

LABEL_16:
    sub_24B1830FC(v8, type metadata accessor for SettingsContactsProvider.Subscription);
    goto LABEL_5;
  }

  sub_24B1830FC(v17, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_20:
  sub_24B1830FC(v8, type metadata accessor for SettingsContactsProvider.Subscription);
  return v19;
}

unint64_t sub_24B182520(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_24B183364(*(v2 + 48) + v12 * v10, v8, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      if (_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0())
      {
        v13 = *(v5 + 20);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (sub_24B2D6004() & 1) != 0)
        {
          break;
        }
      }

      sub_24B1830FC(v8, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_24B1830FC(v8, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
  }

  return v10;
}

unint64_t sub_24B1826D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24B18304C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C23C390](v9, a1);
      sub_24B1830A8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t type metadata accessor for ContactsProvider()
{
  result = qword_27EFCDBA0;
  if (!qword_27EFCDBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1827E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B17EFDC(a1, v4, v5, v7, v6);
}

uint64_t sub_24B1828A4(uint64_t a1)
{
  *(a1 + 8) = sub_24B18315C(&qword_27EFCDB70, type metadata accessor for ContactsProvider);
  result = sub_24B18315C(&qword_27EFCDB78, type metadata accessor for ContactsProvider);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B182980()
{
  result = qword_27EFCDB88;
  if (!qword_27EFCDB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDB90);
    sub_24B18315C(&qword_27EFCDB98, type metadata accessor for ContactsProvider.ContactState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDB88);
  }

  return result;
}

void sub_24B182A3C()
{
  sub_24B182E88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ContactsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 256) + **(*v2 + 256));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ContactsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 264) + **(*v2 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return v8(a1, a2);
}

void sub_24B182E88()
{
  if (!qword_27EFCDBB0)
  {
    type metadata accessor for ContactsProvider.Subscription(255);
    sub_24B18315C(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
    v0 = type metadata accessor for SubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCDBB0);
    }
  }
}

uint64_t sub_24B182F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B182F8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B17EFDC(a1, v4, v5, v7, v6);
}

uint64_t sub_24B1830FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B18315C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B1831A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B17DB6C(a1, v4, v5, (v1 + 4), v6);
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

uint64_t objectdestroyTm_22()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B1832FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B183364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *ContactsProvider.Dependencies.init<A>(createPlaceholderContact:fetchContacts:observeContactsChanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  result = swift_allocObject();
  result[2] = a7;
  result[3] = a8;
  result[4] = a5;
  result[5] = a6;
  a9[4] = &unk_24B2EF050;
  a9[5] = result;
  return result;
}

uint64_t sub_24B183450(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *(a4 - 8);
  v7 = swift_task_alloc();
  v5[6] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_24B1835A8;

  return v10(v7);
}

uint64_t sub_24B1835A8()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);
    v7 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v7 + 24) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v10);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_24B1836FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B183450(a1, v7, v6, v4, v5);
}

uint64_t sub_24B1837D8(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBF8);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_24B183944;

  return v8(v5);
}

uint64_t sub_24B183944()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];
    v7[3] = v8;
    v7[4] = sub_24B185260();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v8);
  }

  v4 = v3[1];

  return v4();
}

uint64_t static ContactsProvider.Dependencies.live()@<X0>(uint64_t (**a1)()@<X8>)
{
  v30 = a1;
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v23 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v24 = &v23 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  sub_24B2D3174();
  v27 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v12 = *(v2 + 16);
  v25 = v11;
  v12(v8, v11, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v26 = swift_allocObject();
  v14 = *(v2 + 32);
  v14(v26 + v13, v24, v1);
  v15 = v28;
  v12(v28, v11, v1);
  v16 = swift_allocObject();
  v14(v16 + v13, v15, v1);
  *(v16 + ((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v17 = v29;
  v14(v29, v25, v1);
  v18 = swift_allocObject();
  v14(v18 + v13, v17, v1);
  v19 = v30;
  v20 = v26;
  *v30 = sub_24B183EAC;
  v19[1] = v20;
  v19[2] = &unk_24B2EF0A0;
  v19[3] = v16;
  v21 = v19;
  result = swift_allocObject();
  *(result + 16) = &unk_24B2EF0B0;
  *(result + 24) = v18;
  v21[4] = &unk_24B2EF0C0;
  v21[5] = result;
  return result;
}

uint64_t sub_24B183D94()
{
  v0 = sub_24B2D3164();
  v1 = sub_24B2D5934();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v5);
    _os_log_impl(&dword_24AFD2000, v0, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C23D530](v3, -1, -1);
    MEMORY[0x24C23D530](v2, -1, -1);
  }

  sub_24B186964();

  return sub_24B2D14A4();
}

uint64_t sub_24B183EAC()
{
  sub_24B2D3184();

  return sub_24B183D94();
}

uint64_t sub_24B183F2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = sub_24B2D1494();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_24B2D15F4();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for ContactsProvider.Subscription(0);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  v3[19] = v8;
  v3[20] = v9;

  return MEMORY[0x2822009F8](sub_24B1840F4, 0, 0);
}

unint64_t sub_24B1840F4()
{
  v99 = v0;

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v98[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, v98);
    *(v4 + 12) = 2080;
    v0[2] = v3;

    v6 = sub_24B2D53C4();
    v8 = sub_24AFF321C(v6, v7, v98);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AFD2000, v1, v2, "%s - options: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v9 = v0[20];
  v96 = v0[15];
  v10 = v0[12];
  v11 = v0[6];
  v12 = sub_24B19432C(MEMORY[0x277D84F90]);
  v13 = v9 + 56;
  v14 = -1;
  v15 = -1 << *(v9 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v9 + 56);
  v17 = (63 - v15) >> 6;
  v94 = (v10 + 32);
  v95 = v12;
  v92 = (v11 + 32);
  v93 = (v10 + 8);
  v91 = v11;
  v97 = v9;

  v18 = 0;
  while (v16)
  {
LABEL_12:
    v21 = v0[18];
    v20 = v0[19];
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(v96 + 72);
    sub_24B185ECC(*(v97 + 48) + v23 * (v22 | (v18 << 6)), v20);
    sub_24B185ECC(v20, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v26 = sub_24B2D1624();

      v27 = v0[19];
      if (v26)
      {
        v28 = v0[16];
        v29 = v0[8];
        v83 = v0[7];
        v87 = v0[5];
        sub_24B185ECC(v27, v28);
        v30 = v26;
        sub_24B2D14A4();
        v31 = v83;
        v84 = *v92;
        (*v92)(v31, v29, v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98[0] = v95;
        result = sub_24B181540(v28);
        v35 = v95;
        v36 = v95[2];
        v37 = (v34 & 1) == 0;
        v38 = __OFADD__(v36, v37);
        v39 = v36 + v37;
        if (v38)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          return result;
        }

        v40 = v34;
        v81 = v30;
        if (v95[3] >= v39)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = result;
            sub_24B1CDA88();
            result = v76;
            v35 = v98[0];
          }
        }

        else
        {
          v41 = v0[16];
          sub_24B1C4A10(v39, isUniquelyReferenced_nonNull_native);
          v42 = v98[0];
          result = sub_24B181540(v41);
          if ((v40 & 1) != (v43 & 1))
          {
            goto LABEL_43;
          }

          v35 = v42;
        }

        v89 = v0[19];
        v63 = v0[16];
        v64 = v0[7];
        v65 = v0[5];
        v95 = v35;
        if (v40)
        {
          (*(v91 + 40))(*(v35 + 56) + *(v91 + 72) * result, v64, v65);

          sub_24B185F30(v63);
          sub_24B185F30(v89);
        }

        else
        {
          *(v35 + 8 * (result >> 6) + 64) |= 1 << result;
          v66 = result;
          sub_24B185ECC(v63, *(v35 + 48) + result * v23);
          v84(v95[7] + *(v91 + 72) * v66, v64, v65);

          sub_24B185F30(v63);
          result = sub_24B185F30(v89);
          v67 = v95[2];
          v38 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (v38)
          {
            goto LABEL_48;
          }

          v95[2] = v68;
        }
      }

      else
      {
        sub_24B185F30(v27);
      }
    }

    else
    {
      v44 = v0[13];
      v45 = v0[11];
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820);
      (*v94)(v44, v25 + *(v46 + 48), v45);
      v47 = sub_24B2D1614();
      v48 = v0[19];
      if (!v47)
      {
        (*v93)(v0[13], v0[11]);
        v69 = v48;
LABEL_19:
        sub_24B185F30(v69);
        goto LABEL_20;
      }

      v49 = v0[17];
      v50 = v0[10];
      v85 = v0[9];
      v88 = v0[5];
      v51 = v47;
      sub_24B185ECC(v48, v49);
      v52 = v51;
      sub_24B2D14A4();
      v79 = *v92;
      (*v92)(v85, v50, v88);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v95;
      result = sub_24B181540(v49);
      v55 = v95;
      v56 = v95[2];
      v57 = (v54 & 1) == 0;
      v38 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v38)
      {
        goto LABEL_47;
      }

      v59 = v54;
      v82 = v52;
      if (v95[3] >= v58)
      {
        if ((v53 & 1) == 0)
        {
          v77 = result;
          sub_24B1CDA88();
          result = v77;
          v55 = v98[0];
        }
      }

      else
      {
        v60 = v0[17];
        sub_24B1C4A10(v58, v53);
        v61 = v98[0];
        result = sub_24B181540(v60);
        if ((v59 & 1) != (v62 & 1))
        {
LABEL_43:

          return sub_24B2D6054();
        }

        v55 = v61;
      }

      v70 = v0[17];
      v86 = v0[13];
      v90 = v0[19];
      v80 = v0[11];
      v71 = v0[9];
      v72 = v0[5];
      v95 = v55;
      if (v59)
      {
        (*(v91 + 40))(*(v55 + 56) + *(v91 + 72) * result, v71, v72);

        sub_24B185F30(v70);
        (*v93)(v86, v80);
        v69 = v90;
        goto LABEL_19;
      }

      *(v55 + 8 * (result >> 6) + 64) |= 1 << result;
      v73 = result;
      sub_24B185ECC(v70, *(v55 + 48) + result * v23);
      v79(v95[7] + *(v91 + 72) * v73, v71, v72);

      sub_24B185F30(v70);
      (*v93)(v86, v80);
      result = sub_24B185F30(v90);
      v74 = v95[2];
      v38 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v38)
      {
        goto LABEL_49;
      }

      v95[2] = v75;
LABEL_20:
      sub_24AFF8258(v0[18], &qword_27EFCC810);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_12;
    }
  }

  v78 = v0[1];

  return v78(v95);
}

uint64_t sub_24B184990(uint64_t *a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B0384BC;

  return sub_24B183F2C(a1, v1 + v5, v6);
}

uint64_t sub_24B184A98(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D3184();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v2[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC08);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC10) - 8);
  v2[12] = v6;
  v2[13] = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B184C78, 0, 0);
}

uint64_t sub_24B184C78()
{
  v27 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v26 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v26);
    _os_log_impl(&dword_24AFD2000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v22 = v0[7];
  v23 = v0[14];
  v24 = v0[6];
  v25 = v0[12];
  v10 = v0[5];
  v20 = v0[3];
  v21 = v0[4];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC18);
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  *(swift_task_alloc() + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC20);
  (*(v6 + 104))(v7, *MEMORY[0x277D85778], v9);
  sub_24B2D5744();

  v12 = [objc_opt_self() defaultCenter];
  v19 = sub_24B2D5A04();

  v13 = sub_24B2D56D4();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v10 + 16))(v22, v20, v21);
  sub_24B185C28(v5, v23);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = (v24 + *(v25 + 80) + v14) & ~*(v25 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v19;
  (*(v10 + 32))(&v16[v14], v22, v21);
  sub_24B185C98(v23, &v16[v15]);
  sub_24B00A9A4(0, 0, v8, &unk_24B2EF0F8, v16);

  sub_24AFF8258(v5, &qword_27EFCDC10);

  v17 = v0[1];

  return v17();
}

uint64_t objectdestroyTm_23()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B1850CC(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFD370;

  return sub_24B184A98(a1, v1 + v5);
}

uint64_t sub_24B1851A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1837D8(a1, v4);
}

unint64_t sub_24B185260()
{
  result = qword_27EFCDC00;
  if (!qword_27EFCDC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDC00);
  }

  return result;
}

uint64_t sub_24B1852C4(uint64_t a1, uint64_t a2)
{
  sub_24AFF8258(a2, &qword_27EFCDC10);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC18);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_24B1853A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC28);
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC10);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFCE7B0);
  v6[10] = swift_task_alloc();
  v7 = sub_24B2D59F4();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B185520, 0, 0);
}

uint64_t sub_24B185520()
{

  sub_24B2D59E4();
  v1 = sub_24B185E74();
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_24B1855E0;
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_24B1855E0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24B185B9C;
  }

  else
  {
    v2 = sub_24B1856F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B185710()
{
  v30 = v0;
  v1 = v0[10];
  v2 = sub_24B2D2034();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    v4 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_24B185C28(v4, v3);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC18);
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = v0[9];
    if (v7 == 1)
    {
      sub_24AFF8258(v0[9], &qword_27EFCDC10);
    }

    else
    {
      sub_24B2D5714();
      (*(v6 + 8))(v8, v5);
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    v9 = sub_24B2D3164();
    v10 = sub_24B2D5934();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v29);
      _os_log_impl(&dword_24AFD2000, v9, v10, "%s - Will yield new external update", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);
    }

    v13 = v0[8];
    sub_24B185C28(v0[6], v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC18);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v13, 1, v14);
    v17 = v0[8];
    if (v16 == 1)
    {
      sub_24AFF8258(v0[8], &qword_27EFCDC10);
      v18 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC40);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_24B2DE430;
      *(v21 + 32) = MEMORY[0x277D84F90];
      *(v21 + 40) = 0;
      v0[3] = v21;
      sub_24B2D5704();
      (*(v15 + 8))(v17, v14);
      v18 = 0;
    }

    v22 = v0[10];
    v23 = v0[7];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC38);
    (*(*(v24 - 8) + 56))(v23, v18, 1, v24);
    sub_24AFF8258(v23, &qword_27EFCDC28);
    sub_24AFF8258(v22, &unk_27EFCE7B0);
    v25 = sub_24B185E74();
    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v26[1] = sub_24B1855E0;
    v27 = v0[10];
    v28 = v0[11];

    return MEMORY[0x282200308](v27, v28, v25);
  }
}

uint64_t sub_24B185B9C()
{
  *(v0 + 16) = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B185C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B185C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B185D08(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24B2D3184() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDC10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AFFD370;

  return sub_24B1853A8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_24B185E74()
{
  result = qword_27EFCDC30;
  if (!qword_27EFCDC30)
  {
    sub_24B2D59F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDC30);
  }

  return result;
}

uint64_t sub_24B185ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsProvider.Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B185F30(uint64_t a1)
{
  v2 = type metadata accessor for ContactsProvider.Subscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersonModel.contactSubscription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24B2D1604();
  if (v3)
  {
    *a1 = v2;
    a1[1] = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820);
    sub_24B2D14D4();
    v4 = sub_24B2D14C4();
    (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    sub_24B2D1724();
  }

  type metadata accessor for ContactsProvider.Subscription(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ContactsProvider.Subscription.liteContact.getter()
{
  sub_24B186964();

  return sub_24B2D14A4();
}

uint64_t ContactsProvider.Subscription.hash(into:)()
{
  v1 = sub_24B2D14C4();
  v22 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24B2D15F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B185ECC(v0, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
    sub_24B187524(v15, v12);
    (*(v4 + 32))(v6, &v15[v17], v3);
    MEMORY[0x24C23C8D0](0);
    sub_24B008890(v12, v10, &qword_27EFCC810);
    v18 = v22;
    v19 = v4;
    if ((*(v22 + 48))(v10, 1, v1) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v20 = v21;
      (*(v18 + 32))(v21, v10, v1);
      sub_24B2D6104();
      sub_24B187594(&qword_27EFCC830, MEMORY[0x277D08B38]);
      sub_24B2D5254();
      (*(v18 + 8))(v20, v1);
    }

    sub_24B187594(&qword_27EFCC740, MEMORY[0x277D08B70]);
    sub_24B2D5254();
    (*(v19 + 8))(v6, v3);
    return sub_24AFF8258(v12, &qword_27EFCC810);
  }
}

uint64_t ContactsProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B1864F8()
{
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B18653C()
{
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)();
  return sub_24B2D6124();
}

unint64_t ContactsProvider.Subscription.debugDescription.getter()
{
  v1 = sub_24B2D15F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B185ECC(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = *(v13 + 1);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_24B2D5C34();

    v26 = 0xD000000000000013;
    v27 = 0x800000024B2DC5D0;
    MEMORY[0x24C23BC10](v14, v15);

    MEMORY[0x24C23BC10](41, 0xE100000000000000);
    return v26;
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
    sub_24B187524(v13, v10);
    (*(v2 + 32))(v4, &v13[v17], v1);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_24B2D5C34();

    v26 = 0xD000000000000015;
    v27 = 0x800000024B2DC5F0;
    sub_24B008890(v10, v7, &qword_27EFCC810);
    v18 = sub_24B2D14C4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_24AFF8258(v7, &qword_27EFCC810);
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v22 = sub_24B2D14B4();
      v20 = v23;
      (*(v19 + 8))(v7, v18);
      v21 = v22;
    }

    MEMORY[0x24C23BC10](v21, v20);

    MEMORY[0x24C23BC10](0x656C646E6168202CLL, 0xEB00000000203A73);
    v24 = sub_24B2D15B4();
    MEMORY[0x24C23BC10](v24);

    MEMORY[0x24C23BC10](41, 0xE100000000000000);
    v16 = v26;
    (*(v2 + 8))(v4, v1);
    sub_24AFF8258(v10, &qword_27EFCC810);
  }

  return v16;
}

id sub_24B186964()
{
  v1 = v0;
  v54 = sub_24B2D1704();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24B2D15F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B185ECC(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = objc_allocWithZone(MEMORY[0x277CBDA58]);
    v17 = sub_24B2D5374();

    v18 = [v16 initWithIdentifier_];

    return v18;
  }

  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
  sub_24B187524(v15, v12);
  (*(v4 + 32))(v6, &v15[v20], v3);
  sub_24B008890(v12, v10, &qword_27EFCC810);
  v21 = sub_24B2D14C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_24AFF8258(v10, &qword_27EFCC810);
    v50 = 0;
    v23 = 0;
  }

  else
  {
    v50 = sub_24B2D14B4();
    v23 = v24;
    (*(v22 + 8))(v10, v21);
  }

  v25 = sub_24B2D1594();
  v26 = *(v25 + 16);
  if (v26)
  {
    v45 = v23;
    v46 = v12;
    v47 = v6;
    v48 = v4;
    v49 = v3;
    v55 = MEMORY[0x277D84F90];
    sub_24B0078D0(0, v26, 0);
    v27 = v55;
    v28 = v52 + 16;
    v29 = *(v52 + 16);
    v30 = *(v52 + 80);
    v44 = v25;
    v31 = v25 + ((v30 + 32) & ~v30);
    v51 = *(v52 + 72);
    v52 = v29;
    v32 = (v28 - 8);
    do
    {
      v33 = v53;
      v34 = v54;
      (v52)(v53, v31, v54);
      v35 = sub_24B2D16F4();
      v37 = v36;
      (*v32)(v33, v34);
      v55 = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_24B0078D0((v38 > 1), v39 + 1, 1);
        v27 = v55;
      }

      *(v27 + 16) = v39 + 1;
      v40 = v27 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v31 += v51;
      --v26;
    }

    while (v26);

    v4 = v48;
    v3 = v49;
    v12 = v46;
    v6 = v47;
    if (v45)
    {
      goto LABEL_12;
    }

LABEL_14:
    v41 = 0;
    goto LABEL_15;
  }

  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_12:
  v41 = sub_24B2D5374();

LABEL_15:
  v42 = sub_24B2D5524();

  v43 = [objc_opt_self() contactWithDisplayName:v41 handleStrings:v42];

  (*(v4 + 8))(v6, v3);
  sub_24AFF8258(v12, &qword_27EFCC810);
  return v43;
}

uint64_t _s12FindMyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D14C4();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC800);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v57 = sub_24B2D15F4();
  v11 = *(v57 - 8);
  v12 = MEMORY[0x28223BE20](v57);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v50 - v14;
  v15 = type metadata accessor for ContactsProvider.Subscription(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC808);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v50 - v23;
  v25 = (&v50 + *(v22 + 56) - v23);
  sub_24B185ECC(a1, &v50 - v23);
  sub_24B185ECC(a2, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B185ECC(v24, v20);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v11 + 8))(&v20[v32], v57);
      sub_24AFF8258(v20, &qword_27EFCC810);
LABEL_12:
      sub_24AFF8258(v24, &qword_27EFCC808);
LABEL_23:
      v40 = 0;
      return v40 & 1;
    }

    v33 = v11;
    v34 = *(v11 + 32);
    v35 = v57;
    v34(v56, &v20[v32], v57);
    v34(v55, v25 + v32, v35);
    v36 = *(v8 + 48);
    sub_24B187524(v20, v10);
    sub_24B187524(v25, &v10[v36]);
    v38 = v53;
    v37 = v54;
    v39 = *(v53 + 48);
    if (v39(v10, 1, v54) == 1)
    {
      if (v39(&v10[v36], 1, v37) == 1)
      {
        sub_24AFF8258(v10, &qword_27EFCC810);
LABEL_26:
        v48 = v55;
        v47 = v56;
        v40 = MEMORY[0x24C237DB0](v56, v55);
        v49 = *(v33 + 8);
        v49(v48, v35);
        v49(v47, v35);
        sub_24B185F30(v24);
        return v40 & 1;
      }
    }

    else
    {
      v41 = v52;
      sub_24B008890(v10, v52, &qword_27EFCC810);
      if (v39(&v10[v36], 1, v37) != 1)
      {
        v44 = v51;
        (*(v38 + 32))(v51, &v10[v36], v37);
        sub_24B187594(&qword_27EFCC828, MEMORY[0x277D08B38]);
        v45 = sub_24B2D52A4();
        v46 = *(v38 + 8);
        v46(v44, v37);
        v46(v41, v37);
        sub_24AFF8258(v10, &qword_27EFCC810);
        if (v45)
        {
          goto LABEL_26;
        }

LABEL_21:
        v42 = *(v33 + 8);
        v42(v55, v35);
        v42(v56, v35);
LABEL_22:
        sub_24B185F30(v24);
        goto LABEL_23;
      }

      (*(v38 + 8))(v41, v37);
    }

    sub_24AFF8258(v10, &qword_27EFCC800);
    goto LABEL_21;
  }

  sub_24B185ECC(v24, v18);
  v27 = *v18;
  v26 = v18[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_12;
  }

  v28 = *v25;
  v29 = v25[1];
  if (v27 == v28 && v26 == v29)
  {
  }

  else
  {
    v31 = sub_24B2D6004();

    if ((v31 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_24B185F30(v24);
  v40 = 1;
  return v40 & 1;
}

uint64_t sub_24B187524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B187594(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL _s12FindMyUICore16ContactsProviderC12ContactStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1494();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBEB8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for ContactsProvider.ContactState(0) + 20);
  v15 = *(v11 + 48);
  sub_24B008890(a1 + v14, v13, &qword_27EFCB688);
  sub_24B008890(a2 + v14, &v13[v15], &qword_27EFCB688);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB688);
      return 1;
    }

    goto LABEL_7;
  }

  sub_24B008890(v13, v10, &qword_27EFCB688);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_24AFF8258(v13, &qword_27EFCBEB8);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_24B187594(&qword_27EFCBEC0, MEMORY[0x277D08B20]);
  v19 = sub_24B2D52A4();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB688);
  return (v19 & 1) != 0;
}

void sub_24B187978()
{
  sub_24B1879E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24B1879E0()
{
  if (!qword_27EFCDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC810);
    sub_24B2D15F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFCDC60);
    }
  }
}

uint64_t sub_24B187A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24B187AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_24B187B74()
{
  _s12ContactStateV7RequestVMa(319);
  if (v0 <= 0x3F)
  {
    sub_24B110638();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B187C30()
{
  result = sub_24B2D24A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B187C9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_24B187D1C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

uint64_t sub_24B187DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_24B187E50(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t ETAProvider.__allocating_init(dependencies:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_24B2D3174();
  v3 = v2 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = sub_24B193CA8(MEMORY[0x277D84F90]);
  *(v3 + 16) = 0;
  *(v3 + 32) = sub_24B1933E8(v4);
  *v3 = 0x69766F7250415445;
  *(v3 + 8) = 0xEB00000000726564;
  v5 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  *(v2 + v5) = sub_24B193E9C(v4);
  *(v2 + 112) = *a1;
  return v2;
}

uint64_t ETAProvider.init(dependencies:)(_OWORD *a1)
{
  swift_defaultActor_initialize();
  sub_24B2D3174();
  v3 = v1 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = sub_24B193CA8(MEMORY[0x277D84F90]);
  *(v3 + 16) = 0;
  *(v3 + 32) = sub_24B1933E8(v4);
  *v3 = 0x69766F7250415445;
  *(v3 + 8) = 0xEB00000000726564;
  v5 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  *(v1 + v5) = sub_24B193E9C(v4);
  *(v1 + 112) = *a1;
  return v1;
}

uint64_t sub_24B188104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = type metadata accessor for ETAProvider.ETAState(0);
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = sub_24B2D1C44();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v21);
  v69 = &v59 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  sub_24B189C88(a1, v14);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v11 = v14;
LABEL_5:
    v28 = v70;
    sub_24AFF8258(v11, &qword_27EFCE590);
LABEL_6:
    v29 = 1;
    return (*(v28 + 56))(a3, v29, 1, v5);
  }

  v62 = v5;
  v63 = a3;
  v27 = *(v16 + 32);
  v27(v25, v14, v15);
  sub_24B189C88(v68, v11);
  if (v26(v11, 1, v15) == 1)
  {
    (*(v16 + 8))(v25, v15);
    v5 = v62;
    a3 = v63;
    goto LABEL_5;
  }

  v31 = v69;
  v27(v69, v11, v15);
  v32 = *(v16 + 16);
  v61 = v25;
  v32(v20, v25, v15);
  v33 = v66;
  v32(v66, v31, v15);
  v34 = sub_24B2D1464();
  v36 = v35;
  v37 = sub_24B2D1464();
  v38 = v67;
  v39 = v37;
  v68 = v40;
  v41 = *(v16 + 8);
  v41(v33, v15);
  v66 = v41;
  v41(v20, v15);
  v42 = v38 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  swift_beginAccess();
  v43 = *(v42 + 24);
  v44 = *(v43 + 16);
  v5 = v62;
  a3 = v63;
  v28 = v70;
  v60 = v36;
  if (!v44)
  {
LABEL_13:
    v71 = v34;
    v72 = v36;
    v73 = v39;
    v74 = v68;
    v53 = v61;
    v54 = v66;
    v55 = v69;
    sub_24B188734(&v71, v61, v69);
    v54(v55, v15);
    v54(v53, v15);

    goto LABEL_6;
  }

  v59 = v34;
  v45 = sub_24B1815F8(v34, v36, v39, v68);
  v46 = v39;
  if ((v47 & 1) == 0)
  {

    v34 = v59;
    goto LABEL_13;
  }

  v48 = v64;
  sub_24B18A020(*(v43 + 56) + *(v28 + 72) * v45, v64, type metadata accessor for ETAProvider.ETAState);

  v49 = v48;
  v50 = v65;
  sub_24B18A088(v49, v65, type metadata accessor for ETAProvider.ETAState);
  sub_24B2D23E4();
  sub_24B2D62A4();
  sub_24B2D6184();
  if (sub_24B2D6284())
  {

    v51 = v66;
    (v66)(v69, v15);
    v51(v61, v15);
    v52 = v50;
  }

  else
  {
    v71 = v59;
    v72 = v60;
    v73 = v46;
    v56 = v69;
    v74 = v68;
    v57 = v61;
    sub_24B188734(&v71, v61, v69);
    v58 = v66;
    (v66)(v56, v15);
    v58(v57, v15);

    v52 = v65;
  }

  sub_24B18A088(v52, a3, type metadata accessor for ETAProvider.ETAState);
  v29 = 0;
  return (*(v28 + 56))(a3, v29, 1, v5);
}

uint64_t sub_24B188734(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v6 = sub_24B2D3184();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = v7;
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v51 - v9;
  v10 = type metadata accessor for ETAProvider.ETAState.Request(0);
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = v11;
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  result = swift_beginAccess();
  v21 = v4;
  v22 = *(*(v4 + v19) + 16);
  v63 = v17;
  v64 = v15;
  v62 = v18;
  if (v22)
  {

    sub_24B1815F8(v16, v15, v17, v18);
    v24 = v23;

    v25 = v24 ^ 1;
    v17 = v63;
  }

  else
  {
    v25 = 1;
  }

  if (*(*(v4 + v19) + 16))
  {

    sub_24B1815F8(v16, v64, v17, v62);
    if (v26)
    {

      isCancelled = swift_task_isCancelled();

      if (((v25 | isCancelled) & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if ((v25 & 1) == 0)
  {
    return result;
  }

LABEL_10:
  v51 = v16;
  sub_24B2D2494();
  v28 = *(v10 + 20);
  v29 = sub_24B2D1C44();
  v30 = *(*(v29 - 8) + 16);
  v30(&v14[v28], v52, v29);
  v30(&v14[*(v10 + 24)], v53, v29);
  v53 = v19;
  if (*(*(v4 + v19) + 16))
  {

    sub_24B1815F8(v51, v64, v63, v62);
    if (v31)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v32 = sub_24B2D56D4();
  (*(*(v32 - 8) + 56))(v61, 1, 1, v32);
  v52 = swift_allocObject();
  swift_weakInit();
  v33 = v58;
  v34 = v59;
  v35 = v60;
  (*(v59 + 16))(v58, v21 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_logger, v60);
  v36 = v56;
  sub_24B18A020(v14, v56, type metadata accessor for ETAProvider.ETAState.Request);
  v37 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v38 = &v57[v37 + 7] & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v54 + 80);
  v57 = v14;
  v40 = v35;
  v41 = (v39 + v38 + 32) & ~v39;
  v42 = swift_allocObject();
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 4) = v52;
  (*(v34 + 32))(&v42[v37], v33, v40);
  v43 = &v42[v38];
  v44 = v51;
  v46 = v63;
  v45 = v64;
  *v43 = v51;
  *(v43 + 1) = v45;
  v47 = v62;
  *(v43 + 2) = v46;
  *(v43 + 3) = v47;
  sub_24B18A088(v36, &v42[v41], type metadata accessor for ETAProvider.ETAState.Request);

  v48 = sub_24B00A9A4(0, 0, v61, &unk_24B2EF3F0, v42);
  v49 = v53;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v21 + v49);
  *(v21 + v49) = 0x8000000000000000;
  sub_24B1C9EB8(v48, v44, v45, v46, v47, isUniquelyReferenced_nonNull_native);
  *(v21 + v49) = v65;
  swift_endAccess();
  return sub_24B18A284(v57);
}

uint64_t sub_24B188CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v12;
  v8[19] = v13;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = sub_24B2D17E4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B188D90, 0, 0);
}

uint64_t sub_24B188D90()
{
  v26 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = Strong;

    v3 = sub_24B2D3164();
    v4 = sub_24B2D5934();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[17];
      v5 = v0[18];
      v8 = v0[15];
      v7 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      v0[6] = v8;
      v0[7] = v7;
      v0[8] = v6;
      v0[9] = v5;

      v11 = sub_24B2D53C4();
      v13 = sub_24AFF321C(v11, v12, &v25);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_24AFD2000, v3, v4, "ETAProvider: Will fetch ETA for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C23D530](v10, -1, -1);
      MEMORY[0x24C23D530](v9, -1, -1);
    }

    v14 = *(v2 + 112);
    v0[24] = *(v2 + 120);

    v24 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_24B189108;
    v16 = v0[22];
    v17 = v0[19];

    return v24(v16, v17);
  }

  else
  {
    v19 = sub_24B2D3164();
    v20 = sub_24B2D5914();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2DC670, &v25);
      _os_log_impl(&dword_24AFD2000, v19, v20, "%s - No self", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C23D530](v22, -1, -1);
      MEMORY[0x24C23D530](v21, -1, -1);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_24B189108()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24B1893A0;
  }

  else
  {
    v2 = sub_24B18921C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B18921C()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);

  *(v0 + 16) = v5;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  return MEMORY[0x2822009F8](sub_24B1892A4, v1, 0);
}

uint64_t sub_24B1892A4()
{
  sub_24B189578((v0 + 16), *(v0 + 152), *(v0 + 176));

  return MEMORY[0x2822009F8](sub_24B189314, 0, 0);
}

uint64_t sub_24B189314()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B1893A0()
{
  v15 = v0;
  v1 = *(v0 + 208);

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2DC670, &v14);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "%s - Error trying to fetch directions %{public}@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24B189578(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v54 = a2;
  v53 = type metadata accessor for ETAProvider.ETAState(0);
  MEMORY[0x28223BE20](v53);
  v57 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v55 = &v48[-v9];
  v10 = sub_24B2D17E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v48[-v16];
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[3];
  v59 = a1[2];
  v60 = v18;
  v21 = *(v11 + 16);
  v56 = a3;
  v58 = v21;
  (v21)(&v48[-v16], a3, v10, v15);

  v22 = sub_24B2D3164();
  v23 = sub_24B2D5904();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v4;
    v25 = v24;
    v51 = swift_slowAlloc();
    v64 = v20;
    v65[0] = v51;
    *v25 = 136315394;
    v61 = v60;
    v62 = v19;
    v63 = v59;

    v26 = sub_24B2D53C4();
    v50 = v22;
    v28 = sub_24AFF321C(v26, v27, v65);
    v49 = v23;
    v29 = v19;
    v30 = v28;

    *(v25 + 4) = v30;
    v19 = v29;
    *(v25 + 12) = 2080;
    v58(v13, v17, v10);
    v31 = sub_24B2D53C4();
    v33 = v32;
    (*(v11 + 8))(v17, v10);
    v34 = sub_24AFF321C(v31, v33, v65);

    *(v25 + 14) = v34;
    v35 = v50;
    _os_log_impl(&dword_24AFD2000, v50, v49, "ETAProvider: Will ingest new value for %s - %s", v25, 0x16u);
    v36 = v51;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v36, -1, -1);
    v37 = v25;
    v4 = v52;
    MEMORY[0x24C23D530](v37, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v17, v10);
  }

  v38 = v55;
  sub_24B18A020(v54, v55, type metadata accessor for ETAProvider.ETAState.Request);
  v58(&v38[*(v53 + 20)], v56, v10);
  v39 = v4 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  swift_beginAccess();
  v40 = *(v39 + 24);
  v41 = v57;
  sub_24B18A088(v38, v57, type metadata accessor for ETAProvider.ETAState);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65[0] = v40;
  v44 = v59;
  v43 = v60;
  sub_24B1CA260(v41, v60, v19, v59, v20, isUniquelyReferenced_nonNull_native);
  *(v39 + 24) = v65[0];
  sub_24B1D4B54(v40);
  swift_endAccess();

  v45 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  swift_beginAccess();
  if (*(*(v4 + v45) + 16))
  {

    sub_24B1815F8(v43, v19, v44, v20);
    if (v46)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_24B18C6EC(0, v43, v19, v44, v20);
  return swift_endAccess();
}

uint64_t ETAProvider.deinit()
{

  v1 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ETAProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B189C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B189CFC()
{
  result = qword_27EFCDC98;
  if (!qword_27EFCDC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDCA0);
    sub_24B189E08(&qword_27EFCDCA8, type metadata accessor for ETAProvider.ETAState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDC98);
  }

  return result;
}

uint64_t sub_24B189DB0(uint64_t a1)
{
  result = sub_24B189E08(&qword_27EFCDCB0, type metadata accessor for ETAProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24B189E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ETAProvider()
{
  result = qword_27EFCDCB8;
  if (!qword_27EFCDCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B189EA4()
{
  result = sub_24B2D3184();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B18A020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B18A088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B18A0F0(uint64_t a1)
{
  v3 = *(sub_24B2D3184() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for ETAProvider.ETAState.Request(0);
  v6 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = v1 + v5;
  v9 = *(v1 + v5);
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24AFFD370;

  return sub_24B188CBC(a1, v14, v6, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_24B18A284(uint64_t a1)
{
  v2 = type metadata accessor for ETAProvider.ETAState.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ETAProvider.Dependencies.init(fetchDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24B18A300(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D17C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDCC8);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_24B2D5D64();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B18A484, 0, 0);
}

uint64_t sub_24B18A484()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_24B18A550;

  return sub_24B09A030(300000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24B18A550()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24B18A7EC;
  }

  else
  {
    v5 = sub_24B18A6C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B18A6C0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  type metadata accessor for ETAProvider.ETAState.Request(0);
  sub_24B2D1C34();
  (*(v6 + 104))(v3, *MEMORY[0x277D08C78], v5);
  sub_24B2D1FF4();
  sub_24B2D62A4();
  sub_24B2D17D4();
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B18A7EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ETAProvider.Dependencies.live()@<X0>(void *a1@<X8>)
{
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24B2D3174();
  v9 = *(v3 + 32);
  v9(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  result = (v9)(v11 + v10, v5, v2);
  *a1 = &unk_24B2EF440;
  a1[1] = v11;
  return result;
}

uint64_t sub_24B18A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_24B2D17C4();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8590);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B18AB20, 0, 0);
}

uint64_t sub_24B18AB20()
{
  v1 = v0[26];
  v11 = v0[27];
  v2 = v0[25];
  type metadata accessor for ETAProvider.ETAState.Request(0);
  v3 = sub_24B2D1BD4();
  v4 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithLocation:v3 address:0];
  v0[28] = v4;

  v5 = sub_24B2D1BD4();
  v6 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithLocation:v5 address:0];
  v0[29] = v6;

  v7 = [objc_allocWithZone(MEMORY[0x277CD4DC8]) init];
  v0[30] = v7;
  [v7 setSource_];
  [v7 setDestination_];
  [v7 setTransportType_];
  v8 = [objc_allocWithZone(MEMORY[0x277CD4DC0]) initWithRequest_];
  v0[31] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24B18ADE4;
  swift_continuation_init();
  v0[17] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_24B18B2C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  sub_24B2D5614();
  (*(v1 + 32))(boxed_opaque_existential_0, v11, v2);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24B026A64;
  v0[13] = &block_descriptor_7;
  [v8 calculateETAWithCompletionHandler_];
  (*(v1 + 8))(boxed_opaque_existential_0, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24B18ADE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_24B18B138;
  }

  else
  {
    v2 = sub_24B18AEF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B18AEF4()
{
  v18 = v0;
  v1 = *(v0 + 144);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v17);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&dword_24AFD2000, v2, v3, "ETAProvider: didReceive %s - %@", v4, 0x16u);
    sub_24B17B79C(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v8 = *(v0 + 184);
  v9 = [v1 transportType];
  if ((v9 - 1) > 7)
  {
    v10 = MEMORY[0x277D08C80];
  }

  else
  {
    v10 = qword_279002DA0[(v9 - 1)];
  }

  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  (*(v8 + 104))(*(v0 + 192), *v10, *(v0 + 176));
  [v1 expectedTravelTime];
  sub_24B2D62A4();
  sub_24B2D17D4();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24B18B138()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B18B1E0(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_24B2D3184() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFD370;

  return sub_24B18A9F4(a1, a2, v2 + v7);
}

unint64_t sub_24B18B2C4()
{
  result = qword_27EFC8598;
  if (!qword_27EFC8598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFC8598);
  }

  return result;
}

uint64_t static ETAProvider.Identifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24B2D6004(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24B2D6004();
    }
  }

  return result;
}

uint64_t ETAProvider.Identifier.hash(into:)()
{
  sub_24B2D5404();

  return sub_24B2D5404();
}

uint64_t ETAProvider.Identifier.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B18B484(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24B2D6004(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24B2D6004();
    }
  }

  return result;
}

uint64_t sub_24B18B528()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B18B590()
{
  sub_24B2D5404();

  return sub_24B2D5404();
}

uint64_t sub_24B18B5E0()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B18B650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETAProvider.ETAState.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ETAProvider.ETAState.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ETAProvider.ETAState(0) + 20);
  v4 = sub_24B2D17E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static ETAProvider.ETAState.Request.== infix(_:_:)()
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ETAProvider.ETAState.Request(0);
  if ((sub_24B2D1C14() & 1) == 0)
  {
    return 0;
  }

  return sub_24B2D1C14();
}

uint64_t sub_24B18B7F4()
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0 || (sub_24B2D1C14() & 1) == 0)
  {
    return 0;
  }

  return sub_24B2D1C14();
}

uint64_t ETAProvider.ETAState.TransportType.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t static ETAProvider.ETAState.== infix(_:_:)()
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ETAProvider.ETAState.Request(0);
  if ((sub_24B2D1C14() & 1) == 0 || (sub_24B2D1C14() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ETAProvider.ETAState(0);

  return sub_24B2D17B4();
}

unint64_t sub_24B18B99C()
{
  result = qword_27EFCDCD0;
  if (!qword_27EFCDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDCD0);
  }

  return result;
}

unint64_t sub_24B18B9F4()
{
  result = qword_27EFCDCD8;
  if (!qword_27EFCDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCDCD8);
  }

  return result;
}

uint64_t sub_24B18BA48()
{
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ETAProvider.ETAState.Request(0);
  if ((sub_24B2D1C14() & 1) == 0 || (sub_24B2D1C14() & 1) == 0)
  {
    return 0;
  }

  return sub_24B2D17B4();
}

uint64_t sub_24B18BAE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B18BB2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B18BBA4()
{
  result = type metadata accessor for ETAProvider.ETAState.Request(319);
  if (v1 <= 0x3F)
  {
    result = sub_24B2D17E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_24B18BE60()
{
  result = sub_24B2D24A4();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D1C44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B18BEF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_24B1C8FB0(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24B196B58(a2, type metadata accessor for RepositorySubscriber);
    *v2 = v15;
  }

  else
  {
    v8 = sub_24B181224(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_24B1CBE70();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for RepositorySubscriber();
      sub_24B196B58(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for RepositorySubscriber);

      sub_24B18F248(v10, v12);
      result = sub_24B196B58(a2, type metadata accessor for RepositorySubscriber);
      *v3 = v12;
    }

    else
    {
      return sub_24B196B58(a2, type metadata accessor for RepositorySubscriber);
    }
  }

  return result;
}

uint64_t sub_24B18C044(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (a3 == 2)
  {
    v8 = sub_24B181150(a5);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v5;
      v26 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24B1CC0B0();
        v12 = v26;
      }

      v13 = *(v12 + 48);
      v14 = sub_24B2D1704();
      v15 = *(v14 - 8);
      v16 = *(v15 + 8);
      v16(v13 + *(v15 + 72) * v10, v14);
      sub_24B0341E0(*(*(v12 + 56) + 32 * v10), *(*(v12 + 56) + 32 * v10 + 8), *(*(v12 + 56) + 32 * v10 + 16));
      sub_24B18F54C(v10, v12);
      result = (v16)(a5, v14);
      *v6 = v12;
    }

    else
    {
      v24 = sub_24B2D1704();
      v25 = *(*(v24 - 8) + 8);

      return v25(a5, v24);
    }
  }

  else
  {
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v5;
    sub_24B1C9154(a1, a2, a3, a4, a5, v22);
    v23 = sub_24B2D1704();
    result = (*(*(v23 - 8) + 8))(a5, v23);
    *v5 = v27;
  }

  return result;
}

uint64_t sub_24B18C2AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v20;
  }

  else
  {
    v15 = a5(a2, a3);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      result = sub_24B1922C0(v15, v19);
      *v7 = v19;
    }
  }

  return result;
}

uint64_t sub_24B18C438(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_24AFF8258(a1, qword_27EFCDD08);
    sub_24B23C2E0(a2, v7);
    v13 = sub_24B2D2504();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_24AFF8258(v7, qword_27EFCDD08);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_24B1C9740(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_24B2D2504();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_24B18C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_24B1C9EB8(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_24B1815F8(a2, a3, a4, a5);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        sub_24B1CD614();
        v18 = v20;
      }

      result = sub_24B190780(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_24B18C820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24B1CA400(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_24B2D1DA4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_24B181698(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_24B1CE02C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_24B2D1DA4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_24B190C9C(v11, v13, MEMORY[0x277D08E20], &qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_24B2D1DA4();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_24B18CA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24B1CA814(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_24B2D1574();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_24B18146C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_24B1CE380();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_24B2D1574();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_24B190C9C(v11, v13, MEMORY[0x277D08B50], &qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_24B2D1574();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_24B18CC28(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_24AFF8258(a1, &qword_27EFCDE28);
    sub_24B23C7A4(a2, v7);
    sub_24B196B58(a2, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    return sub_24AFF8258(v7, &qword_27EFCDE28);
  }

  else
  {
    sub_24B19695C(a1, v11, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_24B1CB048(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24B196B58(a2, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_24B18CE10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_24B1CB244(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_24B196B58(a2, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    *v2 = v15;
  }

  else
  {
    v8 = sub_24B18176C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_24B1CF8E0();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
      sub_24B196B58(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);

      sub_24B191C5C(v10, v12);
      result = sub_24B196B58(a2, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      *v3 = v12;
    }

    else
    {
      return sub_24B196B58(a2, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    }
  }

  return result;
}

uint64_t DataObservable.createObservableDidChangeSequence()(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  v9 = sub_24B2D2504();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B2D24F4();
  v15 = a1;
  v16 = a2;
  v17 = v2;
  v18 = v12;
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v5);
  sub_24B2D5744();
  return (*(v10 + 8))(v12, v9);
}

uint64_t DataObservableStorage.init(data:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  v10 = type metadata accessor for DataObservableStorage();
  v11 = *(v10 + 52);
  *(a5 + v11) = sub_24B1933E8(MEMORY[0x277D84F90]);
  result = (*(*(a4 - 8) + 32))(a5 + *(v10 + 48), a1, a4);
  *a5 = a2;
  *(a5 + 8) = a3;
  return result;
}

uint64_t DataObservableStorage.isInitialized.setter(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  return sub_24B18D3CC(v3, a2);
}

uint64_t DataObservableStorage.data.setter(uint64_t a1, uint64_t a2)
{
  sub_24B195E04(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t DataObservableStorage.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24B18D3CC(char a1, uint64_t a2)
{
  v4 = a1 & 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = v43 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v10 = *(v53 - 8);
  v11 = MEMORY[0x28223BE20](v53);
  v52 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v51 = v43 - v15;
  if (*(v2 + 16) != v4)
  {
    v16 = *(v2 + *(a2 + 52));
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = *v2;
    v45 = v2[1];
    v46 = v21;
    v22 = (v18 + 63) >> 6;
    v43[1] = v10 + 32;
    v43[2] = v10 + 16;
    v43[0] = v14 + 7;
    v50 = v16;

    v23 = 0;
    v47 = v17;
    v48 = v10;
    v44 = v22;
    v49 = v8;
    while (v20)
    {
LABEL_11:
      v25 = v51;
      v26 = v53;
      (*(v10 + 16))(v51, *(v50 + 56) + *(v10 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v53);
      v27 = sub_24B2D56D4();
      v54 = *(v27 - 8);
      (*(v54 + 56))(v55, 1, 1, v27);
      v28 = *(v10 + 32);
      v29 = v52;
      v28(v52, v25, v26);
      v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v31 = (v43[0] + v30) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      v33 = v32 + v30;
      v34 = v54;
      v28(v33, v29, v26);
      v35 = (v32 + v31);
      v36 = v45;
      *v35 = v46;
      v35[1] = v36;
      v37 = v49;
      sub_24B008890(v55, v49, &qword_27EFC8580);
      LODWORD(v28) = (*(v34 + 48))(v37, 1, v27);

      if (v28 == 1)
      {
        sub_24AFF8258(v37, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v34 + 8))(v37, v27);
      }

      v38 = *(v32 + 16);
      swift_unknownObjectRetain();

      v17 = v47;
      if (v38)
      {
        swift_getObjectType();
        v39 = sub_24B2D5604();
        v41 = v40;
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v42 = swift_allocObject();
      *(v42 + 16) = &unk_24B2EF960;
      *(v42 + 24) = v32;
      if (v41 | v39)
      {
        v56 = 0;
        v57 = 0;
        v58 = v39;
        v59 = v41;
      }

      v10 = v48;
      v20 &= v20 - 1;
      swift_task_create();
      sub_24AFF8258(v55, &qword_27EFC8580);

      v22 = v44;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
      }

      v20 = *(v17 + 8 * v24);
      ++v23;
      if (v20)
      {
        v23 = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B18D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDB0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B18D95C, 0, 0);
}

uint64_t sub_24B18D95C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = v3;
  *(v0 + 32) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  sub_24B2D5704();
  (*(v2 + 8))(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t (*DataObservableStorage.isInitialized.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v2 + 16);
  return sub_24B18DA54;
}

uint64_t sub_24B18DA54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  return sub_24B18D3CC(v4, v1);
}

uint64_t sub_24B18DABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = v49 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v59);
  v58 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v57 = v49 - v14;
  v15 = *(a2 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v2 + *(a2 + 48), v15);
  v19 = sub_24B2D52A4();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    v21 = *(v3 + *(a2 + 52));
    v22 = v21 + 64;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v21 + 64);
    v26 = *v3;
    v51 = v3[1];
    v52 = v26;
    v27 = (v23 + 63) >> 6;
    v54 = v10;
    v49[1] = v10 + 32;
    v49[2] = v10 + 16;
    v49[0] = v11 + 7;
    v56 = v21;

    v28 = 0;
    v53 = v22;
    v50 = v27;
    v55 = v8;
    while (v25)
    {
LABEL_11:
      v30 = v57;
      v31 = v54;
      v32 = v59;
      (*(v54 + 16))(v57, *(v56 + 56) + *(v54 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v59);
      v33 = sub_24B2D56D4();
      v60 = *(v33 - 8);
      (*(v60 + 56))(v61, 1, 1, v33);
      v34 = *(v31 + 32);
      v35 = v58;
      v34(v58, v30, v32);
      v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v37 = (v49[0] + v36) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      v39 = v38 + v36;
      v40 = v60;
      v34(v39, v35, v32);
      v41 = (v38 + v37);
      v42 = v51;
      *v41 = v52;
      v41[1] = v42;
      v43 = v55;
      sub_24B008890(v61, v55, &qword_27EFC8580);
      LODWORD(v34) = (*(v40 + 48))(v43, 1, v33);

      if (v34 == 1)
      {
        sub_24AFF8258(v43, &qword_27EFC8580);
      }

      else
      {
        sub_24B2D56C4();
        (*(v40 + 8))(v43, v33);
      }

      v44 = *(v38 + 16);
      swift_unknownObjectRetain();

      if (v44)
      {
        swift_getObjectType();
        v45 = sub_24B2D5604();
        v47 = v46;
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      v48 = swift_allocObject();
      *(v48 + 16) = &unk_24B2EF780;
      *(v48 + 24) = v38;
      if (v47 | v45)
      {
        v62 = 0;
        v63 = 0;
        v64 = v45;
        v65 = v47;
      }

      v27 = v50;
      v25 &= v25 - 1;
      swift_task_create();
      sub_24AFF8258(v61, &qword_27EFC8580);

      v22 = v53;
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
      }

      v25 = *(v22 + 8 * v29);
      ++v28;
      if (v25)
      {
        v28 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B18E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDB0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B18E114, 0, 0);
}

uint64_t sub_24B18E114()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = v3;
  *(v0 + 32) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  sub_24B2D5704();
  (*(v2 + 8))(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

void (*DataObservableStorage.data.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  v13 = *(v10 + 16);
  v7[6] = v13;
  v7[7] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13();
  return sub_24B18E31C;
}

void sub_24B18E31C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 32);
    v3 = *(v2 + 40);
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *v2;
    (*(v2 + 48))(v4, v3, v5);
    sub_24B195E04(v4, v7);
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
  }

  else
  {
    v4 = *(v2 + 32);
    v3 = *(v2 + 40);
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    sub_24B195E04(v3, *v2);
    (*(v10 + 8))(v3, v9);
  }

  free(v3);
  free(v4);

  free(v2);
}

Swift::Void __swiftcall DataObservableStorage.resetDataStorage()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v8 + 24) + 8))(v3, v5);
  sub_24B195E04(v7, v2);
  (*(v4 + 8))(v7, v3);
  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  sub_24B18D3CC(v9, v2);
}

uint64_t sub_24B18E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = &v27 - v10;
  v11 = sub_24B2D2504();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = v13;
  v35 = a2;
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a4;
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(v12 + 16);
  v30 = v14;
  v31 = v16;
  v29 = a3;
  v16(v14, a3, v11);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = v33;
  v32 = v17;
  v19(v33, v36, v17);
  (*(v18 + 56))(v20, 0, 1, v17);
  v28 = (*(a5 + 56))(v37, v15, a5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DataObservableStorage();
  v21 = v20;
  v22 = v30;
  sub_24B18C438(v21, v30);
  v28(v37, 0);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31(v22, v29, v11);
  v24 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v15;
  *(v25 + 3) = a5;
  *(v25 + 4) = v23;
  (*(v12 + 32))(&v25[v24], v22, v11);
  return sub_24B2D56E4();
}

uint64_t sub_24B18E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24B2D2504();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_24B2D56D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  *(v17 + 6) = v15;
  (*(v9 + 32))(&v17[v16], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_24AFFC0A8(0, 0, v13, &unk_24B2EF9A0, v17);

  return sub_24AFF8258(v13, &qword_27EFC8580);
}

uint64_t sub_24B18EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_24B18EB4C, 0, 0);
}

uint64_t sub_24B18EB4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B18EC2C, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24B18EC2C()
{
  DataObservable.removeContinuation(for:)(v0[7], v0[8], v0[9]);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_24B18ECA0, 0, 0);
}

uint64_t DataObservable.removeContinuation(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24B2D2504();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for DataObservableStorage();
  v39 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v21 = *(a3 + 40);
  v46 = a2;
  v47 = v3;
  v21(a2, a3, v18);
  v22 = *&v20[*(v17 + 52)];
  v23 = *(v22 + 16);
  v40 = a1;
  if (v23 && (v24 = sub_24B181398(a1), (v25 & 1) != 0))
  {
    v26 = *(v22 + 56);
    v27 = v41;
    (*(v41 + 16))(v16, v26 + *(v41 + 72) * v24, v9);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v41;
  }

  v29 = *(v27 + 56);
  v29(v16, v28, 1, v9);
  v30 = (*(v27 + 48))(v16, 1, v9);
  v31 = v9;
  v32 = v27;
  v33 = v40;
  if (v30)
  {
    sub_24AFF8258(v16, qword_27EFCDD08);
  }

  else
  {
    (*(v32 + 16))(v11, v16, v31);
    sub_24AFF8258(v16, qword_27EFCDD08);
    sub_24B2D5714();
    (*(v32 + 8))(v11, v31);
  }

  (*(v39 + 8))(v20, v17);
  v34 = v45;
  (*(v43 + 16))(v45, v33, v44);
  v35 = v42;
  v29(v42, 1, 1, v31);
  v36 = (*(a3 + 56))(v48, v46, a3);
  sub_24B18C438(v35, v34);
  return v36(v48, 0);
}

uint64_t static Dictionary.empty.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  v6 = sub_24B2D5584();
  v7 = sub_24B1A4278(v6, a1, a2, a3);

  return v7;
}

uint64_t sub_24B18F1D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Dictionary.empty.getter(a1[2], a1[3], a1[4]);
  *a2 = result;
  return result;
}

unint64_t sub_24B18F248(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for RepositorySubscriber();
  v4 = *(v25 - 8);
  result = MEMORY[0x28223BE20](v25);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_24B2D5B64() + 1) & ~v8;
    v12 = *(v4 + 72);
    v26 = v12;
    v27 = a2 + 64;
    do
    {
      v13 = v12 * v9;
      v14 = v28;
      sub_24B196BB8(*(a2 + 48) + v12 * v9, v28, type metadata accessor for RepositorySubscriber);
      sub_24B2D60E4();
      sub_24B2D2504();
      sub_24B196634(&qword_27EFC8298, MEMORY[0x277CC95F0]);
      sub_24B2D5254();
      v15 = sub_24B2D6124();
      result = sub_24B196B58(v14, type metadata accessor for RepositorySubscriber);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v12 = v26;
          v7 = v27;
          goto LABEL_4;
        }

        v12 = v26;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v26;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          v17 = *(a2 + 48);
          result = v17 + v12 * a1;
          if (v12 * a1 < v13 || result >= v17 + v13 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v27;
          }

          else
          {
            v7 = v27;
            if (v12 * a1 != v13)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * a1);
          v20 = (v18 + 8 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v27;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

unint64_t sub_24B18F54C(int64_t a1, uint64_t a2)
{
  v41 = sub_24B2D1704();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_24B2D5B64();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      sub_24B196634(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      v23 = sub_24B2D5244();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 32 * a1);
          v30 = (v28 + 32 * v10);
          if (32 * a1 != 32 * v10 || (a1 = v10, v29 >= v30 + 2))
          {
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

void sub_24B18F878(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D2504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_24B2D5B64();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_24B196634(&qword_27EFC8298, MEMORY[0x277CC95F0]);
      v21 = sub_24B2D5244();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_24B18FBC8(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_24B2D5B64();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_24B196634(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      v22 = sub_24B2D5244();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for SessionFollowingState(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24B18FF0C(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_24B2D5B64();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_24B196634(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      v22 = sub_24B2D5244();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for SessionFollowerState(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24B190250(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_24B2D5B64();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_24B196634(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      v22 = sub_24B2D5244();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for DirectionsState() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24B190594(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24B2D5B64() + 1) & ~v5;
    while (1)
    {
      sub_24B2D60E4();

      sub_24B2D5404();
      v9 = sub_24B2D6124();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_24B2D24A4() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
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

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24B190780(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24B2D5B64() + 1) & ~v5;
    do
    {
      sub_24B2D60E4();

      sub_24B2D5404();
      sub_24B2D5404();
      v9 = sub_24B2D6124();

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
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_24B190958(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1DA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_24B2D5B64();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_24B196634(&qword_27EFCC630, MEMORY[0x277D08E20]);
      v21 = sub_24B2D5244();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for ItemsProvider.InfoState(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_24B190C9C(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_24B2D5B64();
    v17 = v15;
    v40 = (v16 + 1) & v15;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v44 = *(v18 + 56);
    v38 = (v18 - 8);
    v39 = v19;
    do
    {
      v20 = v44 * v14;
      v21 = v17;
      v22 = v18;
      v39(v11, *(a2 + 48) + v44 * v14, v8);
      sub_24B196634(v41, v42);
      v23 = sub_24B2D5244();
      (*v38)(v11, v8);
      v17 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v20 + v44;
          v30 = v44 * a1 < v20 || v28 >= v29;
          v18 = v22;
          if (!v30)
          {
            if (v44 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v17 = v21;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v14);
            if (a1 != v14 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v14;
            }

            goto LABEL_4;
          }

          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v18 = v22;
LABEL_4:
      v14 = (v14 + 1) & v17;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

void sub_24B190F50(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_24B2D5B64();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_24B196634(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      v21 = sub_24B2D5244();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for PeopleProvider.PersonState(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_24B191294(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1DA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_24B2D5B64();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_24B196634(&qword_27EFCC630, MEMORY[0x277D08E20]);
      v21 = sub_24B2D5244();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for ItemsLocationsProvider.LocationState(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_24B1915D8(int64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_24B2D5B64();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_24B196634(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      v21 = sub_24B2D5244();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for PeopleLocationsProvider.LocationState(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_24B19191C(int64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_24B2D5B64() + 1) & ~v7;
    v11 = *(v4 + 72);
    v28 = v11;
    v29 = a2 + 64;
    do
    {
      v12 = v11 * v8;
      v13 = v30;
      sub_24B196BB8(*(a2 + 48) + v11 * v8, v30, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B196634(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      v14 = sub_24B2D6124();
      sub_24B196B58(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      v15 = v14 & v9;
      if (a1 >= v10)
      {
        if (v15 < v10)
        {
          v6 = v29;
          goto LABEL_4;
        }

        if (a1 < v15)
        {
          goto LABEL_3;
        }
      }

      else if (v15 < v10 && a1 < v15)
      {
LABEL_3:
        v6 = v29;
LABEL_4:
        v11 = v28;
        goto LABEL_5;
      }

      v11 = v28;
      if (v28 * a1 < v12 || *(a2 + 48) + v28 * a1 >= (*(a2 + 48) + v12 + v28))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v28 * a1 != v12)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0) - 8) + 72);
      v18 = v17 * a1;
      v19 = v16 + v17 * a1;
      v20 = v17 * v8;
      v21 = v16 + v17 * v8 + v17;
      v22 = v18 < v20 || v19 >= v21;
      v6 = v29;
      if (v22)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_25:
        a1 = v8;
        goto LABEL_5;
      }

      a1 = v8;
      if (v18 != v20)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_25;
      }

LABEL_5:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_24B191C5C(int64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_24B2D5B64() + 1) & ~v7;
    v11 = *(v4 + 72);
    v24 = v11;
    v25 = a2 + 64;
    do
    {
      v12 = v11 * v8;
      v13 = v26;
      sub_24B196BB8(*(a2 + 48) + v11 * v8, v26, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B196634(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      v14 = sub_24B2D6124();
      sub_24B196B58(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      v15 = v14 & v9;
      if (a1 >= v10)
      {
        if (v15 < v10)
        {
          v11 = v24;
          v6 = v25;
          goto LABEL_4;
        }

        v11 = v24;
        if (a1 >= v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = v24;
        if (v15 >= v10 || a1 >= v15)
        {
LABEL_11:
          if (v11 * a1 < v12 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v12 + v11))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v25;
          }

          else
          {
            v6 = v25;
            if (v11 * a1 != v12)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * a1);
          v18 = (v16 + 8 * v8);
          if (a1 != v8 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      v6 = v25;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_24B191F60(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v10 = (v9 + 1) & ~v8;
  v11 = *(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10;
  v31 = v9;
  if (v11)
  {
    v12 = ~v8;
    v13 = (sub_24B2D5B64() + 1) & ~v8;
    v14 = *(v4 + 72);
    v29 = a2 + 64;
    do
    {
      v15 = v14 * v10;
      sub_24B196BB8(*(a2 + 48) + v14 * v10, v6, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B196634(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2D5404();
      v16 = sub_24B2D6124();
      sub_24B196B58(v6, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      v17 = v16 & v12;
      v18 = v31;
      if (v31 >= v13)
      {
        if (v17 < v13)
        {
          v7 = v29;
          goto LABEL_4;
        }

        if (v31 < v17)
        {
LABEL_3:
          v7 = v29;
          goto LABEL_4;
        }
      }

      else if (v17 < v13 && v31 < v17)
      {
        goto LABEL_3;
      }

      if (v14 * v31 < v15 || *(a2 + 48) + v14 * v31 >= (*(a2 + 48) + v15 + v14))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v14 * v31 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(a2 + 56);
      v20 = *(*(type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0) - 8) + 72);
      v21 = v20 * v18;
      v22 = v19 + v20 * v18;
      v23 = v20 * v10;
      v24 = v19 + v20 * v10 + v20;
      v25 = v21 < v23 || v22 >= v24;
      v7 = v29;
      if (v25)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_24:
        v31 = v10;
        goto LABEL_4;
      }

      v31 = v10;
      if (v21 != v23)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_24;
      }

LABEL_4:
      v10 = (v10 + 1) & v12;
    }

    while (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v7 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v31) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

uint64_t sub_24B1922C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24B2D5B64() + 1) & ~v5;
    do
    {
      sub_24B2D60E4();

      sub_24B2D5404();
      v9 = sub_24B2D6124();

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

unint64_t sub_24B192470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDE8);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDDE0);
      result = sub_24B181150(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1704();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SessionFollowingState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SessionFollowingState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B19268C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDF8);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDDF0);
      result = sub_24B181150(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1704();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SessionFollowerState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SessionFollowerState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B1928A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE18);
    v7 = sub_24B2D5DE4();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDE10);
      result = sub_24B181150(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1704();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 32 * v13;
      v17 = *(v8 + 2);
      v18 = v8[24];
      *v16 = *v8;
      *(v16 + 16) = v17;
      *(v16 + 24) = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B192AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE08);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDE00);
      result = sub_24B181150(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1704();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for DirectionsState();
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for DirectionsState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B192CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDD8);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDDD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24B054238(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_24B2D24A4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B192EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDC8);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDDC0);
      result = sub_24B181224(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for RepositorySubscriber();
      result = sub_24B19695C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for RepositorySubscriber);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_24B193094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDB8);
  v3 = sub_24B2D5DE4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_24B1810E4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_24B1810E4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24B1931CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEE8);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDEE0);
      result = sub_24B18146C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1574();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PeopleProvider.PersonState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PeopleProvider.PersonState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B1933E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF90);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDF88);
      result = sub_24B181398(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D2504();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B193614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDED0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDED8);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDED0);
      result = sub_24B18146C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1574();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B193824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEB0);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDEA8);
      result = sub_24B18146C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1574();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for PeopleLocationsProvider.LocationState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B193A68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF78);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDF70);
      result = sub_24B181540(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B19695C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ContactsProvider.Subscription);
      v16 = v7[7];
      v17 = type metadata accessor for ContactsProvider.ContactState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ContactsProvider.ContactState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B193CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF68);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDF60);
      result = sub_24B1815F8(*v5, v5[1], v5[2], v5[3]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 32 * result;
      v15 = v5[2];
      v16 = v5[3];
      *v14 = *v5;
      *(v14 + 16) = v15;
      *(v14 + 24) = v16;
      v17 = v7[7];
      v18 = type metadata accessor for ETAProvider.ETAState(0);
      result = sub_24B19695C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v13, type metadata accessor for ETAProvider.ETAState);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B193E9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF58);
    v3 = sub_24B2D5DE4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_24B1815F8(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_24B193FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD98);
    v3 = sub_24B2D5DE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B008890(v4, &v13, &qword_27EFC8A58);
      v5 = v13;
      v6 = v14;
      result = sub_24B054238(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24B0E4E94(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24B1940F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDA8);
    v3 = sub_24B2D5DE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24B054238(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24B1941F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDDA0);
    v3 = sub_24B2D5DE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B008890(v4, &v16, &qword_27EFCC5F0);
      v5 = v16;
      v6 = v17;
      result = sub_24B054238(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_24B19432C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBF0);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDBE8);
      result = sub_24B181540(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B19695C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ContactsProvider.Subscription);
      v16 = v7[7];
      v17 = sub_24B2D1494();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B194548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF48);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDF40);
      result = sub_24B181698(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1DA4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ItemsProvider.InfoState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ItemsProvider.InfoState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B194764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF38);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDF30);
      result = sub_24B181698(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1DA4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B194974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF28);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDF20);
      result = sub_24B181698(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1DA4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_24B2D1F24();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B194B94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF10);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDF08);
      result = sub_24B181698(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1DA4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ItemsLocationsProvider.LocationState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ItemsLocationsProvider.LocationState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B194DD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF00);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDEF8);
      result = sub_24B181698(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1DA4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_24B2D1944();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B194FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEC8);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDEC0);
      result = sub_24B18146C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1574();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_24B2D1794();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B195218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDEA0);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDE98);
      result = sub_24B18146C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24B2D1574();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_24B2D1944();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B195438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE48);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDE40);
      result = sub_24B18176C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
      result = sub_24B19695C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B19561C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE38);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDE30);
      result = sub_24B18176C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
      sub_24B19695C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      v16 = v7[7];
      v17 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B19585C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE68);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDE60);
      result = sub_24B181A88(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
      sub_24B19695C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      v16 = v7[7];
      v17 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
      result = sub_24B19695C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B195A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE80);
    v7 = sub_24B2D5DE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B008890(v9, v5, &qword_27EFCDE78);
      result = sub_24B18186C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SettingsContactsProvider.Subscription();
      result = sub_24B19695C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SettingsContactsProvider.Subscription);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24B195CF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_24B2D5DE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
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

uint64_t sub_24B195E04(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 48);
  (*(v6 + 16))(v8, v2 + v10, v5);
  (*(v6 + 24))(v2 + v10, a1, v5);
  sub_24B18DABC(v8, a2);
  return (*(v6 + 8))(v8, v5);
}

void sub_24B195F58()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_24B196310();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B195FF8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_24B196140(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 17) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_24B196310()
{
  if (!qword_27EFCDD90)
  {
    sub_24B2D2504();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDD00);
    sub_24B196634(&qword_27EFC8298, MEMORY[0x277CC95F0]);
    v0 = sub_24B2D5214();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCDD90);
    }
  }
}

uint64_t sub_24B1963D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B19641C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_24B196490()
{
  result = qword_27EFCC8B0;
  if (!qword_27EFCC8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC8B0);
  }

  return result;
}

uint64_t sub_24B1964F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFDE44;

  return sub_24B18E044(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_24B196634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24B196764(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFDE44;

  return sub_24B18D88C(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_24B1968A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1AB998(a1, v4);
}

uint64_t sub_24B19695C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1969C4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_24B2D2504() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_24B18E8D0(a1, v6, v7, v3, v4);
}

uint64_t sub_24B196A4C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_24B2D2504() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFD370;

  return sub_24B18EB24(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_24B196B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B196BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B196C20(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 56))(v4, a1, *(a2 + 8));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DataObservableStorage();
  DataObservableStorage.resetDataStorage()();
  return v2(v4, 0);
}

Swift::Void __swiftcall Provider.restartProvider()()
{
  v3 = v1;
  v4 = v0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(v3 + 16);
  swift_unknownObjectRetain();
  SubscriptionsManager.restartSubscriptions(intermediateStep:)(&unk_24B2EF9B0, v5, v4, v6);
}

uint64_t sub_24B196DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B196E38, v5, v4);
}

uint64_t sub_24B196E38()
{
  sub_24B196C20(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24B196EA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFD370;

  return sub_24B196DB0(v4, v2, v3);
}

Swift::Void __swiftcall SubscriptionsManager.removeSubscriber(_:)(FindMyUICore::Subscriber a1)
{
  v3 = v1;
  object = a1.rawValue._object;
  v6 = *a1.rawValue._countAndFlagsBits;
  v5 = *(a1.rawValue._countAndFlagsBits + 8);
  (*(v1 + 56))(a1.rawValue._object);
  v7 = swift_allocObject();
  v7[2] = object;
  v7[3] = v3;
  v7[4] = v2;
  v7[5] = v6;
  v7[6] = v5;
  swift_unknownObjectRetain();

  sub_24B2D12C4();
}

uint64_t SubscriptionsManager.restartSubscriptions(intermediateStep:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 56))(a3, a4);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v4;
  v9[5] = a1;
  v9[6] = a2;
  swift_unknownObjectRetain();

  sub_24B2D12C4();
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_24B2D5604();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_24B1A22D4, v7, v6);
}

uint64_t sub_24B197158(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a1;
  v5[27] = a3;
  v7 = sub_24B2D2504();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = sub_24B2D3184();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_getAssociatedTypeWitness();
  v5[39] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for SubscriptionManagerStorage();
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  v5[46] = v10;
  v5[47] = v11;
  v5[48] = v12;
  v14 = sub_24B2D5604();
  v5[49] = v14;
  v5[50] = v13;

  return MEMORY[0x2822009F8](sub_24B1973A8, v14, v13);
}

uint64_t sub_24B1973A8()
{
  v137 = v0;
  v1 = v0[46];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[27];
  v8 = v0[28];
  v9 = *(v8 + 32);
  v0[51] = v9;
  v0[52] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0xBE12000000000000;
  v128 = v9;
  (v9)(v7);
  v123 = *(v6 + 16);
  v123(v4, v1, v5);
  v10 = *(v2 + 8);
  v0[53] = v10;
  v0[54] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  swift_unknownObjectRetain();

  v11 = sub_24B2D3164();
  v12 = sub_24B2D5934();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v109 = v0[47];
    v111 = v0[48];
    v126 = v0[37];
    v114 = v0[34];
    v115 = v0[33];
    v14 = v0[31];
    v13 = v0[32];
    v113 = v12;
    v15 = v0[30];
    v16 = v10;
    v18 = v0[27];
    v17 = v0[28];
    v107 = v0[26];
    v19 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v136 = v112;
    *v19 = 136447235;
    v20 = v18;
    v10 = v16;
    (*(v17 + 56))(v20, v17);
    sub_24B2D12A4();

    v21 = sub_24B2D24B4();
    v23 = v22;
    (*(v14 + 8))(v13, v15);
    v24 = sub_24AFF321C(v21, v23, &v136);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v0[25] = v107;
    sub_24B2D5854();
    swift_getWitnessTable();
    v25 = sub_24B232AB0();
    v27 = sub_24AFF321C(v25, v26, &v136);

    *(v19 + 24) = v27;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    v0[18] = v109;
    v0[19] = v111;

    v28 = sub_24B2D53C4();
    v30 = sub_24AFF321C(v28, v29, &v136);

    *(v19 + 44) = v30;
    _os_log_impl(&dword_24AFD2000, v11, v113, "Provider(%{public}s):addSubscriptions\n- requestedSubscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v19, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v112, -1, -1);
    MEMORY[0x24C23D530](v19, -1, -1);

    v31 = v126;
    v127 = *(v114 + 8);
    v127(v31, v115);
  }

  else
  {
    v32 = v0[37];
    v33 = v0[33];
    v34 = v0[34];

    v127 = *(v34 + 8);
    v127(v32, v33);
  }

  v118 = v10;
  v35 = v0[45];
  v36 = v0[40];
  v37 = v0[26];
  v128(v0[27], v0[28]);

  v10(v35, v36);
  v0[20] = v37;
  v0[55] = sub_24B2D5854();

  v0[56] = swift_getWitnessTable();
  v0[57] = sub_24B2D5824();

  v38 = sub_24B2D5804();
  v0[58] = v38;
  v39 = sub_24B2D5834();
  v116 = v0[40];
  v40 = v0[33];
  v41 = v0[28];
  v42 = v0[27];
  if (v39)
  {
    v43 = v0[44];
    v44 = v0[36];

    v128(v42, v41);
    v123(v44, v43, v40);
    v118(v43, v116);
    swift_unknownObjectRetain();

    v45 = sub_24B2D3164();
    v46 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v45, v46))
    {
      v121 = v0[47];
      v124 = v0[48];
      v129 = v0[33];
      v132 = v0[36];
      v47 = v0[31];
      v48 = v0[32];
      v119 = v0[30];
      v49 = v0[27];
      v50 = v0[28];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v136 = v52;
      *v51 = 136446723;
      (*(v50 + 56))(v49, v50);
      sub_24B2D12A4();

      v53 = sub_24B2D24B4();
      v55 = v54;
      (*(v47 + 8))(v48, v119);
      v56 = sub_24AFF321C(v53, v55, &v136);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2160;
      *(v51 + 14) = 1752392040;
      *(v51 + 22) = 2081;
      v0[16] = v121;
      v0[17] = v124;

      v57 = sub_24B2D53C4();
      v59 = sub_24AFF321C(v57, v58, &v136);

      *(v51 + 24) = v59;
      _os_log_impl(&dword_24AFD2000, v45, v46, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to isEmpty\n- Subscriber: %{private,mask.hash}s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v51, -1, -1);

      v61 = v129;
      v60 = v132;
    }

    else
    {
      v84 = v0[36];
      v85 = v0[33];

      v60 = v84;
      v61 = v85;
    }

    v127(v60, v61);
    v86 = v0[51];
    v88 = v0[47];
    v87 = v0[48];
    v89 = v0[28];
    v90 = v0[27];

    v86(v90, v89);
    v0[10] = v88;
    v0[11] = v87;
    sub_24B1A35D0();
    sub_24B2D5224();

    if (!v0[21])
    {
      v91 = sub_24B2D5584();
      if (sub_24B2D55C4())
      {
        sub_24B1A2638(v91, v0[38], v0[39]);
      }
    }

    v110 = v0[57];
    v99 = v0[48];
    v106 = v0[47];
    v108 = v0[40];
    v135 = v0[28];
    v101 = v0[26];
    v100 = v0[27];
    (v0[53])();
    v0[22] = v101;

    v0[23] = sub_24B2D5824();
    v0[12] = v106;
    v0[13] = v99;
    v102 = *(v135 + 48);
    v103 = v102(v0 + 2, v100);
    sub_24B2D5214();
    sub_24B2D5234();
    sub_24B1A395C(v108);
    v103(v0 + 2, 0);
    v104 = (v102)(v0 + 6, v100, v135);
    SubscriptionManagerStorage.uniqueSubscriptions.setter(v110, v108);
    v104(v0 + 6, 0);

    v105 = v0[1];

    return v105();
  }

  else
  {
    v62 = v0[43];
    v63 = v0[35];
    v128(v42, v41);
    v123(v63, v62, v40);
    v118(v62, v116);
    swift_unknownObjectRetain();

    v64 = sub_24B2D3164();
    v65 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v64, v65))
    {
      v117 = v0[47];
      v120 = v0[48];
      v66 = v0[32];
      v130 = v0[33];
      v133 = v0[35];
      v67 = v0[30];
      v68 = v0[31];
      v125 = v65;
      v69 = v0[28];
      v70 = v0[27];
      v71 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v136 = v122;
      *v71 = 136447235;
      (*(v69 + 56))(v70, v69);
      sub_24B2D12A4();

      v72 = sub_24B2D24B4();
      v74 = v73;
      (*(v68 + 8))(v66, v67);
      v75 = sub_24AFF321C(v72, v74, &v136);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2160;
      *(v71 + 14) = 1752392040;
      *(v71 + 22) = 2081;
      v0[24] = v38;
      swift_getWitnessTable();
      v76 = sub_24B232AB0();
      v78 = sub_24AFF321C(v76, v77, &v136);

      *(v71 + 24) = v78;
      *(v71 + 32) = 2160;
      *(v71 + 34) = 1752392040;
      *(v71 + 42) = 2081;
      v0[14] = v117;
      v0[15] = v120;

      v79 = sub_24B2D53C4();
      v81 = sub_24AFF321C(v79, v80, &v136);

      *(v71 + 44) = v81;
      _os_log_impl(&dword_24AFD2000, v64, v125, "Provider(%{public}s):addSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s", v71, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v122, -1, -1);
      MEMORY[0x24C23D530](v71, -1, -1);

      v83 = v130;
      v82 = v133;
    }

    else
    {
      v92 = v0[35];
      v93 = v0[33];

      v82 = v92;
      v83 = v93;
    }

    v127(v82, v83);
    v134 = v0[28];
    v94 = sub_24B2D5834();

    v131 = (*(v134 + 64) + **(v134 + 64));
    v95 = swift_task_alloc();
    v0[59] = v95;
    *v95 = v0;
    v95[1] = sub_24B19818C;
    v96 = v0[28];
    v97 = v0[27];

    return v131(v38, v94 & 1, v97, v96);
  }
}