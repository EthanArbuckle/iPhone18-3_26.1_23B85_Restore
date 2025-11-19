uint64_t sub_248244868@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE904A0);
  result = sub_24824443C(a1, *(a1 + *(v4 + 48)));
  *a2 = result & 1;
  return result;
}

uint64_t sub_2482448E0(_BYTE *a1)
{
  v2 = sub_248381740();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BF0);
      *(swift_allocObject() + 16) = xmmword_24839C7F0;
      sub_248381730();
      swift_getKeyPath();
      sub_248382050();
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;

      sub_248381730();
      swift_getKeyPath();
      sub_248382060();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_248244ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2483822C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_248244B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90490);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_248232C78(a1, &v8 - v5, &unk_27EE90490);
  return sub_248231B84(v6, a2, &qword_27EE90410);
}

uint64_t sub_248244BCC(uint64_t a1, uint64_t a2, const char *a3, unsigned int *a4)
{
  v43 = a4;
  v41 = a3;
  v45 = a2;
  v5 = sub_248382250();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_248382A90();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24827C568();
  (*(v15 + 16))(v17, v18, v14);
  v44 = a1;
  sub_248232C78(a1, v13, &qword_27EE90410);
  v19 = sub_248382A80();
  v20 = sub_248383D80();
  if (os_log_type_enabled(v19, v20))
  {
    v37 = v20;
    v39 = v6;
    v40 = v5;
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    v38 = v21;
    *v21 = 136446210;
    sub_248232C78(v13, v10, &qword_27EE90410);
    v22 = sub_248381C60();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v10, 1, v22) == 1)
    {
      sub_24822D578(v10, &qword_27EE90410);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v24 = sub_248381C50();
      v25 = v26;
      (*(v23 + 8))(v10, v22);
    }

    v46[1] = v24;
    v46[2] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10);
    v27 = sub_2483841D0();
    v29 = v28;
    sub_24822D578(v13, &qword_27EE90410);

    v30 = sub_24814A378(v27, v29, v46);

    v31 = v38;
    *(v38 + 1) = v30;
    _os_log_impl(&dword_248146000, v19, v37, v41, v31, 0xCu);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x24C1CD5F0](v32, -1, -1);
    MEMORY[0x24C1CD5F0](v31, -1, -1);

    (*(v15 + 8))(v17, v14);
    v6 = v39;
    v5 = v40;
  }

  else
  {

    sub_24822D578(v13, &qword_27EE90410);
    (*(v15 + 8))(v17, v14);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = result;

    v35 = v42;
    (*(v6 + 104))(v42, *v43, v5);
    sub_248381FB0();

    return (*(v6 + 8))(v35, v5);
  }

  return result;
}

uint64_t sub_2482450AC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *a1;
  v8 = sub_248383BE0();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_248383BB0();

  v9 = sub_248383BA0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = v7;
  sub_248245D08(0, 0, v6, &unk_24839D5E0, v10);
}

uint64_t sub_2482451D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_248383BB0();
  v5[8] = sub_248383BA0();
  v7 = sub_248383B90();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_248245274, v7, v6);
}

uint64_t sub_248245274()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_248245380;
    v3 = *(v0 + 56);

    return sub_248245534(v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_248245380()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2482454C0, v4, v3);
}

uint64_t sub_2482454C0()
{

  **(v0 + 40) = *(v0 + 88) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248245534(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_248384500();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_248383040();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_248382A90();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_248383BB0();
  v2[17] = sub_248383BA0();
  v7 = sub_248383B90();
  v2[18] = v7;
  v2[19] = v6;

  return MEMORY[0x2822009F8](sub_248245704, v7, v6);
}

uint64_t sub_248245704()
{
  v36 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_24827C568();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_248382A80();
  v6 = sub_248383D80();
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136446210;
    v0[2] = v10;
    type metadata accessor for UIUserInterfaceStyle(0);
    v13 = sub_2483839A0();
    v15 = sub_24814A378(v13, v14, &v35);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_248146000, v5, v6, "Handle appearance change - Sending appearance: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1CD5F0](v12, -1, -1);
    MEMORY[0x24C1CD5F0](v11, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[3];
  v20 = v0[4];
  v0[20] = *(v20 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator);
  v21 = v0[8];
  v22 = v0[9];
  v23 = v22[13];
  v0[21] = v23;
  v25 = v0[12];
  v24 = v0[13];
  if (v19 == 1)
  {
    v26 = MEMORY[0x277CDF3D0];
  }

  else
  {
    v26 = MEMORY[0x277CDF3C0];
  }

  v23(v0[12], *v26, v21);
  v27 = v22[4];
  v0[22] = v27;
  v0[23] = (v22 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v27(v24, v25, v21);
  sub_248381E70();
  v28 = v22[1];
  v0[24] = v28;
  v0[25] = (v22 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v24, v21);
  v29 = (v20 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearanceCompletion);
  v30 = *(v20 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearanceCompletion);
  if (v30)
  {
    v31 = v0[3];

    v30(v31);
    sub_248167864(v30);
    v32 = *v29;
  }

  else
  {
    v32 = 0;
  }

  *v29 = 0;
  v29[1] = 0;
  sub_248167864(v32);
  sub_248384710();
  v33 = swift_task_alloc();
  v0[26] = v33;
  *v33 = v0;
  v33[1] = sub_248245A48;

  return sub_24825A254(50000000000000000, 0, 0, 0, 1);
}

uint64_t sub_248245A48()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_24825ED3C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_248245BDC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_248245BDC()
{

  if ((sub_248383C10() & 1) == 0)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 176);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);
    if (*(v0 + 24) == 1)
    {
      v6 = MEMORY[0x277CDF3D0];
    }

    else
    {
      v6 = MEMORY[0x277CDF3C0];
    }

    (*(v0 + 168))(*(v0 + 80), *v6, *(v0 + 64));
    v2(v3, v4, v5);
    sub_248381E60();
    v1(v3, v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_248245D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_248232C78(a3, v25 - v10, &qword_27EE90480);
  v12 = sub_248383BE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24822D578(v11, &qword_27EE90480);
  }

  else
  {
    sub_248383BD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_248383B90();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2483839C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90488);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24822D578(a3, &qword_27EE90480);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24822D578(a3, &qword_27EE90480);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90488);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24824601C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90228);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90230);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  MEMORY[0x28223BE20](v5);
  v27 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90238);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90240);
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_248381F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90248);
  sub_24822D648(&unk_27EE90250, &qword_27EE90238);
  sub_248382F60();
  v18 = (*(v9 + 8))(v11, v8);
  v32 = (*(**(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_dataSources) + 360))(v18);
  v19 = v26;
  (*(v12 + 16))(v14, v17, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE931B0);
  sub_24822D648(&qword_27EE90260, &unk_27EE931B0);
  sub_24822D648(&qword_27EE90268, &qword_27EE90240);
  v20 = v19;
  sub_248382D00();
  sub_24822D648(&qword_27EE90270, &qword_27EE90228);
  v21 = v27;
  v22 = v28;
  sub_248382F60();
  (*(v29 + 8))(v4, v22);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24822D648(&qword_27EE90278, &qword_27EE90230);
  v23 = v30;
  sub_248383000();

  (*(v31 + 8))(v21, v23);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  return (*(v12 + 8))(v17, v20);
}

uint64_t sub_24824659C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v44 = sub_248382250();
  v37 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2483822E0();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  sub_248232C78(a1, &v33 - v14, &qword_27EE8FE30);
  v16 = sub_2483824B0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24822D578(v15, &qword_27EE8FE30);
LABEL_15:
    v25 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v18 = sub_248382460();
  (*(v17 + 8))(v15, v16);
  v19 = v18;
  v20 = *(v18 + 16);
  if (!v20)
  {

    goto LABEL_15;
  }

  v22 = *(v10 + 16);
  v21 = v10 + 16;
  v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
  v33 = v19;
  v24 = v19 + v23;
  v38 = (v37 + 48);
  v39 = (v21 - 8);
  v41 = (v37 + 32);
  v42 = v22;
  v25 = MEMORY[0x277D84F90];
  v43 = v21;
  v40 = *(v21 + 56);
  v35 = v8;
  v36 = v5;
  do
  {
    v26 = v45;
    v42(v12, v24, v45);
    sub_248382280();
    sub_248231B84(v5, v8, &qword_27EE902B8);
    (*v39)(v12, v26);
    v27 = v44;
    if ((*v38)(v8, 1, v44) == 1)
    {
      sub_24822D578(v8, &qword_27EE902B8);
    }

    else
    {
      v28 = *v41;
      (*v41)(v46, v8, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_24825A70C(0, *(v25 + 2) + 1, 1, v25, &qword_27EE902C0, &unk_24839D4F8, MEMORY[0x277CF8DA0]);
      }

      v30 = *(v25 + 2);
      v29 = *(v25 + 3);
      if (v30 >= v29 >> 1)
      {
        v25 = sub_24825A70C(v29 > 1, v30 + 1, 1, v25, &qword_27EE902C0, &unk_24839D4F8, MEMORY[0x277CF8DA0]);
      }

      *(v25 + 2) = v30 + 1;
      v28(&v25[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30], v46, v27);
      v8 = v35;
      v5 = v36;
    }

    v24 += v40;
    --v20;
  }

  while (v20);

LABEL_16:
  v31 = sub_24825C6EC(v25);

  *v34 = v31;
  return result;
}

void *sub_248246A98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  result = sub_24825B76C(v4, v3);
  *a2 = result;
  return result;
}

uint64_t sub_248246ADC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2483837A0();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2483837E0();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = sub_24827C568();
  (*(v9 + 16))(v11, v13, v8);

  v14 = sub_248382A80();
  v15 = sub_248383DC0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    sub_248382250();
    v30 = v8;
    sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
    v18 = sub_248383C90();
    v20 = a2;
    v21 = sub_24814A378(v18, v19, aBlock);

    *(v16 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_248146000, v14, v15, "Vehicle supports request content in zones: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1CD5F0](v17, -1, -1);
    MEMORY[0x24C1CD5F0](v16, -1, -1);

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_24814FB28(0, &qword_27EE90280);
  v22 = sub_248383E50();
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v12;
  aBlock[4] = sub_24825E714;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_185;
  v24 = _Block_copy(aBlock);

  v25 = v31;
  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24825D5EC(&qword_27EE91EB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24822D648(&qword_27EE91EC0, &unk_27EE90290);
  v26 = v34;
  v27 = v36;
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v25, v26, v24);
  _Block_release(v24);

  (*(v35 + 8))(v26, v27);
  return (*(v32 + 8))(v25, v33);
}

void sub_248246FE0()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27EE94FD0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v1, v0, sub_2482471D4, qword_27EE94FD8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27EE94FE0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v2, v0, sub_248247214, qword_27EE94FE8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27EE94FF0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v3, v0, sub_248247254, qword_27EE94FF8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = v4;
  if (qword_27EE95000 != -1)
  {
    swift_once();
    v4 = v5;
  }

  CFNotificationCenterAddObserver(v4, v0, sub_248247294, qword_27EE95008, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

id sub_2482472D4(void (*a1)(unint64_t, char *, uint64_t))
{
  v113 = a1;
  v1 = sub_248381960();
  v103 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v102 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v88 - v4;
  v96 = sub_2483825A0();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90000);
  MEMORY[0x28223BE20](v98);
  v100 = &v88 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90008);
  MEMORY[0x28223BE20](v99);
  v101 = &v88 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90010);
  MEMORY[0x28223BE20](v109);
  v108 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v112 = &v88 - v11;
  MEMORY[0x28223BE20](v12);
  v111 = &v88 - v13;
  v115 = sub_248381DF0();
  v110 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v88 - v17;
  v19 = sub_2483824B0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v88 - v24;
  sub_248232C78(v113, v18, &qword_27EE8FE30);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_24822D578(v18, &qword_27EE8FE30);
    return 0;
  }

  else
  {
    v106 = v20;
    v27 = *(v20 + 32);
    v94 = v20 + 32;
    v113 = v27;
    v89 = v1;
    v91 = v19;
    v27(v25, v18, v19);
    v28 = v114;
    swift_unknownObjectRetain();
    v107 = v15;
    sub_248381DE0();
    v29 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    [v29 screenScale];
    v31 = v30;

    v32 = *(v20 + 16);
    v92 = v20 + 16;
    v93 = v32;
    v90 = v22;
    v104 = v25;
    v32(v22, v25, v19);
    v33 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
    swift_unknownObjectRelease();
    [v33 pixelSize];

    v34 = v95;
    v35 = v96;
    (*(v95 + 16))(v6, v28 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v96);
    sub_248382540();
    (*(v34 + 8))(v6, v35);
    v36 = v100;
    sub_2483817F0();
    sub_248382450();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90018);
    v37 = v103;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_24839CCA0;
    sub_248381950();
    sub_248381940();
    v117 = v38;
    sub_24825D5EC(&qword_27EE90020, MEMORY[0x277CF8B48]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90028);
    sub_24822D648(&qword_27EE90030, &qword_27EE90028);
    v39 = v102;
    v40 = v89;
    sub_2483842D0();
    sub_24822D648(&qword_27EE90038, &qword_27EE90000);
    v41 = v101;
    sub_248383510();
    (*(v37 + 8))(v39, v40);
    sub_24822D578(v36, &qword_27EE90000);
    sub_248383790();
    v42 = v41 + *(v99 + 36);
    *v42 = 1.0 / v31;
    *(v42 + 8) = 1.0 / v31;
    *(v42 + 16) = v43;
    *(v42 + 24) = v44;
    v45 = v114;
    v46 = *(v114 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_closeButtonFocusEffectCoordinator);
    type metadata accessor for CloseButtonFocusEffectCoordinator(0);
    sub_24825D7A4();
    v47 = sub_248383190();
    v49 = v48;
    v50 = v111;
    sub_248232C78(v41, v111, &qword_27EE90008);
    v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90040) + 36));
    *v51 = v47;
    v51[1] = v49;
    v52 = sub_248382DD0();
    sub_24822D578(v41, &qword_27EE90008);
    v53 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90048) + 36));
    *v53 = v52;
    v53[1] = v46;
    KeyPath = swift_getKeyPath();

    v55 = sub_24823EEE4();
    v56 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90050) + 36));
    *v56 = KeyPath;
    v56[1] = v55;
    v57 = swift_getKeyPath();
    v58 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90058) + 36));
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90060) + 28);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90068);
    sub_24825DA44(&qword_27EE90070, &qword_27EE90068, &unk_24839D2F8, sub_24825D8D0);
    sub_248381B20();
    v60 = sub_248381B10();
    (*(*(v60 - 8) + 56))(v58 + v59, 0, 1, v60);
    *v58 = v57;
    v61 = swift_getKeyPath();
    v62 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90090) + 36));
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90098) + 28);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900A0);
    sub_24825DA44(&qword_27EE900A8, &qword_27EE900A0, &unk_24839D348, sub_24825DAC0);
    sub_248381E10();
    v64 = sub_248381E00();
    (*(*(v64 - 8) + 56))(v62 + v63, 0, 1, v64);
    *v62 = v61;
    v65 = swift_getKeyPath();
    v66 = *(v45 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_frameRateLimit);
    LOBYTE(v47) = *(v45 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_frameRateLimit + 8);
    v67 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900C0) + 36);
    *v67 = v65;
    *(v67 + 8) = v66;
    *(v67 + 16) = v47;
    v68 = *(v45 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator);
    sub_248382070();
    sub_24825D5EC(&qword_27EE900C8, MEMORY[0x277CF8D30]);
    v69 = sub_248382DD0();
    v70 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900D0) + 36));
    *v70 = v69;
    v70[1] = v68;
    v71 = swift_getKeyPath();
    v72 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900D8) + 36));
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900E0);
    v74 = v110;
    (*(v110 + 16))(v72 + *(v73 + 28), v107, v115);
    *v72 = v71;
    v75 = swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900E8) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900F0);

    sub_248381C70();
    *v76 = v75;
    v77 = *(v45 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_signpostCoordinator);
    v78 = v90;
    v79 = v91;
    v93(v90, v104, v91);
    v80 = (*(v106 + 80) + 24) & ~*(v106 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v77;
    v113(v81 + v80, v78, v79);
    v82 = (v50 + *(v109 + 36));
    sub_248383100();

    sub_248383BC0();
    *v82 = &unk_24839D420;
    v82[1] = v81;
    v83 = v112;
    sub_248232C78(v50, v112, &qword_27EE90010);
    v84 = type metadata accessor for LayoutViewController();
    v85 = objc_allocWithZone(v84);
    sub_248232C78(v83, v108, &qword_27EE90010);
    sub_24825DDA8();
    v117 = sub_248383710();
    v86 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE901B8));
    *&v85[OBJC_IVAR____TtC9DashBoard20LayoutViewController_hostingController] = sub_248383350();
    v116.receiver = v85;
    v116.super_class = v84;
    v87 = objc_msgSendSuper2(&v116, sel_initWithNibName_bundle_, 0, 0);
    sub_24822D578(v83, &qword_27EE90010);
    sub_24822D578(v50, &qword_27EE90010);
    (*(v74 + 8))(v107, v115);
    (*(v106 + 8))(v104, v79);
    return v87;
  }
}

uint64_t sub_24824820C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2483831D0();
  *a1 = result;
  return result;
}

uint64_t sub_2482482FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_248232C78(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_2482483A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_2483831B0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2482484AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_24824857C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_248383BB0();
  v2[5] = sub_248383BA0();
  v4 = sub_248383B90();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_248248618, v4, v3);
}

uint64_t sub_248248618()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[10] = sub_248383BA0();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_24824873C;

  return MEMORY[0x282200830]();
}

void sub_24824873C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);

    MEMORY[0x2822009F8](sub_248248888, v3, v4);
  }
}

uint64_t sub_248248888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2482488E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_2483824B0();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v6 = sub_248382A90();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  sub_248383BB0();
  v3[13] = sub_248383BA0();
  v8 = sub_248383B90();
  v3[14] = v8;
  v3[15] = v7;

  return MEMORY[0x2822009F8](sub_248248AA0, v8, v7);
}

uint64_t sub_248248AA0()
{
  v35 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  v8 = sub_24827C568();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_248382A80();
  v10 = sub_248383DC0();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  if (v11)
  {
    v33 = *(v0 + 80);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    log = v9;
    v20 = *(v0 + 32);
    v29 = *(v0 + 56);
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v21 = 136315138;
    v32 = v12;
    sub_248382450();
    sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
    v22 = sub_248384650();
    v28 = v10;
    v24 = v23;
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v29);
    v25 = sub_24814A378(v22, v24, &v34);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_248146000, log, v28, "Layout view for %s appeared)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1CD5F0](v31, -1, -1);
    MEMORY[0x24C1CD5F0](v21, -1, -1);

    (*(v13 + 8))(v32, v33);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  (*(**(v0 + 24) + 272))(1);
  v26 = swift_task_alloc();
  *(v0 + 128) = v26;
  *v26 = v0;
  v26[1] = sub_248248D88;

  return MEMORY[0x282200490]();
}

uint64_t sub_248248D88()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_248248EA8, v3, v2);
}

