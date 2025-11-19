uint64_t sub_255885B04()
{
  v1 = v0[7];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_255885B6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2559651D0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_255965240();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255885C8C, v2, 0);
}

uint64_t sub_255885C8C()
{
  v24 = v0;
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  sub_2558881D0(&qword_27F7D60C8, MEMORY[0x277CC9260]);
  if (sub_255965390())
  {
    (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
    sub_255888134(0, &qword_27F7D62E0, 0x277D86200);
    v4 = sub_255965890();
    v5 = sub_255965810();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      v12 = sub_2559651C0();
      v14 = v13;
      (*(v8 + 8))(v7, v9);
      v15 = sub_2558AE848(v12, v14, &v23);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_255870000, v4, v5, "Swapping graph store from %s to same location, doing nothing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x259C44F80](v11, -1, -1);
      MEMORY[0x259C44F80](v10, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    v19 = v0[11];
    v20 = v0[8];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v16 = v0[4];
    v17 = v0[5];
    v18 = sub_25588544C(v0[3]);
    v0[12] = v18;
    v0[13] = sub_25588544C(v16);

    return MEMORY[0x2822009F8](sub_255885F1C, v18, 0);
  }
}

uint64_t sub_255885F1C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v6[2] = v2;
  v6[3] = &unk_25596E6F8;
  v6[4] = v1;
  v0[2] = MEMORY[0x277D84F90];
  sub_2558881D0(&qword_27F7D62B8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62C0, &qword_25596E698);
  sub_25588817C(&qword_27F7D62C8, &qword_27F7D62C0, &qword_25596E698);
  sub_255965930();
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_2558860D8;
  v8 = v0[11];

  return sub_2558AA784(sub_2558AA784, v8, &unk_25596E708, v6);
}

uint64_t sub_2558860D8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v12 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[12];
    v8 = sub_2558865E4;
  }

  else
  {
    v9 = v2[14];
    v10 = v2[5];

    v8 = sub_255886264;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_255886264()
{
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_2558862FC;
  v2 = v0[5];
  v3 = v0[3];

  return sub_2558855DC(v3);
}

uint64_t sub_2558862FC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[18] = v4;
  *v4 = v3;
  v4[1] = sub_255886454;
  v5 = v1[5];
  v6 = v1[4];

  return sub_2558855DC(v6);
}

uint64_t sub_255886454()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_255886564, v2, 0);
}

uint64_t sub_255886564()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2558865E4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_255886650, v2, 0);
}

uint64_t sub_255886650()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_2558866DC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255888484;

  return v7(a1);
}

uint64_t sub_2558867D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_2558867FC, 0, 0);
}

uint64_t sub_2558867FC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D62A0, &unk_25596FCF0);
  v7 = MEMORY[0x277D84950];
  sub_2559656A0();
  sub_255965860();

  v8 = *(v0 + 16);
  *(v0 + 72) = v8;
  v9 = *(MEMORY[0x277D857C8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_25588694C;
  v11 = *(v0 + 64);
  v12 = *(v0 + 24);

  return MEMORY[0x282200430](v12, v8, v11, v6, v7);
}

uint64_t sub_25588694C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_255886AC4;
  }

  else
  {
    v3 = sub_255886A60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255886A60()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255886AC4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_255886B28@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  dispatch_suspend(a1);
  v14 = sub_255965680();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v16 = a1;

  result = sub_255886F48(0, 0, v13, &unk_25596E670, v15);
  *a5 = result;
  return result;
}

uint64_t sub_255886C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a4;
  v10 = (a5 + *a5);
  v7 = a5[1];
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_255886D6C;

  return v10(a1);
}

uint64_t sub_255886D6C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_255886EE4;
  }

  else
  {
    v3 = sub_255886E80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255886E80()
{
  dispatch_resume(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255886EE4()
{
  dispatch_resume(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1();
}

uint64_t sub_255886F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_25588797C(a3, &v26[-1] - v11);
  v13 = sub_255965680();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2558879EC(v12);
  }

  else
  {
    sub_255965670();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_255965650();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2559653F0();
      v22 = *(v21 + 16);
      sub_255887A54(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_2558879EC(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2558879EC(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_25588718C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_255875BFC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25589695C();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = sub_2559651D0();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_2558793A8(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_255887268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = sub_255965240();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255887330, a4, 0);
}

uint64_t sub_255887330()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue);
  v8 = *(v0 + 16);
  sub_255965230();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v8;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_255887430;
  v6 = *(v0 + 56);

  return sub_2558AA784(sub_2558AA784, v6, &unk_25596E740, v4);
}

uint64_t sub_255887430()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 32);
  if (v0)
  {
    v10 = sub_255887640;
  }

  else
  {
    v10 = sub_2558875DC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2558875DC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255887640()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_2558876A4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_255887700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_2558847B4(a1, v5, v7, v6, v4);
}

uint64_t sub_2558877C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255888484;

  return sub_2558866DC(a1, v5);
}

uint64_t sub_2558878A8(uint64_t a1)
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
  v10[1] = sub_255888484;

  return sub_255886C70(a1, v4, v5, v7, v9);
}

uint64_t sub_25588797C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2558879EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255887A54@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_255887B10()
{
  result = qword_27F7D62B0;
  if (!qword_27F7D62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D62B0);
  }

  return result;
}

uint64_t sub_255887B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255884434(a1, v5, v7, v6, v4);
}

uint64_t sub_255887C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_2558847B4(a1, v5, v7, v6, v4);
}

uint64_t sub_255887CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255882590(a1, v5, v7, v6, v4);
}

uint64_t sub_255887DA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255883F00(a1, v5, v7, v6, v4);
}

uint64_t sub_255887E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255888484;

  return sub_255887268(a1, a2, a3, v3);
}

uint64_t sub_255887F18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255888484;

  return sub_2558824D8(a1, v4, v5, v6);
}

uint64_t sub_255887FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255888484;

  return sub_255883E48(a1, v4, v5, v6);
}

uint64_t sub_255888080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255883FC8;

  return sub_255881EAC(a1, v4, v5);
}

uint64_t sub_255888134(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25588817C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2558881D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255888218(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_255888484;

  return sub_255881AEC(a1, v1);
}

uint64_t getEnumTagSinglePayload for GraphStoreManager.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GraphStoreManager.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255888428()
{
  result = qword_27F7D6318;
  if (!qword_27F7D6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6318);
  }

  return result;
}