uint64_t sub_248248EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248248F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = sub_2483824B0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_248382A90();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24827C568();
  (*(v13 + 16))(v15, v16, v12);
  (*(v9 + 16))(v11, a1, v8);
  v17 = sub_248382A80();
  v18 = sub_248383DC0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a2;
    v20 = v19;
    v31 = v19;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v20 = 136315138;
    v21 = v7;
    v32 = v18;
    sub_248382450();
    sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
    v22 = v36;
    v23 = sub_248384650();
    v33 = v12;
    v25 = v24;
    (*(v37 + 8))(v21, v22);
    (*(v9 + 8))(v11, v8);
    v26 = sub_24814A378(v23, v25, &v38);

    v27 = v31;
    *(v31 + 4) = v26;
    _os_log_impl(&dword_248146000, v17, v32, "Layout view for %s disappeared)", v27, 0xCu);
    v28 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x24C1CD5F0](v28, -1, -1);
    v29 = v27;
    a2 = v35;
    MEMORY[0x24C1CD5F0](v29, -1, -1);

    (*(v13 + 8))(v15, v33);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
  }

  return (*(*a2 + 272))(0);
}

id sub_248249320(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_24825CADC(a1);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void sub_2482493A4(char *a1)
{
  v2 = v1;
  v147 = sub_248381EC0();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = v4;
  v145 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v142 - v6);
  v8 = sub_248382A90();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v143 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v154 = &v142 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v142 - v14;
  v16 = sub_24827C568();
  v17 = *(v9 + 16);
  v149 = v16;
  v151 = (v9 + 16);
  v150 = v17;
  (v17)(v15);
  v18 = sub_248382A80();
  v19 = sub_248383DC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v8;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_248146000, v18, v19, "Starting layout change", v21, 2u);
    v22 = v21;
    v8 = v20;
    MEMORY[0x24C1CD5F0](v22, -1, -1);
  }

  v23 = *(v9 + 8);
  v156 = v8;
  v153 = v9 + 8;
  v152 = v23;
  v23(v15, v8);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController;
  v26 = *&v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController];
  *(v24 + 16) = v26;
  v27 = (v24 + 16);
  v28 = *&v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData];
  *&v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData] = 0;
  v29 = v26;
  sub_248381E90();
  v30 = sub_2482472D4(v7);
  sub_24822D578(v7, &qword_27EE8FE30);
  v31 = *&v2[v25];
  *&v2[v25] = v30;
  v32 = v30;

  v157 = a1;
  v158 = v28;
  if (!v30)
  {
    goto LABEL_22;
  }

  v33 = v32;
  [v2 addChildViewController_];
  v34 = [v33 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_46;
  }

  v35 = v34;
  [v34 setAlpha_];

  v36 = [v33 view];
  if (!v36)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v37 = [v2 view];
  if (!v37)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v38 = v37;
  [v37 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v36 setFrame_];
  v47 = [v2 view];
  if (!v47)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v48 = v47;
  v49 = [v33 view];

  if (!v49)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v48 addSubview_];

  [v33 didMoveToParentViewController_];
  v50 = [v33 view];

  if (!v50)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v50 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_24839CCB0;
  v52 = [v33 view];

  if (!v52)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v53 = [v52 leadingAnchor];

  v54 = [v2 view];
  if (!v54)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v55 = v54;
  v56 = [v54 leadingAnchor];

  v57 = [v53 constraintEqualToAnchor_];
  *(v51 + 32) = v57;
  v58 = [v33 view];

  if (!v58)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v59 = [v58 trailingAnchor];

  v60 = [v2 view];
  if (!v60)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v61 = v60;
  v62 = [v60 trailingAnchor];

  v63 = [v59 constraintEqualToAnchor_];
  *(v51 + 40) = v63;
  v64 = [v33 view];

  if (!v64)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v65 = [v64 topAnchor];

  v66 = [v2 view];
  if (!v66)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v67 = v66;
  v155 = (v24 + 16);
  v68 = [v66 topAnchor];

  v69 = [v65 constraintEqualToAnchor_];
  *(v51 + 48) = v69;
  v70 = [v33 view];

  if (!v70)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v71 = [v70 bottomAnchor];

  v72 = [v2 view];
  if (!v72)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v73 = v72;
  v74 = objc_opt_self();
  v75 = [v73 bottomAnchor];

  v76 = [v71 constraintEqualToAnchor_];
  *(v51 + 56) = v76;
  sub_24814FB28(0, &qword_27EE8FE90);
  v77 = sub_248383B00();

  [v74 activateConstraints_];

  v78 = *&v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl];
  v28 = v158;
  v27 = v155;
  if (v78)
  {
    v79 = v78;
    v80 = [v2 view];
    if (v80)
    {
      v81 = v80;
      [v80 addSubview_];

      goto LABEL_21;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_21:

LABEL_22:
  if ((sub_248381E80() & 1) != 0 || (v82 = *v27) == 0)
  {
LABEL_26:
    v85 = 0.5;
    if ((sub_248381E80() & 1) == 0)
    {
      if (sub_248381EB0())
      {
        v85 = 0.5;
      }

      else
      {
        v85 = 0.01;
      }
    }

    v86 = [objc_opt_self() functionWithName_];
    v87 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = swift_allocObject();
    v88[2] = v87;
    v88[3] = v24;
    v88[4] = v28;
    v89 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v86;
    *(v90 + 32) = v85;
    *(v90 + 40) = sub_24825D634;
    *(v90 + 48) = v88;
    *(v90 + 56) = v28;
    swift_beginAccess();
    v91 = *(v24 + 16);
    v155 = v88;
    if (v91)
    {
      v148 = v90;
      v92 = v87;
      v93 = v154;
      v94 = v156;
      v150(v154, v149, v156);
      swift_bridgeObjectRetain_n();
      v149 = v24;
      swift_retain_n();
      v150 = v92;

      v151 = v86;
      v95 = v86;
      v96 = v91;
      v97 = sub_248382A80();
      v98 = sub_248383DC0();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_248146000, v97, v98, "old layout animation starting", v99, 2u);
        v100 = v99;
        v94 = v156;
        v93 = v154;
        MEMORY[0x24C1CD5F0](v100, -1, -1);
      }

      v152(v93, v94);
      v101 = objc_opt_self();
      [v101 begin];
      [v101 setAnimationTimingFunction_];
      v163 = sub_24824BC34;
      v164 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v160 = 1107296256;
      v161 = sub_24814C01C;
      v162 = &block_descriptor_123;
      v102 = _Block_copy(&aBlock);
      [v101 setCompletionBlock_];
      _Block_release(v102);
      v156 = objc_opt_self();
      v103 = swift_allocObject();
      *(v103 + 16) = v96;
      v163 = sub_24825D6AC;
      v164 = v103;
      aBlock = MEMORY[0x277D85DD0];
      v160 = 1107296256;
      v161 = sub_24814C01C;
      v162 = &block_descriptor_129;
      v104 = _Block_copy(&aBlock);
      v154 = v96;

      v105 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v106 = v146;
      v107 = v145;
      v108 = v147;
      (*(v146 + 16))(v145, v157, v147);
      v109 = (*(v106 + 80) + 24) & ~*(v106 + 80);
      v110 = (v144 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      *(v111 + 16) = v105;
      (*(v106 + 32))(v111 + v109, v107, v108);
      v112 = (v111 + v110);
      v113 = v148;
      *v112 = sub_24825D640;
      v112[1] = v113;
      v163 = sub_24825D710;
      v164 = v111;
      aBlock = MEMORY[0x277D85DD0];
      v160 = 1107296256;
      v161 = sub_24824BBE0;
      v162 = &block_descriptor_136;
      v114 = _Block_copy(&aBlock);

      [v156 animateWithDuration:v104 animations:v114 completion:v85 * 0.5];
      _Block_release(v114);
      _Block_release(v104);
      [v101 commit];

      v86 = v151;
      goto LABEL_44;
    }

    v115 = swift_allocObject();
    v115[2] = v87;
    v115[3] = v24;
    v115[4] = v28;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();

      v140 = v86;

      goto LABEL_43;
    }

    v117 = Strong;
    v148 = v90;
    v118 = *(Strong + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController);
    if (v118)
    {
      v157 = Strong;

      v119 = v87;
      v120 = v143;
      v121 = v156;
      v150(v143, v149, v156);
      v150 = v119;
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v151 = v86;
      v122 = v86;

      v123 = v118;
      v124 = sub_248382A80();
      v125 = sub_248383DC0();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = v123;
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_248146000, v124, v125, "new layout animation starting", v127, 2u);
        v128 = v127;
        v123 = v126;
        v121 = v156;
        MEMORY[0x24C1CD5F0](v128, -1, -1);
      }

      v152(v120, v121);
      v129 = objc_opt_self();
      [v129 begin];
      [v129 setAnimationTimingFunction_];
      v163 = sub_24824BA08;
      v164 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v160 = 1107296256;
      v161 = sub_24814C01C;
      v162 = &block_descriptor;
      v130 = _Block_copy(&aBlock);
      [v129 setCompletionBlock_];
      _Block_release(v130);
      v131 = objc_opt_self();
      v132 = swift_allocObject();
      *(v132 + 16) = v123;
      v163 = sub_24825D69C;
      v164 = v132;
      aBlock = MEMORY[0x277D85DD0];
      v160 = 1107296256;
      v161 = sub_24814C01C;
      v162 = &block_descriptor_114;
      v133 = _Block_copy(&aBlock);
      v134 = v123;
      v135 = v133;
      v156 = v134;

      v136 = swift_allocObject();
      *(v136 + 16) = sub_24825ED78;
      *(v136 + 24) = v115;
      v163 = sub_24825D6A4;
      v164 = v136;
      aBlock = MEMORY[0x277D85DD0];
      v160 = 1107296256;
      v161 = sub_24824BBE0;
      v162 = &block_descriptor_120;
      v137 = _Block_copy(&aBlock);

      [v131 animateWithDuration:v135 animations:v137 completion:v85 * 0.5];
      _Block_release(v137);
      _Block_release(v135);
      [v129 commit];

      v86 = v151;
      v117 = v157;
      if (v28)
      {
        goto LABEL_39;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();

      v141 = v86;

      sub_24824A74C(v87, v24, v28);
      if (v28)
      {
LABEL_39:
        v138 = *&v117[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_themeController];
        v139.n128_u64[0] = sub_248230740();
        (*((*MEMORY[0x277D85000] & *v138) + 0x110))(v28, v85 * 0.5, v139);

LABEL_43:

LABEL_44:

        return;
      }
    }

    goto LABEL_43;
  }

  [*v27 willMoveToParentViewController_];
  v83 = [v82 view];
  if (v83)
  {
    v84 = v83;
    [v83 removeFromSuperview];

    [v82 removeFromParentViewController];
    *v27 = 0;

    goto LABEL_26;
  }

LABEL_60:
  __break(1u);
}

void sub_24824A74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v94 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v88 - v10;
  MEMORY[0x28223BE20](v12);
  v102 = &v88 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  v17 = sub_2483824B0();
  v107 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v99 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = &v88 - v20;
  v21 = sub_248382A90();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v103 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v88 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v88 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v90 = v5;
    v91 = v4;
    v92 = v11;
    v106 = v17;
    v31 = sub_24827C568();
    v32 = *(v22 + 16);
    v97 = v31;
    v98 = v32;
    (v32)(v28);
    v33 = sub_248382A80();
    v34 = sub_248383DC0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_248146000, v33, v34, "Ended layout change", v35, 2u);
      MEMORY[0x24C1CD5F0](v35, -1, -1);
    }

    v36 = *(v22 + 8);
    v36(v28, v21);
    swift_beginAccess();
    v37 = *(a2 + 16);
    if (v37)
    {
      v38 = [v37 view];
      if (!v38)
      {
        __break(1u);
        return;
      }

      v39 = v38;
      [v38 removeFromSuperview];
    }

    v95 = v36;
    v96 = v22 + 8;
    swift_beginAccess();
    v40 = *(a2 + 16);
    if (v40)
    {
      [v40 removeFromParentViewController];
    }

    v100 = v21;
    v41 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator;

    sub_248381EE0();

    [v30 setNeedsFocusUpdate];
    v42 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_environment;
    v43 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v44 = [v43 wallpaperPreferences];

    if (v44)
    {
      if (v104)
      {
        sub_24814FB28(0, &qword_27EE8FEF8);
        v45 = sub_248383880();
        [v44 updateThemeData_];

        v44 = v45;
      }
    }

    v46 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_nextLayout;
    swift_beginAccess();
    sub_248232C78(&v30[v46], v16, &qword_27EE8FE30);
    v48 = v106;
    v47 = v107;
    v49 = *(v107 + 48);
    if (v49(v16, 1, v106) == 1)
    {
      sub_24822D578(v16, &qword_27EE8FE30);
      v50 = v101;
      v51 = v100;
      v98(v101, v97, v100);
      v52 = sub_248382A80();
      v53 = sub_248383D80();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_248146000, v52, v53, "No next layout", v54, 2u);
        MEMORY[0x24C1CD5F0](v54, -1, -1);
      }

      else
      {
      }

      v95(v50, v51);
    }

    else
    {
      v89 = v49;
      v101 = v42;
      v104 = v41;
      v55 = v105;
      (*(v47 + 32))(v105, v16, v48);
      v56 = *(v47 + 56);
      v57 = v102;
      v56(v102, 1, 1, v48);
      swift_beginAccess();
      v58 = v57;
      v59 = v55;
      sub_24825CD9C(v58, &v30[v46]);
      swift_endAccess();
      if (v30[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions] == 1 && (v60 = sub_24824F7B8(v55)) != 0)
      {
        v61 = v60;
        v62 = v92;
        v63 = v55;
        v64 = v106;
        (*(v47 + 16))(v92, v63, v106);
        v56(v62, 0, 1, v64);
        sub_24825C5D8(MEMORY[0x277D84F90]);
        *&v30[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData] = v61;

        v65 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
        swift_unknownObjectRelease();
        v66 = [v65 analytics];

        if (v66)
        {
          v67 = v93;
          sub_248232C78(v62, v93, &qword_27EE8FE30);
          if (v89(v67, 1, v64) == 1)
          {
            sub_24822D578(v67, &qword_27EE8FE30);
            v68 = 0;
          }

          else
          {
            sub_248382410();
            (*(v107 + 8))(v67, v64);
            v68 = sub_248383930();
            v59 = v105;
            v47 = v107;
          }

          [v66 changedLayout_];

          v62 = v92;
        }

        sub_248382020();

        sub_248381E50();
        sub_24822D578(v62, &qword_27EE8FE30);
        (*(v47 + 8))(v59, v64);
      }

      else
      {
        v69 = v103;
        v70 = v100;
        v98(v103, v97, v100);
        v71 = v99;
        v72 = v106;
        (*(v47 + 16))(v99, v59, v106);
        v73 = sub_248382A80();
        v74 = v47;
        v75 = sub_248383D80();
        if (os_log_type_enabled(v73, v75))
        {
          v76 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v108[0] = v104;
          *v76 = 136446210;
          v77 = v94;
          sub_248382450();
          sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
          v78 = v71;
          v79 = v91;
          v80 = sub_248384650();
          LODWORD(v102) = v75;
          v81 = v80;
          v83 = v82;
          (*(v90 + 8))(v77, v79);
          v84 = *(v74 + 8);
          v84(v78, v72);
          v85 = sub_24814A378(v81, v83, v108);

          *(v76 + 4) = v85;
          _os_log_impl(&dword_248146000, v73, v102, "Failed to update theme to next layout or transitions not allowed %{public}s", v76, 0xCu);
          v86 = v104;
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x24C1CD5F0](v86, -1, -1);
          MEMORY[0x24C1CD5F0](v76, -1, -1);

          v95(v103, v100);
          v84(v105, v72);
        }

        else
        {

          v87 = *(v47 + 8);
          v87(v71, v72);
          v95(v69, v70);
          v87(v59, v72);
        }
      }
    }
  }
}

uint64_t sub_24824B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  *(v4 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData) = a4;

  v10 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v11 = [v10 analytics];

  if (v11)
  {
    sub_248232C78(a1, v9, &qword_27EE8FE30);
    v12 = sub_2483824B0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_24822D578(v9, &qword_27EE8FE30);
      v14 = 0;
    }

    else
    {
      v16[1] = a1;
      sub_248382410();
      (*(v13 + 8))(v9, v12);
      v14 = sub_248383930();
    }

    [v11 changedLayout_];
  }

  sub_248382020();
  return sub_248381E50();
}

void sub_24824B594(double a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController);
    if (v17)
    {
      v35 = a6;
      v34 = v17;
      v18 = sub_24827C568();
      (*(v12 + 16))(v14, v18, v11);
      v19 = sub_248382A80();
      v20 = sub_248383DC0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_248146000, v19, v20, "new layout animation starting", v21, 2u);
        MEMORY[0x24C1CD5F0](v21, -1, -1);
      }

      (*(v12 + 8))(v14, v11);
      v22 = objc_opt_self();
      [v22 begin];
      [v22 setAnimationTimingFunction_];
      v40 = sub_24824BA08;
      v41 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24814C01C;
      v39 = &block_descriptor_139;
      v23 = _Block_copy(&aBlock);
      [v22 setCompletionBlock_];
      _Block_release(v23);
      v24 = objc_opt_self();
      v25 = swift_allocObject();
      v26 = v34;
      *(v25 + 16) = v34;
      v40 = sub_24825ED58;
      v41 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24814C01C;
      v39 = &block_descriptor_146;
      v27 = _Block_copy(&aBlock);
      v28 = v26;

      v29 = swift_allocObject();
      *(v29 + 16) = a4;
      *(v29 + 24) = a5;
      v40 = sub_24825ED74;
      v41 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24824BBE0;
      v39 = &block_descriptor_153;
      v30 = _Block_copy(&aBlock);

      [v24 animateWithDuration:v27 animations:v30 completion:a1 * 0.5];
      _Block_release(v30);
      _Block_release(v27);
      [v22 commit];

      a6 = v35;
      if (!v35)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a4();
      if (!a6)
      {
        goto LABEL_7;
      }
    }

    v31 = *&v16[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_themeController];
    v32.n128_u64[0] = sub_248230740();
    (*((*MEMORY[0x277D85000] & *v31) + 0x110))(a6, a1 * 0.5, v32);

    v16 = v31;
LABEL_7:
  }
}

void sub_24824BA14(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24824BA74(uint64_t (*a1)(uint64_t))
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24827C568();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_248382A80();
  v8 = sub_248383DC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_248146000, v7, v8, "new layout animation ended", v9, 2u);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return a1(v10);
}

uint64_t sub_24824BBE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24824BC40(const char *a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24827C568();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_248382A80();
  v8 = sub_248383DC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_248146000, v7, v8, a1, v9, 2u);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_24824BD98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_24827C568();
    (*(v9 + 16))(v11, v14, v8);
    v15 = sub_248382A80();
    v16 = sub_248383DC0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = a2;
      v18 = a3;
      v19 = v17;
      *v17 = 0;
      _os_log_impl(&dword_248146000, v15, v16, "old layout animation ended", v17, 2u);
      v20 = v19;
      a3 = v18;
      MEMORY[0x24C1CD5F0](v20, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    sub_248381EA0();
    v21 = sub_2483824B0();
    v22 = (*(*(v21 - 8) + 48))(v7, 1, v21);
    sub_24822D578(v7, &qword_27EE8FE30);
    if (v22 != 1)
    {
      v23 = *&v13[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator];
      v24 = *((*MEMORY[0x277D85000] & *v23) + 0xD8);
      v25 = v23;
      v24();
    }

    a3();
  }
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2483825A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  v58.receiver = v1;
  v58.super_class = v7;
  objc_msgSendSuper2(&v58, sel_viewDidLoad);
  (*(v4 + 16))(v6, &v1[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display], v3);
  v8 = sub_248382550();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for DBLayoutControl();
  v9 = swift_unknownObjectRetain();
  v10 = sub_24823492C(v9, &off_285A50B70, v8 & 1);
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v11 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24839CCB0;
  v14 = [v10 trailingAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v57 = ObjectType;
  v17 = [v15 trailingAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v18;
  v19 = [v10 topAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v21 topAnchor];

  v24 = [v19 constraintEqualToAnchor_];
  *(v13 + 40) = v24;
  v25 = [v10 widthAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v13 + 48) = v26;
  v27 = [v10 heightAnchor];

  v28 = [v27 constraintEqualToConstant_];
  *(v13 + 56) = v28;
  sub_24814FB28(0, &qword_27EE8FE90);
  v29 = sub_248383B00();

  [v22 activateConstraints_];

  v30 = *&v1[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl];
  *&v1[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl] = v10;
  v31 = v10;

  LODWORD(v30) = v1[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken + 8];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = &selRef_releaseFocus;
  if (!v30)
  {
    v33 = &selRef_acquireFocus;
  }

  [Strong *v33];
  swift_unknownObjectRelease();
  v34 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v35 = [v34 interactionAffordances];

  if ((v35 & 4) != 0)
  {
    v36 = objc_allocWithZone(MEMORY[0x277D75AE0]);
    v37 = v1;
    v38 = [v36 initWithTarget:v37 action:sel_handleCarouselSwipeUpGesture];
    [v38 setDirection_];
    v39 = v38;
    [v39 setDelegate_];
    v40 = objc_opt_self();
    v41 = [v40 sharedInstance];
    v42 = v39;
    if (v41)
    {
      v43 = v41;
      v42 = [swift_unknownObjectUnownedLoadStrong() 0x1FA960078];
      swift_unknownObjectRelease();
      [v43 &selRef_animationsByIdentifier + 3];
    }

    v44 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v37 action:sel_handleCarouselSwipeDownGesture];
    [v44 setDirection_];
    v45 = v44;
    [v45 setDelegate_];
    v46 = [v40 sharedInstance];
    if (v46)
    {
      v47 = v46;
      v48 = [swift_unknownObjectUnownedLoadStrong() displayIdentity];
      swift_unknownObjectRelease();
      [v47 addGestureRecognizer:v45 toDisplayWithIdentity:v48];

      v49 = v45;
    }

    else
    {
      v49 = v39;
      v39 = v45;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_24839C7F0;
  v51 = sub_248382C50();
  v52 = MEMORY[0x277D74BF0];
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v55 = v57;
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  sub_248383DF0();

  swift_unknownObjectRelease();
}

uint64_t DBInstrumentClusterLayoutViewController.preferredFocusEnvironments.getter()
{
  result = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController);
  if (v2)
  {
    v3 = v2;
    MEMORY[0x24C1CB0D0]();
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();

    result = v6;
  }

  v4 = *(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl);
  if (v4)
  {
    v5 = v4;
    MEMORY[0x24C1CB0D0]();
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();

    return v6;
  }

  return result;
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  sub_24823EEE4();
  sub_248381B50();

  v4 = *&v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl];
  if (v4)
  {
    [v4 becomeFirstResponder];
  }
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  sub_24823EEE4();
  sub_248381B40();
}

uint64_t DBInstrumentClusterLayoutViewController.mapViewDisabled.getter()
{
  result = DBIsInternalInstall();
  if (result)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = [v1 BOOLForKey_];

    return v2;
  }

  return result;
}

uint64_t sub_24824CBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFC8);
  MEMORY[0x28223BE20](v49);
  v45 = &v40 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFD0);
  MEMORY[0x28223BE20](v47);
  v48 = (&v40 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v40 - v6;
  v7 = sub_2483823E0();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_2483825A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFE8);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(v13 + 16);
  v51 = v2;
  v24(v15, v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v12, v21);
  sub_248382590();
  (*(v13 + 8))(v15, v12);
  v25 = sub_2483824B0();
  sub_24825D5EC(&qword_27EE8FFF0, MEMORY[0x277CF8E08]);
  sub_248383B40();

  if ((*(*(v25 - 8) + 48))(v11, 1, v25))
  {
    sub_24822D578(v11, &qword_27EE8FE30);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_4:
    v28 = &qword_27EE8FFE0;
    v29 = v18;
LABEL_5:
    sub_24822D578(v29, v28);
LABEL_6:
    v30 = v45;
    sub_24824D394(v45);
    v52 = 0x657061706C6C6157;
    v53 = 0xEA00000000003A72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
    sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
    v31 = sub_248384650();
    MEMORY[0x24C1CAFD0](v31);

    v32 = v53;
    v33 = v48;
    v34 = (v30 + *(v49 + 52));
    *v34 = v52;
    v34[1] = v32;
    sub_248232C78(v30, v33, &qword_27EE8FFC8);
    swift_storeEnumTagMultiPayload();
    sub_24822D648(&qword_27EE8FFF8, &qword_27EE8FFC8);
    sub_248383420();
    return sub_24822D578(v30, &qword_27EE8FFC8);
  }

  v26 = v23;
  v27 = v44;
  sub_248382420();
  sub_24822D578(v11, &qword_27EE8FE30);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  (*(v20 + 32))(v26, v18, v19);
  __swift_project_boxed_opaque_existential_0((v51 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_theme), *(v51 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_theme + 24));
  sub_2483825B0();
  v37 = v42;
  v36 = v43;
  if ((*(v42 + 48))(v27, 1, v43) == 1)
  {
    (*(v20 + 8))(v26, v19);
    v28 = &qword_27EE93AE0;
    v29 = v27;
    goto LABEL_5;
  }

  v38 = v41;
  (*(v37 + 32))(v41, v27, v36);
  v39 = sub_2483823A0();
  if (!v39)
  {
    (*(v37 + 8))(v38, v36);
    (*(v20 + 8))(v26, v19);
    goto LABEL_6;
  }

  *v48 = v39;
  swift_storeEnumTagMultiPayload();
  sub_24822D648(&qword_27EE8FFF8, &qword_27EE8FFC8);
  sub_248383420();
  (*(v37 + 8))(v38, v36);
  return (*(v20 + 8))(v26, v19);
}

uint64_t sub_24824D394@<X0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator)) + 0xA8))(&v7);
  if (v8)
  {
    sub_24814F6F4(&v7, v9);
    sub_24825D530(v9, &v7);
    v3 = swift_allocObject();
    sub_24814F6F4(&v7, v3 + 16);
    sub_24814FB28(0, &qword_27EE8FFC0);
    sub_248382640();
    __swift_destroy_boxed_opaque_existential_0(v9);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }

  else
  {
    sub_24822D578(&v7, &unk_27EE90B10);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

unint64_t sub_24824D52C()
{
  v0 = sub_248381760();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x28223BE20](v0);
  v26 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FEA0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = sub_2483817B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  sub_2483817C0();
  v12 = *(v6 + 88);
  if (v12(v11, v5) == *MEMORY[0x277CF8AE8])
  {
    (*(v6 + 96))(v11, v5);
    v13 = sub_248381770();
    (*(*(v13 - 8) + 8))(v11, v13);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_248384440();

    v30 = 0xD000000000000015;
    v31 = 0x80000002483AA490;
    sub_248381790();
    sub_24822D648(&qword_27EE8FEA8, &qword_27EE8FEA0);
    v14 = sub_248384650();
    MEMORY[0x24C1CAFD0](v14);

    (*(v29 + 8))(v4, v2);
    return v30;
  }

  else
  {
    v24 = v4;
    v25 = v2;
    v16 = *(v6 + 8);
    v16(v11, v5);
    sub_2483817C0();
    if (v12(v8, v5) == *MEMORY[0x277CF8AF0])
    {
      (*(v6 + 96))(v8, v5);
      v18 = v26;
      v17 = v27;
      v19 = v28;
      (*(v27 + 32))(v26, v8, v28);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_248384530();
      MEMORY[0x24C1CAFD0](47, 0xE100000000000000);
      v20 = v24;
      sub_248381790();
      sub_24822D648(&qword_27EE8FEA8, &qword_27EE8FEA0);
      v21 = v25;
      v22 = sub_248384650();
      MEMORY[0x24C1CAFD0](v22);

      (*(v29 + 8))(v20, v21);
      v23 = v30;
      (*(v17 + 8))(v18, v19);
      return v23;
    }

    else
    {
      v16(v8, v5);
      return 0;
    }
  }
}

uint64_t sub_24824D9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_248381760();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2483817B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = sub_248383140();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_2483821D0();
  (*(v13 + 104))(v15, *MEMORY[0x277CDFA88], v12);
  sub_248383D60();
  v16 = sub_24824D52C();
  if (!v17)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }

  v18 = v17;
  v46 = a2;
  v42 = v16;
  sub_2483817C0();
  v19 = *(v6 + 88);
  if (v19(v11, v5) == *MEMORY[0x277CF8AE8])
  {
    (*(v6 + 96))(v11, v5);
    v20 = sub_248381770();
    (*(*(v20 - 8) + 8))(v11, v20);
    v21 = *(v47 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator);
    sub_2483821F0();
    (*((*MEMORY[0x277D85000] & *v21) + 0xB8))(v53, v42, v18);

    sub_248232C78(v53, &v51, &unk_27EE90B10);
    if (v52)
    {
      sub_24814F6F4(&v51, v50);
      sub_24825D530(v50, v49);
      v22 = swift_allocObject();
      sub_24814F6F4(v49, v22 + 16);
      sub_24814FB28(0, &qword_27EE8FFC0);
      v23 = v46;
      sub_248382640();
      __swift_destroy_boxed_opaque_existential_0(v50);
      sub_24822D578(v53, &unk_27EE90B10);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
      return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    }

    else
    {
      sub_24822D578(v53, &unk_27EE90B10);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
      return (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    }
  }

  else
  {
    v41 = v18;
    v27 = *(v6 + 8);
    v27(v11, v5);
    sub_2483817C0();
    if (v19(v8, v5) == *MEMORY[0x277CF8AF0])
    {
      (*(v6 + 96))(v8, v5);
      v28 = v44;
      v29 = v43;
      v30 = v45;
      (*(v44 + 32))(v43, v8, v45);
      v31 = [objc_opt_self() sharedInstance];
      sub_248381750();
      v32 = sub_248383930();

      v33 = [v31 applicationWithBundleIdentifier_];

      v34 = v46;
      if (v33)
      {
        v35 = *(v47 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator);
        sub_2483821F0();
        (*((*MEMORY[0x277D85000] & *v35) + 0xC0))(v53, v42, v41, v33);

        sub_248232C78(v53, &v51, &unk_27EE90B10);
        if (v52)
        {
          sub_24814F6F4(&v51, v50);
          sub_24825D530(v50, v49);
          v36 = swift_allocObject();
          sub_24814F6F4(v49, v36 + 16);
          sub_24814FB28(0, &qword_27EE8FFC0);
          sub_248382640();

          __swift_destroy_boxed_opaque_existential_0(v50);
          sub_24822D578(v53, &unk_27EE90B10);
          (*(v28 + 8))(v29, v30);
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
          return (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
        }

        sub_24822D578(v53, &unk_27EE90B10);
        (*(v28 + 8))(v29, v30);
      }

      else
      {
        (*(v28 + 8))(v29, v30);
      }
    }

    else
    {

      v27(v8, v5);
      v34 = v46;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FFB0);
    return (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
  }
}

uint64_t sub_24824E2A0(_DWORD *a1)
{
  v2 = v1;
  v160 = a1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90B20);
  MEMORY[0x28223BE20](v163);
  v162 = &v145 - v3;
  v4 = sub_248382A90();
  v169 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v165 = &v145 - v8;
  MEMORY[0x28223BE20](v9);
  v158 = &v145 - v10;
  MEMORY[0x28223BE20](v11);
  v154 = &v145 - v12;
  MEMORY[0x28223BE20](v13);
  v157 = &v145 - v14;
  v15 = sub_2483824B0();
  v168 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v151 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v155 = &v145 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v145 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v22 - 8);
  v161 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v152 = &v145 - v25;
  MEMORY[0x28223BE20](v26);
  v156 = &v145 - v27;
  MEMORY[0x28223BE20](v28);
  v159 = &v145 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v145 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v34 = *(v33 - 8);
  v166 = v33;
  v167 = v34;
  MEMORY[0x28223BE20](v33);
  v153 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v145 - v37;
  MEMORY[0x28223BE20](v39);
  v164 = &v145 - v40;
  v41 = sub_2483825A0();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v145 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions] == 1)
  {
    (*(v42 + 16))(v45, &v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display], v41, v43);
    v46 = sub_248382590();
    (*(v42 + 8))(v45, v41);
    v150 = v2;
    v147 = *&v2[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator];
    sub_248381EF0();
    v47 = v168;
    v48 = *(v168 + 48);
    v149 = v168 + 48;
    v148 = v48;
    if (v48(v32, 1, v15) == 1)
    {

      sub_24822D578(v32, &qword_27EE8FE30);
      v49 = v167;
LABEL_9:
      v61 = sub_24827C568();
      v62 = v169;
      v63 = v165;
      v64 = v4;
      (*(v169 + 16))(v165, v61, v4);
      v65 = v150;
      v66 = sub_248382A80();
      LODWORD(v67) = sub_248383DA0();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v170[0] = v168;
        *v68 = 136446210;
        v69 = v161;
        sub_248381EF0();
        if (v148(v69, 1, v15) == 1)
        {
          sub_24822D578(v69, &qword_27EE8FE30);
          v70 = 1;
          v71 = v166;
          v72 = v162;
        }

        else
        {
          LODWORD(v167) = v67;
          v67 = v64;
          v84 = v69;
          v72 = v162;
          sub_248382450();
          v85 = v84;
          v64 = v67;
          LOBYTE(v67) = v167;
          (*(v47 + 8))(v85, v15);
          v70 = 0;
          v71 = v166;
        }

        (*(v49 + 56))(v72, v70, 1, v71);
        sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
        v86 = sub_2483841D0();
        v88 = v87;
        sub_24822D578(v72, &qword_27EE90B20);
        v89 = sub_24814A378(v86, v88, v170);

        *(v68 + 4) = v89;
        _os_log_impl(&dword_248146000, v66, v67, "Unknown active layout (%{public}s)", v68, 0xCu);
        v90 = v168;
        __swift_destroy_boxed_opaque_existential_0(v168);
        MEMORY[0x24C1CD5F0](v90, -1, -1);
        MEMORY[0x24C1CD5F0](v68, -1, -1);

        v73 = *(v62 + 8);
        v74 = v165;
      }

      else
      {

        v73 = *(v62 + 8);
        v74 = v63;
      }

      return v73(v74, v64);
    }

    v146 = v21;
    sub_248382450();
    v145 = *(v47 + 8);
    v145(v32, v15);
    v56 = v166;
    v49 = v167;
    v57 = v164;
    v58 = (*(v167 + 32))(v164, v38, v166);
    MEMORY[0x28223BE20](v58);
    *(&v145 - 2) = v57;
    v59 = sub_24824F6A4(sub_24825E6B0, (&v145 - 4), v46);
    if (v60)
    {

      (*(v49 + 8))(v57, v56);
      v47 = v168;
      goto LABEL_9;
    }

    v75 = v159;
    v76 = v59;
    sub_248383B30();

    if (v148(v75, 1, v15) == 1)
    {
      sub_24822D578(v75, &qword_27EE8FE30);
      v77 = sub_24827C568();
      v78 = v169;
      v79 = v158;
      v80 = v4;
      (*(v169 + 16))(v158, v77, v4);
      v81 = sub_248382A80();
      v82 = sub_248383DA0();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 134349056;
        *(v83 + 4) = v76;
        _os_log_impl(&dword_248146000, v81, v82, "Cannot find next non-overlay layout from %{public}ld", v83, 0xCu);
        MEMORY[0x24C1CD5F0](v83, -1, -1);
      }

      (*(v78 + 8))(v79, v80);
      return (*(v167 + 8))(v164, v166);
    }

    else
    {
      v91 = v15;
      v92 = v168 + 32;
      v93 = v146;
      (*(v168 + 32))(v146, v75, v15);
      v94 = v150;
      v95 = sub_24824F7B8(v93);
      v96 = sub_24827C568();
      v97 = *(v169 + 16);
      v98 = (v92 - 16);
      if (v95)
      {
        v163 = v95;
        v99 = v157;
        v165 = v4;
        v97(v157, v96, v4);
        v100 = *v98;
        v101 = v155;
        (*v98)(v155, v93, v91);
        v102 = sub_248382A80();
        v103 = sub_248383DC0();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v160 = v104;
          v161 = swift_slowAlloc();
          v170[0] = v161;
          *v104 = 136446210;
          v162 = v100;
          v105 = v153;
          sub_248382450();
          sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
          v106 = v91;
          v107 = v166;
          v108 = sub_248384650();
          v110 = v109;
          v111 = v105;
          v100 = v162;
          v112 = v107;
          v91 = v106;
          v94 = v150;
          (*(v167 + 8))(v111, v112);
          v145(v101, v91);
          v113 = sub_24814A378(v108, v110, v170);

          v114 = v160;
          *(v160 + 1) = v113;
          v115 = v114;
          _os_log_impl(&dword_248146000, v102, v103, "Changing Layout: %{public}s", v114, 0xCu);
          v116 = v161;
          __swift_destroy_boxed_opaque_existential_0(v161);
          MEMORY[0x24C1CD5F0](v116, -1, -1);
          MEMORY[0x24C1CD5F0](v115, -1, -1);

          (*(v169 + 8))(v157, v165);
        }

        else
        {

          v145(v101, v91);
          (*(v169 + 8))(v99, v165);
        }

        v136 = v156;
        (v100)(v156, v146, v91);
        (*(v168 + 56))(v136, 0, 1, v91);
        sub_24825C5D8(MEMORY[0x277D84F90]);
        *&v94[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData] = v163;

        v137 = v91;
        v138 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
        swift_unknownObjectRelease();
        v139 = [v138 analytics];

        v140 = v167;
        if (v139)
        {
          v141 = v152;
          sub_248232C78(v136, v152, &qword_27EE8FE30);
          if (v148(v141, 1, v137) == 1)
          {
            v142 = v137;
            sub_24822D578(v141, &qword_27EE8FE30);
            v143 = 0;
          }

          else
          {
            sub_248382410();
            v142 = v137;
            v145(v141, v137);
            v143 = sub_248383930();
          }

          [v139 changedLayout_];

          v137 = v142;
        }

        sub_248382020();

        sub_248381E50();
        sub_24822D578(v136, &qword_27EE8FE30);
        v145(v146, v137);
        return (*(v140 + 8))(v164, v166);
      }

      else
      {
        v117 = v154;
        v97(v154, v96, v4);
        v118 = v151;
        (*v98)(v151, v93, v91);
        v119 = v91;
        v120 = sub_248382A80();
        v121 = sub_248383DA0();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v162 = v122;
          v168 = swift_slowAlloc();
          v170[0] = v168;
          *v122 = 136446210;
          v165 = v4;
          v123 = v153;
          LODWORD(v163) = v121;
          sub_248382450();
          sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
          v124 = v166;
          v125 = sub_248384650();
          v126 = v118;
          v128 = v127;
          v167 = *(v167 + 8);
          (v167)(v123, v124);
          v129 = v119;
          v130 = v119;
          v131 = v145;
          v145(v126, v129);
          v132 = sub_24814A378(v125, v128, v170);

          v133 = v162;
          *(v162 + 4) = v132;
          v134 = v133;
          _os_log_impl(&dword_248146000, v120, v163, "Failed to update theme to layout %{public}s", v133, 0xCu);
          v135 = v168;
          __swift_destroy_boxed_opaque_existential_0(v168);
          MEMORY[0x24C1CD5F0](v135, -1, -1);
          MEMORY[0x24C1CD5F0](v134, -1, -1);

          (*(v169 + 8))(v154, v165);
          v131(v93, v130);
          return (v167)(v164, v124);
        }

        else
        {

          v144 = v145;
          v145(v118, v119);
          (*(v169 + 8))(v117, v4);
          v144(v93, v119);
          return (*(v167 + 8))(v164, v166);
        }
      }
    }
  }

  else
  {
    v50 = sub_24827C568();
    v51 = v169;
    (*(v169 + 16))(v6, v50, v4);
    v52 = sub_248382A80();
    v53 = sub_248383D80();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_248146000, v52, v53, "Ignoring layout change request due layout change being unavailable", v54, 2u);
      MEMORY[0x24C1CD5F0](v54, -1, -1);
    }

    return (*(v51 + 8))(v6, v4);
  }
}