uint64_t sub_255888570()
{
  v1 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  sub_255879018(v2, &v6);
  v3 = *(v6 + 16);
  [v3 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();

  return v5;
}

uint64_t sub_255888674()
{
  v1 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v2 = objc_allocWithZone(KGMutableElementIdentifierSet);

  v3 = [v2 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = *(*(v1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(inited + 16);
      [v13 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_255888134(0, &qword_2810B7360, off_2797FD128);
      swift_dynamicCast();
      v14 = swift_allocObject();
      *(v14 + 16) = v16;

      inited = v14;
    }

    v7 &= v7 - 1;
    [*(inited + 16) unionWithIdentifierSet_];
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v15 = *(inited + 16);
      [v15 copy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_255888134(0, qword_2810B7368, off_2797FD0B8);
      swift_dynamicCast();

      return v16;
    }

    v7 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_255888974(void *a1)
{
  v10[4] = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v9 = inited;
  DirectedBinaryAdjacency.intersectingSources(with:)(&v9, v10);

  v4 = v10[0];
  v5 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_255888B00(void *a1, void (*a2)(void **, void **, uint64_t))
{
  v5 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  v6 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  v13 = v5;
  v14 = sub_255879DA8(MEMORY[0x277D84F90]);
  a2(&v13, &v14, inited);

  v8 = v14;
  v9 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_255888C90(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  v4 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  v11 = v3;
  v12[0] = sub_255879DA8(MEMORY[0x277D84F90]);
  sub_25587AA1C(&v11, inited, v12);

  v6 = v12[0];
  v7 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v6;
  v10.receiver = v8;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_255888E10(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v8 = *(a1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v9 = v2;

  static ElementIdentifierTupleSet.joinOnTargets(_:_:)(&v9, &v8, &v10);

  v3 = v10;
  v4 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_255888FD4(void *a1)
{
  v8 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v7[0] = inited;
  DirectedBinaryAdjacency.targets(forSources:)(v7, &v9);

  v4 = *(v9 + 16);
  [v4 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();
  v5 = v8;

  return v5;
}

uint64_t sub_255889190(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  if (*(v2 + 16) && (v3 = sub_255875B4C(a1), (v4 & 1) != 0))
  {
    v5 = *(*(*(v2 + 56) + 8 * v3) + 16);
  }

  else
  {
    v5 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    *(swift_allocObject() + 16) = v5;
  }

  v6 = v5;
  [v6 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();

  return v8;
}

id sub_255889458(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v8 = *(a1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v9 = v2;

  ElementIdentifierTupleSet.formUnion(_:)(&v8);
  v3 = v9;
  v4 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_255889540(unint64_t a1)
{
  v5 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);

  DirectedBinaryAdjacency.targets(minCount:)(a1, &v7);

  v3 = *(v7 + 16);
  [v3 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();

  return v6;
}

uint64_t sub_255889664(uint64_t a1)
{
  sub_255880728(a1, v7);
  if (!v8)
  {
    sub_255880798(v7);
    goto LABEL_5;
  }

  type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v3 = *&v6[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue];

  v4 = sub_2558936EC(v2, v3);

  return v4 & 1;
}

id sub_255889930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_255889AD0(void *a1, uint64_t a2)
{
  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  v5 = a2;
  v6[0] = v3;
  return ElementIdentifierTupleSet.subscript.setter(v6, &v5);
}

id sub_255889CBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_255889D18()
{
  result = qword_27F7D6448;
  if (!qword_27F7D6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6448);
  }

  return result;
}

id sub_255889D6C(void *a1)
{
  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v7;
  v7 = inited;
  sub_2558776CC(&v7, v8);

  v2 = v8[0];
  v3 = type metadata accessor for KGWrapperDirectedBinaryAdjacency();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue] = v2;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_255889E54(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + OBJC_IVAR____TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency_wrappedValue);
  v4 = *(v3 + 64);
  v19 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v10 << 9) | (8 * v11);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(*(v3 + 56) + v12) + 16);

    v15 = v14;
    [v15 copy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_255888134(0, qword_2810B7368, off_2797FD0B8);
    swift_dynamicCast();
    (*(a2 + 16))(a2, v13, v18, &v19);

    if (v19 == 1)
    {
      goto LABEL_11;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ElementIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_25588A0C4()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_25588A138()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

unint64_t sub_25588A180()
{
  result = qword_2810B73F0;
  if (!qword_2810B73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B73F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ElementIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t AccelerateBuffer<>.approximatelyEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  v13 = AccelerateBuffer<>.approximatelyEqual<A>(to:maxAbsoluteDifference:maxRelativeDifference:)();
  v14 = *(v6 + 8);
  v14(v10, AssociatedTypeWitness);
  v14(v12, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t AccelerateBuffer<>.approximatelyEqual<A>(to:maxAbsoluteDifference:maxRelativeDifference:)()
{
  v0 = sub_255964FF0();
  if (v0 != sub_255964FF0())
  {
    return 0;
  }

  v1 = sub_255964FF0();
  MEMORY[0x28223BE20](v1);
  sub_255964FE0();
  return v3;
}

uint64_t sub_25588A4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[2] = a2;
  v23[1] = a4;
  v5 = *(a3 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v16 = *(v15 + 16);
  v17 = *(*(v15 + 24) + 8);
  sub_255965C50();
  sub_255965C50();
  v18 = *(*(v16 + 8) + 8);
  sub_255965B10();
  v19 = v5[1];
  v19(v9, a3);
  v19(v12, a3);
  sub_2559652F0();
  sub_255965C70();
  v19(v9, a3);
  v19(v14, a3);
  v20 = v5 + 4;
  v21 = v5[4];
  v23[0] = v20;
  v21(v14, v12, a3);
  sub_2559652E0();
  sub_255965C60();
  v19(v9, a3);
  v19(v14, a3);
  v21(v14, v12, a3);
  sub_2559652D0();
  return (v19)(v14, a3);
}

uint64_t static FloatingPoint.approximatelyEqual(_:_:maxAbsoluteDifference:maxRelativeDifference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[3] = a3;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v19 = *(*(v18 + 8) + 8);
  if (sub_255965390())
  {
    v20 = 1;
  }

  else
  {
    v25[1] = v6;
    v25[2] = a4;
    v21 = *(*(*(a6 + 16) + 8) + 8);
    sub_255965B20();
    v22 = *(*(a6 + 24) + 8);
    sub_255965C50();
    v23 = *(v11 + 8);
    v23(v15, a5);
    if (sub_255965330())
    {
      sub_25588A4D4(a1, v17, a5, v15);
      v20 = sub_255965350();
      v23(v15, a5);
    }

    else
    {
      v20 = 1;
    }

    v23(v17, a5);
  }

  return v20 & 1;
}

uint64_t static FloatingPoint.approximatelyEqual(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  _sSF17KnowledgeGraphKitE23absoluteDifferenceBoundxvgZ_0();
  v15 = static FloatingPoint.approximatelyEqual(_:_:maxAbsoluteDifference:maxRelativeDifference:)(a1, a2, v14, v12, a3, a4);
  v16 = *(v8 + 8);
  v16(v12, a3);
  v16(v14, a3);
  return v15 & 1;
}

uint64_t sub_25588AAA8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  return sub_255964FE0();
}

uint64_t sub_25588AB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, char *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a4;
  v32 = a5;
  v29 = a1;
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v26 - v19;
  v33 = a2;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v27 = a6;
    v21 = 0;
    v28 = a10;
    while (1)
    {
      if (v33 == v21)
      {
        v25 = 1;
        goto LABEL_8;
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v22 = v13[9] * v21;
      v23 = v13[2];
      v23(v20, v30 + v22, AssociatedTypeWitness);
      v23(v17, v29 + v22, AssociatedTypeWitness);
      LOBYTE(v22) = static FloatingPoint.approximatelyEqual(_:_:maxAbsoluteDifference:maxRelativeDifference:)(v20, v17, v31, v32, AssociatedTypeWitness, v28);
      v24 = v13[1];
      v24(v17, AssociatedTypeWitness);
      result = (v24)(v20, AssociatedTypeWitness);
      ++v21;
      if ((v22 & 1) == 0)
      {
        v25 = 0;
LABEL_8:
        *v27 = v25;
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25588AD14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[9];
  return sub_25588AB28(a1, v2[7], v2[8], v2[10], v2[11], a2, v2[3], v2[4], v2[5], v2[6]);
}

KnowledgeGraphKit::BernoulliSampledIndexSequence __swiftcall BernoulliSampledIndexSequence.init(p:max:)(Swift::Double p, Swift::Int max)
{
  v3 = 1.0;
  v4 = p <= 0.0 || p > 1.0;
  if (v4 || max < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0.0;
    if (p != 1.0)
    {
      v5 = p;
      v6 = max;
      v7 = v2;
      v9 = log(1.0 - p);
      v2 = v7;
      max = v6;
      v10 = v9;
      p = v5;
      v3 = 1.0 / v10;
    }

    *v2 = -1;
    *(v2 + 8) = p;
    *(v2 + 16) = max;
    *(v2 + 24) = v3;
  }

  result.cachedDenominator = v3;
  result.p = p;
  result.max = v8;
  result.currentElement = max;
  return result;
}

Swift::Int_optional __swiftcall BernoulliSampledIndexSequence.next()()
{
  if (*(v1 + 1) != 1.0)
  {
LABEL_5:
    sub_25588AF30(v0, 0.0, 1.0);
    v6 = ceil(*(v1 + 3) * log(1.0 - v3));
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v2 = *v1 + v6;
        if (!__OFADD__(*v1, v6))
        {
          goto LABEL_9;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

  v2 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  *v1 = v2;
  v7 = v1[2];
  v5 = v7 < v2;
  if (v7 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

LABEL_16:
  result.value = v4;
  result.is_nil = v5;
  return result;
}

double sub_25588AEAC@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

Swift::Int sub_25588AF00@<X0>(uint64_t a1@<X8>)
{
  v3 = BernoulliSampledIndexSequence.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

uint64_t sub_25588AF30(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x259C44FA0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_25588AF30(v6, a2, a3);
  }

  return result;
}

unint64_t sub_25588AFD8()
{
  result = qword_27F7D6450;
  if (!qword_27F7D6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6450);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25588B038(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25588B058(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_25588B094(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = (MEMORY[0x277D84F90] + 32);
  if (a3 != 1.0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v11 = __OFADD__(v7++, 1);
  if (v11)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    while (v7 <= a2)
    {
      if (!v8)
      {
        v14 = v9[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6458, "VW");
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 25;
        }

        v20 = v19 >> 3;
        v17[2] = v16;
        v17[3] = 2 * (v19 >> 3);
        v21 = (v17 + 4);
        v22 = v9[3] >> 1;
        if (v9[2])
        {
          v23 = v9 + 4;
          if (v17 != v9 || v21 >= v23 + 8 * v22)
          {
            memmove(v17 + 4, v23, 8 * v22);
          }

          v9[2] = 0;
        }

        v10 = (v21 + 8 * v22);
        v8 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;

        v9 = v17;
      }

      v11 = __OFSUB__(v8--, 1);
      if (v11)
      {
        __break(1u);
        goto LABEL_31;
      }

      *v10++ = v7;
      if (a3 == 1.0)
      {
        goto LABEL_2;
      }

LABEL_5:
      sub_25588AF30(a1, 0.0, 1.0);
      v13 = ceil(log(1.0 - v12) * a4);
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_33;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_34;
      }

      v11 = __OFADD__(v7, v13);
      v7 += v13;
      if (v11)
      {
        goto LABEL_35;
      }
    }

    v24 = v9[3];
    if (v24 < 2)
    {
      return;
    }

    v25 = v24 >> 1;
    v11 = __OFSUB__(v25, v8);
    v26 = v25 - v8;
    if (!v11)
    {
      v9[2] = v26;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_25588B28C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 4 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 29;
          }

          v19 = v18 >> 2;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 2);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 4 * v21)
            {
              v23 = v18 >> 2;
              memmove(v16 + 4, v22, 4 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 4 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_25588B47C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 8 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v19 = v18 >> 3;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 3);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 8 * v21)
            {
              v23 = v18 >> 3;
              memmove(v16 + 4, v22, 8 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 8 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t BinaryPredicate.init(comparator:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11);
  v12 = [objc_allocWithZone(KGBinaryPredicate) initWithComparator:a1 value:sub_255965C00()];
  swift_unknownObjectRelease();
  v13 = *(v8 + 8);
  v13(v11, a3);
  a4[3] = sub_25588B7C4();
  *a4 = v12;
  return (v13)(a2, a3);
}

unint64_t sub_25588B7C4()
{
  result = qword_27F7D6468[0];
  if (!qword_27F7D6468[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27F7D6468);
  }

  return result;
}

uint64_t sub_25588B81C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25588B8A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25588B81C(v16, v15);
  (*(v11 + 16))(v14, a4, a5);
  return BinaryPredicate.init(comparator:value:)(a7, v14, a5, a2);
}

uint64_t sub_25588B9C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(*(a6 - 8) + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[1];
  *v12 = *v15;
  v12[1] = v16;
  (*(v17 + 16))(v14, v18, v19);

  return BinaryPredicate.init(comparator:value:)(a8, v14, a6, a2);
}

uint64_t sub_25588BAA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25588BAF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25588BB38(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_25588BB90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t UniqueSortedBuffer.elements.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t UniqueSortedBuffer.count.getter(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v2 = *(a1 + 16);
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  swift_getWitnessTable();
  return sub_255965740();
}

uint64_t static UniqueSortedBuffer.SearchResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t UniqueSortedBuffer.binarySearchSeek(_:startOffset:endOffset:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](a1);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v12;
  if (__OFSUB__(*v13, *v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = *v13 - *v12;
  v18 = v16 + v17 / 2;
  if (__OFADD__(v16, v17 / 2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = v4[1];
  v24 = *v4;
  v25 = v19;
  v23[1] = v16 + v17 / 2;
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  sub_255965D30();
  v20 = *(*(a4 + 24) + 8);
  v21 = sub_255965390();
  if (v21)
  {
    (*(v9 + 8))(v15, v8);
    *a2 = v18;
    return v21 & 1;
  }

  v22 = sub_255965340();
  result = (*(v9 + 8))(v15, v8);
  if (v22)
  {
    *a3 = v18;
    return v21 & 1;
  }

  if (!__OFADD__(v18, 1))
  {
    *a2 = v18 + 1;
    return v21 & 1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t UniqueSortedBuffer.linearSearch(_:startOffset:endOffset:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v13;
  v14 = *v13;
  v16 = *v15;
  if (*v15 < *v13)
  {
    v17 = *v4;
    v23 = v4[1];
    v24 = v17;
    sub_2559653C0();
    v18 = (v8 + 8);
    while (1)
    {
      v27 = v24;
      v28 = v23;
      v26 = v16;
      swift_getWitnessTable();
      sub_255965D20();
      sub_255965D30();
      v19 = *(a4 + 24);
      if ((sub_255965330() & 1) == 0)
      {
        break;
      }

      result = (*v18)(v12, v7);
      *a2 = ++v16;
      if (v14 == v16)
      {
        return result;
      }
    }

    v20 = sub_255965340();
    result = (*v18)(v12, v7);
    if (v20)
    {
      *v22 = v16;
    }
  }

  return result;
}

uint64_t UniqueSortedBuffer.binarySearch(_:startOffset:endOffset:)(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v8 = result;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  while (!__OFSUB__(*a3, *a2))
  {
    if ((*a3 - *a2) < 129)
    {
      return UniqueSortedBuffer.linearSearch(_:startOffset:endOffset:)(v8, a2, a3, a4);
    }

    result = UniqueSortedBuffer.binarySearchSeek(_:startOffset:endOffset:)(v8, a2, a3, a4);
    if (result)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t UniqueSortedBuffer.find(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v13[1] = *v3;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = *(a2 + 16);
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  sub_255965CF0();
  sub_255965D00();
  v14 = v7;
  v15 = v8;
  v16 = v9;
  result = UniqueSortedBuffer.binarySearch(_:startOffset:endOffset:)(a1, &v17, v13, a2);
  v12 = v17 != v13[0];
  *a3 = v17;
  *(a3 + 8) = v12;
  return result;
}

uint64_t UniqueSortedBuffer.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  UniqueSortedBuffer.find(_:)(a1, a2, v6);
  return v6[8];
}

uint64_t sub_25588C260()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25588C2B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25588C304(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25588C358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t static NodeCollection<>.fetch(in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(a3 + 16);
  v14 = type metadata accessor for Filter();
  v12[1] = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  v9(&v13, a2, a3);
  AbstractGraph.nodeIdentifiers(matching:)(&v13, v7, v8, v12);
  __swift_destroy_boxed_opaque_existential_0(&v13);
  sub_25588B81C(a1, &v13);
  return NodeCollection.init(with:in:)(v12, &v13, a4);
}

uint64_t static NodeCollection<>.fetch(with:in:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  sub_25588C578(a1, a3, a4, v15);
  AbstractGraph.nodeIdentifiers(matching:)(v15, v10, v11, &v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  sub_25588B81C(a2, v15);
  v12 = *(a4 + 8);
  return NodeCollection.init(with:in:)(&v14, v15, a5);
}

__n128 sub_25588C578@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  (*(a3 + 16))(&v32, a2, a3);
  v7 = v32;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  *&v32 = v7;

  sub_25587E01C(v10);
  v11 = sub_25588DCDC(v32);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_25588025C(*(v11 + 16), 0);
    v14 = sub_2558AA2A0(&v32, v13 + 4, v12, v11);
    sub_25588DD74();
    if (v14 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_5:

  v16 = sub_25588DCDC(v15);

  swift_bridgeObjectRelease_n();
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 16))(v17, v18);
  v20 = sub_25588CFC4(v19, v16);

  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_8:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v22 = sub_25588025C(*(v20 + 16), 0);
  v23 = sub_2558AA2A0(&v32, v22 + 4, v21, v20);
  sub_25588DD74();
  if (v23 != v21)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 24))(&v31, v24, v25);
  Filter.init(with:anyOfLabels:properties:)(v13, v22, &v31, &v32);
  v26 = v33;
  v27 = type metadata accessor for Filter();
  v29 = v32;
  a4[1].n128_u64[1] = v27;
  v30 = *(a3 + 8);
  a4[2].n128_u64[0] = swift_getWitnessTable();
  result = v29;
  *a4 = v29;
  a4[1].n128_u64[0] = v26;
  return result;
}

uint64_t static NodeCollection<>.fetch(with:in:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  v7 = a2;
  v8 = a5;
  v9 = *a1;
  if ((a1[1] & 1) == 0)
  {
    v59 = *a1;
    v28 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v28);
    v30 = type metadata accessor for Filter();
    v64 = v30;
    v57[1] = *(v5 + 8);
    WitnessTable = swift_getWitnessTable();
    v65 = WitnessTable;
    sub_2559655E0();

    swift_getWitnessTable();
    sub_2559657E0();
    v56 = a3;
    sub_25588C578(&v61, a3, v5, v66);
    __swift_destroy_boxed_opaque_existential_0(&v61);
    AbstractGraph.nodeIdentifiers(matching:)(v66, v28, v29, &v58);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v31 = v59;
    if (sub_255965570())
    {
      v32 = 0;
      v33 = (v31 + 48);
      while (1)
      {
        v34 = sub_255965550();
        result = sub_2559654E0();
        if ((v34 & 1) == 0)
        {
          goto LABEL_24;
        }

        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_26;
        }

        v37 = *(v33 - 1);
        v36 = *v33;
        v38 = *(v33 - 2);
        v39 = a2[3];
        v40 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v39);
        v64 = v30;
        v65 = WitnessTable;
        v61 = v38;
        v62 = v37;
        v63 = v36;

        sub_25588C578(&v61, v56, a4, v66);
        __swift_destroy_boxed_opaque_existential_0(&v61);
        v41 = v58;
        v57[0] = v58;

        AbstractGraph.nodeIdentifiers(matching:in:)(v66, v57, v39, v40, &v61);

        __swift_destroy_boxed_opaque_existential_0(v66);
        v42 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = *(v41 + 16);
          [v43 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          v44 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v41 = swift_allocObject();
          *(v41 + 16) = v44;

          v58 = v41;
        }

        [*(v41 + 16) intersectWithIdentifierSet_];

        ++v32;
        v33 += 3;
        if (v35 == sub_255965570())
        {

          v7 = a2;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v61 = v58;
    sub_25588B81C(v7, v66);
    v46 = a5;
    return NodeCollection.init(with:in:)(&v61, v66, v46);
  }

  v10 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for Filter();

  if (!sub_255965570())
  {

LABEL_19:
    v61 = v11;
    sub_25588B81C(v7, v66);
    v45 = *(v5 + 8);
    v46 = v8;
    return NodeCollection.init(with:in:)(&v61, v66, v46);
  }

  v47 = v8;
  v55 = a3;
  v13 = 0;
  v14 = (v9 + 48);
  v49 = v12;
  while (1)
  {
    v15 = sub_255965550();
    result = sub_2559654E0();
    if ((v15 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_25;
    }

    v50 = v13 + 1;
    v51 = v11;
    v18 = *(v14 - 1);
    v17 = *v14;
    v19 = *(v14 - 2);
    v20 = v7[3];
    v21 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v20);
    v64 = v12;
    v60 = *(a4 + 8);
    v22 = swift_getWitnessTable();
    v61 = v19;
    v62 = v18;
    v65 = v22;
    v63 = v17;

    sub_25588C578(&v61, v55, a4, v66);
    __swift_destroy_boxed_opaque_existential_0(&v61);
    v23 = v21;
    v11 = v51;
    AbstractGraph.nodeIdentifiers(matching:)(v66, v20, v23, &v61);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v24 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v51 + 16);
      [v25 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v26 = v61;
      v27 = swift_allocObject();
      *(v27 + 16) = v26;

      v11 = v27;
    }

    [*(v11 + 16) unionWithIdentifierSet_];

    v12 = v49;
    ++v13;
    v14 += 3;
    v7 = a2;
    if (v50 == sub_255965570())
    {

      v8 = v47;
      v5 = a4;
      goto LABEL_19;
    }
  }

  sub_2559659C0();
  __break(1u);
LABEL_24:
  result = sub_2559659C0();
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25588CE74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_255965D50();
  sub_255965400();
  v9 = sub_255965D90();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_255965C10() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25588D7C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25588CFC4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_25588D3C4(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_25588DD7C(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x259C44F80](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_25588D164(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  result = sub_255965960();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25588D3C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_255965D50();

          sub_255965400();
          v14 = sub_255965D90();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_255965C10() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_25588D5A4(v26, a2, v25, a4);
}

uint64_t sub_25588D5A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  result = sub_255965970();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_255965D50();

    sub_255965400();
    result = sub_255965D90();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25588D7C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25588D164(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25588D948();
      goto LABEL_16;
    }

    sub_25588DAA4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_255965D50();
  sub_255965400();
  result = sub_255965D90();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_255965C10();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_255965C90();
  __break(1u);
  return result;
}

void *sub_25588D948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  v2 = *v0;
  v3 = sub_255965950();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_25588DAA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D65F0, "nV");
  result = sub_255965960();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_255965D50();

      sub_255965400();
      result = sub_255965D90();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_25588DCDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C43450](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25588CE74(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25588DD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25588D3C4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MADataFrame.slice(name:columnLabels:)(MADataFrame_optional *__return_ptr retstr, Swift::String_optional name, Swift::OpaquePointer columnLabels)
{
  v4 = v3;
  object = name.value._object;
  countAndFlagsBits = name.value._countAndFlagsBits;
  v7 = *(columnLabels._rawValue + 2);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_9:
    v17 = [v4 matrix];
    v18 = [v17 wrapper];

    (*((*MEMORY[0x277D85000] & *v18) + 0x70))(&v38);
    v36 = v38;
    v37 = v39;
    Matrix<A>.subscript.getter(v8, &v34);

    v32 = v34;
    v19 = v35;
    v20 = type metadata accessor for MAFloatMatrixWrapper();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
    *v22 = v32;
    *(v22 + 2) = v19;
    v33.receiver = v21;
    v33.super_class = v20;
    v23 = [(MADataFrame_optional *)&v33 init];
    v24 = [objc_allocWithZone(MAFloatMatrix) initWithWrapper_];

    v25 = [v4 rowLabels];
    if (v25)
    {
      v26 = v25;
      v27 = sub_2559654C0();

      if (!object)
      {
LABEL_12:
        if (v27)
        {
          v28 = sub_2559654B0();
        }

        else
        {
          v28 = 0;
        }

        v29 = objc_allocWithZone(MADataFrame);
        v30 = sub_2559654B0();
        [v29 initWithName:object rowLabels:v28 columnLabels:v30 matrix:v24];

        return;
      }
    }

    else
    {
      v27 = 0;
      if (!object)
      {
        goto LABEL_12;
      }
    }

    object = sub_2559653D0();
    goto LABEL_12;
  }

  v31 = name.value._object;
  v38 = MEMORY[0x277D84F90];
  sub_2558A5744(0, v7, 0);
  v8 = v38;
  v9 = (columnLabels._rawValue + 40);
  while (1)
  {
    v11 = *(v9 - 1);
    v10 = *v9;

    v12 = sub_2559653D0();
    v13 = [v4 indexOfColumnWithLabel_];

    if (v13 == sub_255965120())
    {
      break;
    }

    v38 = v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2558A5744((v14 > 1), v15 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v15 + 1;
    *(v8 + 8 * v15 + 32) = v13;
    v9 += 2;
    if (!--v7)
    {
      object = v31;
      goto LABEL_9;
    }
  }

  sub_25588EA30();
  swift_allocError();
  *v16 = v11;
  *(v16 + 8) = v10;
  *(v16 + 16) = 0;
  swift_willThrow();
}

MASeries __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MADataFrame.row(forLabel:)(Swift::String forLabel)
{
  v2 = v1;
  object = forLabel._object;
  countAndFlagsBits = forLabel._countAndFlagsBits;
  v5 = sub_2559653D0();
  v6 = [v2 indexOfRowWithLabel_];

  if (v6 == sub_255965120())
  {
    sub_25588EA30();
    swift_allocError();
    *v7 = countAndFlagsBits;
    *(v7 + 8) = object;
    *(v7 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v12 = [v2 columnLabels];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2559654C0();
    }

    else
    {
      v14 = 0;
    }

    v15 = [v2 matrix];
    v16 = [v15 row_];

    v17 = sub_2559653D0();

    if (v14)
    {
      v18 = sub_2559654B0();
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(MASeries) initWithName:v17 labels:v18 vector:v16];

    v8 = v19;
  }

  result._vector = v11;
  result._indexCache = v10;
  result._name = v9;
  result.super.isa = v8;
  return result;
}

uint64_t MADataFrame.columnLabelValuesByRowLabel(withThreshold:)(float a1)
{
  v2 = v1;
  v4 = [v1 rowLabels];
  if (!v4)
  {
    return sub_255879EF8(MEMORY[0x277D84F90]);
  }

  v5 = v4;
  v6 = sub_2559654C0();

  v7 = [v2 columnLabels];
  if (!v7)
  {

    return sub_255879EF8(MEMORY[0x277D84F90]);
  }

  v8 = v7;
  v9 = sub_2559654C0();

  v37 = *(v6 + 16);
  if (v37)
  {
    v10 = 0;
    v36 = v6 + 32;
    v11 = MEMORY[0x277D84F98];
    v35 = v6;
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_255965CA0();
        __break(1u);
        return result;
      }

      v13 = (v36 + 16 * v10);
      v40 = *v13;
      v14 = *(v9 + 16);
      v41 = v13[1];
      v42 = v11;

      if (v14)
      {
        break;
      }

      v43 = MEMORY[0x277D84F98];
LABEL_6:
      ++v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_255879B10(v43, v40, v41, isUniquelyReferenced_nonNull_native);

      v11 = v42;
      v6 = v35;
      if (v10 == v37)
      {
        goto LABEL_31;
      }
    }

    v15 = 0;
    v43 = MEMORY[0x277D84F98];
    while (2)
    {
      v16 = (v9 + 40 + 16 * v15);
      v17 = v15;
      while (1)
      {
        if (v17 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v18 = *(v16 - 1);
        v19 = *v16;
        v15 = v17 + 1;

        [v2 floatAtRowIndex:v10 columnIndex:v17];
        if (v20 > a1)
        {
          break;
        }

        v16 += 2;
        ++v17;
        if (v14 == v15)
        {
          goto LABEL_6;
        }
      }

      v21 = v20;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v43;
      v23 = sub_255875C80(v18, v19);
      v24 = *(v43 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_34;
      }

      if (*(v43 + 24) < v26)
      {
        v44 = v22;
        sub_255895FA0(v26, v38);
        v27 = sub_255875C80(v18, v19);
        if ((v44 & 1) != (v28 & 1))
        {
          goto LABEL_36;
        }

        v23 = v27;
        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:
        v29 = v23;

        v43 = v46;
        *(v46[7] + 4 * v29) = v21;
        goto LABEL_26;
      }

      if (v38)
      {
        if (v22)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v39 = v23;
        v45 = v22;
        sub_255896D58();
        v23 = v39;
        if (v45)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v46[(v23 >> 6) + 8] |= 1 << v23;
      v30 = (v46[6] + 16 * v23);
      *v30 = v18;
      v30[1] = v19;
      *(v46[7] + 4 * v23) = v21;
      v31 = v46[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_35;
      }

      v43 = v46;
      v46[2] = v33;
LABEL_26:
      if (v14 - 1 != v17)
      {
        continue;
      }

      goto LABEL_6;
    }
  }

  v11 = MEMORY[0x277D84F98];
LABEL_31:

  return v11;
}

void __swiftcall MADataFrame.normalizedByRowMagnitude()(MADataFrame_optional *__return_ptr retstr)
{
  v4 = v1;
  v41 = *MEMORY[0x277D85DE8];
  v5 = [v1 matrix];
  v6 = [v5 wrapper];

  v7 = v6;
  (*((*MEMORY[0x277D85000] & *v6) + 0x70))(&v38);

  v8 = v39;
  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v7 = v38;
  v2 = v40;
  if (!v39)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v9 = sub_255965530();
  *(v9 + 16) = v8;
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_43:
    __break(1u);
  }

  if (v2 > 0x7FFFFFFF)
  {
    goto LABEL_43;
  }

  v3 = v9;
  v10 = 0;
  do
  {
    if ((v10 * v2) >> 64 != (v10 * v2) >> 63)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = v10 + 1;
    v12 = v3 + 4 * v10;
    cblas_snrm2_NEWLAPACK();
    *(v12 + 32) = v13;
    v10 = v11;
  }

  while (v8 != v11);
LABEL_10:
  *(v3 + 16) = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

  for (; v8; v7 = sub_2558803F4(v7))
  {
    v14 = 0;
    while ((v14 * v2) >> 64 == (v14 * v2) >> 63)
    {
      if (v14 >= *(v3 + 16))
      {
        goto LABEL_22;
      }

      __B = *(v3 + 32 + 4 * v14);
      if (__B != 0.0)
      {
        if (v2 < 0)
        {
          __break(1u);
          goto LABEL_20;
        }

        vDSP_vsdiv(&v7[4 * v14 * v2 + 32], 1, &__B, &v7[4 * v14 * v2 + 32], 1, v2);
      }

      if (v8 == ++v14)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:
  v38 = v7;

  v15 = [v4 name];
  if (v15)
  {
    v16 = v15;
    sub_2559653E0();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v4 rowLabels];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2559654C0();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v4 columnLabels];
  if (v22)
  {
    v23 = v22;
    v24 = sub_2559654C0();
  }

  else
  {
    v24 = 0;
  }

  v25 = v39;
  v26 = v40;
  v27 = type metadata accessor for MAFloatMatrixWrapper();
  v28 = objc_allocWithZone(v27);
  v29 = &v28[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v29 = v7;
  v29[1] = v25;
  v29[2] = v26;
  v36.receiver = v28;
  v36.super_class = v27;
  v30 = [(MADataFrame_optional *)&v36 init];
  v31 = [objc_allocWithZone(MAFloatMatrix) initWithWrapper_];

  if (v18)
  {
    v32 = sub_2559653D0();

    if (v21)
    {
      goto LABEL_36;
    }

LABEL_39:
    v33 = 0;
    if (v24)
    {
      goto LABEL_37;
    }

LABEL_40:
    v34 = 0;
    goto LABEL_41;
  }

  v32 = 0;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_36:
  v33 = sub_2559654B0();

  if (!v24)
  {
    goto LABEL_40;
  }

LABEL_37:
  v34 = sub_2559654B0();

LABEL_41:
  [objc_allocWithZone(MADataFrame) initWithName:v32 rowLabels:v33 columnLabels:v34 matrix:v31];

  v35 = *MEMORY[0x277D85DE8];
}

unint64_t sub_25588EA30()
{
  result = qword_27F7D65F8;
  if (!qword_27F7D65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D65F8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25588EAA4(uint64_t a1, unsigned int a2)
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

uint64_t sub_25588EAEC(uint64_t result, unsigned int a2, unsigned int a3)
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

double SparseArray.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v10 = a1;
  v7 = sub_2559655E0();
  WitnessTable = swift_getWitnessTable();
  SparseArray.init<A>(denseValues:)(&v10, a2, v7, a3, WitnessTable, &v11);
  result = *&v11;
  *a4 = v11;
  return result;
}

uint64_t SparseArray.append(offset:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 24);
  (*(v13 + 16))(v7, v13);
  v14 = *(v13 + 8);
  LOBYTE(v13) = sub_255965390();
  result = (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
    v16 = *(v4 + 8);
    v17 = *(v16 + 2);
    if (v17 && *&v16[8 * v17 + 24] >= a1)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v4 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2558914EC(0, v17 + 1, 1, v16, &qword_27F7D66A8, &qword_25596EE40);
      }

      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_2558914EC((v19 > 1), v20 + 1, 1, v16, &qword_27F7D66A8, &qword_25596EE40);
      }

      *(v16 + 2) = v20 + 1;
      *&v16[8 * v20 + 32] = a1;
      *(v4 + 8) = v16;
      (*(v8 + 16))(v11, a2, v7);
      sub_2559655E0();
      return sub_255965590();
    }
  }

  return result;
}

uint64_t SparseArray.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2559652B0();
  swift_getWitnessTable();
  v8 = sub_255965480();
  v14[7] = v8;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6600, &qword_25596EC40);
  v10 = sub_255891DE0();
  v12 = sub_25588EF3C(sub_255891DBC, v14, v9, a2, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);

  *a4 = v12;
  a4[1] = v8;
  return result;
}

uint64_t SparseArray.init(values:offsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_255965570();
  if (result == *(a2 + 16))
  {
    *a3 = a1;
    a3[1] = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25588EF3C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_255965710();
  if (!v26)
  {
    return sub_255965520();
  }

  v48 = v26;
  v52 = sub_255965A30();
  v39 = sub_255965A40();
  sub_255965A10();
  result = sub_255965700();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2559657D0();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_255965A20();
      result = sub_255965720();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SparseArray.init()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255965520();
  v3 = MEMORY[0x277D84F90];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static SparseArray.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a4 + 8);
  if ((sub_255965600() & 1) == 0)
  {
    return 0;
  }

  return sub_25587F960(v5, v7);
}

uint64_t sub_25588F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8);
  v7 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v7;
  v10[5] = a1;
  v10[6] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  return sub_2558A2A48(sub_255892198, v10, v6, MEMORY[0x277D84A28], a4, v8, MEMORY[0x277D84950], &v11);
}

uint64_t SparseArray.withBuffer<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v9 = *v4;
  v10 = v5;
  v6 = *(a3 + 24);
  v8[2] = *(a3 + 16);
  v8[3] = a4;
  v8[4] = v6;
  v8[5] = v9;
  v8[6] = v5;
  v8[7] = a1;
  v8[8] = a2;
  return sub_25588F410(sub_255891E44, v8, a3, a4);
}

uint64_t sub_25588F51C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[1];
  v15 = *a1;
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v16 = v11;
  v17 = a4;
  v18 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  return sub_2558A2A48(sub_2558921EC, v14, a2, a6, a7, v12, MEMORY[0x277D84950], &v19);
}

uint64_t sub_25588F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(_BYTE *, __n128), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v21[8] = a1;
  v21[9] = a2;
  sub_2559653C0();
  swift_getWitnessTable();
  sub_2559657A0();
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v16 = sub_2558A6C34(v21[4], v21[5], v21[6], v21[7], v21, v20);
  v17 = v21[12];
  result = a7(v20, v16);
  if (v17)
  {
    *a12 = v17;
  }

  return result;
}

double SparseArray.formUnion<A>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *v6;
  WitnessTable = swift_getWitnessTable();
  SparseArrayProtocol.union<A>(with:combine:)(a1, a2, a3, a4, a5, WitnessTable, a6);

  result = *&v16;
  *v6 = v16;
  return result;
}

double SparseArray.formIntersection<A>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *v6;
  v13 = *(a4 + 16);
  WitnessTable = swift_getWitnessTable();
  SparseArrayProtocol.intersection<A, B>(with:combine:)(a1, a2, a3, a4, a5, v13, WitnessTable, a6, *(a4 + 24));

  result = *&v17;
  *v6 = v17;
  return result;
}

uint64_t SparseArray.sparseValues.getter()
{
  sub_255891CC4();
}

uint64_t SparseArray.sparseValueIndices.getter()
{
  sub_255891CCC();
}

double static SparseArray.defaultSparseValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_255965520();

  return SparseArray.init(arrayLiteral:)(v6, a1, a2, a3);
}

uint64_t SparseArray.getValue(atOffset:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(a2 + 24);
  v9 = *(a2 + 16);
  v10 = v6;
  v11 = a1;
  v20 = v4;
  v21 = v5;
  v13 = v9;
  v14 = sub_2559658B0();
  v15 = v6;
  v16 = v4;
  v17 = v5;
  v18 = sub_255891E6C;
  v19 = &v8;
  return sub_25588F410(sub_255891E44, v12, a2, v14);
}

unint64_t SparseArray.set(_:atOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v32 = v3;
  v12 = v3[1];
  v29 = v13;
  v30 = v3 + 1;
  v36 = v11;
  v37 = v12;
  v35 = v13;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6610, &qword_25596EC48);
  sub_25588F410(sub_255891ED8, v34, a2, v14);

  v15 = v38;
  v16 = v39;
  v17 = *(a2 + 24);
  (*(v17 + 16))(v6, v17);
  v18 = *(v17 + 8);
  v31 = a1;
  v19 = sub_255965390();
  v20 = *(v7 + 8);
  v20(v10, v6);
  if (v16 == 1)
  {
    v21 = v33;
    sub_255965640();
    (*(v7 + 56))(v21, 0, 1, v6);
    v22 = sub_2559655E0();
    if (v19)
    {
      sub_2559655B0();
      v20(v10, v6);
      return sub_25588FD38(v15);
    }

    else
    {
      v24 = v32;
      sub_255965510();
      v25 = *v24;
      sub_255899B20(v15, *v24);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v27 = v25 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v27 = v25;
      }

      (*(v7 + 24))(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v31, v6);
      return nullsub_2(v22);
    }
  }

  else
  {
    result = (*(v7 + 56))(v33, 1, 1, v6);
    if ((v19 & 1) == 0)
    {
      (*(v7 + 16))(v10, v31, v6);
      sub_2559655E0();
      result = sub_2559655A0();
      if (*(v12 + 16) < v15)
      {
        __break(1u);
      }

      else if ((v15 & 0x8000000000000000) == 0)
      {
        return sub_2558917F8(v15, v15, v29);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25588FD38(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2558803E0(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25588FDC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2558803F4(v3);
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
    v7 = v3 + 4 * a1;
    v8 = *(v7 + 32);
    result = memmove((v7 + 32), (v7 + 36), 4 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_25588FE48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25588041C(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    result = memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t SparseArray.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = sub_2559658B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v16 = *v3;
  SparseArray.getValue(atOffset:)(a1, a2);
  v13 = *(v7 - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, v7) != 1)
  {
    return (*(v13 + 32))(a3, v12, v7);
  }

  (*(*(a2 + 24) + 16))(v7);
  result = (v14)(v12, 1, v7);
  if (result != 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_255890084@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a2;
  v10 = *a1;
  v8 = type metadata accessor for SparseArray();
  return SparseArray.subscript.getter(v7, v8, a4);
}

uint64_t SparseArray.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255891CD4(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*SparseArray.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0xA8uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[7] = a3;
  v9[8] = v4;
  v9[6] = a2;
  v11 = *(a3 + 16);
  v9[9] = v11;
  v12 = *(v11 - 8);
  v9[10] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[11] = swift_coroFrameAlloc();
    v10[12] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[11] = malloc(*(v12 + 64));
    v10[12] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[13] = v14;
  v15 = *v4;
  v16 = v4[1];
  v10[14] = v16;
  v22[5] = v15;
  v22[6] = v16;
  MEMORY[0x28223BE20](v14);
  v22[2] = a2;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6610, &qword_25596EC48);
  sub_25588F410(sub_25589222C, v22, a3, v17);

  v10[15] = v10[4];
  if (*(v10 + 40) == 1)
  {
    v10[16] = sub_2559655E0();
    v10[17] = sub_255965630();
    return sub_2558903BC;
  }

  else
  {
    v19 = *(a3 + 24);
    v10[18] = v19;
    v20 = *(v19 + 16);
    v10[19] = v20;
    v10[20] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0x98C2000000000000;
    v20(v11);
    return sub_255890508;
  }
}

void sub_2558903BC(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 136))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 120);
    v6 = *(v3 + 96);
    v5 = *(v3 + 104);
    v7 = *(v3 + 72);
    v8 = *(v3 + 80);
    v9 = *(v3 + 56);
    v10 = **(v3 + 64);
    sub_255965640();
    v11 = *(v9 + 24);
    (*(v11 + 16))(v7, v11);
    v12 = *(v11 + 8);
    LOBYTE(v11) = sub_255965390();
    v13 = *(v8 + 8);
    v13(v6, v7);
    v13(v5, v7);
    if (v11)
    {
      v15 = *(v3 + 120);
      v14 = *(v3 + 128);
      v16 = *(v3 + 104);
      v17 = *(v3 + 64);
      v18 = *(v3 + 72);
      sub_2559655B0();
      v13(v16, v18);
      sub_25588FD38(v15);
    }
  }

  v19 = *(v3 + 96);
  v20 = *(v3 + 88);
  free(*(v3 + 104));
  free(v19);
  free(v20);

  free(v3);
}

void sub_255890508(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v4 = *(v2 + 152);
    v3 = *(v2 + 160);
    v5 = *(v2 + 144);
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    v10 = *(v8 + 16);
    v10(v6, *(v2 + 88), v9);
    v4(v9, v5);
    v11 = *(v5 + 8);
    LOBYTE(v5) = sub_255965390();
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v6, v9);
    if ((v5 & 1) == 0)
    {
      v14 = *(v2 + 112);
      v13 = *(v2 + 120);
      v15 = *(v2 + 64);
      v10(*(v2 + 104), *(v2 + 88), *(v2 + 72));
      sub_2559655E0();
      sub_2559655A0();
      if (*(v14 + 16) < v13)
      {
        __break(1u);
      }

      else
      {
        v16 = *(v2 + 120);
        if ((v16 & 0x8000000000000000) == 0)
        {
          v17 = *(v2 + 64) + 8;
          sub_2558917F8(v16, *(v2 + 120), *(v2 + 48));
          goto LABEL_7;
        }
      }

      __break(1u);
      return;
    }

LABEL_7:
    v12(*(v2 + 88), *(v2 + 72));
    goto LABEL_8;
  }

  (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));
LABEL_8:
  v18 = *(v2 + 96);
  v19 = *(v2 + 88);
  free(*(v2 + 104));
  free(v18);
  free(v19);

  free(v2);
}

uint64_t sub_2558906A4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2559658B0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v12 - v8;
  v12[1] = *a1;
  sub_2559652C0();
  v10 = *(a2 - 8);
  result = (*(v10 + 48))(v9, 1, a2);
  if (result != 1)
  {
    return (*(v10 + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

double SparseArray.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v37 = a5;
  v38 = a1;
  v7 = *(a2 - 8);
  v42 = a4;
  v43 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_2559658B0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v34 - v15);
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v22 = *(v34 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v34 - v23;
  *&v44 = sub_255965520();
  *(&v44 + 1) = MEMORY[0x277D84F90];
  v35 = v17;
  (*(v17 + 16))(v20, v38, a3);
  sub_255965430();
  v36 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2559658D0();
  v26 = *(*(TupleTypeMetadata2 - 8) + 48);
  if (v26(v16, 1, TupleTypeMetadata2) != 1)
  {
    v27 = *(v43 + 32);
    v43 += 32;
    v39 = (v43 - 24);
    v40 = v27;
    v41 = AssociatedConformanceWitness;
    do
    {
      v28 = v24;
      v29 = AssociatedTypeWitness;
      v30 = *v16;
      v40(v10, v16 + *(TupleTypeMetadata2 + 48), a2);
      v31 = type metadata accessor for SparseArray();
      v32 = v30;
      AssociatedTypeWitness = v29;
      v24 = v28;
      sub_255891CD4(v10, v32, v31);
      (*v39)(v10, a2);
      sub_2559658D0();
    }

    while (v26(v16, 1, TupleTypeMetadata2) != 1);
  }

  (*(v35 + 8))(v38, v36);
  (*(v34 + 8))(v24, AssociatedTypeWitness);
  result = *&v44;
  *v37 = v44;
  return result;
}

double SparseArray.init<A>(denseValues:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6618, &qword_25596EC50);
  v13 = sub_255891F40();
  v14 = *(a5 + 8);
  *&v21 = v12;
  *(&v21 + 1) = a3;
  v22 = v13;
  v23 = v14;
  v15 = sub_2559659B0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - v17;
  *&v21 = 0;
  sub_255965C80();
  swift_getWitnessTable();
  v19 = SparseArray.init<A>(_:)(v18, a2, v15, a4, &v21);
  (*(*(a3 - 8) + 8))(a1, a3, v19);
  result = *&v21;
  *a6 = v21;
  return result;
}

uint64_t static SparseArray<>.zero.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_255965520();
  result = sub_255965570();
  v4 = MEMORY[0x277D84F90];
  if (result == *(MEMORY[0x277D84F90] + 16))
  {
    *a1 = v2;
    a1[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255890DE0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[1] = *a1;
  v11[0] = *a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a3;
  v7 = type metadata accessor for SparseArray();
  WitnessTable = swift_getWitnessTable();
  return SparseArrayProtocol.union<A>(with:combine:)(v11, a6, v10, v7, v7, WitnessTable, WitnessTable);
}

double sub_255890E9C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a3;
  v7 = type metadata accessor for SparseArray();
  WitnessTable = swift_getWitnessTable();
  return SparseArray.formUnion<A>(with:combine:)(&v11, a6, v10, v7, v7, WitnessTable);
}

uint64_t SparseArray<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(a2 + 16);
  sub_2559655F0();
  result = MEMORY[0x259C43B00](*(v4 + 16));
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = (v4 + 32);
    do
    {
      v9 = *v8++;
      result = MEMORY[0x259C43B20](v9);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t SparseArray<>.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_255965D50();
  SparseArray<>.hash(into:)(v4, a1);
  return sub_255965D90();
}

uint64_t sub_25589104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_255965D50();
  SparseArray<>.hash(into:)(v6, a2);
  return sub_255965D90();
}

uint64_t SparseArray.description.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v18 = 91;
  v19 = 0xE100000000000000;
  *&v17[0] = v4;
  *(&v17[0] + 1) = v3;
  swift_getWitnessTable();
  SparseValues.init(_:)(v17, a1, v15);
  v16[1] = v15[0];
  v5 = type metadata accessor for SparseValues();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x259C43210](v16, v5, WitnessTable);

  v15[2] = v16[0];
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = sub_25589201C;
  v10[5] = v7;
  sub_2559659A0();
  swift_getWitnessTable();
  sub_255965BB0();

  v15[0] = v17[0];
  v15[1] = v17[1];
  sub_255965A90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_255965320();
  v13 = v12;

  MEMORY[0x259C431B0](v11, v13);

  MEMORY[0x259C431B0](93, 0xE100000000000000);
  return v18;
}

uint64_t sub_25589132C()
{
  v0 = sub_255965BC0();
  MEMORY[0x259C431B0](v0);

  MEMORY[0x259C431B0](8250, 0xE200000000000000);
  sub_255965BD0();
  return 0;
}

char *sub_2558913D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
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

char *sub_2558914EC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2558915E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C0, &unk_25596EE30);
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

char *sub_2558916F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
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

unint64_t sub_2558917F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_2558914EC(isUniquelyReferenced_nonNull_native, v15, 1, v5, &qword_27F7D66A8, &qword_25596EE40);
    *v3 = v5;
  }

  result = sub_255891A84(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_2558918DC(unint64_t result, uint64_t a2, float a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_2558913D4(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_255891B44(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_2558919B0(unint64_t result, uint64_t a2, double a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_2558916F4(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_255891C04(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_255891A84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_255891B44(unint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 4 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 4 * a2);
      if (result != v12 || result >= v12 + 4 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 4 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_255891C04(unint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_255891CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_2559658B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  SparseArray.set(_:atOffset:)(a1, a3, &v12 - v9);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_255891DBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_2558906A4(a1, v2[2], a2);
}

unint64_t sub_255891DE0()
{
  result = qword_27F7D6608;
  if (!qword_27F7D6608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6600, &qword_25596EC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6608);
  }

  return result;
}

uint64_t sub_255891E6C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v7 = type metadata accessor for SparseBuffer();
  return SparseBuffer.getValue(atOffset:)(v6, v7, a2);
}

unint64_t sub_255891F40()
{
  result = qword_27F7D6620[0];
  if (!qword_27F7D6620[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6618, &qword_25596EC50);
    sub_2558768D0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7D6620);
  }

  return result;
}

uint64_t sub_255891FCC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  return sub_255965B30();
}

uint64_t sub_255891FF4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  return sub_255965B40();
}

uint64_t sub_25589201C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25589132C();
}

uint64_t sub_255892024@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v7 = v2[4];
  v6 = v2[5];
  v8 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v7(v8, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  a2[1] = v11;
  return result;
}

uint64_t sub_25589209C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2558920D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255892114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25589215C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_255892198(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8[0] = 0;
    v8[1] = a2;
    v8[2] = result;
    v8[3] = a2;
    result = v6(v8);
    if (v4)
    {
      *a3 = v4;
    }
  }

  return result;
}

uint64_t (*sub_255892250(uint64_t a1, uint64_t a2, void *(*a3)(void **__return_ptr)))(void)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;
  v9 = v23;
  v10 = sub_255875B4C(a2);
  v12 = v23[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v11;
  if (v23[3] < v15)
  {
    sub_255895430(v15, isUniquelyReferenced_nonNull_native);
    v9 = v23;
    v10 = sub_255875B4C(a2);
    if ((v4 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = sub_255965CA0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_11:
    v22 = v10;
    sub_2558966B4();
    v10 = v22;
    v9 = v23;
    *v3 = v23;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_6:
  *v3 = v9;
  if (v4)
  {
LABEL_9:
    v21 = v9[7] + 8 * v10;
    return nullsub_2;
  }

LABEL_7:
  v17 = v10;
  result = a3(&v23);
  v9[(v17 >> 6) + 8] |= 1 << v17;
  *(v9[6] + 8 * v17) = a2;
  *(v9[7] + 8 * v17) = v23;
  v19 = v9[2];
  v14 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (!v14)
  {
    v10 = v17;
    v9[2] = v20;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.init()()
{
  v1 = v0;
  result.targetsBySource._rawValue = sub_255879DA8(MEMORY[0x277D84F90]);
  v1->targetsBySource._rawValue = result.targetsBySource._rawValue;
  return result;
}

void ElementIdentifierTupleSet.sources.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;

  sub_255879018(v4, a1);
}

uint64_t ElementIdentifierTupleSet.insert(_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = v4;
  v8 = *a3;
  v9 = *a4;
  v10 = *v4;
  if (*(v10 + 16) && (v11 = sub_255875B4C(*a3), (v12 & 1) != 0))
  {
    v13 = [*(*(*(v10 + 56) + 8 * v11) + 16) containsIdentifier_] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v36 = v9;
  v14 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v6;
  v16 = v37;
  *v6 = 0x8000000000000000;
  v18 = sub_255875B4C(v8);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v17;
  if (v16[3] >= v21)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_10:
      v24 = *v6;

      *v6 = v16;
      if ((v5 & 1) == 0)
      {
        v25 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        v16[(v18 >> 6) + 8] |= 1 << v18;
        *(v16[6] + 8 * v18) = v8;
        *(v16[7] + 8 * v18) = v26;
        v27 = v16[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          goto LABEL_23;
        }

        v16[2] = v29;
      }

      v30 = v16[7] + 8 * v18;
      ElementIdentifierSet.insert(_:)(&v37, &v36);
      if (v16[2])
      {
        v31 = sub_255875B4C(v8);
        if (v32)
        {
          if ([*(*(v16[7] + 8 * v31) + 16) isEmpty])
          {
            sub_255897064(v8, &v35);
          }

          *a1 = v8;
          *a2 = v9;
          return v13;
        }
      }

      else
      {
LABEL_19:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      sub_2558966B4();
      v16 = v37;
    }
  }

  sub_255895430(v21, isUniquelyReferenced_nonNull_native);
  v16 = v37;
  v22 = sub_255875B4C(v8);
  if ((v5 & 1) == (v23 & 1))
  {
    v18 = v22;
    goto LABEL_10;
  }

LABEL_23:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

void static ElementIdentifierTupleSet.joinOnTargets(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v37 = sub_255879DA8(MEMORY[0x277D84F90]);
  v38 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v42 = v4;
  v10 = v4 + 64;

  v11 = 0;
  v35 = v9;
  v36 = v3 + 64;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (v11 << 9) | (8 * v13);
    v39 = *(*(v38 + 48) + v14);
    v15 = *(*(v38 + 56) + v14);
    v16 = objc_allocWithZone(KGMutableElementIdentifierSet);
    v41 = v15;

    v17 = [v16 init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v40 = swift_allocObject();
    *(v40 + 16) = v17;
    v18 = 1 << *(v42 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v42 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (!v20)
    {
      goto LABEL_16;
    }

    do
    {
      v23 = v22;
LABEL_19:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = (v23 << 9) | (8 * v24);
      v26 = *(*(v42 + 48) + v25);
      v27 = *(v41 + 16);
      v28 = *(*(*(v42 + 56) + v25) + 16);

      if ([v27 intersectsIdentifierSet_])
      {
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = *(v40 + 16);
          [v33 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          v30 = swift_allocObject();
          *(v30 + 16) = v43;

          v29 = v30;
        }

        v40 = v29;
        v31 = *(v29 + 16);
        [v31 containsIdentifier_];
        [v31 addIdentifier_];
      }

      v22 = v23;
    }

    while (v20);
    while (1)
    {
LABEL_16:
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = *(v10 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    if (([*(v40 + 16) isEmpty] & 1) == 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_255879810(v40, v39, isUniquelyReferenced_nonNull_native);
    }

    v9 = v35;
    v5 = v36;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      *a3 = v37;
      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

LABEL_29:
  __break(1u);
}

Swift::Bool __swiftcall ElementIdentifierTupleSet.contains(_:)(Swift::tuple_KnowledgeGraphKit_ElementIdentifier_KnowledgeGraphKit_ElementIdentifier a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = *a1._1.rawValue, v4 = sub_255875B4C(*a1._0.rawValue), (v5 & 1) != 0))
  {
    return [*(*(*(v2 + 56) + 8 * v4) + 16) containsIdentifier_];
  }

  else
  {
    return 0;
  }
}

uint64_t ElementIdentifierTupleSet.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_255875B4C(*a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    result = swift_allocObject();
    *(result + 16) = v8;
    *a2 = result;
  }

  return result;
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.subtracting(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v3 = v1;
  v4 = *a1.targetsBySource._rawValue;
  *v3 = *v2;
  v6 = v4;

  ElementIdentifierTupleSet.subtract(_:)(&v6);
  return result;
}

uint64_t ElementIdentifierTupleSet.union(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formUnion(_:)(&v5);
}

Swift::tuple_KnowledgeGraphKit_ElementIdentifier_KnowledgeGraphKit_ElementIdentifier_optional __swiftcall ElementIdentifierTupleSet.remove(_:)(Swift::tuple_KnowledgeGraphKit_ElementIdentifier_KnowledgeGraphKit_ElementIdentifier a1)
{
  v4 = v2;
  v5 = v1;
  v6 = *a1._0.rawValue;
  v7 = *a1._1.rawValue;
  v8 = *v2;
  if (*(v8 + 16) && (v9 = sub_255875B4C(*a1._0.rawValue), (v10 & 1) != 0))
  {
    v11 = [*(*(*(v8 + 56) + 8 * v9) + 16) containsIdentifier_];
  }

  else
  {
    v11 = 0;
  }

  v37 = v7;
  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v4;
  v14 = v38;
  *v4 = 0x8000000000000000;
  v16 = sub_255875B4C(v6);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = v15;
  if (v14[3] >= v19)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
LABEL_10:
      v22 = *v4;

      *v4 = v14;
      if ((v3 & 1) == 0)
      {
        v23 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        v14[(v16 >> 6) + 8] |= 1 << v16;
        *(v14[6] + 8 * v16) = v6;
        *(v14[7] + 8 * v16) = v24;
        v25 = v14[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          __break(1u);
          goto LABEL_29;
        }

        v14[2] = v27;
      }

      v28 = v14[7] + 8 * v16;
      ElementIdentifierSet.remove(_:)(&v37);
      if (v14[2])
      {
        v29 = sub_255875B4C(v6);
        if (v30)
        {
          v31 = [*(*(v14[7] + 8 * v29) + 16) isEmpty];
          if (v31)
          {
            sub_255897064(v6, &v36);
          }

          if (v11)
          {
            v34 = v6;
          }

          else
          {
            v34 = 0;
          }

          if (v11)
          {
            v35 = v7;
          }

          else
          {
            v35 = 0;
          }

          *v5 = v34;
          *(v5 + 8) = v35;
          *(v5 + 16) = v11 ^ 1;
          goto LABEL_30;
        }
      }

      else
      {
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      sub_2558966B4();
      v14 = v38;
    }
  }

  sub_255895430(v19, isUniquelyReferenced_nonNull_native);
  v14 = v38;
  v20 = sub_255875B4C(v6);
  if ((v3 & 1) == (v21 & 1))
  {
    v16 = v20;
    goto LABEL_10;
  }

LABEL_29:
  v31 = sub_255965CA0();
  __break(1u);
LABEL_30:
  result.value._1.rawValue = v32;
  result.value._0.rawValue = v31;
  result.is_nil = v33;
  return result;
}

Swift::Void __swiftcall ElementIdentifierTupleSet.subtract(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v2 = v1;
  v3 = *a1.targetsBySource._rawValue;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v48 = v3;

  v9 = 0;
  v46 = v2;
  v47 = v8;
  while (v7)
  {
LABEL_10:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
    v12 = *(*(v48 + 48) + v11);
    v13 = *(*(v48 + 56) + v11);

    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    v50 = *v2;
    *v2 = 0x8000000000000000;
    v18 = sub_255875B4C(v12);
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_31;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2558966B4();
        v16 = v50;
      }
    }

    else
    {
      sub_255895430(v21, isUniquelyReferenced_nonNull_native);
      v16 = v50;
      v23 = sub_255875B4C(v12);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_35;
      }

      v18 = v23;
    }

    v25 = *v2;

    *v2 = v16;
    if ((v22 & 1) == 0)
    {
      v26 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v16[(v18 >> 6) + 8] |= 1 << v18;
      *(v16[6] + 8 * v18) = v12;
      *(v16[7] + 8 * v18) = v27;
      v28 = v16[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      v16[2] = v30;
    }

    v31 = v16[7];
    v32 = *(v31 + 8 * v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = *(*(v31 + 8 * v18) + 16);
      [v33 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v34 = swift_allocObject();
      *(v34 + 16) = v49;
      v35 = *(v31 + 8 * v18);
      *(v31 + 8 * v18) = v34;
    }

    [*(*(v31 + 8 * v18) + 16) subtractIdentifierSet_];
    if (!v16[2])
    {
      goto LABEL_32;
    }

    v36 = sub_255875B4C(v12);
    if ((v37 & 1) == 0)
    {
      goto LABEL_33;
    }

    v7 &= v7 - 1;
    if ([*(*(v16[7] + 8 * v36) + 16) isEmpty])
    {
      v38 = sub_255875B4C(v12);
      v2 = v46;
      if (v39)
      {
        v40 = v38;
        v41 = *v46;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v43 = *v46;
        v51 = *v46;
        *v46 = 0x8000000000000000;
        if (!v42)
        {
          sub_2558966B4();
          v43 = v51;
        }

        v44 = *(*(v43 + 56) + 8 * v40);

        sub_255879214(v40, v43);

        v45 = *v46;

        *v46 = v43;
        v8 = v47;
      }

      else
      {

        v8 = v47;
      }
    }

    else
    {

      v2 = v46;
      v8 = v47;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_255965CA0();
  __break(1u);
}

unint64_t ElementIdentifierTupleSet.subscript.setter(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *a2;
  v6 = [*(*a1 + 16) isEmpty];
  v7 = v6;
  if (*(*v2 + 16))
  {
    sub_255875B4C(v5);
    if (v7)
    {
      v9 = v8;

      if (v9)
      {
        sub_255897064(v5, &v13);
      }

      return result;
    }

    v11 = *v2;
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    *v3 = 0x8000000000000000;
    result = sub_255879810(v4, v5, isUniquelyReferenced_nonNull_native);
    *v3 = v13;
    return result;
  }

  if (!v6)
  {
    goto LABEL_10;
  }
}

Swift::Void __swiftcall ElementIdentifierTupleSet.removeTargets(for:)(KnowledgeGraphKit::ElementIdentifier a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_255875B4C(*a1.rawValue);
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v9 = v12;
    }

    v10 = v6;
    v11 = *(*(v9 + 56) + 8 * v6);
    sub_255879214(v10, v9);

    *v2 = v9;
  }
}

uint64_t ElementIdentifierTupleSet.hashValue.getter()
{
  v1 = *v0;
  sub_255965D50();
  sub_255897194(v3, v1);
  return sub_255965D90();
}

uint64_t ElementIdentifierTupleSet.description.getter()
{
  v1 = *v0;
  sub_255889D18();

  return sub_2559652A0();
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.init(targetsBySource:)(Swift::OpaquePointer targetsBySource)
{
  v3 = v1;

  v3->_rawValue = targetsBySource._rawValue;
  return result;
}

void (*ElementIdentifierTupleSet.subscript.modify(void *a1, uint64_t *a2))(void *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  *a1 = v5;
  v6 = *a2;
  v5[4] = v2;
  v5[5] = v6;
  v5[6] = sub_255892250(v5, v6, sub_255893598);
  return sub_2558934E8;
}

void sub_2558934E8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 48))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = **(v3 + 32);
    if (*(v4 + 16))
    {
      v5 = sub_255875B4C(*(v3 + 40));
      if (v6)
      {
        if ([*(*(*(v4 + 56) + 8 * v5) + 16) isEmpty])
        {
          v7 = *(v3 + 32);
          sub_255897064(*(v3 + 40), &v8);
        }

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:

  free(v3);
}

uint64_t sub_255893598@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t ElementIdentifierTupleSet.count.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
    v10 = v8;
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    result = [*(*(*(v1 + 56) + ((v10 << 9) | (8 * v11))) + 16) count];
    v12 = __OFADD__(v9, result);
    v9 += result;
    if (v12)
    {
      __break(1u);
LABEL_13:

      return v9;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2558936EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = *(*(v2 + 48) + 8 * v12);
    v14 = *(*(v2 + 56) + 8 * v12);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    v16 = sub_255875B4C(v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(*(a2 + 56) + 8 * v16) + 16);
    v19 = v2;
    v20 = *(v14 + 16);

    v21 = v20;
    v2 = v19;
    LOBYTE(v18) = [v18 isEqualToElementIdentifierSet_];

    if ((v18 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255893874()
{
  v1 = *v0;
  sub_255965D50();
  sub_255897194(v3, v1);
  return sub_255965D90();
}

uint64_t sub_2558938C4()
{
  v1 = *v0;
  sub_255965D50();
  sub_255897194(v3, v1);
  return sub_255965D90();
}

uint64_t sub_255893914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_255879DA8(MEMORY[0x277D84F90]);
  v37 = *(a1 + 16);
  if (v37)
  {
    v36 = a2;
    v5 = 0;
    v6 = (a1 + 40);
    while (v5 < *(a1 + 16))
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_255875B4C(v8);
      v13 = v4[2];
      v14 = (v11 & 1) == 0;
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        goto LABEL_27;
      }

      v16 = v11;
      if (v4[3] >= v15)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
        }
      }

      else
      {
        sub_255895430(v15, isUniquelyReferenced_nonNull_native);
        v17 = sub_255875B4C(v8);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_31;
        }

        v12 = v17;
      }

      if ((v16 & 1) == 0)
      {
        v19 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        v4[(v12 >> 6) + 8] |= 1 << v12;
        *(v4[6] + 8 * v12) = v8;
        *(v4[7] + 8 * v12) = v20;
        v21 = v4[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_30;
        }

        v4[2] = v23;
      }

      v24 = v4[7];
      v25 = *(v24 + 8 * v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(*(v24 + 8 * v12) + 16);
        [v26 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v27 = swift_allocObject();
        *(v27 + 16) = v38;
        v28 = *(v24 + 8 * v12);
        *(v24 + 8 * v12) = v27;
      }

      v29 = *(*(v24 + 8 * v12) + 16);
      [v29 containsIdentifier_];
      [v29 addIdentifier_];

      if (!v4[2])
      {
        goto LABEL_28;
      }

      v30 = sub_255875B4C(v8);
      if ((v31 & 1) == 0)
      {
        goto LABEL_29;
      }

      if ([*(*(v4[7] + 8 * v30) + 16) isEmpty])
      {
        v32 = sub_255875B4C(v8);
        if (v33)
        {
          v34 = v32;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_2558966B4();
          }

          v7 = *(v4[7] + 8 * v34);

          sub_255879214(v34, v4);
        }
      }

      ++v5;
      v6 += 2;
      if (v37 == v5)
      {

        a2 = v36;
        goto LABEL_25;
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
LABEL_31:
    result = sub_255965CA0();
    __break(1u);
  }

  else
  {

LABEL_25:
    *a2 = v4;
  }

  return result;
}

uint64_t ElementIdentifierTupleSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v45 - v11;
  v13 = sub_255879DA8(MEMORY[0x277D84F90]);
  v46 = v5;
  v47 = a1;
  (*(v5 + 16))(v8, a1, a2);
  sub_255965430();
  v48 = a2;
  swift_getAssociatedConformanceWitness();
  sub_2559658D0();
  if (v53)
  {
LABEL_2:
    (*(v46 + 8))(v47, v48);
    result = (*(v45 + 8))(v12, AssociatedTypeWitness);
    *v49 = v13;
  }

  else
  {
    v15 = v51;
    v16 = v52;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v13;
      v20 = sub_255875B4C(v15);
      v21 = v13[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (v13[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
        }
      }

      else
      {
        sub_255895430(v23, isUniquelyReferenced_nonNull_native);
        v25 = sub_255875B4C(v15);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_27;
        }

        v20 = v25;
      }

      v13 = v51;

      if ((v24 & 1) == 0)
      {
        v27 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        v13[(v20 >> 6) + 8] |= 1 << v20;
        *(v13[6] + 8 * v20) = v15;
        *(v13[7] + 8 * v20) = v28;
        v29 = v13[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_26;
        }

        v13[2] = v31;
      }

      v32 = v13[7];
      v33 = *(v32 + 8 * v20);
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        v34 = *(*(v32 + 8 * v20) + 16);
        [v34 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        v35 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v37 = *(v32 + 8 * v20);
        *(v32 + 8 * v20) = v36;
      }

      v38 = *(*(v32 + 8 * v20) + 16);
      [v38 containsIdentifier_];
      [v38 addIdentifier_];

      if (!v13[2])
      {
        goto LABEL_24;
      }

      v39 = sub_255875B4C(v15);
      if ((v40 & 1) == 0)
      {
        goto LABEL_25;
      }

      if ([*(*(v13[7] + 8 * v39) + 16) isEmpty])
      {
        v41 = sub_255875B4C(v15);
        if (v42)
        {
          v43 = v41;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v51 = v13;
          if (!v44)
          {
            sub_2558966B4();
            v13 = v51;
          }

          v17 = *(v13[7] + 8 * v43);

          sub_255879214(v43, v13);
        }
      }

      sub_2559658D0();
      v15 = v51;
      v16 = v52;
      if (v53)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_255965CA0();
    __break(1u);
  }

  return result;
}

uint64_t ElementIdentifierTupleSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_255893914(a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_25589415C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_255893914(a1, &v4);
  *a2 = v4;
  return result;
}

KnowledgeGraphKit::ElementIdentifierTupleSet __swiftcall ElementIdentifierTupleSet.intersection(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v3 = *a1.targetsBySource._rawValue;
  *v1 = *v2;
  v5 = v3;
  ElementIdentifierTupleSet.formIntersection(_:)(&v5);
  return result;
}

Swift::Void __swiftcall ElementIdentifierTupleSet.formIntersection(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v2 = v1;
  v3 = *a1.targetsBySource._rawValue;
  v4 = *v1;
  if (*(*a1.targetsBySource._rawValue + 16) >= *(*v1 + 16))
  {
    v5 = *v1;

    sub_255879018(v6, v58);
    v7 = v58[0];
    v8 = *(v58[0] + 16);

    v9 = [v8 startIndex];
    v11 = v10;
    if (v9 == [*(v7 + 16) endIndex])
    {
LABEL_4:
    }

    else
    {
      v12 = v9;
      v55 = v2;
      while (1)
      {
        v56 = [*(v7 + 16) indexAfterIndex_];
        v17 = v16;
        if (*(v3 + 16) && (v18 = sub_255875B4C(v9), (v19 & 1) != 0))
        {
          v20 = *(*(v3 + 56) + 8 * v18);
        }

        else
        {
          v21 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v20 = swift_allocObject();
          *(v20 + 16) = v21;
        }

        v22 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = *v2;
        v24 = v58[0];
        *v2 = 0x8000000000000000;
        v26 = sub_255875B4C(v9);
        v27 = v24[2];
        v28 = (v25 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          break;
        }

        v30 = v25;
        if (v24[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2558966B4();
            v24 = v58[0];
          }
        }

        else
        {
          sub_255895430(v29, isUniquelyReferenced_nonNull_native);
          v24 = v58[0];
          v31 = sub_255875B4C(v9);
          if ((v30 & 1) != (v32 & 1))
          {
            goto LABEL_33;
          }

          v26 = v31;
        }

        v33 = *v2;

        *v2 = v24;
        if ((v30 & 1) == 0)
        {
          v34 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          v24[(v26 >> 6) + 8] |= 1 << v26;
          *(v24[6] + 8 * v26) = v9;
          *(v24[7] + 8 * v26) = v35;
          v36 = v24[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_32;
          }

          v24[2] = v38;
        }

        v39 = v17;
        v40 = v7;
        v41 = v3;
        v42 = v24[7];
        v43 = *(v42 + 8 * v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(*(v42 + 8 * v26) + 16);
          [v44 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v45 = swift_allocObject();
          *(v45 + 16) = v57;
          v46 = *(v42 + 8 * v26);
          *(v42 + 8 * v26) = v45;
        }

        [*(*(v42 + 8 * v26) + 16) intersectWithIdentifierSet_];

        if (!v24[2])
        {
          goto LABEL_30;
        }

        v47 = sub_255875B4C(v9);
        if ((v48 & 1) == 0)
        {
          goto LABEL_31;
        }

        v3 = v41;
        v7 = v40;
        v11 = v39;
        v2 = v55;
        if ([*(*(v24[7] + 8 * v47) + 16) isEmpty])
        {
          v49 = sub_255875B4C(v9);
          if (v50)
          {
            v51 = v49;
            v52 = *v55;
            v53 = swift_isUniquelyReferenced_nonNull_native();
            v54 = *v55;
            v58[0] = *v55;
            *v55 = 0x8000000000000000;
            if (!v53)
            {
              sub_2558966B4();
              v54 = v58[0];
            }

            v13 = *(*(v54 + 56) + 8 * v51);

            sub_255879214(v51, v54);
            v14 = *v55;

            *v55 = v54;
          }
        }

        v15 = [*(v40 + 16) endIndex];
        v12 = v56;
        v9 = v56;
        if (v56 == v15)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_255965CA0();
      __break(1u);
    }
  }

  else
  {
    v58[0] = *a1.targetsBySource._rawValue;

    v57 = v4;
    ElementIdentifierTupleSet.formIntersection(_:)(&v57);

    *v1 = v58[0];
  }
}

uint64_t ElementIdentifierTupleSet.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formSymmetricDifference(_:)(&v5);
}

uint64_t sub_255894684(uint64_t *a1, uint64_t (*a2)(uint64_t *), SEL *a3)
{
  v4 = v3;
  v5 = *a1;
  if (*(*v3 + 16) >= *(v5 + 16))
  {
    v7 = 0;
    v8 = v5 + 64;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v49 = v3;
    v50 = v12;
    v51 = v5;
    while (v11)
    {
LABEL_13:
      v14 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
      v15 = *(*(v5 + 48) + v14);
      v16 = *(*(v5 + 56) + v14);
      swift_retain_n();
      v17 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *v4;
      v19 = v54;
      *v4 = 0x8000000000000000;
      v21 = sub_255875B4C(v15);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_34;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
          v19 = v54;
        }
      }

      else
      {
        sub_255895430(v24, isUniquelyReferenced_nonNull_native);
        v19 = v54;
        v26 = sub_255875B4C(v15);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_38;
        }

        v21 = v26;
      }

      v28 = *v4;

      *v4 = v19;
      if ((v25 & 1) == 0)
      {
        v29 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v19[(v21 >> 6) + 8] |= 1 << v21;
        *(v19[6] + 8 * v21) = v15;
        *(v19[7] + 8 * v21) = v30;
        v31 = v19[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_37;
        }

        v19[2] = v33;
      }

      v34 = v19[7];
      v35 = *(v34 + 8 * v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(*(v34 + 8 * v21) + 16);
        [v36 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v37 = swift_allocObject();
        *(v37 + 16) = v53;
        v38 = *(v34 + 8 * v21);
        *(v34 + 8 * v21) = v37;
      }

      [*(*(v34 + 8 * v21) + 16) *a3];

      if (!v19[2])
      {
        goto LABEL_35;
      }

      v39 = sub_255875B4C(v15);
      if ((v40 & 1) == 0)
      {
        goto LABEL_36;
      }

      v11 &= v11 - 1;
      if ([*(*(v19[7] + 8 * v39) + 16) isEmpty])
      {
        v41 = sub_255875B4C(v15);
        v4 = v49;
        if (v42)
        {
          v43 = v41;
          v44 = *v49;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *v49;
          v54 = *v49;
          *v49 = 0x8000000000000000;
          if (!v45)
          {
            sub_2558966B4();
            v46 = v54;
          }

          v47 = *(*(v46 + 56) + 8 * v43);

          sub_255879214(v43, v46);

          v48 = *v49;

          *v49 = v46;
        }

        else
        {
        }
      }

      else
      {

        v4 = v49;
      }

      v12 = v50;
      v5 = v51;
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
      }

      v11 = *(v8 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_255965CA0();
    __break(1u);
  }

  else
  {
    v53 = *v3;
    v54 = v5;
    result = a2(&v53);
    *v3 = v54;
  }

  return result;
}

id ElementIdentifierTupleSet.update(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v7 = *a1;
  v8 = *a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_255875B4C(*a1), (v11 & 1) != 0))
  {
    v12 = [*(*(*(v9 + 56) + 8 * v10) + 16) containsIdentifier_];
  }

  else
  {
    v12 = 0;
  }

  v36 = v8;
  v13 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v5;
  v15 = v37;
  *v5 = 0x8000000000000000;
  v17 = sub_255875B4C(v7);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = v16;
  if (v15[3] >= v20)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
LABEL_10:
      v23 = *v5;

      *v5 = v15;
      if ((v4 & 1) == 0)
      {
        v24 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        v15[(v17 >> 6) + 8] |= 1 << v17;
        *(v15[6] + 8 * v17) = v7;
        *(v15[7] + 8 * v17) = v25;
        v26 = v15[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          __break(1u);
          goto LABEL_29;
        }

        v15[2] = v28;
      }

      v29 = v15[7] + 8 * v17;
      ElementIdentifierSet.insert(_:)(&v37, &v36);
      if (v15[2])
      {
        v30 = sub_255875B4C(v7);
        if (v31)
        {
          result = [*(*(v15[7] + 8 * v30) + 16) isEmpty];
          if (result)
          {
            sub_255897064(v7, &v35);
          }

          if (v12)
          {
            v33 = 0;
          }

          else
          {
            v33 = v7;
          }

          if (v12)
          {
            v34 = 0;
          }

          else
          {
            v34 = v8;
          }

          *a3 = v33;
          *(a3 + 8) = v34;
          *(a3 + 16) = v12;
          return result;
        }
      }

      else
      {
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      sub_2558966B4();
      v15 = v37;
    }
  }

  sub_255895430(v20, isUniquelyReferenced_nonNull_native);
  v15 = v37;
  v21 = sub_255875B4C(v7);
  if ((v4 & 1) == (v22 & 1))
  {
    v17 = v21;
    goto LABEL_10;
  }

LABEL_29:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall ElementIdentifierTupleSet.intersects(_:)(KnowledgeGraphKit::ElementIdentifierTupleSet a1)
{
  v2 = *(*v1 + 16);
  v3 = *(*a1.targetsBySource._rawValue + 16);
  if (v2 >= v3)
  {
    v4 = *a1.targetsBySource._rawValue;
  }

  else
  {
    v4 = *v1;
  }

  if (v2 >= v3)
  {
    v5 = *v1;
  }

  else
  {
    v5 = *a1.targetsBySource._rawValue;
  }

  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_15:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = *(*(v4 + 56) + 8 * v13);
    if (*(v5 + 16) && (v15 = sub_255875B4C(*(*(v4 + 48) + 8 * v13)), (v16 & 1) != 0))
    {
      v17 = *(*(*(v5 + 56) + 8 * v15) + 16);
    }

    else
    {
      v18 = objc_allocWithZone(KGMutableElementIdentifierSet);

      v17 = [v18 init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      *(swift_allocObject() + 16) = v17;
    }

    v8 &= v8 - 1;
    v19 = [v17 intersectsIdentifierSet_];

    if (v19)
    {

      return 1;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return 0;
    }

    v8 = *(v4 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ElementIdentifierTupleSet.isDisjoint(with:)(KnowledgeGraphKit::ElementIdentifierTupleSet with)
{
  v2 = *v1;
  v4[0] = *with.targetsBySource._rawValue;
  v4[1] = v2;
  return !ElementIdentifierTupleSet.intersects(_:)(v4);
}

void *sub_255894EB8@<X0>(void *a1@<X8>)
{
  result = sub_255879DA8(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_255894EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formUnion(_:)(&v5);
}

void sub_255894F30(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v4 = v3;
  ElementIdentifierTupleSet.formIntersection(_:)(&v4);
}

uint64_t sub_255894F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *v2;
  v5 = v3;
  return ElementIdentifierTupleSet.formSymmetricDifference(_:)(&v5);
}

uint64_t sub_255894FB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = a2[1];
  v5 = v2;
  return ElementIdentifierTupleSet.insert(_:)(a1, a1 + 1, &v5, &v4) & 1;
}

id sub_255894FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = a1[1];
  v5 = v2;
  return ElementIdentifierTupleSet.update(with:)(&v5, &v4, a2);
}

uint64_t sub_25589502C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *a2 = *v2;
  v6 = v4;

  ElementIdentifierTupleSet.subtract(_:)(&v6);
}

uint64_t sub_255895094(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = v2;

  ElementIdentifierTupleSet.formIntersection(_:)(&v4);
  LOBYTE(v2) = sub_2558936EC(v5, v2);

  return v2 & 1;
}

BOOL sub_2558950F8(void *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return !ElementIdentifierTupleSet.intersects(_:)(v4);
}

uint64_t sub_25589513C(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v5 = v2;

  ElementIdentifierTupleSet.formIntersection(_:)(&v4);
  LOBYTE(v2) = sub_2558936EC(v5, v2);

  return v2 & 1;
}

uint64_t sub_2558951A0()
{
  v1 = *v0;
  v2 = sub_255879DA8(MEMORY[0x277D84F90]);
  LOBYTE(v1) = sub_2558936EC(v1, v2);

  return v1 & 1;
}

uint64_t sub_2558951F4()
{
  v1 = *v0;
  sub_255889D18();

  return sub_2559652A0();
}

uint64_t ElementIdentifierTupleSet.sparseMatrix<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;

  sub_255879018(v12, &v21);
  v13 = sub_2558972F8([*(v21 + 16) count], v21);

  sub_255879018(v14, &v21);
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = v11;
  v20[6] = a1;
  v15 = type metadata accessor for SparseArray();
  v16 = sub_255897438();
  v18 = sub_25588EF3C(sub_255897410, v20, &type metadata for ElementIdentifierSet, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);

  swift_getWitnessTable();
  return SparseArray.init(values:offsets:)(v18, v13, a5);
}

unint64_t sub_25589538C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (*(a2 + 16))
  {
    result = sub_255875B4C(*result);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * result);

      ElementIdentifierSet.sparseArray<A>(of:)(a3, a4, a5, a6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255895430(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60E0, &unk_25596E400);
  v33 = a2;
  result = sub_255965B80();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_255965D50();
      MEMORY[0x259C43B00](v21);
      result = sub_255965D90();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2558956C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66E0, &qword_25596F040);
  result = sub_255965B80();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_255965D50();
      MEMORY[0x259C43B00](v21);
      result = sub_255965D90();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_255895940(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2559651D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66C8, &qword_25596F020);
  v48 = a2;
  result = sub_255965B80();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_25587AFF4();
      result = sub_255965310();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_255895CF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D8, &qword_25596F030);
  v38 = a2;
  result = sub_255965B80();
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
      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
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

uint64_t sub_255895FA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D8, &qword_25596F038);
  v37 = a2;
  result = sub_255965B80();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
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
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_255896244(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D0, &qword_25596F028);
  v36 = a2;
  result = sub_255965B80();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25587B098(v25, v37);
      }

      else
      {
        sub_25588BB90(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_255965D50();
      sub_255965400();
      result = sub_255965D90();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25587B098(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_2558964FC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_255896540(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2559651D0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_255896600(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_255896648(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25587B098(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2558966B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60E0, &unk_25596E400);
  v2 = *v0;
  v3 = sub_255965B70();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_255896810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66E0, &qword_25596F040);
  v2 = *v0;
  v3 = sub_255965B70();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_25589695C()
{
  v1 = v0;
  v36 = sub_2559651D0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66C8, &qword_25596F020);
  v4 = *v0;
  v5 = sub_255965B70();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v27 = *v25;
        v26 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v27;
        v29[1] = v26;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

void *sub_255896BE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D8, &qword_25596F030);
  v2 = *v0;
  v3 = sub_255965B70();
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