uint64_t sub_24824F444(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  sub_248382450();
  sub_24822D648(&unk_27EE90200, &qword_27EE90A80);
  sub_248383AE0();
  sub_248383AE0();
  sub_24825D5EC(&unk_27EE91CE0, MEMORY[0x277CC95F0]);
  v13 = sub_248383910();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v13 & 1;
}

uint64_t sub_24824F6A4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_2483824B0() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24824F7B8(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_248381840();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v24 - v7);
  v9 = sub_2483825A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - v14);
  v16 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v17 = [v16 wallpaperPreferences];

  if (!v17)
  {
    return 0;
  }

  v25 = v3;
  v18 = [v17 vehicle];

  v19 = [v18 displayThemeData];
  if (!v19)
  {
    return 0;
  }

  sub_24814FB28(0, &qword_27EE8FEF8);
  v20 = sub_2483838A0();

  type metadata accessor for DBThemeController();

  sub_248382450();
  (*(v10 + 16))(v12, v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v9);
  sub_248382540();
  (*(v10 + 8))(v12, v9);
  v21 = *(*(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_themeController) + OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument);
  DBThemeAssetDocument.document.getter(v5);

  v22 = sub_24831BD18(v20, v15, v8, v5);
  (*(v31 + 8))(v5, v25);
  (*(v29 + 8))(v8, v30);
  (*(v26 + 8))(v15, v27);
  swift_bridgeObjectRelease_n();
  return v22;
}

uint64_t sub_24824FBE4(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v54 - v8;
  MEMORY[0x28223BE20](v9);
  v68 = &v54 - v10;
  v65 = sub_248381B30();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_248381F20();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2483822E0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v59 = &v54 - v18;
  MEMORY[0x28223BE20](v19);
  v66 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v54 - v22;
  v24 = sub_2483824B0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  if (*(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions) == 1)
  {
    v58 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_248381EF0();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_24822D578(v23, &qword_27EE8FE30);
      v27 = v3;
LABEL_13:
      v38 = sub_24827C568();
      v39 = v69;
      (*(v4 + 16))(v69, v38, v27);
      v40 = sub_248382A80();
      v41 = sub_248383DA0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_248146000, v40, v41, "IC Dynamic Content change failed: No dynamic content area", v42, 2u);
        MEMORY[0x24C1CD5F0](v42, -1, -1);
      }

      return (*(v4 + 8))(v39, v27);
    }

    v56 = v4;
    v57 = v3;
    v54 = v25;
    v55 = v24;
    (*(v25 + 32))(v58, v23);
    result = sub_248382460();
    v34 = result;
    v35 = *(result + 16);
    if (!v35)
    {
LABEL_12:

      (*(v54 + 8))(v58, v55);
      v4 = v56;
      v27 = v57;
      goto LABEL_13;
    }

    v36 = 0;
    v37 = (v14 + 8);
    while (1)
    {
      if (v36 >= *(v34 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v14 + 16))(v16, v34 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36, v13);
      if (sub_248382270())
      {
        break;
      }

      ++v36;
      result = (*v37)(v16, v13);
      if (v35 == v36)
      {
        goto LABEL_12;
      }
    }

    v43 = *(v14 + 32);
    v44 = v59;
    v43(v59, v16, v13);
    v45 = v66;
    v43(v66, v44, v13);
    (*(v63 + 16))(v61, v67, v65);
    v46 = v60;
    sub_248381F10();
    sub_248381F40();
    (*(v62 + 8))(v46, v64);
    v47 = sub_24827C568();
    v49 = v56;
    v48 = v57;
    v50 = v68;
    (*(v56 + 16))(v68, v47, v57);
    v51 = sub_248382A80();
    v52 = sub_248383DC0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_248146000, v51, v52, "Changing IC Dynamic Content", v53, 2u);
      MEMORY[0x24C1CD5F0](v53, -1, -1);
    }

    (*(v49 + 8))(v50, v48);
    (*v37)(v45, v13);
    return (*(v54 + 8))(v58, v55);
  }

  else
  {
    v28 = sub_24827C568();
    (*(v4 + 16))(v6, v28, v3);
    v29 = sub_248382A80();
    v30 = sub_248383D80();
    v31 = v3;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_248146000, v29, v30, "Ignoring carousel change request due layout change being unavailable", v32, 2u);
      MEMORY[0x24C1CD5F0](v32, -1, -1);
    }

    return (*(v4 + 8))(v6, v31);
  }
}

uint64_t sub_2482503A0(int a1)
{
  v25 = a1;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248381B30();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = v1;
  sub_248381EF0();
  v13 = sub_2483824B0();
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_24822D578(v11, &qword_27EE8FE30);
  if (v14 == 1)
  {
    v15 = sub_24827C568();
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_248382A80();
    v17 = sub_248383DC0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_248146000, v16, v17, "No active layout. Unable to handle directional button.", v18, 2u);
      MEMORY[0x24C1CD5F0](v18, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else if (v25 > 1u)
  {
    if (v25 == 2)
    {
      v21 = MEMORY[0x277CF8BB8];
    }

    else
    {
      v21 = MEMORY[0x277CF8BB0];
    }

    v23 = v24;
    (*(v24 + 104))(v8, *v21, v6);
    sub_24824E2A0(v8);
    return (*(v23 + 8))(v8, v6);
  }

  else
  {
    if (v25)
    {
      result = (*((*MEMORY[0x277D85000] & **(v12 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator)) + 0xE0))(4);
      if (result)
      {
        return result;
      }

      v20 = MEMORY[0x277CF8BB0];
    }

    else
    {
      result = (*((*MEMORY[0x277D85000] & **(v12 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator)) + 0xE0))(3);
      if (result)
      {
        return result;
      }

      v20 = MEMORY[0x277CF8BB8];
    }

    v22 = v24;
    (*(v24 + 104))(v8, *v20, v6);
    sub_24824FBE4(v8);
    return (*(v22 + 8))(v8, v6);
  }
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.homeButtonPressed()()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24827C568();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_248382A80();
  v8 = sub_248383DC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_248146000, v7, v8, "IC Home Button Pressed", v9, 2u);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (((*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator)) + 0xE0))(5) & 1) == 0)
  {
    sub_248381F60();
  }
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.selectButtonPressed()()
{
  if (sub_248381F80() & 1) == 0 && (sub_248381FE0() & 1) == 0 && ((*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator)) + 0xE0))(1))
  {
    sub_248381F50();
  }
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.selectButtonLongPressed()()
{
  if ((sub_248381F80() & 1) == 0 && (sub_248381FE0() & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator)) + 0xE0))(2);
  }
}

Swift::Bool __swiftcall DBInstrumentClusterLayoutViewController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v53 = a1;
  v2 = sub_2483822E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_2483824B0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381EF0();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24822D578(v13, &qword_27EE8FE30);
    LOBYTE(v18) = 0;
  }

  else
  {
    v48 = v1;
    v49 = v10;
    v19 = *(v15 + 32);
    v51 = v14;
    v19(v17, v13, v14);
    v50 = v17;
    v18 = sub_248382460();
    v20 = v18;
    v21 = *(v18 + 16);
    if (v21)
    {
      v22 = 0;
      while (v22 < *(v20 + 16))
      {
        (*(v3 + 16))(v5, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v2);
        if (sub_248382270())
        {

          v23 = *(v3 + 32);
          v24 = v52;
          v23(v52, v5, v2);
          v25 = v49;
          v23(v49, v24, v2);
          v26 = v48;
          v27 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
          swift_unknownObjectRelease();
          [v27 screenScale];
          v29 = v28;

          sub_2483822B0();
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          CGAffineTransformMakeScale(&v54, 1.0 / v29, 1.0 / v29);
          v56.origin.x = v31;
          v56.origin.y = v33;
          v56.size.width = v35;
          v56.size.height = v37;
          v57 = CGRectApplyAffineTransform(v56, &v54);
          x = v57.origin.x;
          y = v57.origin.y;
          width = v57.size.width;
          height = v57.size.height;
          v42 = [v26 view];
          [(UIGestureRecognizer *)v53 locationInView:v42];
          v44 = v43;
          v46 = v45;

          v58.origin.x = x;
          v58.origin.y = y;
          v58.size.width = width;
          v58.size.height = height;
          v55.x = v44;
          v55.y = v46;
          LOBYTE(v42) = CGRectContainsPoint(v58, v55);
          (*(v3 + 8))(v25, v2);
          (*(v15 + 8))(v50, v51);
          LOBYTE(v18) = v42;
          return v18;
        }

        ++v22;
        LOBYTE(v18) = (*(v3 + 8))(v5, v2);
        if (v21 == v22)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      (*(v15 + 8))(v50, v51);
      LOBYTE(v18) = 0;
    }
  }

  return v18;
}

uint64_t sub_2482510E4(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_248381B30();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a3, v5, v7);
  v10 = a1;
  sub_24824FBE4(v9);

  return (*(v6 + 8))(v9, v5);
}

id sub_2482511E8(uint64_t a1)
{
  v2 = v1;
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = sub_24827C568();
  v39 = v5[2];
  v40 = v11;
  v39(v10);
  v12 = sub_248382A80();
  v13 = sub_248383D80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v5;
    v15 = v14;
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v15 = 136446210;
    v41 = a1;
    type metadata accessor for CARUserInterfaceStyle(0);
    v16 = sub_2483839B0();
    v37 = v7;
    v18 = v4;
    v19 = a1;
    v20 = sub_24814A378(v16, v17, v42);
    v7 = v37;

    *(v15 + 4) = v20;
    a1 = v19;
    v4 = v18;
    _os_log_impl(&dword_248146000, v12, v13, "Sending new appearance preference: %{public}s", v15, 0xCu);
    v21 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x24C1CD5F0](v21, -1, -1);
    v22 = v15;
    v5 = v38;
    MEMORY[0x24C1CD5F0](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v10, v4);
  v24 = *(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_uisyncSession);
  v42[0] = 0;
  v25 = [v24 sendAppearancePreferenceWithPreference:a1 error:v42];
  v26 = v42[0];
  if (v25)
  {

    return v26;
  }

  else
  {
    v38 = v42[0];
    v28 = v42[0];
    v29 = sub_2483810C0();

    swift_willThrow();
    (v39)(v7, v40, v4);
    v30 = sub_248382A80();
    v31 = sub_248383DA0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v7;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_248146000, v30, v31, "Unable to send appearance preference", v33, 2u);
      MEMORY[0x24C1CD5F0](v33, -1, -1);

      v34 = v32;
    }

    else
    {

      v34 = v7;
    }

    return (v23)(v34, v4);
  }
}

uint64_t sub_2482515F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_248383040();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CDF3D0];
  if (a1 != 1)
  {
    v6 = MEMORY[0x277CDF3C0];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t DBInstrumentClusterLayoutViewController.startAppearanceUpdate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24827C568();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_248382A80();
  v14 = sub_248383D80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a2;
    v16 = v15;
    v28 = swift_slowAlloc();
    v30 = a1;
    v31 = v28;
    *v16 = 136446210;
    type metadata accessor for UIUserInterfaceStyle(0);
    v17 = sub_2483839A0();
    v19 = sub_24814A378(v17, v18, &v31);
    v27 = v8;
    v20 = v19;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_248146000, v13, v14, "Start appearance change: %{public}s", v16, 0xCu);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1CD5F0](v21, -1, -1);
    v22 = v16;
    a2 = v29;
    MEMORY[0x24C1CD5F0](v22, -1, -1);

    (*(v9 + 8))(v11, v27);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = (v4 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearanceCompletion);
  v24 = *(v4 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_appearanceCompletion);
  *v23 = a2;
  v23[1] = a3;

  sub_248167864(v24);
  v31 = a1;
  return sub_248382DF0();
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.invalidate()()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator) invalidate];
  sub_24823EEE4();
  sub_248381B40();

  v2 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController;
  v3 = *(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutViewController);
  if (v3)
  {
    [v3 removeFromParentViewController];
    v3 = *(v0 + v2);
    if (v3)
    {
      v4 = [v3 view];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      [v4 removeFromSuperview];

      v3 = *(v1 + v2);
    }
  }

  *(v1 + v2) = 0;
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.thermalMonitorLevelDidChange(_:)(DBThermalMonitor *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_thermalMonitor) suggestedFrameRateLimit];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_frameRateLimit;
  *v6 = v5;
  *(v6 + 8) = v3 == 0;
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.didConnect()()
{
  v0 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v1 = [v0 uisyncSessionEventDelegate];

  if (v1)
  {
    if ([v1 respondsToSelector_])
    {

      v2 = sub_248383930();
      [v1 didConnectDisplayID_];

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall DBInstrumentClusterLayoutViewController.didReset()()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_24827C568();
  v9 = *(v3 + 16);
  v9(v7, v8, v2);
  v10 = sub_248382A80();
  v11 = sub_248383DC0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_248146000, v10, v11, "handling didReset", v12, 2u);
    MEMORY[0x24C1CD5F0](v12, -1, -1);
  }

  v13 = *(v3 + 8);
  v13(v7, v2);
  v14 = (v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken);
  if ((*(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken + 8) & 1) == 0)
  {
    v15 = *v14;
    v9(v26, v8, v2);
    v16 = sub_248382A80();
    v17 = sub_248383D80();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v15;
      v20 = v18;
      *v18 = 134349056;
      *(v18 + 4) = v19;
      _os_log_impl(&dword_248146000, v16, v17, "Releasing focus token: %{public}ld", v18, 0xCu);
      MEMORY[0x24C1CD5F0](v20, -1, -1);
    }

    v13(v26, v2);
  }

  *v14 = 0;
  *(v14 + 8) = 1;
  [swift_unknownObjectUnownedLoadStrong() releaseFocus];
  swift_unknownObjectRelease();
  v21 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions;
  *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions) = 0;
  if ((sub_248381F80() & 1) != 0 && (*(v1 + v21) & 1) == 0)
  {
    sub_248381EE0();
  }

  v22 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v23 = [v22 uisyncSessionEventDelegate];

  if (v23)
  {
    if ([v23 respondsToSelector_])
    {

      v24 = sub_248383930();

      [v23 didDisconnectDisplayID_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t DBInstrumentClusterLayoutViewController.didReceiveData(_:)(uint64_t a1, unint64_t a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_2483811A0();
  v29[0] = 0;
  v10 = [v8 propertyListWithData:v9 options:0 format:0 error:v29];

  if (v10)
  {
    v11 = v29[0];
    sub_248384230();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0);
    if (swift_dynamicCast())
    {
      v12 = v28;
      if (!*(v28 + 16))
      {
        goto LABEL_18;
      }

      v13 = sub_24822B8A0(1701869940, 0xE400000000000000);
      if ((v14 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_24814A550(*(v12 + 56) + 32 * v13, v29);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      v15 = sub_24829D8F4(v28);
      if (v15 <= 9)
      {
        switch(v15)
        {
          case 4:
            sub_2482524EC(v12);
            break;
          case 6:
            sub_2482544F8(v12);
            break;
          case 7:
            sub_248254A00(v12);
            break;
        }
      }

      if (v15 <= 12)
      {
        if (v15 == 10)
        {
          sub_248255218(v12);
        }

        else if (v15 == 11)
        {
          sub_248253ED4(v12);
        }
      }

      if (v15 == 13)
      {
        sub_248255804(v12);
      }

      else if (v15 == 16)
      {
LABEL_18:

        goto LABEL_19;
      }
    }
  }

  else
  {
    v16 = v29[0];
    v17 = sub_2483810C0();

    swift_willThrow();
  }

LABEL_19:
  v18 = sub_24827C568();
  (*(v5 + 16))(v7, v18, v4);
  sub_24825CD28(a1, a2);
  v19 = sub_248382A80();
  v20 = sub_248383DA0();
  sub_24823BD70(a1, a2);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[0] = v22;
    *v21 = 136446210;
    v23 = sub_248381190();
    v25 = sub_24814A378(v23, v24, v29);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_248146000, v19, v20, "Received data for unknown command: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1CD5F0](v22, -1, -1);
    MEMORY[0x24C1CD5F0](v21, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2482524EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248381840();
  v202 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v201 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v198 = &v181 - v6;
  v219 = sub_248381210();
  v208 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v218 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v209 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v197 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v217 = &v181 - v10;
  v11 = sub_2483825A0();
  v12 = *(v11 - 8);
  v212 = v11;
  v213 = v12;
  MEMORY[0x28223BE20](v11);
  v196 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v211 = &v181 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v16 - 8);
  v204 = (&v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v207 = &v181 - v19;
  MEMORY[0x28223BE20](v20);
  v203 = &v181 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v181 - v23;
  MEMORY[0x28223BE20](v25);
  v210 = &v181 - v26;
  v27 = sub_2483824B0();
  v221 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v223 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v181 - v30;
  v222 = sub_248382A90();
  v32 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v34 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v206 = &v181 - v36;
  MEMORY[0x28223BE20](v37);
  v215 = &v181 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v181 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v181 - v43;
  if (!*(a1 + 16) || (v45 = sub_24822B8A0(1635017060, 0xE400000000000000), (v46 & 1) == 0) || (sub_24814A550(*(a1 + 56) + 32 * v45, v225), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0), (swift_dynamicCast() & 1) == 0))
  {
    v53 = sub_24827C568();
    v54 = v222;
    (*(v32 + 16))(v34, v53, v222);
    v55 = sub_248382A80();
    v56 = sub_248383DA0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_248146000, v55, v56, "Bad payload", v57, 2u);
      MEMORY[0x24C1CD5F0](v57, -1, -1);
    }

    return (*(v32 + 8))(v34, v54);
  }

  v47 = v224[0];
  if (*(v224[0] + 16) && (v48 = sub_24822B8A0(0x444974756F79616CLL, 0xE800000000000000), (v49 & 1) != 0))
  {
    sub_24814A550(*(v47 + 56) + 32 * v48, v225);
    v50 = swift_dynamicCast();
    v51 = v224[0];
    if (!v50)
    {
      v51 = 0;
    }

    v216 = v51;
    if (v50)
    {
      v52 = v224[1];
    }

    else
    {
      v52 = 0;
    }

    v214 = v52;
    if (!*(v47 + 16))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v216 = 0;
    v214 = 0;
    if (!*(v47 + 16))
    {
LABEL_20:
      v61 = 1;
      goto LABEL_21;
    }
  }

  v59 = sub_24822B8A0(0x654E6E4965646166, 0xEF74756F79614C77);
  if ((v60 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_24814A550(*(v47 + 56) + 32 * v59, v225);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  v61 = LOBYTE(v224[0]);
LABEL_21:
  v185 = v61;
  if (*(v47 + 16) && (v62 = sub_24822B8A0(0xD000000000000010, 0x80000002483AA9C0), (v63 & 1) != 0) && (sub_24814A550(*(v47 + 56) + 32 * v62, v225), swift_dynamicCast()))
  {
    v64 = LOBYTE(v224[0]);
  }

  else
  {
    v64 = 1;
  }

  v189 = v64;
  v65 = *(v47 + 16);
  v195 = v32;
  if (v65 && (v66 = sub_24822B8A0(0xD000000000000010, 0x80000002483AA9E0), (v67 & 1) != 0) && (sub_24814A550(*(v47 + 56) + 32 * v66, v225), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901F0), (swift_dynamicCast() & 1) != 0))
  {
    v68 = v224[0];
  }

  else
  {
    v68 = sub_24825C5D8(MEMORY[0x277D84F90]);
  }

  v70 = sub_24833F634(v69);
  v205 = v27;
  v187 = v31;
  v191 = v2;
  v186 = v24;
  v190 = v68;
  if (v70 == -1)
  {
    v88 = sub_24827C568();
    v89 = v195;
    v90 = *(v195 + 16);
    v192 = (v195 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v82 = v222;
    v193 = v90;
    (v90)(v41, v88, v222);

    v91 = sub_248382A80();
    v92 = sub_248383DA0();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v225[0] = v194;
      *v93 = 136446210;
      v94 = sub_2483838B0();
      LODWORD(v188) = v92;
      v95 = v94;
      v97 = v96;

      v98 = sub_24814A378(v95, v97, v225);

      *(v93 + 4) = v98;
      _os_log_impl(&dword_248146000, v91, v188, "Unknown appearance mode %{public}s", v93, 0xCu);
      v99 = v194;
      __swift_destroy_boxed_opaque_existential_0(v194);
      MEMORY[0x24C1CD5F0](v99, -1, -1);
      v100 = v93;
      v82 = v222;
      MEMORY[0x24C1CD5F0](v100, -1, -1);

      v101 = v195;
    }

    else
    {

      v101 = v89;
    }

    v194 = *(v101 + 8);
    v194(v41, v82);
    v84 = v214;
    v83 = v215;
  }

  else
  {
    v188 = v70;

    v71 = sub_24827C568();
    v72 = v195;
    v73 = *(v195 + 16);
    v192 = (v195 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74 = v222;
    v193 = v73;
    (v73)(v44, v71, v222);
    v75 = sub_248382A80();
    v76 = sub_248383DC0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v225[0] = swift_slowAlloc();
      v78 = v225[0];
      *v77 = 136446210;
      v224[0] = v188;
      type metadata accessor for CARUserInterfaceStyle(0);
      v79 = sub_2483839A0();
      v81 = sub_24814A378(v79, v80, v225);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_248146000, v75, v76, "Handle requestLayoutCommand appearance %{public}s.", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x24C1CD5F0](v78, -1, -1);
      MEMORY[0x24C1CD5F0](v77, -1, -1);
    }

    v194 = *(v72 + 8);
    v194(v44, v74);
    v82 = v74;
    v84 = v214;
    v83 = v215;
    v2 = v191;
    v85 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v86 = [v85 uisyncSessionEventDelegate];

    if (v86)
    {
      if ([v86 respondsToSelector_])
      {

        v87 = sub_248383930();
        v83 = v215;

        [v86 didChangeAppearanceMode:v188 forDisplayID:v87];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v84 = v214;
    }
  }

  v188 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_environment;
  v102 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v103 = [v102 effectiveVehicleAppearancePreference];

  sub_2482511E8(v103);
  v184 = sub_24827C568();
  v193(v83);

  v104 = sub_248382A80();
  v105 = sub_248383DC0();

  v106 = os_log_type_enabled(v104, v105);
  v183 = v4;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v224[0] = v108;
    *v107 = 136446722;
    v225[0] = v216;
    v225[1] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10);
    v109 = sub_2483841D0();
    v111 = sub_24814A378(v109, v110, v224);

    *(v107 + 4) = v111;
    *(v107 + 12) = 2082;
    if (v189)
    {
      v112 = 1702195828;
    }

    else
    {
      v112 = 0x65736C6166;
    }

    if (v189)
    {
      v113 = 0xE400000000000000;
    }

    else
    {
      v113 = 0xE500000000000000;
    }

    v114 = sub_24814A378(v112, v113, v224);

    *(v107 + 14) = v114;
    *(v107 + 22) = 2082;
    v115 = sub_2483838B0();
    v117 = sub_24814A378(v115, v116, v224);

    *(v107 + 24) = v117;
    v84 = v214;
    _os_log_impl(&dword_248146000, v104, v105, "Received request for layout %{public}s, fadeOutOldLayout: %{public}s, activeComponents: %{public}s", v107, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v108, -1, -1);
    MEMORY[0x24C1CD5F0](v107, -1, -1);

    v118 = v215;
    v119 = v222;
  }

  else
  {

    v118 = v83;
    v119 = v82;
  }

  v194(v118, v119);
  v120 = v205;
  v121 = v221;
  if (!v84)
  {
    v146 = v207;
    (*(v221 + 56))(v207, 1, 1, v205);
    *(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData) = 0;

    v147 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v148 = [v147 analytics];

    if (v148)
    {
      v149 = v204;
      sub_248232C78(v146, v204, &qword_27EE8FE30);
      if ((*(v121 + 48))(v149, 1, v120) == 1)
      {
        sub_24822D578(v149, &qword_27EE8FE30);
        v150 = 0;
      }

      else
      {
        sub_248382410();
        (*(v121 + 8))(v149, v120);
        v150 = sub_248383930();
      }

      [v148 changedLayout_];
    }

    sub_248382020();

    sub_248381E50();
    return sub_24822D578(v146, &qword_27EE8FE30);
  }

  v122 = v213;
  v123 = *(v213 + 16);
  v182 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display;
  v124 = v211;
  v125 = v212;
  v207 = (v213 + 16);
  v204 = v123;
  (v123)(v211, v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v212);
  v126 = sub_248382590();
  v127 = *(v122 + 8);
  v213 = v122 + 8;
  v211 = v127;
  result = (v127)(v124, v125);
  v128 = *(v126 + 16);
  if (!v128)
  {
LABEL_60:

    v142 = 1;
    v143 = v191;
    v144 = v221;
    v145 = v210;
LABEL_66:
    v151 = *(v144 + 56);
    v151(v145, v142, 1, v120);
    v152 = *(v144 + 48);
    v153 = v152(v145, 1, v120);
    v154 = v186;
    if (v153 == 1)
    {

      sub_24822D578(v145, &qword_27EE8FE30);
      v155 = v206;
      v156 = v222;
      (v193)(v206, v184, v222);
      v157 = v214;

      v158 = sub_248382A80();
      v159 = sub_248383DA0();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v225[0] = v161;
        *v160 = 136446210;
        v162 = sub_24814A378(v216, v157, v225);

        *(v160 + 4) = v162;
        _os_log_impl(&dword_248146000, v158, v159, "Unknown layout %{public}s", v160, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v161);
        MEMORY[0x24C1CD5F0](v161, -1, -1);
        MEMORY[0x24C1CD5F0](v160, -1, -1);
      }

      else
      {
      }

      return (v194)(v155, v156);
    }

    v223 = v152;

    (*(v144 + 32))(v187, v145, v120);
    v163 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v164 = [v163 wallpaperPreferences];

    if (v164)
    {
      v165 = [v164 vehicle];

      v166 = [v165 displayThemeData];
      if (v166)
      {
        sub_24814FB28(0, &qword_27EE8FEF8);
        v167 = sub_2483838A0();

        v221 = type metadata accessor for DBThemeController();
        v222 = v151;
        v168 = v167;

        v169 = v197;
        v170 = v187;
        sub_248382450();
        v171 = v196;
        v172 = v212;
        (v204)(v196, v143 + v182, v212);
        v173 = v198;
        sub_248382540();
        (v211)(v171, v172);
        v174 = *(*(v143 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_themeController) + OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument);
        v175 = v201;
        DBThemeAssetDocument.document.getter(v201);

        v166 = sub_24831BD18(v168, v169, v173, v175);
        (*(v202 + 8))(v175, v183);
        (*(v199 + 8))(v173, v200);
        v176 = v169;
        v154 = v186;
        (*(v209 + 8))(v176, v220);
        v151 = v222;
        swift_bridgeObjectRelease_n();
        v120 = v205;
LABEL_80:
        (*(v144 + 16))(v154, v170, v120);
        v151(v154, 0, 1, v120);
        *(v143 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData) = v166;

        v177 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
        swift_unknownObjectRelease();
        v178 = [v177 analytics];

        if (v178)
        {
          v179 = v203;
          sub_248232C78(v154, v203, &qword_27EE8FE30);
          if ((v223)(v179, 1, v120) == 1)
          {
            sub_24822D578(v179, &qword_27EE8FE30);
            v180 = 0;
          }

          else
          {
            sub_248382410();
            (*(v144 + 8))(v179, v205);
            v180 = sub_248383930();
            v120 = v205;
          }

          [v178 changedLayout_];
        }

        sub_248382020();

        sub_248381E50();
        sub_24822D578(v154, &qword_27EE8FE30);
        return (*(v144 + 8))(v187, v120);
      }

      v120 = v205;
    }

    else
    {
      v166 = 0;
    }

    v170 = v187;
    goto LABEL_80;
  }

  v129 = 0;
  v215 = (v221 + 16);
  v130 = (v209 + 8);
  v131 = (v208 + 8);
  v132 = (v221 + 8);
  while (v129 < *(v126 + 16))
  {
    (*(v221 + 16))(v223, v126 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v129, v120);
    v133 = v217;
    sub_248382450();
    v134 = v218;
    v135 = v220;
    sub_248381860();
    v136 = v133;
    v137 = v214;
    (*v130)(v136, v135);
    v138 = sub_2483811D0();
    v140 = v139;
    (*v131)(v134, v219);
    if (v138 == v216 && v137 == v140)
    {

LABEL_65:

      v144 = v221;
      v145 = v210;
      v120 = v205;
      (*(v221 + 32))(v210, v223, v205);
      v142 = 0;
      v143 = v191;
      goto LABEL_66;
    }

    v141 = sub_248384680();

    if (v141)
    {
      goto LABEL_65;
    }

    ++v129;
    v120 = v205;
    result = (*v132)(v223, v205);
    if (v128 == v129)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
  return result;
}

void sub_248253ED4(uint64_t a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  if (*(a1 + 16) && (v12 = sub_24822B8A0(1635017060, 0xE400000000000000), (v13 & 1) != 0) && (sub_24814A550(*(a1 + 56) + 32 * v12, v50), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0), (swift_dynamicCast() & 1) != 0))
  {

    v15 = sub_24833F634(v14);
    v16 = sub_24827C568();
    v17 = *(v3 + 16);
    if (v15 == -1)
    {
      v17(v8, v16, v2);

      v36 = sub_248382A80();
      v37 = sub_248383DA0();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v50[0] = v39;
        *v38 = 136446210;
        v40 = sub_2483838B0();
        v42 = v41;

        v43 = sub_24814A378(v40, v42, v50);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_248146000, v36, v37, "targetAppearanceChange must contain appearanceMode %{public}s.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C1CD5F0](v39, -1, -1);
        MEMORY[0x24C1CD5F0](v38, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v8, v2);
    }

    else
    {
      v17(v11, v16, v2);

      v18 = sub_248382A80();
      v19 = sub_248383DC0();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v49 = v15;
        v21 = v20;
        v48 = swift_slowAlloc();
        v50[0] = v48;
        *v21 = 136446210;
        v22 = sub_2483838B0();
        v24 = v23;

        v25 = sub_24814A378(v22, v24, v50);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_248146000, v18, v19, "Handle targetAppearanceChange command %{public}s.", v21, 0xCu);
        v26 = v48;
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x24C1CD5F0](v26, -1, -1);
        v27 = v21;
        v15 = v49;
        MEMORY[0x24C1CD5F0](v27, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v11, v2);
      v44 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
      swift_unknownObjectRelease();
      v45 = [v44 uisyncSessionEventDelegate];

      if (v45)
      {
        if ([v45 respondsToSelector_])
        {

          v46 = sub_248383930();

          [v45 didChangeAppearanceMode:v15 forDisplayID:v46];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v28 = sub_24827C568();
    (*(v3 + 16))(v5, v28, v2);

    v29 = sub_248382A80();
    v30 = sub_248383DA0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50[0] = v32;
      *v31 = 136315138;
      v33 = sub_2483838B0();
      v35 = sub_24814A378(v33, v34, v50);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_248146000, v29, v30, "Bad payload: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1CD5F0](v32, -1, -1);
      MEMORY[0x24C1CD5F0](v31, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2482544F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  if (*(a1 + 16) && (v17 = sub_24822B8A0(1635017060, 0xE400000000000000), (v18 & 1) != 0) && (sub_24814A550(*(a1 + 56) + 32 * v17, v47), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v46;
    if (*(v46 + 16) && (v20 = sub_24822B8A0(0x44496E656B6F74, 0xE700000000000000), (v21 & 1) != 0))
    {
      sub_24814A550(*(v19 + 56) + 32 * v20, v47);

      if (swift_dynamicCast())
      {
        v45 = v46;
        v22 = sub_24827C568();
        v44 = *(v5 + 16);
        v44(v16, v22, v4);
        v23 = sub_248382A80();
        v24 = sub_248383DC0();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134349056;
          *(v25 + 4) = v45;
          _os_log_impl(&dword_248146000, v23, v24, "Received focus token %{public}ld", v25, 0xCu);
          MEMORY[0x24C1CD5F0](v25, -1, -1);
        }

        v26 = *(v5 + 8);
        v26(v16, v4);
        v27 = (v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken);
        if ((*(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken + 8) & 1) == 0)
        {
          v28 = *v27;
          v44(v13, v22, v4);
          v29 = sub_248382A80();
          v30 = sub_248383DA0();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = v28;
            v33 = v31;
            *v31 = 134349056;
            *(v31 + 4) = v32;
            _os_log_impl(&dword_248146000, v29, v30, "Releasing existing token %{public}ld", v31, 0xCu);
            MEMORY[0x24C1CD5F0](v33, -1, -1);
          }

          v26(v13, v4);
        }

        *v27 = v45;
        *(v27 + 8) = 0;
        [swift_unknownObjectUnownedLoadStrong() acquireFocus];
        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v39 = sub_24827C568();
    (*(v5 + 16))(v10, v39, v4);
    v40 = sub_248382A80();
    v41 = sub_248383DA0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_248146000, v40, v41, "giveFocus missing focus token", v42, 2u);
      MEMORY[0x24C1CD5F0](v42, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    v35 = sub_24827C568();
    (*(v5 + 16))(v7, v35, v4);
    v36 = sub_248382A80();
    v37 = sub_248383DA0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_248146000, v36, v37, "Bad payload", v38, 2u);
      MEMORY[0x24C1CD5F0](v38, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_248254A00(uint64_t a1)
{
  v2 = v1;
  v81[4] = *MEMORY[0x277D85DE8];
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  if (*(a1 + 16) && (v23 = sub_24822B8A0(1635017060, 0xE400000000000000), (v24 & 1) != 0) && (v79 = v2, sub_24814A550(*(a1 + 56) + 32 * v23, v81), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0), (swift_dynamicCast() & 1) != 0))
  {
    v25 = v80;
    if (*(v80 + 16) && (v26 = sub_24822B8A0(0x44496E656B6F74, 0xE700000000000000), (v27 & 1) != 0))
    {
      sub_24814A550(*(v25 + 56) + 32 * v26, v81);

      if (swift_dynamicCast())
      {
        v78 = v80;
        v28 = sub_24827C568();
        v29 = *(v5 + 16);
        v75 = v28;
        v76 = v29;
        v77 = v5 + 16;
        (v29)(v22);
        v30 = sub_248382A80();
        v31 = sub_248383DC0();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 134349056;
          *(v32 + 4) = v78;
          _os_log_impl(&dword_248146000, v30, v31, "Received request for focus token %{public}ld", v32, 0xCu);
          MEMORY[0x24C1CD5F0](v32, -1, -1);
        }

        v33 = *(v5 + 8);
        v33(v22, v4);
        v34 = v79;
        v35 = &v79[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken];
        if ((v79[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken + 8] & 1) != 0 || *v35 != v78)
        {
          v74 = &v79[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_focusToken];
          v76(v19, v75, v4);
          v36 = v34;
          v37 = sub_248382A80();
          v38 = sub_248383DA0();

          if (os_log_type_enabled(v37, v38))
          {
            v72 = v38;
            v39 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v81[0] = v71;
            *v39 = 134349314;
            *(v39 + 4) = v78;
            *(v39 + 12) = 2082;
            v40 = v74[8];
            v73 = v33;
            if (v40)
            {
              v41 = 0xE500000000000000;
              v42 = 0x3E6C696E3CLL;
            }

            else
            {
              v80 = *v74;
              v42 = sub_248384650();
              v41 = v54;
            }

            v55 = sub_24814A378(v42, v41, v81);

            *(v39 + 14) = v55;
            _os_log_impl(&dword_248146000, v37, v72, "Focus token mismatch, expected %{public}ld have %{public}s", v39, 0x16u);
            v56 = v71;
            __swift_destroy_boxed_opaque_existential_0(v71);
            MEMORY[0x24C1CD5F0](v56, -1, -1);
            MEMORY[0x24C1CD5F0](v39, -1, -1);

            v52 = v19;
            v53 = v4;
            v33 = v73;
          }

          else
          {

            v52 = v19;
            v53 = v4;
          }

          v33(v52, v53);
          v35 = v74;
        }

        v57 = *&v34[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_uisyncSession];
        v81[0] = 0;
        v58 = [v57 sendGiveFocusWithTokenID:v78 error:{v81, v71}];
        v59 = v81[0];
        if (v58)
        {
          if (v35[8] == 1)
          {
            v60 = v81[0];
          }

          else
          {
            v66 = *v35;
            v76(v16, v75, v4);
            v67 = v59;
            v68 = sub_248382A80();
            v69 = sub_248383D80();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              *v70 = 134349056;
              *(v70 + 4) = v66;
              _os_log_impl(&dword_248146000, v68, v69, "Releasing focus token: %{public}ld", v70, 0xCu);
              MEMORY[0x24C1CD5F0](v70, -1, -1);
            }

            v33(v16, v4);
          }

          *v35 = 0;
          v35[8] = 1;
          [swift_unknownObjectUnownedLoadStrong() releaseFocus];
          return swift_unknownObjectRelease();
        }

        else
        {
          v61 = v81[0];
          v62 = sub_2483810C0();

          swift_willThrow();
          v76(v7, v75, v4);
          v63 = sub_248382A80();
          v64 = sub_248383DA0();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_248146000, v63, v64, "Unable to send giveFocus", v65, 2u);
            MEMORY[0x24C1CD5F0](v65, -1, -1);
          }

          return (v33)(v7, v4);
        }
      }
    }

    else
    {
    }

    v48 = sub_24827C568();
    (*(v5 + 16))(v13, v48, v4);
    v49 = sub_248382A80();
    v50 = sub_248383DA0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_248146000, v49, v50, "requestFocus missing focus token", v51, 2u);
      MEMORY[0x24C1CD5F0](v51, -1, -1);
    }

    return (*(v5 + 8))(v13, v4);
  }

  else
  {
    v43 = sub_24827C568();
    (*(v5 + 16))(v10, v43, v4);
    v44 = sub_248382A80();
    v45 = sub_248383DA0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_248146000, v44, v45, "Bad payload", v46, 2u);
      MEMORY[0x24C1CD5F0](v46, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

void sub_248255218(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  if (*(a1 + 16))
  {
    v14 = sub_24822B8A0(1635017060, 0xE400000000000000);
    if (v15)
    {
      sub_24814A550(*(a1 + 56) + 32 * v14, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0);
      if (swift_dynamicCast())
      {
        v16 = v52;
        v17 = sub_24827C4F4();
        v51 = *(v5 + 16);
        v51(v13, v17, v4);

        v18 = sub_248382A80();
        v19 = sub_248383DC0();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v50 = v19;
          v21 = v20;
          v48 = v20;
          v49 = swift_slowAlloc();
          v53[0] = v49;
          *v21 = 136315138;
          v22 = sub_2483838B0();
          v24 = sub_24814A378(v22, v23, v53);
          v47 = v18;
          v25 = v2;
          v26 = v24;

          v27 = v48;
          *(v48 + 4) = v26;
          v2 = v25;
          v28 = v27;
          _os_log_impl(&dword_248146000, v18, v50, "Received allowTransitionsCommand for Instrument Cluster: %s", v27, 0xCu);
          v29 = v49;
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x24C1CD5F0](v29, -1, -1);
          MEMORY[0x24C1CD5F0](v28, -1, -1);
        }

        else
        {
        }

        v34 = *(v5 + 8);
        v34(v13, v4);
        if (*(v16 + 16) && (v35 = sub_24822B8A0(0x776F6C6C61, 0xE500000000000000), (v36 & 1) != 0))
        {
          sub_24814A550(*(v16 + 56) + 32 * v35, v53);

          if (swift_dynamicCast())
          {
            v37 = v52;
LABEL_17:
            v38 = sub_24827C568();
            v51(v10, v38, v4);
            v39 = v2;
            v40 = sub_248382A80();
            v41 = sub_248383DC0();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              *v42 = 67240448;
              *(v42 + 4) = v37;
              *(v42 + 8) = 1024;
              *(v42 + 10) = sub_248381F80() & 1;

              _os_log_impl(&dword_248146000, v40, v41, "Received message for allow layout change %{BOOL,public}d. In active transition: %{BOOL}d", v42, 0xEu);
              MEMORY[0x24C1CD5F0](v42, -1, -1);
            }

            else
            {

              v40 = v39;
            }

            v34(v10, v4);
            v43 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions;
            *(&v39->isa + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions) = v37;
            if ((sub_248381F80() & 1) != 0 && (*(&v39->isa + v43) & 1) == 0)
            {
              sub_248381EE0();
            }

            v44 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
            swift_unknownObjectRelease();
            v45 = [v44 uisyncSessionEventDelegate];

            if (v45)
            {
              if ([v45 respondsToSelector_])
              {

                v46 = sub_248383930();

                [v45 didForegroundAssetForDisplayID_];
                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            return;
          }
        }

        else
        {
        }

        v37 = 1;
        goto LABEL_17;
      }
    }
  }

  v30 = sub_24827C568();
  (*(v5 + 16))(v7, v30, v4);
  v31 = sub_248382A80();
  v32 = sub_248383DA0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_248146000, v31, v32, "Bad payload", v33, 2u);
    MEMORY[0x24C1CD5F0](v33, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_248255804(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v71 - v4;
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = (&v71 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  v18 = sub_2483824B0();
  v80 = *(v18 - 8);
  v81 = v18;
  MEMORY[0x28223BE20](v18);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v78 = &v71 - v21;
  v22 = sub_2483825A0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for DBInstrumentClusterLayoutViewController.TransitionAction(0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions) == 1)
  {
    v30 = *(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator);
    (*(v23 + 16))(v25, v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v22, v27);
    sub_248256270(v30, v25, v79, v29);
    (*(v23 + 8))(v25, v22);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      (*(v80 + 56))(v17, 1, 1, v81);
LABEL_13:
      v52 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_nextLayout;
      swift_beginAccess();
      sub_24825CD9C(v17, v2 + v52);
      return swift_endAccess();
    }

    v37 = v80;
    if (EnumCaseMultiPayload)
    {
      v51 = v81;
      (*(v80 + 32))(v17, v29, v81);
      (*(v37 + 56))(v17, 0, 1, v51);
      goto LABEL_13;
    }

    v79 = v30;
    v38 = v78;
    v39 = v29;
    v40 = v81;
    (*(v80 + 32))(v78, v39, v81);
    v41 = *(v37 + 56);
    v41(v17, 1, 1, v40);
    v42 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_nextLayout;
    swift_beginAccess();
    sub_24825CD9C(v17, v2 + v42);
    swift_endAccess();
    v43 = v38;
    v44 = sub_24824F7B8(v38);
    if (v44)
    {
      v45 = v44;
      v46 = v77;
      (*(v37 + 16))(v77, v38, v40);
      v41(v46, 0, 1, v40);
      sub_24825C5D8(MEMORY[0x277D84F90]);
      *(v2 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData) = v45;

      v47 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
      swift_unknownObjectRelease();
      v48 = [v47 analytics];

      if (v48)
      {
        v49 = v75;
        sub_248232C78(v46, v75, &qword_27EE8FE30);
        if ((*(v37 + 48))(v49, 1, v40) == 1)
        {
          sub_24822D578(v49, &qword_27EE8FE30);
          v50 = 0;
        }

        else
        {
          sub_248382410();
          (*(v37 + 8))(v49, v40);
          v50 = sub_248383930();
        }

        [v48 changedLayout_];
      }

      sub_248382020();

      sub_248381E50();
      sub_24822D578(v46, &qword_27EE8FE30);
      return (*(v37 + 8))(v43, v40);
    }

    else
    {
      sub_24827C568();
      v53 = v6;
      v54 = v5;
      v55 = v76;
      (v6[2])();
      v56 = v74;
      v57 = v43;
      (*(v37 + 16))(v74, v43, v40);
      v58 = sub_248382A80();
      v59 = sub_248383DA0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v79 = v54;
        v77 = v53;
        v61 = v60;
        v75 = swift_slowAlloc();
        v82[0] = v75;
        *v61 = 136446210;
        v62 = v71;
        sub_248382450();
        sub_24822D648(&qword_27EE8FEC0, &qword_27EE90A80);
        v63 = v73;
        v64 = sub_248384650();
        v66 = v65;
        (*(v72 + 8))(v62, v63);
        v67 = *(v37 + 8);
        v67(v56, v40);
        v68 = sub_24814A378(v64, v66, v82);

        *(v61 + 4) = v68;
        _os_log_impl(&dword_248146000, v58, v59, "Failed to update theme for next layout %{public}s", v61, 0xCu);
        v69 = v75;
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x24C1CD5F0](v69, -1, -1);
        MEMORY[0x24C1CD5F0](v61, -1, -1);

        v77[1](v76, v79);
        return (v67)(v78, v40);
      }

      else
      {

        v70 = *(v37 + 8);
        v70(v56, v40);
        v53[1](v55, v54);
        return (v70)(v57, v40);
      }
    }
  }

  else
  {
    v32 = sub_24827C568();
    (v6[2])(v8, v32, v5);
    v33 = sub_248382A80();
    v34 = sub_248383D80();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_248146000, v33, v34, "Ignoring drive mode change request due layout change being unavailable", v35, 2u);
      MEMORY[0x24C1CD5F0](v35, -1, -1);
    }

    return (v6[1])(v8, v5);
  }
}

uint64_t sub_248256270@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v119 = a1;
  v120 = a2;
  v124 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FEC8);
  MEMORY[0x28223BE20](v5);
  v118 = &v103 - v6;
  v7 = sub_248382A90();
  v125 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v103 - v11;
  MEMORY[0x28223BE20](v13);
  v115 = &v103 - v14;
  MEMORY[0x28223BE20](v15);
  v114 = &v103 - v16;
  MEMORY[0x28223BE20](v17);
  v116 = &v103 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v103 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v22 - 8);
  v117 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v103 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v103 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  v33 = sub_2483824B0();
  v34 = *(v33 - 8);
  v122 = v33;
  v123 = v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v121 = &v103 - v38;
  if (*(a3 + 16))
  {
    v113 = v29;
    v39 = sub_24822B8A0(1635017060, 0xE400000000000000);
    if (v40)
    {
      sub_24814A550(*(a3 + 56) + 32 * v39, v127);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0);
      if (swift_dynamicCast())
      {
        v41 = v126;
        if (!*(v126 + 16) || (v42 = sub_24822B8A0(0x646F4D6576697264, 0xE900000000000065), (v43 & 1) == 0) || (sub_24814A550(*(v41 + 56) + 32 * v42, v127), (swift_dynamicCast() & 1) == 0))
        {
LABEL_9:
          v46 = sub_24827C568();
          v47 = v125;
          v48 = v7;
          (*(v125 + 16))(v12, v46, v7);

          v49 = sub_248382A80();
          v50 = sub_248383D80();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v127[0] = v52;
            *v51 = 136446210;
            v53 = sub_2483838B0();
            v55 = v54;

            v56 = sub_24814A378(v53, v55, v127);

            *(v51 + 4) = v56;
            _os_log_impl(&dword_248146000, v49, v50, "DriveModeChange: no layout for %{public}s.", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x24C1CD5F0](v52, -1, -1);
            MEMORY[0x24C1CD5F0](v51, -1, -1);
          }

          else
          {
          }

          (*(v47 + 8))(v12, v48);
          goto LABEL_14;
        }

        sub_248382580();

        v44 = v122;
        v45 = v123 + 48;
        v120 = *(v123 + 48);
        if (v120(v32, 1, v122) == 1)
        {
          sub_24822D578(v32, &qword_27EE8FE30);
          goto LABEL_9;
        }

        v107 = v45;
        v68 = *(v123 + 32);
        v106 = v123 + 32;
        v105 = v68;
        v68(v121, v32, v44);
        v69 = sub_24827C568();
        v70 = *(v125 + 16);
        v108 = v69;
        v110 = v125 + 16;
        v109 = v70;
        (v70)(v21);

        v71 = sub_248382A80();
        v72 = sub_248383DC0();

        LODWORD(v112) = v72;
        v73 = os_log_type_enabled(v71, v72);
        v74 = v123;
        v111 = v7;
        if (v73)
        {
          v75 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v127[0] = v104;
          *v75 = 136446210;
          v76 = sub_2483838B0();
          v78 = v77;

          v79 = v76;
          v80 = v122;
          v81 = sub_24814A378(v79, v78, v127);
          v74 = v123;

          *(v75 + 4) = v81;
          _os_log_impl(&dword_248146000, v71, v112, "Handle DriveModeChange change %{public}s.", v75, 0xCu);
          v82 = v104;
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x24C1CD5F0](v82, -1, -1);
          MEMORY[0x24C1CD5F0](v75, -1, -1);
        }

        else
        {
          v80 = v44;
        }

        v112 = *(v125 + 8);
        v112(v21, v7);
        v83 = v118;
        v84 = v113;
        (*(v74 + 16))(v113, v121, v80);
        (*(v74 + 56))(v84, 0, 1, v80);
        sub_248381EF0();
        v85 = *(v5 + 48);
        sub_248232C78(v84, v83, &qword_27EE8FE30);
        sub_248232C78(v26, v83 + v85, &qword_27EE8FE30);
        v86 = v120;
        if (v120(v83, 1, v80) == 1)
        {
          sub_24822D578(v26, &qword_27EE8FE30);
          sub_24822D578(v84, &qword_27EE8FE30);
          if (v86(v83 + v85, 1, v80) == 1)
          {
            sub_24822D578(v83, &qword_27EE8FE30);
            v87 = v111;
LABEL_34:
            v99 = v116;
            v109(v116, v108, v87);
            v100 = sub_248382A80();
            v101 = sub_248383D80();
            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              *v102 = 0;
              _os_log_impl(&dword_248146000, v100, v101, "DriveModeChange: Requested to transition to the current layout, clear next layout if any.", v102, 2u);
              MEMORY[0x24C1CD5F0](v102, -1, -1);
            }

            v112(v99, v87);
            (*(v123 + 8))(v121, v80);
            goto LABEL_14;
          }
        }

        else
        {
          v88 = v117;
          sub_248232C78(v83, v117, &qword_27EE8FE30);
          if (v86(v83 + v85, 1, v80) != 1)
          {
            v105(v36, v83 + v85, v80);
            sub_24825D5EC(&qword_27EE8FED0, MEMORY[0x277CF8E08]);
            v95 = sub_248383910();
            v96 = v74;
            v97 = v83;
            v98 = *(v96 + 8);
            v98(v36, v122);
            sub_24822D578(v26, &qword_27EE8FE30);
            sub_24822D578(v113, &qword_27EE8FE30);
            v98(v88, v122);
            v80 = v122;
            sub_24822D578(v97, &qword_27EE8FE30);
            v87 = v111;
            if (v95)
            {
              goto LABEL_34;
            }

            goto LABEL_26;
          }

          sub_24822D578(v26, &qword_27EE8FE30);
          sub_24822D578(v113, &qword_27EE8FE30);
          (*(v74 + 8))(v88, v80);
        }

        sub_24822D578(v83, &qword_27EE8FEC8);
        v87 = v111;
LABEL_26:
        if (sub_248381F80())
        {
          v89 = v114;
          v109(v114, v108, v87);
          v90 = sub_248382A80();
          v91 = sub_248383D80();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_248146000, v90, v91, "DriveModeChange: another transition is in progress. Enqueue layout", v92, 2u);
            MEMORY[0x24C1CD5F0](v92, -1, -1);
          }
        }

        else
        {
          v89 = v115;
          v109(v115, v108, v87);
          v90 = sub_248382A80();
          v93 = sub_248383D80();
          if (os_log_type_enabled(v90, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_248146000, v90, v93, "DriveModeChange: Start transitioning immediately", v94, 2u);
            MEMORY[0x24C1CD5F0](v94, -1, -1);
          }
        }

        v112(v89, v87);
        v105(v124, v121, v80);
        goto LABEL_14;
      }
    }
  }

  v57 = sub_24827C568();
  v58 = v125;
  v59 = v7;
  (*(v125 + 16))(v9, v57, v7);

  v60 = sub_248382A80();
  v61 = sub_248383DA0();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v127[0] = v63;
    *v62 = 136315138;
    v64 = sub_2483838B0();
    v66 = sub_24814A378(v64, v65, v127);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_248146000, v60, v61, "DriveModeChange: Bad payload : %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x24C1CD5F0](v63, -1, -1);
    MEMORY[0x24C1CD5F0](v62, -1, -1);
  }

  (*(v58 + 8))(v9, v59);
LABEL_14:
  type metadata accessor for DBInstrumentClusterLayoutViewController.TransitionAction(0);
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DBInstrumentClusterLayoutViewController.setThemeData(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v247 = *MEMORY[0x277D85DE8];
  v239 = sub_248382A90();
  v238 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v3 = v206 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v235 = v206 - v5;
  MEMORY[0x28223BE20](v6);
  v222 = v206 - v7;
  MEMORY[0x28223BE20](v8);
  v219 = v206 - v9;
  MEMORY[0x28223BE20](v10);
  v228 = v206 - v11;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v227 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v232 = v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v220 = v206 - v14;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v230 = *(v231 - 1);
  MEMORY[0x28223BE20](v231);
  v16 = v206 - v15;
  v237 = sub_2483825A0();
  v17 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v226 = v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v206 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v206 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  MEMORY[0x28223BE20](v25 - 8);
  v217 = v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v218 = v206 - v28;
  MEMORY[0x28223BE20](v29);
  v223 = v206 - v30;
  MEMORY[0x28223BE20](v31);
  v229 = (v206 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = v206 - v34;
  v36 = sub_2483824B0();
  v242 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v221 = v206 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v234 = v206 - v39;
  MEMORY[0x28223BE20](v40);
  v224 = v206 - v41;
  MEMORY[0x28223BE20](v42);
  v225 = v206 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = v206 - v45;
  MEMORY[0x28223BE20](v47);
  v236 = v206 - v48;
  v243 = v1;
  v49 = *(v1 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_clusterTransitionCoordinator);
  if ((sub_248381F80() & 1) != 0 || (sub_248381FE0() & 1) != 0 || *(v243 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions) != 1)
  {
    v61 = sub_24827C568();
    v62 = v238;
    v63 = v239;
    (*(v238 + 16))(v3, v61, v239);
    v64 = sub_248382A80();
    v65 = sub_248383DA0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_248146000, v64, v65, "Theme updates are not allowed currently", v66, 2u);
      MEMORY[0x24C1CD5F0](v66, -1, -1);
    }

    (*(v62 + 8))(v3, v63);
    sub_24825CE0C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v211 = v49;
  v244 = v36;
  v50 = *(v17 + 16);
  v213 = OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display;
  v51 = v237;
  v215 = v17 + 16;
  v214 = v50;
  v50(v24, v243 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v237);
  v52 = sub_248382590();
  v53 = *(v17 + 8);
  v216 = v17 + 8;
  v212 = v53;
  v53(v24, v51);
  v54 = *(v52 + 16);
  if (!v54)
  {
LABEL_10:

    v58 = 1;
    v59 = v244;
    v60 = v242;
LABEL_15:
    v67 = v60[7];
    v210 = v60 + 7;
    v209 = v67;
    v67(v35, v58, 1, v59);
    v68 = v60[6];
    v69 = v68(v35, 1, v59);
    v70 = v236;
    if (v69 == 1)
    {
      sub_24822D578(v35, &qword_27EE8FE30);
LABEL_27:
      v107 = sub_24827C568();
      v108 = v238;
      v109 = v235;
      v110 = v239;
      (*(v238 + 16))(v235, v107, v239);
      v111 = sub_248382A80();
      v112 = sub_248383DB0();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_248146000, v111, v112, "Invalid theme data received", v113, 2u);
        MEMORY[0x24C1CD5F0](v113, -1, -1);
      }

      (*(v108 + 8))(v109, v110);
      return;
    }

    v207 = v68;
    v208 = v60 + 6;
    v71 = v60[4];
    v206[1] = v60 + 4;
    v206[0] = v71;
    v71(v236, v35, v59);
    v72 = v60;
    v73 = v243;
    v74 = rawValue;
    (*((*MEMORY[0x277D85000] & **(v243 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_themeController)) + 0xA0))(rawValue);
    v76 = v75;

    if (v76)
    {
      (v72[1])(v70, v59);
      goto LABEL_27;
    }

    v77 = v237;
    v214(v21, v73 + v213, v237);
    sub_248382540();
    v212(v21, v77);
    v78 = v231;
    sub_248381860();
    (*(v230 + 1))(v16, v78);
    if (!v74[2])
    {
      (*(v242 + 1))(v70, v244);

      goto LABEL_27;
    }

    v79 = v74;
    v80 = sub_24822B8A0(v245, v246);
    v82 = v81;

    if ((v82 & 1) == 0)
    {
      (*(v242 + 1))(v70, v244);
      goto LABEL_27;
    }

    v235 = *(v74[7] + 8 * v80);
    v83 = [v235 currentLayoutID];
    v84 = sub_248383960();
    v86 = v85;

    v87 = v229;
    sub_248381EF0();
    v88 = v244;
    if (v207(v87, 1, v244) == 1)
    {
      sub_24822D578(v87, &qword_27EE8FE30);

LABEL_23:
      v89 = sub_24827C568();
      v90 = *(v238 + 16);
      v91 = v228;
      v221 = v89;
      v222 = (v238 + 16);
      v220 = v90;
      (v90)(v228);
      v92 = v242;
      v93 = *(v242 + 2);
      v94 = v225;
      v230 = v242 + 16;
      v229 = v93;
      v93(v225, v70, v88);
      v95 = sub_248382A80();
      v96 = v88;
      v97 = sub_248383D80();
      if (os_log_type_enabled(v95, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v245 = v99;
        *v98 = 136315138;
        v100 = sub_248382410();
        v102 = v101;
        v231 = *(v92 + 1);
        (v231)(v94, v96);
        v103 = sub_24814A378(v100, v102, &v245);

        *(v98 + 4) = v103;
        _os_log_impl(&dword_248146000, v95, v97, "Setting layout to %s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x24C1CD5F0](v99, -1, -1);
        v104 = v98;
        v79 = rawValue;
        MEMORY[0x24C1CD5F0](v104, -1, -1);

        v105 = *(v238 + 8);
        v106 = v228;
      }

      else
      {

        v231 = *(v92 + 1);
        (v231)(v94, v88);
        v105 = *(v238 + 8);
        v106 = v91;
      }

      v228 = v105;
      (v105)(v106, v239);
      v118 = v92;
      v119 = v226;
      v120 = v237;
      v214(v226, v243 + v213, v237);
      v121 = sub_248382590();
      v212(v119, v120);
      if (*(v121 + 16))
      {
        v122 = *(v121 + 16);
        v123 = 0;
        v124 = (v227 + 8);
        v237 = (v92 + 8);
        while (1)
        {
          if (v123 >= *(v121 + 16))
          {
            goto LABEL_67;
          }

          v229(v234, v121 + ((v118[80] + 32) & ~v118[80]) + *(v118 + 9) * v123, v244);
          v125 = v232;
          sub_248382450();
          swift_getKeyPath();
          v126 = v233;
          sub_248381870();

          (*v124)(v125, v126);
          v128 = v245;
          v127 = v246;
          v129 = [v235 currentLayoutID];
          v130 = sub_248383960();
          v132 = v131;

          if (v128 == v130 && v127 == v132)
          {
            break;
          }

          v134 = sub_248384680();

          v79 = rawValue;
          if (v134)
          {
            goto LABEL_53;
          }

          ++v123;
          (v231)(v234, v244);
          v118 = v242;
          if (v122 == v123)
          {
            goto LABEL_43;
          }
        }

        v79 = rawValue;
LABEL_53:

        v137 = v223;
        v136 = v244;
        (v206[0])(v223, v234, v244);
        v135 = 0;
      }

      else
      {
LABEL_43:

        v135 = 1;
        v136 = v244;
        v137 = v223;
      }

      v181 = v209;
      v209(v137, v135, 1, v136);
      v182 = v207(v137, 1, v136);
      v183 = v243;
      if (v182 == 1)
      {
        sub_24822D578(v137, &qword_27EE8FE30);
        v184 = v219;
        v185 = v239;
        (v220)(v219, v221, v239);
        v186 = v235;
        v187 = sub_248382A80();
        v188 = sub_248383DA0();

        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v245 = v190;
          *v189 = 136315138;
          v191 = [v186 currentLayoutID];
          v192 = sub_248383960();
          v194 = v193;

          v195 = sub_24814A378(v192, v194, &v245);

          *(v189 + 4) = v195;
          _os_log_impl(&dword_248146000, v187, v188, "Unable to find layout with id: %s", v189, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v190);
          MEMORY[0x24C1CD5F0](v190, -1, -1);
          MEMORY[0x24C1CD5F0](v189, -1, -1);

          (v228)(v219, v239);
        }

        else
        {

          (v228)(v184, v185);
        }

        (v231)(v236, v244);
      }

      else
      {
        v196 = v181;
        v197 = v224;
        (v206[0])(v224, v137, v136);
        v198 = v218;
        v229(v218, v197, v136);
        v196(v198, 0, 1, v136);
        v199 = v198;
        sub_24825C5D8(MEMORY[0x277D84F90]);
        *(v183 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_stagedThemeData) = v79;

        Strong = swift_unknownObjectUnownedLoadStrong();

        v201 = [Strong environmentConfiguration];
        swift_unknownObjectRelease();
        v202 = [v201 analytics];

        if (v202)
        {
          v203 = v217;
          sub_248232C78(v198, v217, &qword_27EE8FE30);
          if (v207(v203, 1, v136) == 1)
          {
            sub_24822D578(v203, &qword_27EE8FE30);
            v204 = 0;
          }

          else
          {
            sub_248382410();
            (v231)(v203, v136);
            v204 = sub_248383930();
            v199 = v218;
          }

          [v202 changedLayout_];

          v136 = v244;
        }

        sub_248382020();

        sub_248381E50();

        sub_24822D578(v199, &qword_27EE8FE30);
        v205 = v231;
        (v231)(v224, v136);
        v205(v236, v136);
      }

      return;
    }

    v114 = v220;
    sub_248382450();
    v115 = v242 + 8;
    v231 = *(v242 + 1);
    (v231)(v87, v88);
    swift_getKeyPath();
    v116 = v233;
    sub_248381870();

    (*(v227 + 8))(v114, v116);
    if (v84 == v245 && v86 == v246)
    {

      v70 = v236;
      v117 = v221;
    }

    else
    {
      v138 = sub_248384680();

      v70 = v236;
      v117 = v221;
      if ((v138 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v237 = v115;
    v139 = sub_24827C568();
    v140 = v238;
    v141 = v222;
    v142 = v239;
    (*(v238 + 16))(v222, v139, v239);
    (*(v242 + 2))(v117, v70, v88);
    v143 = v235;
    v144 = sub_248382A80();
    v145 = v117;
    v146 = sub_248383D80();
    v242 = v143;

    v147 = v88;
    if (os_log_type_enabled(v144, v146))
    {
      v148 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v245 = v235;
      *v148 = 136315394;
      v149 = [v242 currentPaletteID];
      v150 = sub_248383960();
      v152 = v151;

      v153 = sub_24814A378(v150, v152, &v245);
      v79 = rawValue;

      *(v148 + 4) = v153;
      *(v148 + 12) = 2080;
      v154 = sub_248382410();
      v156 = v155;
      (v231)(v145, v147);
      v157 = sub_24814A378(v154, v156, &v245);

      *(v148 + 14) = v157;
      _os_log_impl(&dword_248146000, v144, v146, "Setting palette %s for layout %s", v148, 0x16u);
      v158 = v235;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v158, -1, -1);
      MEMORY[0x24C1CD5F0](v148, -1, -1);

      (*(v140 + 8))(v222, v239);
    }

    else
    {

      (v231)(v145, v88);
      (*(v140 + 8))(v141, v142);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FEE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24839CCA0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x80000002483AA510;
    v160 = v242;
    v161 = [v242 currentLayoutID];
    v162 = sub_248383960();
    v164 = v163;

    *(inited + 48) = v162;
    *(inited + 56) = v164;
    *(inited + 64) = 0xD000000000000011;
    *(inited + 72) = 0x80000002483AA530;
    v165 = [v160 currentPaletteID];
    v166 = sub_248383960();
    v168 = v167;

    *(inited + 80) = v166;
    *(inited + 88) = v168;
    v169 = sub_24825C5D8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FEF0);
    swift_arrayDestroy();
    v170 = *(v243 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_uisyncSession);
    sub_2482590F0(v169);

    v171 = sub_248383880();

    v245 = 0;
    LODWORD(inited) = [v170 sendPaletteChange:v171 error:&v245];

    v172 = v245;
    if (inited)
    {
      v173 = swift_unknownObjectUnownedLoadStrong();
      v174 = v172;
      v175 = [v173 environmentConfiguration];
      swift_unknownObjectRelease();
      v176 = [v175 wallpaperPreferences];

      v177 = v244;
      v178 = v236;
      if (v176)
      {
        sub_2482593B8(v79, 0.0, 0.0);
        sub_24814FB28(0, &qword_27EE8FEF8);
        v179 = sub_248383880();
        [v176 updateThemeData_];

        (v231)(v178, v177);
      }

      else
      {
        (v231)(v236, v244);
      }
    }

    else
    {
      v180 = v245;
      sub_2483810C0();

      swift_willThrow();
      (v231)(v236, v244);
    }

    return;
  }

  v55 = 0;
  v56 = (v242 + 8);
  while (1)
  {
    if (v55 >= *(v52 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
    }

    (*(v242 + 2))(v46, v52 + ((v242[80] + 32) & ~v242[80]) + *(v242 + 9) * v55, v244);
    v57 = sub_248258CD8(v46, rawValue, v243);
    if (v241)
    {
      break;
    }

    if (v57)
    {

      v60 = v242;
      v59 = v244;
      (*(v242 + 4))(v35, v46, v244);
      v58 = 0;
      goto LABEL_15;
    }

    ++v55;
    (*v56)(v46, v244);
    if (v54 == v55)
    {
      goto LABEL_10;
    }
  }

  (*v56)(v46, v244);
  __break(1u);
}

uint64_t sub_248258C88()
{
  if (sub_248381F80() & 1) != 0 || (sub_248381FE0())
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_allowTransitions);
  }
}

uint64_t sub_248258CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v34 = sub_2483825A0();
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248381210();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  sub_248382450();
  sub_248381860();
  (*(v15 + 8))(v17, v14);
  v18 = sub_2483811D0();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  v21 = v35;
  v22 = v34;
  (*(v7 + 16))(v9, v36 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v34);
  sub_248382540();
  (*(v7 + 8))(v9, v22);
  v23 = v37;
  sub_248381860();
  (*(v38 + 8))(v6, v23);
  if (!*(v21 + 16))
  {

    goto LABEL_7;
  }

  v24 = sub_24822B8A0(v39, v40);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_7:

    v31 = 0;
    return v31 & 1;
  }

  v27 = [*(*(v21 + 56) + 8 * v24) currentLayoutID];
  v28 = sub_248383960();
  v30 = v29;

  if (v18 == v28 && v20 == v30)
  {

    v31 = 1;
  }

  else
  {
    v31 = sub_248384680();
  }

  return v31 & 1;
}

uint64_t sub_2482590C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2483811D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2482590F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901E0);
    v2 = sub_2483845F0();
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
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24825E6A0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24825E6A0(v29, v30);
    result = sub_2483843C0();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_24825E6A0(v30, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2482593B8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FED8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = sub_2483825A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v4 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_display, v12, v14);
  sub_248382540();
  (*(v13 + 8))(v16, v12);
  sub_248381860();
  (*(v9 + 8))(v11, v8);
  v17 = MEMORY[0x277D85000];
  if (*(a1 + 16))
  {
    v18 = sub_24822B8A0(v24[0], v24[1]);
    v20 = v19;

    if (v20)
    {
      v21 = *((*v17 & **(v4 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator)) + 0xB0);
      v22 = *(*(a1 + 56) + 8 * v18);
      v21();
    }
  }

  else
  {
  }

  return (*((*v17 & **(v4 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_themeController)) + 0x110))(a1, a2, a3);
}

uint64_t InstrumentState.hashValue.getter(unsigned __int8 a1)
{
  sub_248384780();
  MEMORY[0x24C1CBD70](a1);
  return sub_2483847B0();
}

uint64_t sub_2482597C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248382E90();

  return v1;
}

uint64_t sub_248259838()
{
  v1 = OBJC_IVAR____TtC9DashBoardP33_73D3EAFCCDEF5FB059F5819ABDB3422B33CloseButtonFocusEffectCoordinator__canShowFocusEffect;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2482598E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloseButtonFocusEffectCoordinator(0);
  result = sub_248382DE0();
  *a1 = result;
  return result;
}

uint64_t sub_248259920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_248383220();
  *a1 = result & 1;
  return result;
}

uint64_t sub_248259978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  if (v5)
  {
    v7 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_248382E90();

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90500);
    (*(*(v8 - 8) + 16))(a2, a1, v8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90508);
    v10 = a2 + *(result + 36);
    *v10 = v7;
    *(v10 + 8) = v11;
  }

  else
  {
    type metadata accessor for CloseButtonFocusEffectCoordinator(0);
    sub_24825D7A4();
    result = sub_248383180();
    __break(1u);
  }

  return result;
}

id sub_248259AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24825CADC(a1);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

id sub_248259BD4()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for LayoutViewController();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC9DashBoard20LayoutViewController_hostingController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  [v3 addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24839CCB0;
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = [result topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  v13 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v15 = [result bottomAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = result;
  v18 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = result;
  v20 = [result leadingAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = result;
  v23 = [result trailingAnchor];

  result = [v0 view];
  if (result)
  {
    v24 = result;
    v25 = objc_opt_self();
    v26 = [v24 trailingAnchor];

    v27 = [v23 constraintEqualToAnchor_];
    *(v6 + 56) = v27;
    sub_24814FB28(0, &qword_27EE8FE90);
    v28 = sub_248383B00();

    [v25 activateConstraints_];

    return [v1 didMoveToParentViewController_];
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_24825A044(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_24825A11C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayoutViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24825A160@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248382E90();

  *a1 = v3;
  return result;
}

uint64_t sub_24825A1E0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_248382EA0();
}

uint64_t sub_24825A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2483844F0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24825A354, 0, 0);
}

uint64_t sub_24825A354()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_248384500();
  v5 = sub_24825D5EC(&unk_27EE94580, MEMORY[0x277D85928]);
  sub_2483846F0();
  sub_24825D5EC(&qword_27EE90220, MEMORY[0x277D858F8]);
  sub_248384510();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24825A4E4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24825A4E4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24825A6A0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24825A6A0()
{

  v1 = *(v0 + 8);

  return v1();
}

size_t sub_24825A70C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

uint64_t sub_24825A938(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_248382250();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
  v33 = a2;
  v11 = sub_2483838D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24825D5EC(&qword_27EE902A8, MEMORY[0x277CF8DA0]);
      v21 = sub_248383910();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24825AF74(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24825AC18()
{
  v1 = v0;
  v35 = sub_248382250();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902B0);
  result = sub_248384400();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
      result = sub_2483838D0();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_24825AF74(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_248382250();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24825AC18();
  }

  else
  {
    if (v12 > v11)
    {
      sub_24825B218();
      goto LABEL_12;
    }

    sub_24825B450();
  }

  v13 = *v3;
  sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
  v14 = sub_2483838D0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24825D5EC(&qword_27EE902A8, MEMORY[0x277CF8DA0]);
      v22 = sub_248383910();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2483846D0();
  __break(1u);
  return result;
}

void *sub_24825B218()
{
  v1 = v0;
  v2 = sub_248382250();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902B0);
  v6 = *v0;
  v7 = sub_2483843F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_24825B450()
{
  v1 = v0;
  v32 = sub_248382250();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902B0);
  v6 = sub_248384400();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
      result = sub_2483838D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

void *sub_24825B76C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_24825B9C0((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_24825B930(v12, v6, a2, a1);

    MEMORY[0x24C1CD5F0](v12, -1, -1);
  }

  return v10;
}

void *sub_24825B930(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_24825B9C0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_24825B9C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_248382250();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - v10;
  MEMORY[0x28223BE20](v12);
  v76 = (v61 - v13);
  v15 = MEMORY[0x28223BE20](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        sub_24825C0A8(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
          v55 = sub_2483838D0();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              sub_24825D5EC(&qword_27EE902A8, MEMORY[0x277CF8DA0]);
              v59 = sub_248383910();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
          v34 = sub_2483838D0();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              sub_24825D5EC(&qword_27EE902A8, MEMORY[0x277CF8DA0]);
              v40 = sub_248383910();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_24825C0A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_248382250();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE902B0);
  result = sub_248384420();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
    result = sub_2483838D0();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24825C3D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24825C4C4;

  return v5(v2 + 32);
}

uint64_t sub_24825C4C4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_24825C5D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90210);
    v3 = sub_2483845F0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24822B8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

uint64_t sub_24825C6EC(uint64_t a1)
{
  v2 = sub_248382250();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24825D5EC(&qword_27EE902A0, MEMORY[0x277CF8DA0]);
  result = MEMORY[0x24C1CB280](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_24825A938(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_24825C888(void *a1, const char *a2, unsigned int *a3, void (*a4)(void))
{
  v24 = a2;
  v25 = a3;
  v6 = sub_248381B30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    v15 = sub_24827C568();
    (*(v11 + 16))(v13, v15, v10);
    v16 = sub_248382A80();
    v17 = sub_248383DC0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = v6;
      v19 = a4;
      v20 = v18;
      *v18 = 0;
      _os_log_impl(&dword_248146000, v16, v17, v24, v18, 2u);
      v21 = v20;
      a4 = v19;
      v6 = v23;
      MEMORY[0x24C1CD5F0](v21, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    (*(v7 + 104))(v9, *v25, v6);
    a4(v9);

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

id sub_24825CADC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v10 = sub_248383710();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE901B8));
  *&v1[OBJC_IVAR____TtC9DashBoard20LayoutViewController_hostingController] = sub_248383350();
  v6 = type metadata accessor for LayoutViewController();
  v9.receiver = v1;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24825CC00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator);

    (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();
  }
}

uint64_t DBIsInternalInstall()
{
  v0 = DBIsInternalInstall_onceToken_4;
  v1 = &__block_literal_global_50;
  if (v0 != -1)
  {
    dispatch_once(&DBIsInternalInstall_onceToken_4, &__block_literal_global_50);
  }

  return DBIsInternalInstall_isInternal_4;
}

uint64_t sub_24825CD28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24825CD9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24825CE0C()
{
  result = qword_27EE8FEE0;
  if (!qword_27EE8FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FEE0);
  }

  return result;
}

unint64_t sub_24825CE88()
{
  result = qword_27EE8FF08;
  if (!qword_27EE8FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FF08);
  }

  return result;
}

unint64_t sub_24825CEE0()
{
  result = qword_27EE8FF10;
  if (!qword_27EE8FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE8FF10);
  }

  return result;
}

uint64_t sub_24825CF34(uint64_t a1, int a2)
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

uint64_t sub_24825CF7C(uint64_t result, int a2, int a3)
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

void sub_24825CFD0()
{
  sub_2483825A0();
  if (v0 <= 0x3F)
  {
    sub_2483841A0();
    if (v1 <= 0x3F)
    {
      sub_24825D174();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24825D174()
{
  if (!qword_27EE8FF20)
  {
    sub_2483824B0();
    v0 = sub_2483841F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE8FF20);
    }
  }
}

uint64_t sub_24825D21C()
{
  result = sub_2483824B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InstrumentState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InstrumentState(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_24825D3E4()
{
  sub_24825D4C0(319, &unk_27EE94180, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24825D4C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24825D530(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24825D598()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_24825D5EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_99Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24825D6AC()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_24825D710()
{
  v1 = *(sub_248381EC0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24824BD98(v3, v0 + v2, v4);
}

unint64_t sub_24825D7A4()
{
  result = qword_27EE95680[0];
  if (!qword_27EE95680[0])
  {
    type metadata accessor for CloseButtonFocusEffectCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE95680);
  }

  return result;
}

uint64_t sub_24825D7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24824D9E0(a1, a2);

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90080);
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

unint64_t sub_24825D8D0()
{
  result = qword_27EE90078;
  if (!qword_27EE90078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90080);
    sub_24822D648(&qword_27EE90088, &unk_27EE8FFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90078);
  }

  return result;
}

uint64_t sub_24825D980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24824CBC0(a1, a2);

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE900B8);
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

uint64_t sub_24825DA44(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24825DAC0()
{
  result = qword_27EE900B0;
  if (!qword_27EE900B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE900B8);
    sub_24822D648(&qword_27EE8FFF8, &qword_27EE8FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE900B0);
  }

  return result;
}

uint64_t sub_24825DB78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;

      sub_248381530();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE901C0);
      return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
    }
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE901C0);
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

uint64_t sub_24825DCD0()
{
  v2 = *(sub_2483824B0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24823DDD0;

  return sub_24824857C(v4, v0 + v3);
}

unint64_t sub_24825DDA8()
{
  result = qword_27EE900F8;
  if (!qword_27EE900F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90010);
    sub_24825DE64();
    sub_24825D5EC(&qword_27EE901B0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE900F8);
  }

  return result;
}

unint64_t sub_24825DE64()
{
  result = qword_27EE90100;
  if (!qword_27EE90100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE900E8);
    sub_24825DF1C();
    sub_24822D648(&qword_27EE901A8, &qword_27EE900F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90100);
  }

  return result;
}

unint64_t sub_24825DF1C()
{
  result = qword_27EE90108;
  if (!qword_27EE90108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE900D8);
    sub_24825DFD4();
    sub_24822D648(&qword_27EE901A0, &qword_27EE900E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90108);
  }

  return result;
}

unint64_t sub_24825DFD4()
{
  result = qword_27EE90110;
  if (!qword_27EE90110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE900D0);
    sub_24825E08C();
    sub_24822D648(&qword_27EE90190, &qword_27EE90198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90110);
  }

  return result;
}

unint64_t sub_24825E08C()
{
  result = qword_27EE90118;
  if (!qword_27EE90118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE900C0);
    sub_24825E144();
    sub_24822D648(&qword_27EE90180, &qword_27EE90188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90118);
  }

  return result;
}

unint64_t sub_24825E144()
{
  result = qword_27EE90120;
  if (!qword_27EE90120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90090);
    sub_24825E1FC();
    sub_24822D648(&qword_27EE90178, &qword_27EE90098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90120);
  }

  return result;
}

unint64_t sub_24825E1FC()
{
  result = qword_27EE90128;
  if (!qword_27EE90128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90058);
    sub_24825E2B4();
    sub_24822D648(&qword_27EE90170, &qword_27EE90060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90128);
  }

  return result;
}

unint64_t sub_24825E2B4()
{
  result = qword_27EE90130;
  if (!qword_27EE90130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90050);
    sub_24825E36C();
    sub_24822D648(&qword_27EE90160, &qword_27EE90168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90130);
  }

  return result;
}

unint64_t sub_24825E36C()
{
  result = qword_27EE90138;
  if (!qword_27EE90138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90048);
    sub_24825E424();
    sub_24822D648(&qword_27EE90150, &qword_27EE90158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90138);
  }

  return result;
}

unint64_t sub_24825E424()
{
  result = qword_27EE90140;
  if (!qword_27EE90140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90040);
    sub_24825E4B0();
    sub_24825E5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90140);
  }

  return result;
}

unint64_t sub_24825E4B0()
{
  result = qword_27EE90148;
  if (!qword_27EE90148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90000);
    sub_24822D648(&qword_27EE90038, &qword_27EE90000);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90148);
  }

  return result;
}

unint64_t sub_24825E5AC()
{
  result = qword_27EE956B8[0];
  if (!qword_27EE956B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE956B8);
  }

  return result;
}

uint64_t sub_24825E600()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24823DDD0;

  return sub_2482488E8(v4, v2, v3);
}

_OWORD *sub_24825E6A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24825E714()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_248382EA0();
  }

  return result;
}

uint64_t sub_24825E828(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24825ED28;

  return sub_2482451D8(a1, v6, v7, v5, v4);
}

uint64_t sub_24825E8D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24825ED28;

  return sub_24825C3D0(a1, v4);
}

void sub_24825E998()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_24824D52C();
    if (v3)
    {
      (*((*MEMORY[0x277D85000] & **&v1[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_sceneCoordinator]) + 0xC8))(&v6, v2);

      if (v7)
      {
        sub_24814F6F4(&v6, v8);
        v4 = v9;
        v5 = v10;
        __swift_project_boxed_opaque_existential_0(v8, v9);
        (*(v5 + 24))(v4, v5);

        __swift_destroy_boxed_opaque_existential_0(v8);
      }

      else
      {

        sub_24822D578(&v6, &unk_27EE90B10);
      }
    }

    else
    {
    }
  }
}

unint64_t sub_24825EAC8()
{
  result = qword_27EE904F8;
  if (!qword_27EE904F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE904F8);
  }

  return result;
}

uint64_t sub_24825EB1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24825EB78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24825EBF4()
{
  result = qword_27EE90510;
  if (!qword_27EE90510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE90508);
    sub_24822D648(&qword_27EE90518, &qword_27EE90500);
    sub_24822D648(&qword_27EE90520, &qword_27EE90528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90510);
  }

  return result;
}

uint64_t __DBIsInternalInstall_block_invoke_4()
{
  result = MGGetBoolAnswer();
  DBIsInternalInstall_isInternal_4 = result;
  return result;
}

void *DBAppToHomeAnimationSettings.iconView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard28DBAppToHomeAnimationSettings_iconView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBAppToHomeAnimationSettings.iconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBAppToHomeAnimationSettings_iconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DBAppToHomeAnimationSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBAppToHomeAnimationSettings.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard28DBAppToHomeAnimationSettings_iconView] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBAppToHomeAnimationSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id static DBAppToHomeAnimation.animation(with:)(void (*a1)(void))
{
  v2 = [objc_allocWithZone(type metadata accessor for DBAppToHomeAnimationSettings()) init];
  a1();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = type metadata accessor for _DBSuspendAppToHomeReducedMotionAnimation();
LABEL_7:
    v9 = objc_allocWithZone(v3);
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x138);
  v5 = v4();
  if (!v5)
  {
    v3 = type metadata accessor for _DBSuspendAppToHomeScaleAnimation();
    goto LABEL_7;
  }

  v6 = objc_allocWithZone(type metadata accessor for _DBSuspendAppToHomeZoomAnimation());
  result = v4();
  if (result)
  {
    *&v6[OBJC_IVAR____TtC9DashBoardP33_D40E7872F70D8F122B999F93C1E1124D32_DBSuspendAppToHomeZoomAnimation_iconView] = result;
    v8 = v2;
    return DBDashboardAnimation.init(settings:)(v8);
  }

  __break(1u);
  return result;
}

void sub_24825F344(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = DBDashboardAnimation.fromTransitionContainerView.getter();
  if (v6)
  {
    v7 = v6;
    v8 = DBDashboardAnimation.fromView.getter();
    if (v8)
    {
      v9 = v8;
      v10 = DBDashboardAnimation.rootContainerView.getter();
      if (v10)
      {
        v11 = v10;
        v12 = DBDashboardAnimation.toView.getter();
        if (v12)
        {
          v13 = v12;
          v118 = v9;

          v14 = DBDashboardAnimation.toTransitionContainerView.getter();
          type metadata accessor for DBAnimationView();
          v116 = a1;
          v117 = a2;
          v113 = v11;
          v115 = v13;
          if (v14)
          {
            v15 = DBAnimationView.__allocating_init(frame:)(0.0, 0.0, 0.0, 0.0);
            if (v15)
            {
              v16 = v15;
              [v14 addSubview_];
              v17 = v16;
              [v14 bounds];
              [v17 setFrame_];

              [v17 addSubview_];
              [v17 bounds];
              [v13 setFrame_];

              v18 = v17;
LABEL_16:
              v21 = v17;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_24839C7F0;
              *(v22 + 32) = sub_248383960();
              *(v22 + 40) = v23;
              v24 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
              swift_beginAccess();
              *&v18[v24] = v22;

              v25 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
              [v25 setName_];
              v26 = sub_248381440();
              [v25 setValue:v26 forKey:@"inputRadius"];

              v27 = [v18 layer];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0);
              v28 = swift_allocObject();
              *(v28 + 16) = xmmword_24839C7F0;
              *(v28 + 56) = sub_248260D3C();
              *(v28 + 32) = v25;
              v110 = v25;
              v29 = sub_248383B00();

              [v27 setFilters_];

              v30 = [v18 layer];
              [v30 setShouldRasterize_];

              CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
              v111 = v18;
              [v18 setTransform_];
              v120 = *&v3[OBJC_IVAR____TtC9DashBoardP33_D40E7872F70D8F122B999F93C1E1124D32_DBSuspendAppToHomeZoomAnimation_iconView];
              v31 = [v120 matchingIconViewByAddingConfigurationOptions:6 removingConfigurationOptions:0];
              [v31 setCustomIconImageViewControllerPriority_];
              [v31 setShowsSquareCorners_];
              [v31 setShadowHidden_];
              v32 = v31;
              [v32 iconImageFrame];
              [v32 setFrame_];
              [v32 iconImageInfo];
              v34 = v33;

              [v7 frame];
              v39 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
              v112 = v7;
              [v7 addSubview_];
              [v39 frame];
              v44 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
              [v39 addSubview_];
              [v39 &selRef_bootstrapConfiguration];
              v46 = v45;
              [v39 &selRef_bootstrapConfiguration];
              v48 = v47;
              [v39 &selRef_bootstrapConfiguration];
              v50 = v49;
              v52 = v51;
              [v120 iconImageInfo];
              v54 = v50 / v53;
              v56 = v52 / v55;
              if (v48 <= v46)
              {
                v57 = v56;
              }

              else
              {
                v57 = v54;
              }

              [v39 frame];
              v109 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
              [v32 prepareToCrossfadeImageWithView_options_];
              [v32 setMorphFraction_];
              [v32 setCrossfadeFraction_];
              [v32 setCrossfadeCornerRadius_];
              CGAffineTransformMakeScale(&aBlock, v57, v57);
              [v32 setTransform_];
              [v39 &selRef_bootstrapConfiguration];
              sub_248383F00();
              [v32 setCenter_];

              v62 = [v120 matchingIconViewByAddingConfigurationOptions:6 removingConfigurationOptions:0];
              [v62 setCustomIconImageViewControllerPriority_];
              [v62 setShowsSquareCorners_];
              [v62 setShadowHidden_];
              v63 = v62;
              [v63 iconImageFrame];
              [v63 setFrame_];
              [v63 setAllowsAdornmentsOverIconImage_];

              [v39 frame];
              v108 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
              sub_24823BE08(v108, 3, 1);
              [v63 setMorphFraction_];
              [v63 setCrossfadeFraction_];
              [v63 setCrossfadeCornerRadius_];
              CGAffineTransformMakeScale(&aBlock, v57, v57);
              [v63 setTransform_];
              [v39 &selRef_bootstrapConfiguration];
              sub_248383F00();
              [v63 setCenter_];
              type metadata accessor for DBAppTransitionBlurView();
              [v118 &selRef_bootstrapConfiguration];
              v72 = sub_248235C9C(v68, v69, v70, v71);
              [v72 addSubview_];
              [v44 addSubview_];
              [v39 &selRef_bootstrapConfiguration];
              [v72 setFrame_];

              [v39 &selRef_bootstrapConfiguration];
              v74 = v73;
              [v39 &selRef_bootstrapConfiguration];
              v76 = v75;
              [v120 iconImageFrame];
              v78 = v77;
              v80 = v79;
              [v39 &selRef_bootstrapConfiguration];
              if (v76 <= v74)
              {
                v83 = v80 / v82;
              }

              else
              {
                v83 = v78 / v81;
              }

              v106 = objc_opt_self();
              [v106 begin];
              [v120 setIconImageAlpha_];
              v107 = v44;
              [v44 setMaskView_];

              [v39 addSubview_];
              v84 = objc_opt_self();
              v85 = swift_allocObject();
              *(v85 + 16) = v32;
              *&aBlock.tx = sub_248260FA0;
              *&aBlock.ty = v85;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_107;
              v86 = _Block_copy(&aBlock);
              v104 = v32;

              [v84 animateWithDuration:0 delay:v86 options:0 animations:0.085 completion:0.07];
              _Block_release(v86);
              v87 = swift_allocObject();
              *(v87 + 16) = v118;
              *(v87 + 24) = v72;
              *&aBlock.tx = sub_248260FB4;
              *&aBlock.ty = v87;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_113;
              v88 = _Block_copy(&aBlock);
              v89 = v72;
              v119 = v118;

              [v84 animateWithDuration:0 delay:v88 options:0 animations:0.085 completion:0.1];
              _Block_release(v88);
              v90 = swift_allocObject();
              *(v90 + 16) = v113;
              *(v90 + 24) = v3;
              *(v90 + 32) = v39;
              *(v90 + 40) = v120;
              *(v90 + 48) = v112;
              *(v90 + 56) = v89;
              *(v90 + 64) = v83;
              *(v90 + 72) = v111;
              *(v90 + 80) = v104;
              *(v90 + 88) = v34;
              *(v90 + 96) = v63;
              *&aBlock.tx = sub_248261000;
              *&aBlock.ty = v90;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_119;
              v102 = _Block_copy(&aBlock);
              v91 = v104;
              v92 = v63;
              v103 = v89;
              v114 = v113;
              v93 = v3;
              v105 = v39;
              v94 = v120;
              v95 = v112;
              v121 = v111;

              v96 = swift_allocObject();
              v96[2] = v91;
              v96[3] = v92;
              v96[4] = v115;
              v96[5] = v94;
              v96[6] = v111;
              v96[7] = v116;
              v96[8] = v117;
              *&aBlock.tx = sub_2482612A4;
              *&aBlock.ty = v96;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_2482614B8;
              *&aBlock.d = &block_descriptor_125;
              v97 = _Block_copy(&aBlock);
              v98 = v115;
              v99 = v91;
              v100 = v92;
              v101 = v94;
              sub_248167910(v116);

              [v84 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
              _Block_release(v97);
              _Block_release(v102);
              [v106 commit];

              return;
            }

            __break(1u);
          }

          else
          {
            v20 = swift_dynamicCastClass();
            if (v20)
            {
              v18 = v20;
              v17 = v13;
              goto LABEL_16;
            }
          }

          __break(1u);
          return;
        }

        v19 = v9;
        v7 = v11;
      }

      else
      {
        v19 = v7;
        v7 = v9;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_2482601C4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = DBDashboardAnimation.fromTransitionContainerView.getter();
  if (v6)
  {
    v7 = v6;
    v8 = DBDashboardAnimation.toView.getter();
    if (v8)
    {
      v9 = v8;
      v10 = DBDashboardAnimation.fromView.getter();
      if (v10)
      {
        v11 = v10;
        v12 = DBDashboardAnimation.rootContainerView.getter();
        if (v12)
        {
          v46 = v12;

          v13 = DBDashboardAnimation.toTransitionContainerView.getter();
          type metadata accessor for DBAnimationView();
          v48 = a2;
          if (v13)
          {
            v14 = DBAnimationView.__allocating_init(frame:)(0.0, 0.0, 0.0, 0.0);
            if (v14)
            {
              v15 = v14;
              [v13 addSubview_];
              v16 = v15;
              [v13 bounds];
              [v16 setFrame_];

              [v16 addSubview_];
              [v16 bounds];
              [v9 setFrame_];
              CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
              [v16 setTransform_];

              v17 = v16;
LABEL_16:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
              v21 = swift_allocObject();
              *(v21 + 16) = xmmword_24839C7F0;
              *(v21 + 32) = sub_248383960();
              *(v21 + 40) = v22;
              v23 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
              swift_beginAccess();
              v24 = v17;
              *&v17[v23] = v21;

              v25 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
              [v25 setName_];
              v26 = sub_248381440();
              [v25 setValue:v26 forKey:@"inputRadius"];

              v27 = v24;
              v44 = v24;
              v28 = [v24 layer];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0);
              v29 = swift_allocObject();
              *(v29 + 16) = xmmword_24839C7F0;
              *(v29 + 56) = sub_248260D3C();
              *(v29 + 32) = v25;
              v45 = v25;
              v30 = sub_248383B00();

              [v28 setFilters_];

              type metadata accessor for DBAppTransitionBlurView();
              [v9 &selRef_bootstrapConfiguration];
              v35 = sub_248235C9C(v31, v32, v33, v34);
              [v7 &selRef:v35 addObjectsFromArray:?];
              [v7 &selRef:v11 addObjectsFromArray:?];
              [v7 &selRef_bootstrapConfiguration];
              [v11 setFrame_];
              v43 = objc_opt_self();
              v36 = swift_allocObject();
              v36[2] = v46;
              v36[3] = v3;
              v36[4] = v27;
              v36[5] = v35;
              v36[6] = v11;
              *&aBlock.tx = sub_248260DE0;
              *&aBlock.ty = v36;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_24814C01C;
              *&aBlock.d = &block_descriptor_91;
              v42 = _Block_copy(&aBlock);
              v47 = v46;
              v37 = v3;
              v38 = v35;
              v39 = v11;

              v40 = swift_allocObject();
              *(v40 + 16) = a1;
              *(v40 + 24) = v48;
              *&aBlock.tx = sub_248260F6C;
              *&aBlock.ty = v40;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_2482614B8;
              *&aBlock.d = &block_descriptor_97;
              v41 = _Block_copy(&aBlock);
              sub_248167910(a1);

              [v43 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

              _Block_release(v41);
              _Block_release(v42);

              return;
            }

            __break(1u);
          }

          else
          {
            v19 = swift_dynamicCastClass();
            if (v19)
            {
              v17 = v19;
              v20 = v9;
              goto LABEL_16;
            }
          }

          __break(1u);
          return;
        }

        v18 = v9;
        v7 = v11;
      }

      else
      {
        v18 = v7;
        v7 = v9;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_248260850(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = DBDashboardAnimation.fromTransitionContainerView.getter();
  if (v6)
  {
    v7 = v6;
    v8 = DBDashboardAnimation.fromView.getter();
    if (v8)
    {
      v9 = v8;
      v10 = DBDashboardAnimation.toView.getter();
      if (v10)
      {
        v11 = v10;
        v12 = DBDashboardAnimation.rootContainerView.getter();
        if (v12)
        {
          v13 = v12;

          type metadata accessor for DBAppTransitionBlurView();
          [v9 bounds];
          v32 = sub_248235C9C(v14, v15, v16, v17);
          [v7 addSubview_];
          [v7 addSubview_];
          [v7 bounds];
          [v9 setFrame_];
          v18 = v11;
          v19 = DBDashboardAnimation.toTransitionContainerView.getter();
          v20 = v18;
          if (v19)
          {
            v20 = v19;
            [v19 addSubview_];
            [v20 bounds];
            [v18 setFrame_];
          }

          v31 = v20;
          [v31 setAlpha_];
          v30 = objc_opt_self();
          v21 = swift_allocObject();
          v21[2] = v13;
          v21[3] = v3;
          v21[4] = v31;
          v21[5] = v32;
          v21[6] = v9;
          v37 = sub_248260C90;
          v38 = v21;
          aBlock = MEMORY[0x277D85DD0];
          v34 = 1107296256;
          v35 = sub_24814C01C;
          v36 = &block_descriptor_0;
          v22 = _Block_copy(&aBlock);
          v23 = v13;
          v24 = v3;
          v25 = v32;
          v26 = v9;

          v27 = swift_allocObject();
          *(v27 + 16) = a1;
          *(v27 + 24) = a2;
          v37 = sub_2482614BC;
          v38 = v27;
          aBlock = MEMORY[0x277D85DD0];
          v34 = 1107296256;
          v35 = sub_24824BBE0;
          v36 = &block_descriptor_82;
          v28 = _Block_copy(&aBlock);
          sub_248167910(a1);

          [v30 animateWithDuration:v22 animations:v28 completion:0.5];

          _Block_release(v28);
          _Block_release(v22);

          return;
        }

        v29 = v9;
        v7 = v11;
      }

      else
      {
        v29 = v7;
        v7 = v9;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}